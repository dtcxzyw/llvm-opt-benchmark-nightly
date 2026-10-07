Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.07?download=true
inline.NumInlined: 7757
inline.NumDeleted: 2965
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvMNtNtCskFSgV2vI2Ct_13opentelemetry5trace6tracerNtB3_11SpanBuilder15with_start_timeNtNtCs2pqxYH9ZEk8_3std4time10SystemTimeECs7p2uQeJxui2_9deltalake:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCskFSgV2vI2Ct_13opentelemetry5trace6tracerNtB3_11SpanBuilder9from_nameReECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 16 captures(none) dereferenceable(272) initializes((0, 124), (128, 140), (144, 265)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 16              ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 0, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i8 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 4 uses
  store i64 0, ptr %i.f, align 16
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 1000000000, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 1000000000, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  store i64 -9223372036854775808, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  store i64 -9223372036854775808, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  store i64 -9223372036854775808, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  store i64 -9223372036854775807, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 -9223372036854775808, ptr %i.o, align 16
  %i.p = load i128, ptr %i.b, align 16
  store i128 0, ptr %0, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.p, ptr %i.q, align 16
  %i.r = load i64, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 5, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -9223372036854775808, ptr %i.v, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 16
  %i.w = load i64, ptr %i.g, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.w, ptr %i.x, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1000000000, ptr %i.y, align 8
  %i.z = load i64, ptr %i.i, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.z, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 1000000000, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ad, ptr noundef nonnull align 16 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.af, ptr noundef nonnull align 16 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ag, ptr noundef nonnull align 16 dereferenceable(64) %i.o, i64 64, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
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
  %.val = load i64, ptr %1, align 8, !range !16, !noundef !13
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
  %.sroa.0.053 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.gr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit ]
  br label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.b:                                             ; preds = %.preheader, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i)
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.d
  %.sroa.0.034.i.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.034.i.i.i.be, %.backedge.i.i.i.backedge ] ; 16 uses
  %i.t = load atomic i64, ptr %.val6 acquire, align 8, !noalias !153 ; 5 uses
  %i.u = load atomic ptr, ptr %i.n acquire, align 8, !noalias !153 ; 7 uses
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
  %i.z = mul nuw nsw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter168 = and i32 %i.z, 7                  ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter172 = and i32 %i.z, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter173 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter173.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
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
  call void @llvm.x86.sse2.pause(), !noalias !153
  %epil.iter169.next = add i32 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i32 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !105

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
  %i.af = load atomic i64, ptr %i.o monotonic, align 8, !noalias !153 ; 3 uses
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
  %i.an = mul nuw nsw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter162 = and i32 %i.an, 7                 ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.ao, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter166 = and i32 %i.an, 56
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.i.i.i.preheader.new
  %niter167 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter167.next.7, %.lr.ph.i19.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
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
  call void @llvm.x86.sse2.pause(), !noalias !153
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil, !llvm.loop !106

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.epil, %bb.n, %bb.o
  %i.ap = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

bb.p:                                             ; preds = %bb.l
  %i.aq = cmpxchg weak ptr %.val6, i64 %i.t, i64 %.sroa.01.0.i.i.i seq_cst acquire, align 8, !noalias !153
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
  call void @llvm.x86.sse2.pause(), !noalias !153
  %epil.iter157.next = add i32 %epil.iter157, 1   ; 2 uses
  %epil.iter157.cmp.not = icmp eq i32 %epil.iter157.next, %xtraiter156
  br i1 %epil.iter157.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i24.i.i.i.epil, !llvm.loop !107

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i24.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %i.at = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.034.i.i.i.be = phi i32 [ %i.ab, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ %i.ap, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i ], [ %i.at, %._crit_edge.loopexit.i.i.i.i ], [ 1, %bb.q ]
  br label %.backedge.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.lr.ph.i24.i.i.i, %.lr.ph.i24.i.i.i.preheader.new
  %niter161 = phi i32 [ 0, %.lr.ph.i24.i.i.i.preheader.new ], [ %niter161.next.7, %.lr.ph.i24.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  %niter161.next.7 = add i32 %niter161, 8         ; 2 uses
  %niter161.ncmp.7 = icmp eq i32 %niter161.next.7, %unroll_iter160
  br i1 %niter161.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i24.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.au = icmp eq i64 %i.w, 30
  br i1 %i.au, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 11408 ; 2 uses
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8, !noalias !153 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i28.i.i.i = phi i32 [ %i.bb, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.ay = icmp ult i32 %.sroa.0.02.i28.i.i.i, 7
  br i1 %i.ay, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i27.i.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %.lr.ph.i27.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.u
  %i.az = mul nuw nsw i32 %.sroa.0.02.i28.i.i.i, %.sroa.0.02.i28.i.i.i ; 2 uses
  %xtraiter174 = and i32 %i.az, 7                 ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02.i28.i.i.i, 3
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter178 = and i32 %i.az, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter179 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter179.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  call void @llvm.x86.sse2.pause(), !noalias !153
  %niter179.next.7 = add i32 %niter179, 8         ; 2 uses
  %niter179.ncmp.7 = icmp eq i32 %niter179.next.7, %unroll_iter178
  br i1 %niter179.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod176.not = icmp eq i32 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod177 = icmp ne i32 %xtraiter174, 0
  call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter175 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter175.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !153
  %epil.iter175.next = add i32 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i32 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !108

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.t, %bb.u
  %i.bb = add i32 %.sroa.0.02.i28.i.i.i, 1
  %i.bc = load atomic ptr, ptr %i.av acquire, align 8, !noalias !153 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.s
  %.lcssa.i.i.i.i = phi ptr [ %i.aw, %bb.s ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.be = and i64 %.sroa.01.0.i.i.i, -2
  %i.bf = add i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 11408
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8, !noalias !153
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = zext i1 %i.bi to i64
  %spec.select17.i.i.i = or disjoint i64 %i.bf, %i.bj
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.n release, align 8, !noalias !153
  store atomic i64 %spec.select17.i.i.i, ptr %.val6 release, align 8, !noalias !153
  br label %bb.v

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.k
  store i8 0, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !alias.scope !154
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i

bb.v:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.r
  %i.bk = getelementptr inbounds nuw [368 x i8], ptr %i.u, i64 %i.w ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 352 ; 3 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8, !noalias !155
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i

.lr.ph.i.i3.i.i:                                  ; preds = %bb.v, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i
  %.sroa.0.02.i.i4.i.i = phi i32 [ %i.bs, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i ], [ 0, %bb.v ] ; 6 uses
  %i.bp = icmp ult i32 %.sroa.0.02.i.i4.i.i, 7
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i3.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i.i3.i.i
  %.not.i.i.i6.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i, 0
  br i1 %.not.i.i.i6.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.preheader

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.x
  %i.bq = mul nuw nsw i32 %.sroa.0.02.i.i4.i.i, %.sroa.0.02.i.i4.i.i ; 2 uses
  %xtraiter180 = and i32 %i.bq, 7                 ; 3 uses
  %i.br = icmp ult i32 %.sroa.0.02.i.i4.i.i, 3
  br i1 %i.br, label %.lr.ph.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i7.i.i.preheader.new:                  ; preds = %.lr.ph.i.i.i7.i.i.preheader
  %unroll_iter184 = and i32 %i.bq, 56
  br label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i7.i.i.preheader.new
  %niter185 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.preheader.new ], [ %niter185.next.7, %.lr.ph.i.i.i7.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !155
  call void @llvm.x86.sse2.pause(), !noalias !155
  call void @llvm.x86.sse2.pause(), !noalias !155
  call void @llvm.x86.sse2.pause(), !noalias !155
  call void @llvm.x86.sse2.pause(), !noalias !155
  call void @llvm.x86.sse2.pause(), !noalias !155
  call void @llvm.x86.sse2.pause(), !noalias !155
  call void @llvm.x86.sse2.pause(), !noalias !155
  %niter185.next.7 = add i32 %niter185, 8         ; 2 uses
  %niter185.ncmp.7 = icmp eq i32 %niter185.next.7, %unroll_iter184
  br i1 %niter185.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i
  %lcmp.mod182.not = icmp eq i32 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.epil.preheader:                 ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.preheader
  %lcmp.mod183 = icmp ne i32 %xtraiter180, 0
  call void @llvm.assume(i1 %lcmp.mod183)
  br label %.lr.ph.i.i.i7.i.i.epil

.lr.ph.i.i.i7.i.i.epil:                           ; preds = %.lr.ph.i.i.i7.i.i.epil, %.lr.ph.i.i.i7.i.i.epil.preheader
  %epil.iter181 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.epil.preheader ], [ %epil.iter181.next, %.lr.ph.i.i.i7.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !155
  %epil.iter181.next = add i32 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i32 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil, !llvm.loop !111

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.epil, %bb.w, %bb.x
  %i.bs = add i32 %.sroa.0.02.i.i4.i.i, 1
  %i.bt = load atomic i64, ptr %i.bl acquire, align 8, !noalias !155
  %i.bu = and i64 %i.bt, 1
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, %bb.v
  %.sroa.015.0.copyload.i.i = load i64, ptr %i.bk, align 16, !noalias !155 ; 2 uses
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.416.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.416.0..sroa_idx.i.i, i64 344, i1 false), !noalias !154
  %i.bw = add nuw nsw i64 %i.w, 1                 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 31
  br i1 %i.bx, label %.lr.ph.i2.i.i.i, label %bb.ab

.lr.ph.i2.i.i.i:                                  ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.aa
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.cg, %bb.aa ], [ 0, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw [368 x i8], ptr %i.u, i64 %.sroa.0.04.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 352 ; 2 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8, !noalias !155
  %i.cb = and i64 %i.ca, 2
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.y, label %.lr.ph.i2.i.i.i.1

bb.y:                                             ; preds = %.lr.ph.i2.i.i.i
  %i.cd = atomicrmw or ptr %i.bz, i64 4 acq_rel, align 8, !noalias !155
  %i.ce = and i64 %i.cd, 2
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.i.i, label %.lr.ph.i2.i.i.i.1

.lr.ph.i2.i.i.i.1:                                ; preds = %bb.y, %.lr.ph.i2.i.i.i
  %i.cg = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.ch = getelementptr inbounds nuw [368 x i8], ptr %i.u, i64 %.sroa.0.04.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 720 ; 2 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8, !noalias !155
  %i.ck = and i64 %i.cj, 2
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i2.i.i.i.1
  %i.cm = atomicrmw or ptr %i.ci, i64 4 acq_rel, align 8, !noalias !155
  %i.cn = and i64 %i.cm, 2
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i2.i.i.i.1
  %exitcond.not.i.i2.i.i.1 = icmp eq i64 %i.cg, 30
  br i1 %exitcond.not.i.i2.i.i.1, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i.i.i, label %.lr.ph.i2.i.i.i

bb.ab:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.cp = atomicrmw or ptr %i.bl, i64 2 acq_rel, align 8, !noalias !155
  %i.cq = and i64 %i.cp, 4
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.ac

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i.i.i: ; preds = %bb.ae, %bb.aa, %bb.ac
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 11424, i64 noundef 16) #27, !noalias !155
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.cs = icmp samesign ult i64 %i.w, 29
  br i1 %i.cs, label %.lr.ph.i4.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.ac, %bb.ae
  %.sroa.0.04.i5.i.i.i = phi i64 [ %i.ct, %bb.ae ], [ %i.bw, %bb.ac ] ; 2 uses
  %i.ct = add nuw nsw i64 %.sroa.0.04.i5.i.i.i, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [368 x i8], ptr %i.u, i64 %.sroa.0.04.i5.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 352 ; 2 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8, !noalias !155
  %i.cx = and i64 %i.cw, 2
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.cz = atomicrmw or ptr %i.cv, i64 4 acq_rel, align 8, !noalias !155
  %i.da = and i64 %i.cz, 2
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i4.i.i.i
  %exitcond.not.i6.i.i.i = icmp eq i64 %i.ct, 30
  br i1 %exitcond.not.i6.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i.i.i, label %.lr.ph.i4.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ad, %bb.y, %bb.z, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i.i.i, %bb.ab
  %i.dc = icmp eq i64 %.sroa.015.0.copyload.i.i, -9223372036854775808
  br i1 %i.dc, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %bb.af

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.k
  store i8 1, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !alias.scope !154
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i

bb.af:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.433.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.416.i.i, i64 344, i1 false)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit.i.i
  %storemerge.i.i = phi i64 [ -9223372036854775808, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.015.0.copyload.i.i, %bb.af ], [ -9223372036854775808, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread.i.i ] ; 2 uses
  store i64 %storemerge.i.i, ptr %i.g, align 16, !alias.scope !154
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i)
  br label %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit

bb.ag:                                            ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.731.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !157
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %.val6)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.dd = load i64, ptr %i.d, align 8, !range !18, !alias.scope !158, !noalias !159, !noundef !13
  %i.de = trunc nuw i64 %i.dd to i1
  br i1 %i.de, label %bb.ah, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !19

bb.ah:                                            ; preds = %.noexc11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160
  %i.df = load ptr, ptr %i.k, align 8, !alias.scope !158, !noalias !159, !nonnull !13, !align !20, !noundef !13
  %i.dg = load i8, ptr %i.l, align 8, !range !21, !alias.scope !158, !noalias !159, !noundef !13
  store ptr %i.df, ptr %i.a, align 8, !noalias !160
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 %i.dg, ptr %i.dh, align 8, !noalias !160
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #34
          to label %bb.an unwind label %bb.ai, !noalias !161

bb.ai:                                            ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !162, !noalias !161, !nonnull !13, !align !20, !noundef !13 ; 3 uses
  %.val1.i = load i8, ptr %i.dh, align 8, !range !21, !alias.scope !162, !noalias !161, !noundef !13
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.dk = trunc nuw i8 %.val1.i to i1
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !163
  %i.dm = and i64 %i.dl, 9223372036854775807
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ak, !prof !22

bb.ak:                                            ; preds = %bb.aj
  %i.do = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc20 unwind label %bb.ao

.noexc20:                                         ; preds = %bb.ak
  br i1 %i.do, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc20
  store atomic i8 1, ptr %i.dj monotonic, align 4, !noalias !163
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.al, %.noexc20, %bb.aj, %bb.ai
  %i.dp = atomicrmw xchg ptr %.val.i, i32 0 release, align 4, !noalias !163
  %i.dq = icmp eq i32 %i.dp, 2
  br i1 %i.dq, label %bb.am, label %.body, !prof !19

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i)
          to label %.body unwind label %bb.ao

bb.an:                                            ; preds = %bb.ah
  unreachable

bb.ao:                                            ; preds = %bb.am, %bb.ak
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !161
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc11
  %i.ds = load ptr, ptr %i.k, align 8, !alias.scope !158, !noalias !159, !nonnull !13, !align !20, !noundef !13 ; 11 uses
  %i.dt = load i8, ptr %i.l, align 8, !range !21, !alias.scope !158, !noalias !159, !noundef !13 ; 2 uses
  %i.du = trunc nuw i8 %i.dt to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !157
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !164, !noalias !165, !noundef !13 ; 4 uses
  %i.dy = icmp ult i64 %i.dx, 384307168202282326
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp eq i64 %i.dx, 0
  br i1 %i.dz, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ea = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @255)
          to label %.noexc.i.i unwind label %bb.bq, !noalias !157

.noexc.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !164, !noalias !165, !nonnull !13, !noundef !13 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.dx, 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i1.i

.lr.ph.i.i.i1.i:                                  ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %.noexc.i.i
  %.sroa.02.012.i.i.i.i = phi i64 [ %i.ex, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ 0, %.noexc.i.i ] ; 3 uses
  %i.ee = phi ptr [ %i.ef, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.ec, %.noexc.i.i ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.eg = load ptr, ptr %i.ee, align 8, !alias.scope !166, !noalias !167, !nonnull !13, !noundef !13 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !168, !noundef !13
  %.not.i.i.i.i2.i = icmp eq i64 %i.ei, %i.ea
  br i1 %.not.i.i.i.i2.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i1.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !166, !noalias !167, !noundef !13
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.em = cmpxchg ptr %i.el, i64 0, i64 %i.ek acq_rel acquire, align 8, !noalias !168
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.em, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %bb.aq, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !166, !noalias !167, !noundef !13 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store atomic ptr %i.ep, ptr %i.er release, align 8, !noalias !168
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.es = load ptr, ptr %i.en, align 8, !noalias !168, !nonnull !13, !noundef !13
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40 ; 2 uses
  %i.eu = atomicrmw xchg ptr %i.et, i32 1 release, align 4, !noalias !168
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %bb.at, label %.noexc9.i.i

bb.at:                                            ; preds = %bb.as
  %i.ew = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.et)
          to label %.noexc9.i.i unwind label %bb.bq, !noalias !157 ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i1.i
  %i.ex = add nuw nsw i64 %.sroa.02.012.i.i.i.i, 1
  %i.ey = icmp eq ptr %i.ef, %i.ed
  br i1 %i.ey, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i, label %.lr.ph.i.i.i1.i

.noexc9.i.i:                                      ; preds = %bb.at, %bb.as
  %i.ez = icmp samesign ult i64 %.sroa.02.012.i.i.i.i, %i.dx
  call void @llvm.assume(i1 %i.ez)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dv, i64 noundef %.sroa.02.012.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i unwind label %bb.bq, !noalias !157

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i: ; preds = %.noexc9.i.i
  %.pr.i.i = load ptr, ptr %i.c, align 8, !noalias !157
  %.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i, label %bb.au

bb.au:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !157
  %i.fa = load ptr, ptr %i.m, align 8, !noalias !157, !noundef !13 ; 11 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  br i1 %i.du, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fc = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !157
  %i.fd = and i64 %i.fc, 9223372036854775807
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.aw, !prof !22

bb.aw:                                            ; preds = %bb.av
  %i.ff = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc11.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !157

.noexc11.i.i:                                     ; preds = %bb.aw
  br i1 %i.ff, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.noexc11.i.i
  store atomic i8 1, ptr %i.fb monotonic, align 4, !noalias !157
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.ax, %.noexc11.i.i, %bb.av, %bb.au
  %i.fg = atomicrmw xchg ptr %i.ds, i32 0 release, align 4, !noalias !157
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i, !prof !19

bb.ay:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ds)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !157

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !157
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ds, i64 104
  %i.fj = load i8, ptr %i.fi, align 8, !range !21, !noalias !157, !noundef !13
  store i8 %i.fj, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !alias.scope !157
  store i64 -9223372036854775808, ptr %i.g, align 16, !alias.scope !157
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  br i1 %i.du, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i, label %bb.bm

.loopexit.i.i:                                    ; preds = %bb.bc
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.aw, %bb.ay
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit32, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.fl = load ptr, ptr %i.b, align 8, !alias.scope !173, !noalias !157, !nonnull !13, !noundef !13
  %i.fm = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !174
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.az, label %.body

bb.az:                                            ; preds = %.loopexit.split-lp.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #35
          to label %.body unwind label %bb.bl, !noalias !157

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ay, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.fo = icmp eq ptr %i.fa, null
  br i1 %i.fo, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 353
  %i.fq = load i8, ptr %i.fp, align 1, !range !21, !noalias !175, !noundef !13
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 352 ; 2 uses
  %i.ft = load atomic i8, ptr %i.fs acquire, align 1, !noalias !175
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %.lr.ph.i.i14.i.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i

.lr.ph.i.i14.i.i:                                 ; preds = %bb.bb, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i
  %.sroa.0.02.i.i.i4.i = phi i32 [ %i.fy, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i ], [ 0, %bb.bb ] ; 6 uses
  %i.fv = icmp ult i32 %.sroa.0.02.i.i.i4.i, 7
  br i1 %i.fv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i14.i.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i unwind label %.loopexit.i.i, !noalias !157

bb.bd:                                            ; preds = %.lr.ph.i.i14.i.i
  %.not.i.i.i15.i.i = icmp eq i32 %.sroa.0.02.i.i.i4.i, 0
  br i1 %.not.i.i.i15.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i, label %.lr.ph.i.i.i.i6.i.preheader

.lr.ph.i.i.i.i6.i.preheader:                      ; preds = %bb.bd
  %i.fw = mul nuw nsw i32 %.sroa.0.02.i.i.i4.i, %.sroa.0.02.i.i.i4.i ; 2 uses
  %xtraiter = and i32 %i.fw, 7                    ; 3 uses
  %i.fx = icmp ult i32 %.sroa.0.02.i.i.i4.i, 3
  br i1 %i.fx, label %.lr.ph.i.i.i.i6.i.epil.preheader, label %.lr.ph.i.i.i.i6.i.preheader.new

.lr.ph.i.i.i.i6.i.preheader.new:                  ; preds = %.lr.ph.i.i.i.i6.i.preheader
  %unroll_iter = and i32 %i.fw, 56
  br label %.lr.ph.i.i.i.i6.i

.lr.ph.i.i.i.i6.i:                                ; preds = %.lr.ph.i.i.i.i6.i, %.lr.ph.i.i.i.i6.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i6.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i6.i ]
  call void @llvm.x86.sse2.pause(), !noalias !175
  call void @llvm.x86.sse2.pause(), !noalias !175
  call void @llvm.x86.sse2.pause(), !noalias !175
  call void @llvm.x86.sse2.pause(), !noalias !175
  call void @llvm.x86.sse2.pause(), !noalias !175
  call void @llvm.x86.sse2.pause(), !noalias !175
  call void @llvm.x86.sse2.pause(), !noalias !175
  call void @llvm.x86.sse2.pause(), !noalias !175
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i6.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i6.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i, label %.lr.ph.i.i.i.i6.i.epil.preheader

.lr.ph.i.i.i.i6.i.epil.preheader:                 ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i6.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.i.i6.i.epil

.lr.ph.i.i.i.i6.i.epil:                           ; preds = %.lr.ph.i.i.i.i6.i.epil, %.lr.ph.i.i.i.i6.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i6.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i6.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !175
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i, label %.lr.ph.i.i.i.i6.i.epil, !llvm.loop !137

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i6.i.epil, %bb.bd, %bb.bc
  %i.fy = add i32 %.sroa.0.02.i.i.i4.i, 1
  %i.fz = load atomic i8, ptr %i.fs acquire, align 1, !noalias !175
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.i.i14.i.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i5.i, %bb.bb
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %i.fa, align 16, !noalias !175 ; 2 uses
  store i64 -9223372036854775808, ptr %i.fa, align 16, !noalias !175
  %.not.i.i3.i = icmp eq i64 %.sroa.04.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i3.i, label %.invoke.i.i, label %bb.bf, !prof !19

bb.be:                                            ; preds = %bb.ba
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.fa, align 16, !noalias !175 ; 2 uses
  store i64 -9223372036854775808, ptr %i.fa, align 16, !noalias !175
  %.not11.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not11.i.i.i, label %.invoke.i.i, label %bb.bg, !prof !19

.invoke.i.i:                                      ; preds = %bb.be, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.gb = phi ptr [ @271, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ @272, %bb.be ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb) #36
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !157

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.bf:                                            ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.731.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.56.0..sroa_idx.i.i.i, i64 344, i1 false), !noalias !157
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fa, i64 noundef 368, i64 noundef 16) #27, !noalias !175
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.731.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.5.0..sroa_idx.i.i.i, i64 344, i1 false), !noalias !157
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fa, i64 352
  store atomic i8 1, ptr %i.gc release, align 16, !noalias !175
  br label %bb.bi

bb.bh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit.i.i
  store i8 1, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !alias.scope !157
  store i64 -9223372036854775808, ptr %i.g, align 16, !alias.scope !157
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.030.0.ph.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.bg ], [ %.sroa.04.0.copyload.i.i.i, %bb.bf ] ; 2 uses
  store i64 %.sroa.030.0.ph.i.i, ptr %i.g, align 16, !alias.scope !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.433.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.731.i.i, i64 344, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pr78 = phi i64 [ %.sroa.030.0.ph.i.i, %bb.bi ], [ -9223372036854775808, %bb.bh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.gd = load ptr, ptr %i.b, align 8, !alias.scope !180, !noalias !157, !nonnull !13, !noundef !13
  %i.ge = atomicrmw sub ptr %i.gd, i64 1 release, align 8, !noalias !181
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i

bb.bk:                                            ; preds = %bb.bj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i: ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !157
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i

bb.bl:                                            ; preds = %bb.bq, %bb.az
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !157
  unreachable

bb.bm:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i
  %i.gh = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !157
  %i.gi = and i64 %i.gh, 9223372036854775807
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i, label %bb.bn, !prof !22

bb.bn:                                            ; preds = %bb.bm
  %i.gk = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %bb.bn
  br i1 %i.gk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i, label %bb.bo

bb.bo:                                            ; preds = %.noexc13
  store atomic i8 1, ptr %i.fk monotonic, align 4, !noalias !157
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i: ; preds = %bb.bo, %.noexc13, %bb.bm, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread.i.i
  %i.gl = atomicrmw xchg ptr %i.ds, i32 0 release, align 4, !noalias !157
  %i.gm = icmp eq i32 %i.gl, 2
  br i1 %i.gm, label %bb.bp, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i, !prof !19

bb.bp:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ds)
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bq:                                            ; preds = %.noexc9.i.i, %bb.at, %.lr.ph.i.preheader.i.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.ds, i8 %i.dt) #37
          to label %.body unwind label %bb.bl, !noalias !157

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bp, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i
  %.pr77 = phi i64 [ -9223372036854775808, %bb.bp ], [ -9223372036854775808, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i21.i.i ], [ %.pr78, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.731.i.i)
  br label %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.bu, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.am, %bb.bq, %bb.az, %.loopexit.split-lp.i.i, %.body17
  %.pn = phi { ptr, i32 } [ %eh.lpad-body18, %.body17 ], [ %i.di, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.phi.i.i, %bb.az ], [ %lpad.thr_comm.i.i, %bb.bq ], [ %i.di, %bb.am ], [ %i.gu, %bb.bu ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit27, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit29, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %bb.ce unwind label %bb.cd

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.t
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.f, %bb.n
  %lpad.loopexit27 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bp, %bb.bn, %bb.bk, %bb.ag, %bb.c
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.br
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i, %._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i
  %i.gn = phi i64 [ %storemerge.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i ], [ %.pr.pre, %._RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exitthread-pre-split_crit_edge ], [ %.pr77, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.go = icmp eq i64 %i.gn, -9223372036854775808
  %.pre = load i64, ptr %i.p, align 8             ; 5 uses
  br i1 %i.go, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bw, %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit
  %i.gp = phi i64 [ %i.s, %bb.bw ], [ %.pre, %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gq = icmp ult i64 %i.gp, 26202761468337432
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add i64 %i.gp, %.sroa.0.053             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor17export_batch_syncNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %_RNvMsg_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.f, ptr noundef nonnull align 16 dereferenceable(352) %i.g, i64 352, i1 false)
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #35
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.at, %bb.z, %bb.f, %bb.e, %bb.af, %bb.az
  %.sroa.019.2 = phi i1 [ false, %bb.az ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.e ], [ false, %bb.at ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.es, %bb.az ], [ %i.da, %bb.af ], [ %i.cf, %bb.z ], [ %i.aa, %bb.e ], [ %i.dx, %bb.at ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.j) #37
          to label %.body61 unwind label %bb.aq

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.r, %.noexc51
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.t, %.thread10, %bb.u, %bb.l, %bb.n, %bb.aj, %bb.al, %bb.bd, %bb.bf
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.aj ], [ false, %bb.bd ], [ false, %bb.u ], [ false, %bb.n ], [ false, %bb.bf ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.i ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !10974, !noalias !10975, !nonnull !13, !noundef !13
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ah = add i64 %i.x, 1
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !10974, !noalias !10975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !range !21, !noundef !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.am = trunc nuw i8 %i.ak to i1
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, !prof !19

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !13, !align !20, !noundef !13 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !range !15, !noundef !13 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, %bb.o
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, %.noexc51
  %i.bb = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.bd = extractvalue { i64, i32 } %i.bc, 0      ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1      ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av
  %i.bg = icmp slt i64 %i.bd, %i.av
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg
  br i1 %spec.select.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc50
  %i.bi = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bi, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bi, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %.thread10, label %.split7.us.i

bb.r:                                             ; preds = %.noexc50
  %i.bj = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 0, 1000000001) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.r
  %i.bk = extractvalue { i64, i32 } %i.bj, 0
  %i.bl = extractvalue { i64, i32 } %i.bj, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bk, i32 noundef %i.bl)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread10
    i64 2, label %bb.u
    i64 3, label %.thread
  ], !prof !96

bb.s:                                             ; preds = %.split7.us.i
  unreachable

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #34
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !13, !align !20, !noundef !13
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bn)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !13, !align !20, !noundef !13
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bp)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bq = load atomic i8, ptr %i.o acquire, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10wait_readyCs7p2uQeJxui2_9deltalake.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bv, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bs = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.bt = mul nuw nsw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bt, 7                    ; 3 uses
  %i.bu = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bt, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !10923

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.v, %bb.w
  %i.bv = add i32 %.sroa.0.02.i, 1
  %i.bw = load atomic i8, ptr %i.o acquire, align 8
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10wait_readyCs7p2uQeJxui2_9deltalake.exit.loopexit

bb.x:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !10977)
  %i.by = load i64, ptr %i.g, align 8, !range !18, !alias.scope !10977, !noalias !10978, !noundef !13
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.y, label %bb.ac, !prof !19

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10979
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !10977, !noalias !10978, !nonnull !13, !align !20, !noundef !13
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !range !21, !alias.scope !10977, !noalias !10978, !noundef !13
  store ptr %i.cb, ptr %i.a, align 8, !noalias !10979
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cd, ptr %i.ce, align 8, !noalias !10979
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #34
          to label %bb.aa unwind label %bb.z, !noalias !10977

bb.z:                                             ; preds = %bb.y
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %.body unwind label %bb.ab, !noalias !10977

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !10977
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !10977, !noalias !10978, !nonnull !13, !align !20, !noundef !13 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !range !21, !alias.scope !10977, !noalias !10978, !noundef !13 ; 2 uses
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !10980)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !10980, !noalias !10981, !nonnull !13, !noundef !13 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !10980, !noalias !10981, !noundef !13 ; 2 uses
  %.idx64 = mul nuw nsw i64 %i.cq, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx64
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

bb.ad:                                            ; preds = %.lr.ph63
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.cu = add nuw nsw i64 %i.cx, 1
  %i.cv = icmp eq ptr %i.ct, %i.cr
  br i1 %i.cv, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.ac, %bb.ad
  %i.cw = phi ptr [ %i.ct, %bb.ad ], [ %i.co, %bb.ac ] ; 2 uses
  %i.cx = phi i64 [ %i.cu, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !10982, !noalias !10983, !noundef !13
  %.not.i.i54 = icmp eq i64 %i.cz, %i.m
  br i1 %.not.i.i54, label %bb.ae, label %bb.ad

bb.ae:                                            ; preds = %.lr.ph63
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cm, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.ci, i8 %i.ck) #37
          to label %.body unwind label %bb.aq

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ae
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ag, !prof !97

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !10984)
  call void @llvm.experimental.noalias.scope.decl(metadata !10985)
  call void @llvm.experimental.noalias.scope.decl(metadata !10986)
  call void @llvm.experimental.noalias.scope.decl(metadata !10987)
  %i.db = load ptr, ptr %i.i, align 8, !alias.scope !10988, !nonnull !13, !noundef !13
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !10988
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit unwind label %bb.af

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ad, %bb.ac, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #34
          to label %bb.b unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ag, %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  br i1 %i.cl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit
  %i.df = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dg = and i64 %i.df, 9223372036854775807
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.aj, !prof !22

bb.aj:                                            ; preds = %bb.ai
  %i.di = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  br i1 %i.di, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ak

bb.ak:                                            ; preds = %.noexc58
  store atomic i8 1, ptr %i.de monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.ak, %.noexc58, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit
  %i.dj = atomicrmw xchg ptr %i.ci, i32 0 release, align 4
  %i.dk = icmp eq i32 %i.dj, 2
  br i1 %i.dk, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit60, !prof !19

bb.al:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit60: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8 ; 2 uses
  store i64 -9223372036854775805, ptr %i.j, align 8
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775805
  br i1 %.not26, label %.invoke, label %bb.am, !prof !19

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit60
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit60
  %i.dl = phi ptr [ @160, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit60 ], [ @163, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit72 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl) #34
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10wait_readyCs7p2uQeJxui2_9deltalake.exit.loopexit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
end_hunk_1
begin_hunk_2_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #35
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ay, %bb.aa, %bb.g, %bb.f, %bb.ag, %bb.be
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.be ], [ %i.cz, %bb.ag ], [ %i.ce, %bb.aa ], [ %i.z, %bb.f ], [ %i.eb, %bb.ay ], [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.04.2 = phi i1 [ false, %bb.be ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.f ], [ false, %bb.ay ], [ true, %bb.g ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.j) #37
          to label %bb.b unwind label %bb.av

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc39
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bm, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bi, %bb.bk
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bi ], [ false, %bb.bm ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bk ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !11074, !noalias !11075, !nonnull !13, !noundef !13
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !11074, !noalias !11075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !21, !noundef !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ak monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.aq = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, !prof !19

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !13, !align !20, !noundef !13 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !range !15, !noundef !13 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, %bb.p
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.az, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, %.noexc39
  %i.ba = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bb = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.bc = extractvalue { i64, i32 } %i.bb, 0      ; 3 uses
  %i.bd = extractvalue { i64, i32 } %i.bb, 1      ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.au
  %i.bf = icmp slt i64 %i.bc, %i.au
  %i.bg = icmp samesign ult i32 %i.bd, %i.aw
  %spec.select.i = select i1 %i.be, i1 %i.bg, i1 %i.bf
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc38
  %i.bh = cmpxchg ptr %i.ay, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bh, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bh, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc38
  %i.bi = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bc, i32 noundef %i.bd)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.bj = extractvalue { i64, i32 } %i.bi, 0
  %i.bk = extractvalue { i64, i32 } %i.bi, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i64 noundef %i.bj, i32 noundef %i.bk)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.az, %.split.us.i ], [ %i.az, %.split.us.i ], [ %i.ba, %.split.i ], [ %i.ba, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !96

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #34
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !13, !align !20, !noundef !13
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bm)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !13, !align !20, !noundef !13
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bo)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bp = load atomic i8, ptr %i.n acquire, align 8
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bu, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.br = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.br, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bs = mul nuw nsw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bs, 7                    ; 3 uses
  %i.bt = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bt, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bs, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod79 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11013

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bu = add i32 %.sroa.0.02.i, 1
  %i.bv = load atomic i8, ptr %i.n acquire, align 8
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !11077)
  %i.bx = load i64, ptr %i.g, align 8, !range !18, !alias.scope !11077, !noalias !11078, !noundef !13
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.z, label %bb.ad, !prof !19

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11079
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !11077, !noalias !11078, !nonnull !13, !align !20, !noundef !13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cc = load i8, ptr %i.cb, align 8, !range !21, !alias.scope !11077, !noalias !11078, !noundef !13
  store ptr %i.ca, ptr %i.a, align 8, !noalias !11079
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cc, ptr %i.cd, align 8, !noalias !11079
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #34
          to label %bb.ab unwind label %bb.aa, !noalias !11077

bb.aa:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %.body unwind label %bb.ac, !noalias !11077

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !11077
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !11077, !noalias !11078, !nonnull !13, !align !20, !noundef !13 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !range !21, !alias.scope !11077, !noalias !11078, !noundef !13 ; 2 uses
  %i.ck = trunc nuw i8 %i.cj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !11080)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !11080, !noalias !11081, !nonnull !13, !noundef !13 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !11080, !noalias !11081, !noundef !13 ; 2 uses
  %.idx66 = mul nuw nsw i64 %i.cp, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx66
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph65

bb.ae:                                            ; preds = %.lr.ph65
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.ct = add nuw nsw i64 %i.cw, 1
  %i.cu = icmp eq ptr %i.cs, %i.cq
  br i1 %i.cu, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.ad, %bb.ae
  %i.cv = phi ptr [ %i.cs, %bb.ae ], [ %i.cn, %bb.ad ] ; 2 uses
  %i.cw = phi i64 [ %i.ct, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !11082, !noalias !11083, !noundef !13
  %.not.i.i42 = icmp eq i64 %i.cy, %i.l
  br i1 %.not.i.i42, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph65
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cl, i64 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.ch, i8 %i.cj) #37
          to label %.body unwind label %bb.av

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !97

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !11084)
  call void @llvm.experimental.noalias.scope.decl(metadata !11085)
  call void @llvm.experimental.noalias.scope.decl(metadata !11086)
  call void @llvm.experimental.noalias.scope.decl(metadata !11087)
  %i.da = load ptr, ptr %i.i, align 8, !alias.scope !11088, !nonnull !13, !noundef !13
  %i.db = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !11088
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #34
          to label %bb.c unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ah, %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  br i1 %i.ck, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit
  %i.de = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.df = and i64 %i.de, 9223372036854775807
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.ak, !prof !22

bb.ak:                                            ; preds = %bb.aj
  %i.dh = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ak
  br i1 %i.dh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.al

bb.al:                                            ; preds = %.noexc46
  store atomic i8 1, ptr %i.dd monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45: ; preds = %bb.al, %.noexc46, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit
  %i.di = atomicrmw xchg ptr %i.ch, i32 0 release, align 4
  %i.dj = icmp eq i32 %i.di, 2
  br i1 %i.dj, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit48, !prof !19

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ch)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit48: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dk, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit61, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit48
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bl ], [ 4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit61 ], [ 4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit48 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11089)
  call void @llvm.experimental.noalias.scope.decl(metadata !11090)
  call void @llvm.experimental.noalias.scope.decl(metadata !11091)
  %i.dl = load i64, ptr %i.j, align 8, !range !38, !alias.scope !11092, !noundef !13 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4
  br i1 %i.dm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !11093)
  switch i64 %i.dl, label %default.unreachable [
    i64 0, label %bb.ar
    i64 1, label %bb.at
    i64 2, label %bb.au
    i64 3, label %bb.ap
  ]

end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !11894
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @246, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #34
          to label %bb.d unwind label %bb.c, !noalias !11892

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume unwind label %bb.e, !noalias !11892

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !11892
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %lpad.phi, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11892, !noalias !11893, !nonnull !13, !align !20, !noundef !13 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !21, !alias.scope !11892, !noalias !11893, !noundef !13 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11895)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !11895, !nonnull !13, !noundef !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !11895, !noundef !13 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.u, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, %.noexc5
  %.sroa.0.03.i = phi ptr [ %i.x, %.noexc5 ], [ %i.s, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !11895, !nonnull !13, !noundef !13
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 24
  %i.z = cmpxchg ptr %i.y, i64 0, i64 2 acq_rel acquire, align 8, !noalias !11895
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.z, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.f, label %.noexc5

._crit_edge.i:                                    ; preds = %.noexc5, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.q) #32
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !11895, !nonnull !13, !noundef !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !11895, !nonnull !13, !noundef !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ae = atomicrmw xchg ptr %i.ad, i32 1 release, align 4, !noalias !11895
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
  %i.ai = load i64, ptr %i.t, align 8, !noundef !13 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !13 ; 2 uses
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
  br i1 %i.au, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.av = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.av, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.ar monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aw = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7p2uQeJxui2_9deltalake.exit, !prof !19

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
  call void @llvm.experimental.noalias.scope.decl(metadata !11939)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !11939 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !11939 ; 8 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11939
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.v = mul nuw nsw i32 %.sroa.0.034.i, %.sroa.0.034.i ; 2 uses
  %xtraiter92 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter96 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter97 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter97.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
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
  call void @llvm.x86.sse2.pause(), !noalias !11939
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11898

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
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !11939 ; 3 uses
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
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11939
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i

bb.m:                                             ; preds = %bb.k
  %.not.i18.i = icmp eq i32 %.sroa.0.034.i, 0
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.m
  %i.aj = mul nuw nsw i32 %.sroa.0.034.i, %.sroa.0.034.i ; 2 uses
  %xtraiter86 = and i32 %i.aj, 7                  ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.034.i, 3
  br i1 %i.ak, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter90 = and i32 %i.aj, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter91 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter91.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
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
  call void @llvm.x86.sse2.pause(), !noalias !11939
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !11899

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !11939
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
  call void @llvm.x86.sse2.pause(), !noalias !11939
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !11900

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.034.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.034.i.be = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 992 ; 2 uses
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !11939 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.i27.i:                                     ; preds = %bb.q, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.ax, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.au = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i27.i
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11939
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.av = mul nuw nsw i32 %.sroa.0.02.i28.i, %.sroa.0.02.i28.i ; 2 uses
  %xtraiter98 = and i32 %i.av, 7                  ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.02.i28.i, 3
  br i1 %i.aw, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter102 = and i32 %i.av, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
  call void @llvm.x86.sse2.pause(), !noalias !11939
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
  call void @llvm.x86.sse2.pause(), !noalias !11939
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !11901

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.ax = add i32 %.sroa.0.02.i28.i, 1
  %i.ay = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !11939 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.lr.ph.i27.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ay, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.ba = and i64 %.sroa.01.0.i, -2
  %i.bb = add i64 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 992
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8, !noalias !11939
  %i.be = icmp ne ptr %i.bd, null
  %i.bf = zext i1 %i.be to i64
  %spec.select17.i = or disjoint i64 %i.bb, %i.bf
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !11939
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !11939
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i
  %i.bg = load i32, ptr %i.i, align 8, !range !15, !noundef !13 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i, %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !11939
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !11939
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.s ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 3 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8, !noalias !11940
  %i.bk = and i64 %i.bj, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.t, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bp, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.t ] ; 6 uses
  %i.bm = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bm, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11940
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.v:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.v
  %i.bn = mul nuw nsw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4 ; 2 uses
  %xtraiter104 = and i32 %i.bn, 7                 ; 3 uses
  %i.bo = icmp ult i32 %.sroa.0.02.i.i4, 3
  br i1 %i.bo, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter108 = and i32 %i.bn, 56
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter109 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter109.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !11940
  call void @llvm.x86.sse2.pause(), !noalias !11940
  call void @llvm.x86.sse2.pause(), !noalias !11940
  call void @llvm.x86.sse2.pause(), !noalias !11940
  call void @llvm.x86.sse2.pause(), !noalias !11940
  call void @llvm.x86.sse2.pause(), !noalias !11940
  call void @llvm.x86.sse2.pause(), !noalias !11940
  call void @llvm.x86.sse2.pause(), !noalias !11940
  %niter109.next.7 = add i32 %niter109, 8         ; 2 uses
  %niter109.ncmp.7 = icmp eq i32 %niter109.next.7, %unroll_iter108
  br i1 %niter109.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod106.not = icmp eq i32 %xtraiter104, 0
  br i1 %lcmp.mod106.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod107 = icmp ne i32 %xtraiter104, 0
  call void @llvm.assume(i1 %lcmp.mod107)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter105 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter105.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11940
  %epil.iter105.next = add i32 %epil.iter105, 1   ; 2 uses
  %epil.iter105.cmp.not = icmp eq i32 %epil.iter105.next, %xtraiter104
  br i1 %epil.iter105.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !11904

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.v, %bb.u
  %i.bp = add i32 %.sroa.0.02.i.i4, 1
  %i.bq = load atomic i64, ptr %i.bi acquire, align 8, !noalias !11940
  %i.br = and i64 %i.bq, 1
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, %bb.t
  %.sroa.018.0.copyload = load i64, ptr %i.bh, align 8, !noalias !11940 ; 2 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.419.0..sroa_idx, i64 16, i1 false)
  %i.bt = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 31
  br i1 %i.bu, label %.lr.ph.i2.i, label %bb.z

.lr.ph.i2.i:                                      ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i, %bb.y
  %.sroa.0.04.i.i = phi i64 [ %i.cd, %bb.y ], [ 0, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.0.04.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8, !noalias !11940
  %i.by = and i64 %i.bx, 2
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.w, label %.lr.ph.i2.i.1

bb.w:                                             ; preds = %.lr.ph.i2.i
  %i.ca = atomicrmw or ptr %i.bw, i64 4 acq_rel, align 8, !noalias !11940
  %i.cb = and i64 %i.ca, 2
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i2.i.1

.lr.ph.i2.i.1:                                    ; preds = %bb.w, %.lr.ph.i2.i
  %i.cd = add nuw nsw i64 %.sroa.0.04.i.i, 2      ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.0.04.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56 ; 2 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8, !noalias !11940
  %i.ch = and i64 %i.cg, 2
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i2.i.1
  %i.cj = atomicrmw or ptr %i.cf, i64 4 acq_rel, align 8, !noalias !11940
  %i.ck = and i64 %i.cj, 2
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i2.i.1
  %exitcond.not.i.i2.1 = icmp eq i64 %i.cd, 30
  br i1 %exitcond.not.i.i2.1, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i, label %.lr.ph.i2.i

bb.z:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i
  %i.cm = atomicrmw or ptr %i.bi, i64 2 acq_rel, align 8, !noalias !11940
  %i.cn = and i64 %i.cm, 4
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit, label %bb.aa

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i: ; preds = %bb.ac, %bb.y, %bb.aa
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef 1000, i64 noundef 8) #27, !noalias !11940
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit

bb.aa:                                            ; preds = %bb.z
  %i.cp = icmp samesign ult i64 %i.s, 29
  br i1 %i.cp, label %.lr.ph.i4.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i

.lr.ph.i4.i:                                      ; preds = %bb.aa, %bb.ac
  %.sroa.0.04.i5.i = phi i64 [ %i.cq, %bb.ac ], [ %i.bt, %bb.aa ] ; 2 uses
  %i.cq = add nuw nsw i64 %.sroa.0.04.i5.i, 1     ; 2 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.sroa.0.04.i5.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8, !noalias !11940
  %i.cu = and i64 %i.ct, 2
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i4.i
  %i.cw = atomicrmw or ptr %i.cs, i64 4 acq_rel, align 8, !noalias !11940
  %i.cx = and i64 %i.cw, 2
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i4.i
  %exitcond.not.i6.i = icmp eq i64 %i.cq, 30
  br i1 %exitcond.not.i6.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i, label %.lr.ph.i4.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ab, %bb.w, %bb.x, %bb.z, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCs7p2uQeJxui2_9deltalake.exit.sink.split.i
  %i.cz = icmp eq i64 %.sroa.018.0.copyload, 4
  br i1 %i.cz, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.au

bb.ad:                                            ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit
  %i.da = load i64, ptr %i.h, align 8, !noundef !13 ; 2 uses
  %i.db = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.dc = extractvalue { i64, i32 } %i.db, 0      ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %i.da
  br i1 %i.dd, label %.split, label %bb.ar

bb.ae:                                            ; preds = %.split, %bb.ar, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11941
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.de = load i8, ptr %i.o, align 8, !range !26, !noalias !11942, !noundef !13
  %i.df = icmp eq i8 %i.de, 1
  br i1 %i.df, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !22

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ae
  %i.dg = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !11941 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.ae
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dg, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.n, %bb.ae ] ; 4 uses
  %i.di = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11941, !noundef !13 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11941
  %.not.i.i.i10 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i10, label %bb.af, label %bb.al, !prof !19

bb.af:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11941
  %i.dj = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !11941 ; 2 uses
  store ptr %i.dj, ptr %i.e, align 8, !noalias !11941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11941
  store ptr %i.g, ptr %i.c, align 8, !noalias !11941
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB7_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dj)
          to label %bb.ai unwind label %bb.ag, !noalias !11941

bb.ag:                                            ; preds = %bb.af
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11943)
  call void @llvm.experimental.noalias.scope.decl(metadata !11944)
  call void @llvm.experimental.noalias.scope.decl(metadata !11945)
  %i.dl = load ptr, ptr %i.e, align 8, !alias.scope !11946, !noalias !11941, !nonnull !13, !noundef !13
  %i.dm = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !11947
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ak, !noalias !11941

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11941
  call void @llvm.experimental.noalias.scope.decl(metadata !11948)
  call void @llvm.experimental.noalias.scope.decl(metadata !11949)
  call void @llvm.experimental.noalias.scope.decl(metadata !11950)
  %i.do = load ptr, ptr %i.e, align 8, !alias.scope !11951, !noalias !11941, !nonnull !13, !noundef !13
  %i.dp = atomicrmw sub ptr %i.do, i64 1 release, align 8, !noalias !11952
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #35, !noalias !11941
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11941
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
end_hunk_3
begin_hunk_4_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake:bb.a
          to label %common.resume unwind label %bb.e, !noalias !12036

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !12036
  unreachable

common.resume:                                    ; preds = %bb.bf, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bf ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !12036, !noalias !12037, !nonnull !13, !align !20, !noundef !13 ; 19 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !21, !alias.scope !12036, !noalias !12037, !noundef !13 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12039)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !12039, !noalias !12040, !noundef !13 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @255)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !12039, !noalias !12040, !nonnull !13, !noundef !13 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bg, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12041)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !12041, !noalias !12042, !nonnull !13, !noundef !13 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !12043, !noundef !13
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !12041, !noalias !12042, !noundef !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !12043
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.av, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !12041, !noalias !12042, !noundef !13 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.ay, ptr %i.ba release, align 8, !noalias !12043
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bb = load ptr, ptr %i.aw, align 8, !noalias !12043, !nonnull !13, !noundef !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 2 uses
  %i.bd = atomicrmw xchg ptr %i.bc, i32 1 release, align 4, !noalias !12043
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bf = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bc)
          to label %.noexc9 unwind label %bb.bf   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bg = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bh = icmp eq ptr %i.ao, %i.am
  br i1 %i.bh, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bi = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bi)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bf

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !13
  store ptr %i.bk, ptr %i.p, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bn = and i64 %i.bm, 9223372036854775807
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l
  %i.bp = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bl monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.bq = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.br = icmp eq i32 %i.bq, 2
  br i1 %i.br, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, !prof !19

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs7p2uQeJxui2_9deltalake.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bt = load i8, ptr %i.bs, align 8, !range !21, !noundef !13
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.az, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12044)
  call void @llvm.experimental.noalias.scope.decl(metadata !12045)
  call void @llvm.experimental.noalias.scope.decl(metadata !12046)
  call void @llvm.experimental.noalias.scope.decl(metadata !12047)
  %i.bv = load ptr, ptr %i.j, align 8, !alias.scope !12048, !nonnull !13, !noundef !13
  %i.bw = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !12048
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #35
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !13 ; 11 uses
  %i.by = icmp eq ptr %.val8, null
  br i1 %i.by, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.val8, i64 25
  %i.ca = load i8, ptr %i.bz, align 1, !range !21, !noalias !12049, !noundef !13
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 24 ; 2 uses
  %i.cd = load atomic i8, ptr %i.cc acquire, align 1, !noalias !12049
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.ci, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cf = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.cg = mul nuw nsw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.cg, 7                    ; 3 uses
  %i.ch = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ch, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.cg, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !12049
  call void @llvm.x86.sse2.pause(), !noalias !12049
  call void @llvm.x86.sse2.pause(), !noalias !12049
  call void @llvm.x86.sse2.pause(), !noalias !12049
  call void @llvm.x86.sse2.pause(), !noalias !12049
  call void @llvm.x86.sse2.pause(), !noalias !12049
  call void @llvm.x86.sse2.pause(), !noalias !12049
  call void @llvm.x86.sse2.pause(), !noalias !12049
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !12049
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !11988

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.ci = add i32 %.sroa.0.02.i.i, 1
  %i.cj = load atomic i8, ptr %i.cc acquire, align 1, !noalias !12049
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 8, !noalias !12049 ; 2 uses
  store i64 4, ptr %.val8, align 8, !noalias !12049
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, 4
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !19

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 8, !noalias !12049 ; 2 uses
  store i64 4, ptr %.val8, align 8, !noalias !12049
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, 4
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !19

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i
  %i.cl = phi ptr [ @271, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i ], [ @272, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl) #36
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_readyCs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i64 16, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 32, i64 noundef 8) #27, !noalias !12049
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  store atomic i8 1, ptr %i.cm release, align 8, !noalias !12049
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cn, align 8
  store i64 4, ptr %0, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !12050)
  call void @llvm.experimental.noalias.scope.decl(metadata !12051)
  call void @llvm.experimental.noalias.scope.decl(metadata !12052)
  call void @llvm.experimental.noalias.scope.decl(metadata !12053)
  %i.co = load ptr, ptr %i.j, align 8, !alias.scope !12054, !nonnull !13, !noundef !13
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !12054
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bf
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !12055)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12056
  store ptr %i.m, ptr %i.h, align 8, !noalias !12055
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !12055
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !12055
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !12055
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !12055
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cs = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i8, ptr %i.ct, align 8, !range !26, !noalias !12057, !noundef !13
  %i.cv = icmp eq i8 %i.cu, 1
  br i1 %i.cv, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !22

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ad
  %i.cw = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.cs, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.as, !noalias !12056 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4O_ECs7p2uQeJxui2_9deltalake.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cw, %.noexc.i ], [ %i.cs, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12058
  %i.cy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !12059, !noundef !13 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !12059
  %.not.i.i.i21 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !19

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12059
  %i.cz = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.as, !noalias !12056 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.cz, ptr %i.f, align 8, !noalias !12059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12059
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !12059
  store ptr %i.m, ptr %i.c, align 8, !noalias !12055
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !12055
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !12055
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !12055
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !12059
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.cz)
          to label %bb.ai unwind label %bb.ag, !noalias !12058

bb.ag:                                            ; preds = %bb.af
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !12060
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #35
          to label %.body.i unwind label %bb.ak, !noalias !12059

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12059
  %i.dd = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !12061
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit24.i.i.i unwind label %bb.as, !noalias !12056

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12059
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4O_ECs7p2uQeJxui2_9deltalake.exit.i

bb.ak:                                            ; preds = %bb.ar, %bb.ap, %bb.ah
end_hunk_4
begin_hunk_5_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10disconnectCs7p2uQeJxui2_9deltalake:bb.a
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.h
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge.i11, %._crit_edge.i
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit16, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.m, i8 %i.o) #37
          to label %common.resume unwind label %bb.o

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit: ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !12076)
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !12076, !nonnull !13, !noundef !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !12076, !noundef !13 ; 2 uses
  %.idx.i6 = mul nuw nsw i64 %i.ap, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i6
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %._crit_edge.i11, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit, %.noexc12
  %.sroa.0.03.i8 = phi ptr [ %i.as, %.noexc12 ], [ %i.an, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i8, i64 24 ; 2 uses
  %.sroa.0.0.val.i9 = load ptr, ptr %.sroa.0.03.i8, align 8, !noalias !12076, !nonnull !13, !noundef !13
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i9, i64 24
  %i.au = cmpxchg ptr %i.at, i64 0, i64 2 acq_rel acquire, align 8, !noalias !12076
  %.sroa.18.0.in.i.i.i10 = extractvalue { i64, i1 } %i.au, 1
  br i1 %.sroa.18.0.in.i.i.i10, label %bb.i, label %.noexc12

._crit_edge.i11:                                  ; preds = %.noexc12, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al) #32
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit13 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph.i7
  %i.av = load ptr, ptr %.sroa.0.03.i8, align 8, !noalias !12076, !nonnull !13, !noundef !13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !12076, !nonnull !13, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.az = atomicrmw xchg ptr %i.ay, i32 1 release, align 4, !noalias !12076
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
  br i1 %i.bg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.bh = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #35
  br i1 %i.bh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.bd monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit13
  %i.bi = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs7p2uQeJxui2_9deltalake.exit, !prof !19

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
  br label %bb.cy

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12186)
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 5 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8, !noalias !12187 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 5 uses
  %i.aa = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12187
  %i.ab = and i64 %i.y, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.lr.ph.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.016.0.copyload36.i = load i64, ptr %i.u, align 8, !alias.scope !12186, !noalias !12185
  %.sroa.5.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx37.i, i64 16, i1 false), !noalias !12185
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.i

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.03.0.ph78.i.i = phi i64 [ %i.y, %.lr.ph.lr.ph.i.i ], [ %i.bg, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.07.0.ph77.i.i = phi ptr [ %i.aa, %.lr.ph.lr.ph.i.i ], [ %i.bh, %.outer.backedge.i.i ]
  %.sroa.0.0.ph76.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.035.0.ph75.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.ae = lshr exact i64 %.sroa.03.0.ph78.i.i, 1
  %i.af = and i64 %i.ae, 31                       ; 2 uses
  %i.ag = icmp eq i64 %i.af, 31
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

bb.d:                                             ; preds = %.loopexit.i.i
  %i.ah = add i32 %.sroa.0.071.i77.i, 1           ; 2 uses
  %i.ai = lshr exact i64 %i.ap, 1
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 31
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.071.i77.i = phi i32 [ %i.ah, %bb.d ], [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.al = icmp ult i32 %.sroa.0.071.i77.i, 7
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit56.i.i, !noalias !12187

bb.f:                                             ; preds = %.lr.ph.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.071.i77.i, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.am = mul nuw nsw i32 %.sroa.0.071.i77.i, %.sroa.0.071.i77.i ; 2 uses
  %xtraiter = and i32 %i.am, 7                    ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.071.i77.i, 3
  br i1 %i.an, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.am, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.03.073.i.lcssa.i = phi i64 [ %.sroa.03.0.ph78.i.i, %.lr.ph.i.i ], [ %i.ap, %bb.d ] ; 2 uses
  %.sroa.07.072.i.lcssa.i = phi ptr [ %.sroa.07.0.ph77.i.i, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.0.071.i.lcssa.i = phi i32 [ %.sroa.0.0.ph76.i.i, %.lr.ph.i.i ], [ %i.ah, %bb.d ] ; 6 uses
  %.lcssa54.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.aj, %bb.d ] ; 2 uses
  %i.ao = icmp eq i64 %.lcssa54.i, 30             ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.0.ph75.i.i, null
  %or.cond.i.i = select i1 %i.ao, i1 %.not.i.i, i1 false
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
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !12082

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.f, %bb.e
  %i.ap = load atomic i64, ptr %i.x acquire, align 8, !noalias !12187 ; 3 uses
  %i.aq = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12187
  %i.ar = and i64 %i.ap, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.d, label %.outer._crit_edge.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.g, %._crit_edge.i
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.0.ph75.i.i, %._crit_edge.i ], [ %i.au, %bb.g ] ; 9 uses
  %i.at = icmp eq ptr %.sroa.07.072.i.lcssa.i, null
  br i1 %i.at, label %bb.h, label %bb.m

bb.g:                                             ; preds = %._crit_edge.i
  %i.au = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCs7p2uQeJxui2_9deltalake()
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %.body.loopexit.i, !noalias !12188

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.av = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCs7p2uQeJxui2_9deltalake()
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !noalias !12187 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.aw = cmpxchg ptr %i.z, ptr null, ptr %i.av release monotonic, align 8, !noalias !12187
  %i.ax = extractvalue { ptr, i1 } %i.aw, 1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.av, ptr %i.ad release, align 8, !noalias !12187
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ay = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.ay, label %.outer.backedge.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 1000, i64 noundef 8) #27, !noalias !12187
  br label %.outer.backedge.i.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.072.i.lcssa.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.av, %bb.j ] ; 3 uses
  %i.az = add i64 %.sroa.03.073.i.lcssa.i, 2
  %i.ba = cmpxchg weak ptr %i.x, i64 %.sroa.03.073.i.lcssa.i, i64 %i.az seq_cst acquire, align 8, !noalias !12187
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ba, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.071.i.lcssa.i, i32 6) ; 2 uses
  %i.bb = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not.i24.i.i = icmp eq i32 %.sroa.0.071.i.lcssa.i, 0
  br i1 %.not.i24.i.i, label %.outer.backedge.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.n
  %xtraiter162 = and i32 %i.bb, 5                 ; 3 uses
  %i.bc = icmp ult i32 %.sroa.0.071.i.lcssa.i, 3
  br i1 %i.bc, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter166 = and i32 %i.bb, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  %epil.iter163.next = add i32 %epil.iter163, 1   ; 2 uses
  %epil.iter163.cmp.not = icmp eq i32 %epil.iter163.next, %xtraiter162
  br i1 %epil.iter163.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !12083

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i25.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.bd = add i32 %.sroa.0.071.i.lcssa.i, 1
  br label %.outer.backedge.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter167 = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter167.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  tail call void @llvm.x86.sse2.pause(), !noalias !12187
  %niter167.next.7 = add i32 %niter167, 8         ; 2 uses
  %niter167.ncmp.7 = icmp eq i32 %niter167.next.7, %unroll_iter166
  br i1 %niter167.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i25.i.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.ao, label %bb.p, label %.outer._crit_edge.i.i

bb.p:                                             ; preds = %bb.o
  %.not16.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not16.i.i, label %bb.q, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i, !prof !19

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #34
          to label %.noexc5.i unwind label %.body.loopexit.split-lp.i, !noalias !12188

.noexc5.i:                                        ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit.thread39.i: ; preds = %bb.p
  store atomic ptr %.sroa.035.2.i.i, ptr %i.z release, align 8, !noalias !12187
  %i.be = atomicrmw add ptr %i.x, i64 2 release, align 8, !noalias !12187 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i, i64 992
  store atomic ptr %.sroa.035.2.i.i, ptr %i.bf release, align 8, !noalias !12187
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.016.0.copyload42.i = load i64, ptr %i.u, align 8, !alias.scope !12186, !noalias !12185
  %.sroa.5.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx43.i, i64 16, i1 false), !noalias !12185
  br label %bb.t

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i, %bb.n, %bb.l, %bb.k
  %.sroa.035.0.ph.be.i.i = phi ptr [ %i.av, %bb.l ], [ %i.av, %bb.k ], [ %.sroa.035.2.i.i, %bb.n ], [ %.sroa.035.2.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.071.i.lcssa.i, %bb.l ], [ %.sroa.0.071.i.lcssa.i, %bb.k ], [ 1, %bb.n ], [ %i.bd, %._crit_edge.loopexit.i.i.i ]
  %i.bg = load atomic i64, ptr %i.x acquire, align 8, !noalias !12187 ; 2 uses
  %i.bh = load atomic ptr, ptr %i.z acquire, align 8, !noalias !12187
  %i.bi = and i64 %i.bg, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i, label %.outer._crit_edge.i.i

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
  %i.bk = icmp eq ptr %.sroa.035.1.ph.i.i, null
  br i1 %i.bk, label %.body.thread.i, label %.thread47.i.i

.thread47.i.i:                                    ; preds = %bb.r
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i.i, i64 noundef 1000, i64 noundef 8) #27, !noalias !12187
  br label %.body.thread.i

.outer._crit_edge.i.i:                            ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.o
  %.sroa.9.0.i = phi i64 [ %.lcssa54.i, %bb.o ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ]
  %.sroa.412.0.i = phi ptr [ %.sroa.07.1.i.i, %bb.o ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.o ], [ %.sroa.035.0.ph75.i.i, %.loopexit.i.i ], [ %.sroa.035.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvXsc_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_21TransactionConclusionNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !16, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !13 ; 3 uses
  %i.f = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0                     ; 3 uses
  switch i64 %i.a, label %default.unreachable6 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable6:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

.sink.split:                                      ; preds = %bb.g, %bb.n
  %.sink18 = phi i64 [ 24, %bb.n ], [ 8, %bb.g ]
  %.sink16 = phi ptr [ %i.s, %bb.n ], [ %i.c, %bb.g ]
  %.sink15 = phi i64 [ 32, %bb.n ], [ 16, %bb.g ]
  %.sink13 = phi i64 [ %i.u, %bb.n ], [ %i.e, %bb.g ]
  %.sink12.ph = phi i64 [ 40, %bb.n ], [ 24, %bb.g ]
  %.sink10.ph = phi ptr [ %i.y, %bb.n ], [ %i.m, %bb.g ]
  %.sink9.ph = phi i64 [ 48, %bb.n ], [ 32, %bb.g ]
  %.sink7.ph = phi i64 [ %i.aa, %bb.n ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink18
  store ptr %.sink16, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink13, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %.sink12 = phi i64 [ 8, %bb.b ], [ %.sink12.ph, %.sink.split ]
  %.sink10 = phi ptr [ %i.c, %bb.b ], [ %.sink10.ph, %.sink.split ]
  %.sink9 = phi i64 [ 16, %bb.b ], [ %.sink9.ph, %.sink.split ]
  %.sink7 = phi i64 [ %i.e, %bb.b ], [ %.sink7.ph, %.sink.split ]
  %.sink = phi i64 [ 0, %bb.b ], [ %i.a, %.sink.split ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store ptr %.sink10, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store i64 %.sink7, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noundef !13
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %.sink.split

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !13
  %i.v = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !noundef !13
  %i.ab = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.ae, align 8
  br label %.sink.split

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !58, !noundef !13 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.1502, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !16, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !noundef !13 ; 19 uses
  switch i64 %i.b, label %default.unreachable13 [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.z
  ]

default.unreachable13:                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 520
  %i.e = atomicrmw sub ptr %i.d, i64 1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20disconnect_receiversCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 528
  %i.i = atomicrmw xchg ptr %i.h, i8 1 acq_rel, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake(ptr nonnull %.val)
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 392
  %i.l = atomicrmw sub ptr %i.k, i64 1 acq_rel, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 3 uses
  %i.o = atomicrmw or ptr %i.n, i64 1 seq_cst, align 8
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.s = and i64 %i.r, 62
  %i.t = icmp eq i64 %i.s, 62
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.04044.i.i.i.i = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.g ] ; 6 uses
  %i.u = icmp ult i32 %.sroa.0.04044.i.i.i.i, 7
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.04044.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.v = mul nuw nsw i32 %.sroa.0.04044.i.i.i.i, %.sroa.0.04044.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.v, 7                     ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.04044.i.i.i.i, 3
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i32 %i.v, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !12733

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.i, %bb.h
  %i.x = add i32 %.sroa.0.04044.i.i.i.i, 1        ; 2 uses
  %i.y = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.z = and i64 %i.y, 62
  %i.aa = icmp eq i64 %i.z, 62
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.g
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %i.r, %bb.g ], [ %i.y, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ]
  %.sroa.0.040.lcssa.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ]
  %i.ab = lshr i64 %.sroa.0.0.lcssa.i.i.i.i, 1    ; 2 uses
  %i.ac = load atomic i64, ptr %.val acquire, align 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.ae = atomicrmw xchg ptr %i.ad, ptr null acq_rel, align 8 ; 2 uses
  %i.af = lshr i64 %i.ac, 1                       ; 2 uses
  %i.ag = icmp ne i64 %i.af, %i.ab                ; 2 uses
  %i.ah = icmp eq ptr %i.ae, null
  %or.cond.i.i.i.i = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.011.0.i.i.i.i = phi ptr [ %i.ae, %._crit_edge.i.i.i.i ], [ %i.am, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 2 uses
  br i1 %i.ag, label %.lr.ph50.i.i.i.i, label %._crit_edge51.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ], [ %.sroa.0.040.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 6 uses
  %i.ai = icmp ult i32 %.sroa.0.1.i.i.i.i, 7
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i

bb.k:                                             ; preds = %.preheader.i.i.i.i
  %.not.i21.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i, 0
  br i1 %.not.i21.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.preheader

.lr.ph.i22.i.i.i.i.preheader:                     ; preds = %bb.k
  %i.aj = mul nuw nsw i32 %.sroa.0.1.i.i.i.i, %.sroa.0.1.i.i.i.i ; 2 uses
  %xtraiter24 = and i32 %i.aj, 7                  ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.1.i.i.i.i, 3
  br i1 %i.ak, label %.lr.ph.i22.i.i.i.i.epil.preheader, label %.lr.ph.i22.i.i.i.i.preheader.new

.lr.ph.i22.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i22.i.i.i.i.preheader
  %unroll_iter28 = and i32 %i.aj, 56
  br label %.lr.ph.i22.i.i.i.i

.lr.ph.i22.i.i.i.i:                               ; preds = %.lr.ph.i22.i.i.i.i, %.lr.ph.i22.i.i.i.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i22.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter29.next.7 = add i32 %niter29, 8           ; 2 uses
  %niter29.ncmp.7 = icmp eq i32 %niter29.next.7, %unroll_iter28
  br i1 %niter29.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i22.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i.i.i.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.epil.preheader

.lr.ph.i22.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i22.i.i.i.i.epil

.lr.ph.i22.i.i.i.i.epil:                          ; preds = %.lr.ph.i22.i.i.i.i.epil, %.lr.ph.i22.i.i.i.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i22.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.epil, !llvm.loop !12734

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.epil, %bb.k, %bb.j
  %i.al = add i32 %.sroa.0.1.i.i.i.i, 1
  %i.am = atomicrmw xchg ptr %i.ad, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.old2.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

._crit_edge51.i.i.i.i:                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.011.2.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ %i.ac, %.loopexit.i.i.i.i ], [ %i.bu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ]
  %i.an = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i, null
  br i1 %i.an, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.l

.lr.ph50.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.ao = phi i64 [ %i.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.af, %.loopexit.i.i.i.i ]
  %.sroa.05.048.i.i.i.i = phi i64 [ %i.bu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.ac, %.loopexit.i.i.i.i ]
  %.sroa.011.147.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %.sroa.011.0.i.i.i.i, %.loopexit.i.i.i.i ] ; 10 uses
  %i.ap = and i64 %i.ao, 31                       ; 2 uses
  %.not19.i.i.i.i = icmp eq i64 %i.ap, 31
  br i1 %.not19.i.i.i.i, label %bb.m, label %bb.p

bb.l:                                             ; preds = %._crit_edge51.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i, i64 noundef 1000, i64 noundef 8) #27
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph50.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.147.i.i.i.i, i64 992 ; 3 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i26.i.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %bb.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i
  %.sroa.0.02.i27.i.i.i.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ], [ 0, %bb.m ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i27.i.i.i.i, 7
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i26.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i26.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i27.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.o
  %i.au = mul nuw nsw i32 %.sroa.0.02.i27.i.i.i.i, %.sroa.0.02.i27.i.i.i.i ; 2 uses
  %xtraiter36 = and i32 %i.au, 7                  ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.02.i27.i.i.i.i, 3
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter40 = and i32 %i.au, 56
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %niter41 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter41.next.7, %.lr.ph.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter41.next.7 = add i32 %niter41, 8           ; 2 uses
  %niter41.ncmp.7 = icmp eq i32 %niter41.next.7, %unroll_iter40
  br i1 %niter41.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod38.not = icmp eq i32 %xtraiter36, 0
  br i1 %lcmp.mod38.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %lcmp.mod39 = icmp ne i32 %xtraiter36, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %epil.iter37 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ], [ %epil.iter37.next, %.lr.ph.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter37.next = add i32 %epil.iter37, 1     ; 2 uses
  %epil.iter37.cmp.not = icmp eq i32 %epil.iter37.next, %xtraiter36
  br i1 %epil.iter37.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !12735

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %bb.o, %bb.n
  %i.aw = add i32 %.sroa.0.02.i27.i.i.i.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i26.i.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, %bb.m
  %i.az = load atomic ptr, ptr %i.aq acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.147.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i.i.i.i, i64 noundef 1000, i64 noundef 8) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.p:                                             ; preds = %.lr.ph50.i.i.i.i
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.147.i.i.i.i, i64 %i.ap ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i28.i.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i28.i.i.i.i:                               ; preds = %bb.p, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i
  %.sroa.0.02.i29.i.i.i.i = phi i32 [ %i.bi, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i ], [ 0, %bb.p ] ; 6 uses
  %i.bf = icmp ult i32 %.sroa.0.02.i29.i.i.i.i, 7
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i28.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i28.i.i.i.i
  %.not.i.i31.i.i.i.i = icmp eq i32 %.sroa.0.02.i29.i.i.i.i, 0
  br i1 %.not.i.i31.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.preheader

.lr.ph.i.i32.i.i.i.i.preheader:                   ; preds = %bb.r
  %i.bg = mul nuw nsw i32 %.sroa.0.02.i29.i.i.i.i, %.sroa.0.02.i29.i.i.i.i ; 2 uses
  %xtraiter30 = and i32 %i.bg, 7                  ; 3 uses
  %i.bh = icmp ult i32 %.sroa.0.02.i29.i.i.i.i, 3
  br i1 %i.bh, label %.lr.ph.i.i32.i.i.i.i.epil.preheader, label %.lr.ph.i.i32.i.i.i.i.preheader.new

.lr.ph.i.i32.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i32.i.i.i.i.preheader
  %unroll_iter34 = and i32 %i.bg, 56
  br label %.lr.ph.i.i32.i.i.i.i

.lr.ph.i.i32.i.i.i.i:                             ; preds = %.lr.ph.i.i32.i.i.i.i, %.lr.ph.i.i32.i.i.i.i.preheader.new
  %niter35 = phi i32 [ 0, %.lr.ph.i.i32.i.i.i.i.preheader.new ], [ %niter35.next.7, %.lr.ph.i.i32.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter35.next.7 = add i32 %niter35, 8           ; 2 uses
  %niter35.ncmp.7 = icmp eq i32 %niter35.next.7, %unroll_iter34
  br i1 %niter35.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i.i.i.i
  %lcmp.mod32.not = icmp eq i32 %xtraiter30, 0
  br i1 %lcmp.mod32.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.epil.preheader

.lr.ph.i.i32.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.i.i.i.preheader
  %lcmp.mod33 = icmp ne i32 %xtraiter30, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %.lr.ph.i.i32.i.i.i.i.epil

.lr.ph.i.i32.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i32.i.i.i.i.epil, %.lr.ph.i.i32.i.i.i.i.epil.preheader
  %epil.iter31 = phi i32 [ 0, %.lr.ph.i.i32.i.i.i.i.epil.preheader ], [ %epil.iter31.next, %.lr.ph.i.i32.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter31.next = add i32 %epil.iter31, 1     ; 2 uses
  %epil.iter31.cmp.not = icmp eq i32 %epil.iter31.next, %xtraiter30
  br i1 %epil.iter31.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.epil, !llvm.loop !12736

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.i.i.i.epil, %bb.r, %bb.q
  %i.bi = add i32 %.sroa.0.02.i29.i.i.i.i, 1
  %i.bj = load atomic i64, ptr %i.bb acquire, align 8
  %i.bk = and i64 %i.bj, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i28.i.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12747)
  %i.bm = load i64, ptr %i.ba, align 8, !range !32, !alias.scope !12747, !noundef !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 6 uses
  switch i64 %i.bm, label %default.unreachable13 [
    i64 0, label %bb.u
    i64 1, label %bb.w
    i64 2, label %bb.x
    i64 3, label %bb.s
  ]

bb.s:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12749)
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !12750, !nonnull !13, !noundef !13
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !12750
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource8ResourceE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.u:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12752)
  %i.br = load ptr, ptr %i.bn, align 8, !alias.scope !12753, !nonnull !13, !noundef !13
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !12753
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicbEE9drop_slowCscq8Lx7CD32J_17opentelemetry_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #35
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.w:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  tail call void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bn)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.x:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  tail call void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bn)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %.sroa.011.2.i.i.i.i = phi ptr [ %i.az, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %.sroa.011.147.i.i.i.i, %bb.s ], [ %.sroa.011.147.i.i.i.i, %bb.t ], [ %.sroa.011.147.i.i.i.i, %bb.u ], [ %.sroa.011.147.i.i.i.i, %bb.v ], [ %.sroa.011.147.i.i.i.i, %bb.w ], [ %.sroa.011.147.i.i.i.i, %bb.x ] ; 2 uses
  %i.bu = add i64 %.sroa.05.048.i.i.i.i, 2        ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bv, %i.ab
  br i1 %.not.i.i.i.i, label %._crit_edge51.i.i.i.i, label %.lr.ph50.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.l, %._crit_edge51.i.i.i.i
  %i.bw = and i64 %.sroa.05.0.lcssa.i.i.i.i, -2
  store atomic i64 %i.bw, ptr %.val release, align 8
  br label %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i

_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 400
  %i.by = atomicrmw xchg ptr %i.bx, i8 1 acq_rel, align 1
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.y

bb.y:                                             ; preds = %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.val, ptr %i.a, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4list7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.z:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 acq_rel, align 8
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.aa, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10disconnectCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %.val)
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ce = atomicrmw xchg ptr %i.cd, i8 1 acq_rel, align 1
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.cg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ci) #37
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ab
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cl, %bb.ae ], [ %i.ch, %bb.ac ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #27
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #27
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.aa, %bb.z, %bb.y, %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !16, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !noundef !13 ; 19 uses
  switch i64 %i.b, label %default.unreachable13 [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.u
  ]

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 520
  %i.e = atomicrmw sub ptr %i.d, i64 1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20disconnect_receiversCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %.val) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 528
  %i.i = atomicrmw xchg ptr %i.h, i8 1 acq_rel, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEEEECs7p2uQeJxui2_9deltalake(ptr nonnull %.val)
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 392
  %i.l = atomicrmw sub ptr %i.k, i64 1 acq_rel, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 3 uses
  %i.o = atomicrmw or ptr %i.n, i64 1 seq_cst, align 8
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.s = and i64 %i.r, 62
  %i.t = icmp eq i64 %i.s, 62
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.04042.i.i.i.i = phi i32 [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.g ] ; 6 uses
  %i.u = icmp ult i32 %.sroa.0.04042.i.i.i.i, 7
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.04042.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.v = mul nuw nsw i32 %.sroa.0.04042.i.i.i.i, %.sroa.0.04042.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.v, 7                     ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.04042.i.i.i.i, 3
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter = and i32 %i.v, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod23 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !12754

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.i, %bb.h
  %i.x = add i32 %.sroa.0.04042.i.i.i.i, 1        ; 2 uses
  %i.y = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.z = and i64 %i.y, 62
  %i.aa = icmp eq i64 %i.z, 62
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.g
  %.sroa.0.0.lcssa.i.i.i.i = phi i64 [ %i.r, %bb.g ], [ %i.y, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ]
  %.sroa.0.040.lcssa.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.x, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ]
  %i.ab = lshr i64 %.sroa.0.0.lcssa.i.i.i.i, 1    ; 2 uses
  %i.ac = load atomic i64, ptr %.val acquire, align 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.ae = atomicrmw xchg ptr %i.ad, ptr null acq_rel, align 8 ; 2 uses
  %i.af = lshr i64 %i.ac, 1                       ; 2 uses
  %i.ag = icmp ne i64 %i.af, %i.ab                ; 2 uses
  %i.ah = icmp eq ptr %i.ae, null
  %or.cond.i.i.i.i = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.011.0.i.i.i.i = phi ptr [ %i.ae, %._crit_edge.i.i.i.i ], [ %i.am, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ] ; 2 uses
  br i1 %i.ag, label %.lr.ph48.i.i.i.i, label %._crit_edge49.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i ], [ %.sroa.0.040.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 6 uses
  %i.ai = icmp ult i32 %.sroa.0.1.i.i.i.i, 7
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i

bb.k:                                             ; preds = %.preheader.i.i.i.i
  %.not.i21.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i, 0
  br i1 %.not.i21.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.preheader

.lr.ph.i22.i.i.i.i.preheader:                     ; preds = %bb.k
  %i.aj = mul nuw nsw i32 %.sroa.0.1.i.i.i.i, %.sroa.0.1.i.i.i.i ; 2 uses
  %xtraiter24 = and i32 %i.aj, 7                  ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.1.i.i.i.i, 3
  br i1 %i.ak, label %.lr.ph.i22.i.i.i.i.epil.preheader, label %.lr.ph.i22.i.i.i.i.preheader.new

.lr.ph.i22.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i22.i.i.i.i.preheader
  %unroll_iter28 = and i32 %i.aj, 56
  br label %.lr.ph.i22.i.i.i.i

.lr.ph.i22.i.i.i.i:                               ; preds = %.lr.ph.i22.i.i.i.i, %.lr.ph.i22.i.i.i.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i22.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter29.next.7 = add i32 %niter29, 8           ; 2 uses
  %niter29.ncmp.7 = icmp eq i32 %niter29.next.7, %unroll_iter28
  br i1 %niter29.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i22.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i.i.i.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.epil.preheader

.lr.ph.i22.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i22.i.i.i.i.epil

.lr.ph.i22.i.i.i.i.epil:                          ; preds = %.lr.ph.i22.i.i.i.i.epil, %.lr.ph.i22.i.i.i.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i22.i.i.i.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i22.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i, label %.lr.ph.i22.i.i.i.i.epil, !llvm.loop !12755

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i22.i.i.i.i.epil, %bb.k, %bb.j
  %i.al = add i32 %.sroa.0.1.i.i.i.i, 1
  %i.am = atomicrmw xchg ptr %i.ad, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.old2.i.i.i.i, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

._crit_edge49.i.i.i.i:                            ; preds = %bb.s, %.loopexit.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.011.2.i.i.i.i, %bb.s ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ %i.ac, %.loopexit.i.i.i.i ], [ %i.bm, %bb.s ]
  %i.an = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i, null
  br i1 %i.an, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.l

.lr.ph48.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i, %bb.s
  %i.ao = phi i64 [ %i.bn, %bb.s ], [ %i.af, %.loopexit.i.i.i.i ]
  %.sroa.05.046.i.i.i.i = phi i64 [ %i.bm, %bb.s ], [ %i.ac, %.loopexit.i.i.i.i ]
  %.sroa.011.145.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i, %bb.s ], [ %.sroa.011.0.i.i.i.i, %.loopexit.i.i.i.i ] ; 5 uses
  %i.ap = and i64 %i.ao, 31                       ; 2 uses
  %.not19.i.i.i.i = icmp eq i64 %i.ap, 31
  br i1 %.not19.i.i.i.i, label %bb.m, label %bb.p

bb.l:                                             ; preds = %._crit_edge49.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i, i64 noundef 11424, i64 noundef 16) #27
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph48.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i.i.i.i, i64 11408 ; 3 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i26.i.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %bb.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i
  %.sroa.0.02.i27.i.i.i.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ], [ 0, %bb.m ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i27.i.i.i.i, 7
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i26.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i26.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i27.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.o
  %i.au = mul nuw nsw i32 %.sroa.0.02.i27.i.i.i.i, %.sroa.0.02.i27.i.i.i.i ; 2 uses
  %xtraiter36 = and i32 %i.au, 7                  ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.02.i27.i.i.i.i, 3
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter40 = and i32 %i.au, 56
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %niter41 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter41.next.7, %.lr.ph.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter41.next.7 = add i32 %niter41, 8           ; 2 uses
  %niter41.ncmp.7 = icmp eq i32 %niter41.next.7, %unroll_iter40
  br i1 %niter41.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod38.not = icmp eq i32 %xtraiter36, 0
  br i1 %lcmp.mod38.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %lcmp.mod39 = icmp ne i32 %xtraiter36, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %epil.iter37 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ], [ %epil.iter37.next, %.lr.ph.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter37.next = add i32 %epil.iter37, 1     ; 2 uses
  %epil.iter37.cmp.not = icmp eq i32 %epil.iter37.next, %xtraiter36
  br i1 %epil.iter37.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !12756

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %bb.o, %bb.n
  %i.aw = add i32 %.sroa.0.02.i27.i.i.i.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i26.i.i.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, %bb.m
  %i.az = load atomic ptr, ptr %i.aq acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i.i.i.i, i64 noundef 11424, i64 noundef 16) #27
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph48.i.i.i.i
  %i.ba = getelementptr inbounds nuw [368 x i8], ptr %.sroa.011.145.i.i.i.i, i64 %i.ap ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 352 ; 2 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i28.i.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

.lr.ph.i28.i.i.i.i:                               ; preds = %bb.p, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i
  %.sroa.0.02.i29.i.i.i.i = phi i32 [ %i.bi, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i ], [ 0, %bb.p ] ; 6 uses
  %i.bf = icmp ult i32 %.sroa.0.02.i29.i.i.i.i, 7
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i28.i.i.i.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i28.i.i.i.i
  %.not.i.i31.i.i.i.i = icmp eq i32 %.sroa.0.02.i29.i.i.i.i, 0
  br i1 %.not.i.i31.i.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.preheader

.lr.ph.i.i32.i.i.i.i.preheader:                   ; preds = %bb.r
  %i.bg = mul nuw nsw i32 %.sroa.0.02.i29.i.i.i.i, %.sroa.0.02.i29.i.i.i.i ; 2 uses
  %xtraiter30 = and i32 %i.bg, 7                  ; 3 uses
  %i.bh = icmp ult i32 %.sroa.0.02.i29.i.i.i.i, 3
  br i1 %i.bh, label %.lr.ph.i.i32.i.i.i.i.epil.preheader, label %.lr.ph.i.i32.i.i.i.i.preheader.new

.lr.ph.i.i32.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i32.i.i.i.i.preheader
  %unroll_iter34 = and i32 %i.bg, 56
  br label %.lr.ph.i.i32.i.i.i.i

.lr.ph.i.i32.i.i.i.i:                             ; preds = %.lr.ph.i.i32.i.i.i.i, %.lr.ph.i.i32.i.i.i.i.preheader.new
  %niter35 = phi i32 [ 0, %.lr.ph.i.i32.i.i.i.i.preheader.new ], [ %niter35.next.7, %.lr.ph.i.i32.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter35.next.7 = add i32 %niter35, 8           ; 2 uses
  %niter35.ncmp.7 = icmp eq i32 %niter35.next.7, %unroll_iter34
  br i1 %niter35.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i.i.i.i
  %lcmp.mod32.not = icmp eq i32 %xtraiter30, 0
  br i1 %lcmp.mod32.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.epil.preheader

.lr.ph.i.i32.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.i.i.i.preheader
  %lcmp.mod33 = icmp ne i32 %xtraiter30, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %.lr.ph.i.i32.i.i.i.i.epil

.lr.ph.i.i32.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i32.i.i.i.i.epil, %.lr.ph.i.i32.i.i.i.i.epil.preheader
  %epil.iter31 = phi i32 [ 0, %.lr.ph.i.i32.i.i.i.i.epil.preheader ], [ %epil.iter31.next, %.lr.ph.i.i32.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter31.next = add i32 %epil.iter31, 1     ; 2 uses
  %epil.iter31.cmp.not = icmp eq i32 %epil.iter31.next, %xtraiter30
  br i1 %epil.iter31.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, label %.lr.ph.i.i32.i.i.i.i.epil, !llvm.loop !12757

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.i.i.i.epil, %bb.r, %bb.q
  %i.bi = add i32 %.sroa.0.02.i29.i.i.i.i, 1
  %i.bj = load atomic i64, ptr %i.bb acquire, align 8
  %i.bk = and i64 %i.bj, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i28.i.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.i.i.i, %bb.p
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(352) %i.ba)
  br label %bb.s

bb.s:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %.sroa.011.2.i.i.i.i = phi ptr [ %.sroa.011.145.i.i.i.i, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.az, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 2 uses
  %i.bm = add i64 %.sroa.05.046.i.i.i.i, 2        ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.bn, %i.ab
  br i1 %.not.i.i.i.i, label %._crit_edge49.i.i.i.i, label %.lr.ph48.i.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.l, %._crit_edge49.i.i.i.i
  %i.bo = and i64 %.sroa.05.0.lcssa.i.i.i.i, -2
  store atomic i64 %i.bo, ptr %.val release, align 8
  br label %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i

_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 400
  %i.bq = atomicrmw xchg ptr %i.bp, i8 1 acq_rel, align 1
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.t

bb.t:                                             ; preds = %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.val, ptr %i.a, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4list7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 acq_rel, align 8
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.v, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10disconnectCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %.val)
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.bw = atomicrmw xchg ptr %i.bv, i8 1 acq_rel, align 1
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.by)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ca) #37
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5WakerECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.cc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cd, %bb.z ], [ %i.bz, %bb.x ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #27
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #27
  br label %_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit

_RINvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7counter7CounterINtNtB1k_4zero7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.v, %bb.u, %bb.t, %_RNCNvXsi_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB7_8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0Cs7p2uQeJxui2_9deltalake.exit.i, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_21TransactionAccessModeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 9, i64 8
  %.1 = select i1 %i.b, ptr @421, ptr @420
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !13
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !13, !noundef !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !13
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value4TimeNtB5_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value4TimeINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence5class16EquivalenceClassNtB5_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence5class16EquivalenceClassINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrNtB5_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

end_hunk_6
