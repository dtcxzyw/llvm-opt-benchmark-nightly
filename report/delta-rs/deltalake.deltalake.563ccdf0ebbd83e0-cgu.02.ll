inline.NumInlined: 6368
inline.NumDeleted: 3022
begin_hunk_0_@_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEE4withNCINvB1u_12run_executorINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorENCINvB1u_8block_onNCNvXs3_NtCs1e4wyRlCFp2_18opentelemetry_otlp4spanNtB4V_12SpanExporterNtNtNtB3D_5trace6export12SpanExporter6export0E0E0B2W_ECs7p2uQeJxui2_9deltalake:bb.a
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !90
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.thread.i.i.i.i
  %i.dw = phi ptr [ %i.dt, %.thread.i.i.i.i ], [ %.pre.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %i.dx = phi ptr [ %.sroa.9.0..sroa_idx.i.i.i.i, %.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge.i.i.i ] ; 20 uses
  %i.dy = phi ptr [ %i.du, %.thread.i.i.i.i ], [ %i.dv, %._crit_edge.i.i.i ] ; 21 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 377 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 379 ; 3 uses
  store i8 0, ptr %i.ea, align 1, !noalias !90
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 378 ; 3 uses
  store i8 0, ptr %i.eb, align 2, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !94
  store i8 1, ptr %i.dz, align 1, !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false), !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !94
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 200
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noundef nonnull align 8 %i.ec)
          to label %bb.j unwind label %bb.i, !noalias !95

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !94
  br label %bb.dv

bb.i:                                             ; preds = %bb.g
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.ee = load i64, ptr %i.bq, align 8, !range !20, !alias.scope !96, !noalias !99, !noundef !3
  %i.ef = trunc nuw i64 %i.ee to i1
  %i.eg = load ptr, ptr %i.ca, align 8, !alias.scope !96, !noalias !99, !nonnull !3, !align !38, !noundef !3 ; 2 uses
  %i.eh = load i8, ptr %i.cb, align 8, !range !101, !alias.scope !96, !noalias !99, !noundef !3 ; 2 uses
  br i1 %i.ef, label %bb.k, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !102
  store ptr %i.eg, ptr %i.p, align 8, !noalias !103
  store i8 %i.eh, ptr %i.cc, align 8, !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !103
  store ptr %i.p, ptr %i.n, align 8, !noalias !103
  store ptr @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_11PoisonErrorINtNtB5_5mutex10MutexGuardINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEENtNtB1r_3fmt7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !103
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @51, ptr noundef nonnull %i.n)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i unwind label %bb.l, !noalias !106

bb.l:                                             ; preds = %bb.k
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !103, !nonnull !3, !align !38, !noundef !3
  %.val10.i.i.i.i.i.i.i = load i8, ptr %i.cc, align 8, !range !101, !noalias !103, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEEECs7p2uQeJxui2_9deltalake(ptr nonnull %.val9.i.i.i.i.i.i.i, i8 %.val10.i.i.i.i.i.i.i) #29
          to label %.body.i.i.i.i.i unwind label %bb.q, !noalias !106

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !103
  %.sroa.0359.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !102 ; 2 uses
  %.sroa.4360.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4360.0..sroa_idx.i.i.i.i.i, align 8, !noalias !102 ; 2 uses
  %.sroa.5361.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5361.0..sroa_idx.i.i.i.i.i, align 8, !noalias !102 ; 2 uses
  %.val7.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !103, !nonnull !3, !align !38, !noundef !3 ; 3 uses
  %.val8.i.i.i.i.i.i.i = load i8, ptr %i.cc, align 8, !range !101, !noalias !103, !noundef !3
  %i.ej = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i.i.i.i, i64 4
  %i.ek = trunc nuw i8 %.val8.i.i.i.i.i.i.i to i1
  br i1 %i.ek, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i
  %i.el = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !103
  %i.em = and i64 %i.el, 9223372036854775807
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i, label %bb.n, !prof !37

bb.n:                                             ; preds = %bb.m
  %i.eo = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc.i.i.i.i.i unwind label %bb.r, !noalias !95

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  br i1 %i.eo, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i.i.i.i.i
  store atomic i8 1, ptr %i.ej monotonic, align 4, !noalias !106
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %.noexc.i.i.i.i.i, %bb.m, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i
  %i.ep = atomicrmw xchg ptr %.val7.i.i.i.i.i.i.i, i32 0 release, align 4, !noalias !106
  %i.eq = icmp eq i32 %i.ep, 2
  br i1 %i.eq, label %bb.p, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, !prof !39

bb.p:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val7.i.i.i.i.i.i.i)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.r, !noalias !95

bb.q:                                             ; preds = %bb.l
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !106
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i: ; preds = %bb.j
  %.sroa.10248.16.insert.ext.i.i.i.i.i = zext nneg i8 %i.eh to i64
  %i.es = inttoptr i64 %.sroa.10248.16.insert.ext.i.i.i.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !94
  br label %bb.s

.body.i.i.i.i.i:                                  ; preds = %bb.r, %bb.l, %bb.i
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ed, %bb.i ], [ %i.et, %bb.r ], [ %i.ei, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !94
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EECs7p2uQeJxui2_9deltalake.exit187.i.i.i.i.i

bb.r:                                             ; preds = %bb.p, %bb.n
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.p, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !94
  %.not.i147.i.i.i.i.i = icmp eq i64 %.sroa.0359.0.copyload.i.i.i.i.i, -9223372036854775806
  br i1 %.not.i147.i.i.i.i.i, label %bb.s, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i

bb.s:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i
  %.sroa.7.0370.i.i.i.i.i = phi ptr [ %i.eg, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i ], [ %.sroa.4360.0.copyload.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.10248.0369.i.i.i.i.i = phi ptr [ %i.es, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i ], [ %.sroa.5361.0.copyload.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0370.i.i.i.i.i) ]
  %i.eu = ptrtoint ptr %.sroa.10248.0369.i.i.i.i.i to i64
  %i.ev = trunc i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.7.0370.i.i.i.i.i, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !107, !noundef !3 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.7.0370.i.i.i.i.i, i64 16
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ex, null ; 2 uses
  br i1 %.not.i.i.not.i.i.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ez = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8, !noalias !107
  %i.fa = icmp slt i64 %i.ez, 0
  br i1 %i.fa, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fb = load ptr, ptr %i.ew, align 8, !noalias !107, !nonnull !3, !noundef !3
  %i.fc = load ptr, ptr %i.ey, align 8, !noalias !107, !nonnull !3, !align !38, !noundef !3
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.u, %bb.s
  %.sroa.10.0.i.i.i.i.i = phi ptr [ undef, %bb.s ], [ %i.fc, %bb.u ] ; 3 uses
  %.sroa.8.0.i.i.i.i.i = phi ptr [ undef, %bb.s ], [ %i.fb, %bb.u ] ; 3 uses
  %storemerge.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.s ], [ -9223372036854775806, %bb.u ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.7.0370.i.i.i.i.i, i64 4
  br i1 %i.ev, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fe = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !113
  %i.ff = and i64 %i.fe, 9223372036854775807
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.y, !prof !37

bb.y:                                             ; preds = %bb.x
  %i.fh = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc148.i.i.i.i.i unwind label %bb.ab, !noalias !95

.noexc148.i.i.i.i.i:                              ; preds = %bb.y
  br i1 %i.fh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc148.i.i.i.i.i
  store atomic i8 1, ptr %i.fd monotonic, align 4, !noalias !107
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.z, %.noexc148.i.i.i.i.i, %bb.x, %bb.w
  %i.fi = atomicrmw xchg ptr %.sroa.7.0370.i.i.i.i.i, i32 0 release, align 4, !noalias !107
  %i.fj = icmp eq i32 %i.fi, 2
  br i1 %i.fj, label %bb.aa, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, !prof !39

bb.aa:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.sroa.7.0370.i.i.i.i.i)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.ab, !noalias !95

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EECs7p2uQeJxui2_9deltalake.exit187.i.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.aa, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.not.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i, label %bb.ac

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %.sroa.0.0377.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %.sroa.0359.0.copyload.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %.sroa.8.1376.i.i.i.i.i = phi ptr [ %.sroa.8.0.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %.sroa.4360.0.copyload.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %.sroa.10.1375.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %.sroa.5361.0.copyload.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEEINtBN_11PoisonErrorBI_EE7map_errNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorNCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB50_14OtlpHttpClientNtNtNtB40_5trace6export12SpanExporter6export00ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ]
  %i.fl = ptrtoint ptr %.sroa.10.1375.i.i.i.i.i to i64
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.ac:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i.i.i.i.i), "nonnull"(ptr %.sroa.10.0.i.i.i.i.i) ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  store ptr %.sroa.8.0.i.i.i.i.i, ptr %i.fm, align 8, !noalias !90
  %i.fn = getelementptr i8, ptr %i.dp, i64 72     ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %i.fn, align 8, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !94
  store i8 0, ptr %i.dz, align 1, !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !94
  invoke void @_RNvMs0_NtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4httpNtB5_14OtlpHttpClient23build_trace_export_body(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bo, ptr noundef nonnull align 8 %i.dw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bn)
          to label %bb.ae unwind label %bb.ad, !noalias !95

bb.ad:                                            ; preds = %bb.ac
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !94
  br label %bb.dq

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !94
  %i.fp = load i64, ptr %i.bo, align 8, !range !114, !noalias !94, !noundef !3
  %i.fq = icmp eq i64 %i.fp, -9223372036854775808
  br i1 %i.fq, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false), !noalias !94
  %.val.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !94, !nonnull !3, !noundef !3
  %.val114.i.i.i.i.i = load i64, ptr %i.dl, align 8, !noalias !94, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !115
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef range(i64 0, -9223372036854775808) %.val114.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc150.i.i.i.i.i unwind label %.loopexit25.i.i, !noalias !95

.noexc150.i.i.i.i.i:                              ; preds = %bb.af
  %i.fr = load i64, ptr %i.m, align 8, !range !20, !noalias !115, !noundef !3
  %i.fs = trunc nuw i64 %i.fr to i1
  %i.ft = load i64, ptr %i.dm, align 8, !range !114, !noalias !115, !noundef !3 ; 3 uses
  br i1 %i.fs, label %bb.ag, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i, !prof !39

bb.ag:                                            ; preds = %.noexc150.i.i.i.i.i
  %i.fu = load i64, ptr %i.dn, align 8, !noalias !115
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ft, i64 %i.fu) #28
          to label %.noexc151.i.i.i.i.i unwind label %.loopexit.split-lp26.i.i, !noalias !95

.noexc151.i.i.i.i.i:                              ; preds = %bb.ag
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc150.i.i.i.i.i
  %i.fv = load ptr, ptr %i.dn, align 8, !noalias !115, !nonnull !3, !noundef !3 ; 2 uses
  %i.fw = icmp ule i64 %.val114.i.i.i.i.i, %i.ft
  call void @llvm.assume(i1 %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !115
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val114.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr nonnull readonly align 1 %.val.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val114.i.i.i.i.i, i1 false), !noalias !123
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !noalias !94
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94, !nonnull !3, !noundef !3
  %.sroa.3.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94
  store i8 1, ptr %i.ea, align 1, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !94
  invoke void @_RNvMs2_NtCs4j34XAPZOn0_4http7requestNtB5_5Parts3new(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.bi)
          to label %_RNvMNtCs4j34XAPZOn0_4http7requestINtB2_7RequestuE7builder.exit.i.i.i.i.i unwind label %bb.ak, !noalias !95

bb.aj:                                            ; preds = %bb.al, %bb.ak
  %.pn19.i.i.i.i.i = phi { ptr, i32 } [ %i.fy, %bb.al ], [ %i.fx, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !94
  br label %bb.dj

bb.ak:                                            ; preds = %bb.ai
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_RNvMNtCs4j34XAPZOn0_4http7requestINtB2_7RequestuE7builder.exit.i.i.i.i.i: ; preds = %bb.ai
  invoke void @_RINvMs4_NtCs4j34XAPZOn0_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.bj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.bi, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @58)
          to label %bb.am unwind label %bb.al, !noalias !95

bb.al:                                            ; preds = %_RNvMNtCs4j34XAPZOn0_4http7requestINtB2_7RequestuE7builder.exit.i.i.i.i.i
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.am:                                            ; preds = %_RNvMNtCs4j34XAPZOn0_4http7requestINtB2_7RequestuE7builder.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !94
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  invoke void @_RINvMs4_NtCs4j34XAPZOn0_4http7requestNtB6_7Builder3uriRNtNtB8_3uri3UriECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.bk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.bj, ptr noundef nonnull align 8 %i.fz)
          to label %bb.ao unwind label %bb.an, !noalias !95

bb.an:                                            ; preds = %bb.am
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !94
  invoke void @_RINvMs4_NtCs4j34XAPZOn0_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.bl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.bk, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) @59, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.2.0.copyload.i.i.i.i.i, i64 noundef %.sroa.3.0.copyload.i.i.i.i.i)
          to label %bb.aq unwind label %bb.ap, !noalias !95

bb.ap:                                            ; preds = %bb.ao
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !94
  %.not25.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload.i.i.i.i.i, null
  br i1 %.not25.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !94
  invoke void @_RINvMs4_NtCs4j34XAPZOn0_4http7requestNtB6_7Builder6headerReBT_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.bh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.bl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i.i.i.i.i, i64 noundef %.sroa.5.0.copyload.i.i.i.i.i)
          to label %bb.au unwind label %bb.at, !noalias !95

bb.as:                                            ; preds = %bb.au, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.bg, ptr noundef nonnull align 8 dereferenceable(224) %i.bl, i64 224, i1 false), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !94
  store i8 0, ptr %i.ea, align 1, !noalias !90
  invoke void @_RNvXsE_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bp)
          to label %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc3vec3VechEINtB5_4IntoNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4intoCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.df, !noalias !95

bb.at:                                            ; preds = %bb.ar
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !94
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.bl, ptr noundef nonnull align 8 dereferenceable(224) %i.bh, i64 224, i1 false), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !94
  br label %bb.as

bb.av:                                            ; preds = %bb.di, %bb.dh, %bb.at
  %i.gd = phi ptr [ %i.lj, %bb.dh ], [ %i.dx, %bb.at ], [ %i.dx, %bb.di ]
  %i.ge = phi ptr [ %i.lk, %bb.dh ], [ %i.dy, %bb.at ], [ %i.dy, %bb.di ]
  %.pn88.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn88.pn.i.i.i.i.i, %bb.dh ], [ %i.gc, %bb.at ], [ %.pn23.i.i.i.i.i, %bb.di ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dp, i64 379 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !range !101, !noalias !90, !noundef !3
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.hf, label %bb.he

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc3vec3VechEINtB5_4IntoNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4intoCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.as
  invoke void @_RINvMs4_NtCs4j34XAPZOn0_4http7requestNtB6_7Builder4bodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.be, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(224) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.bf)
          to label %bb.ax unwind label %bb.aw, !noalias !95

bb.aw:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc3vec3VechEINtB5_4IntoNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4intoCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !94
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http7request7BuilderECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.ax:                                            ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertINtNtCs6Po7BT7Nknu_5alloc3vec3VechEINtB5_4IntoNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4intoCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !94
  %i.gj = load i64, ptr %i.be, align 8, !range !124, !noalias !94, !noundef !3
  %i.gk = icmp eq i64 %i.gj, 3
  br i1 %i.gk, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !94
  %i.gl = load i8, ptr %i.de, align 8, !range !125, !noalias !94, !noundef !3
  %i.gm = load i8, ptr %i.df, align 1, !noalias !94
  store i8 %i.gl, ptr %i.bd, align 1, !noalias !94
  store i8 %i.gm, ptr %i.dg, align 1, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !126
  store i64 0, ptr %i.l, align 8, !noalias !126
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i154.i.i.i.i.i, align 8, !noalias !126
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !126
  store i32 1610612768, ptr %i.dh, align 8, !noalias !126
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i155.i.i.i.i.i, align 4, !noalias !126
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i156.i.i.i.i.i, align 2, !noalias !126
  store ptr %i.l, ptr %i.k, align 8, !noalias !126
  store ptr @183, ptr %i.di, align 8, !noalias !126
  %i.gn = invoke noundef zeroext i1 @_RNvXs_NtCs4j34XAPZOn0_4http5errorNtB4_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ba unwind label %.loopexit20.i.i, !noalias !133

.loopexit20.i.i:                                  ; preds = %bb.ay
  %lpad.loopexit22.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp21.i.i:                         ; preds = %bb.bb
  %lpad.loopexit.split-lp23.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp21.i.i, %.loopexit20.i.i
  %lpad.phi24.i.i = phi { ptr, i32 } [ %lpad.loopexit22.i.i, %.loopexit20.i.i ], [ %lpad.loopexit.split-lp23.i.i, %.loopexit.split-lp21.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #29
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEE4withNCINvB1u_12run_executorINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorENCINvB1u_8block_onNCNvXs3_NtCs1e4wyRlCFp2_18opentelemetry_otlp4spanNtB4V_12SpanExporterNtNtNtB3D_5trace6export12SpanExporter6export0E0E0B2W_ECs7p2uQeJxui2_9deltalake:bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm) #29
          to label %.body182.i.i.i.i.i unwind label %bb.dc, !noalias !95

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.ah, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i unwind label %bb.dl, !noalias !95

bb.dl:                                            ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.body182.i.i.i.i.i unwind label %bb.dm, !noalias !95

bb.dm:                                            ; preds = %bb.dl
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !95
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i: ; preds = %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.dn, !noalias !95

.body182.i.i.i.i.i:                               ; preds = %bb.dn, %bb.dl, %bb.dk
  %.pn92.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi29.i.i, %bb.dk ], [ %i.lo, %bb.dn ], [ %i.lm, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !94
  br label %bb.dq

bb.dn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body182.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !94
  br label %bb.do

bb.do:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit221.i.i.i.i.i
  %i.lp = phi ptr [ %i.dx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %i.ld, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit221.i.i.i.i.i ] ; 3 uses
  %i.lq = phi ptr [ %i.dy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %i.le, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit221.i.i.i.i.i ] ; 3 uses
  %.sroa.0334.1.i.i.i.i.i = phi i64 [ %i.ft, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %.sroa.0334.0.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit221.i.i.i.i.i ] ; 2 uses
  %.sroa.7337.1.i.i.i.i.i = phi ptr [ %i.fv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %.sroa.7337.0.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit221.i.i.i.i.i ] ; 2 uses
  %.sroa.10342.1.i.i.i.i.i = phi i64 [ %.val114.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i ], [ %.sroa.10342.0.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit221.i.i.i.i.i ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !218, !noalias !90, !nonnull !3, !noundef !3
  %i.lt = atomicrmw sub ptr %i.ls, i64 1 release, align 8, !noalias !219
  %i.lu = icmp eq i64 %i.lt, 1
  br i1 %i.lu, label %bb.dp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.dp:                                            ; preds = %bb.do
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_E9drop_slowCs1e4wyRlCFp2_18opentelemetry_otlp(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.lr) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %.loopexit30.i.i, !noalias !95

bb.dq:                                            ; preds = %.body182.i.i.i.i.i, %bb.ad
  %.pn92.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn92.i.i.i.i.i, %.body182.i.i.i.i.i ], [ %i.fo, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !94
  br label %bb.dr

bb.dr:                                            ; preds = %bb.he, %bb.dq
  %i.lv = phi ptr [ %i.dx, %bb.dq ], [ %i.gd, %bb.he ] ; 2 uses
  %i.lw = phi ptr [ %i.dy, %bb.dq ], [ %i.ge, %bb.he ] ; 2 uses
  %.pn92.pn.pn.i.i.i.i.i = phi { ptr, i32 } [ %.pn92.pn.i.i.i.i.i, %bb.dq ], [ %.pn88.pn.pn.i.i.i.i.i, %bb.he ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.ly = load ptr, ptr %i.lx, align 8, !alias.scope !226, !noalias !90, !nonnull !3, !noundef !3
  %i.lz = atomicrmw sub ptr %i.ly, i64 1 release, align 8, !noalias !227
  %i.ma = icmp eq i64 %i.lz, 1
  br i1 %i.ma, label %bb.ds, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EECs7p2uQeJxui2_9deltalake.exit187.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_E9drop_slowCs1e4wyRlCFp2_18opentelemetry_otlp(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.lx) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EECs7p2uQeJxui2_9deltalake.exit187.i.i.i.i.i unwind label %bb.dc, !noalias !95

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i
  %i.mb = phi ptr [ %i.dx, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i ], [ %i.lp, %bb.dp ], [ %i.lp, %bb.do ] ; 3 uses
  %i.mc = phi ptr [ %i.dy, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i ], [ %i.lq, %bb.dp ], [ %i.lq, %bb.do ] ; 3 uses
  %.sroa.0334.2.i.i.i.i.i = phi i64 [ %.sroa.0.0377.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i ], [ %.sroa.0334.1.i.i.i.i.i, %bb.dp ], [ %.sroa.0334.1.i.i.i.i.i, %bb.do ] ; 2 uses
  %.sroa.7337.2.i.i.i.i.i = phi ptr [ %.sroa.8.1376.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i ], [ %.sroa.7337.1.i.i.i.i.i, %bb.dp ], [ %.sroa.7337.1.i.i.i.i.i, %bb.do ] ; 2 uses
  %.sroa.10342.2.i.i.i.i.i = phi i64 [ %i.fl, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB5_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EEENtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorE8and_thenB1Z_NCNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB4I_14OtlpHttpClientNtNtNtB3u_5trace6export12SpanExporter6export0s_0ECs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i ], [ %.sroa.10342.1.i.i.i.i.i, %bb.dp ], [ %.sroa.10342.1.i.i.i.i.i, %bb.do ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.dp, i64 377 ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !range !101, !noalias !90, !noundef !3
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.gy, label %bb.hi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs2aRboSwuR0Z_18opentelemetry_http10HttpClientEL_EECs7p2uQeJxui2_9deltalake.exit187.i.i.i.i.i: ; preds = %.loopexit.split-lp31.i.i, %.loopexit30.i.i, %bb.ds, %bb.dr, %bb.ab, %.body.i.i.i.i.i
  %i.mg = phi ptr [ %i.lv, %bb.dr ], [ %i.dx, %.body.i.i.i.i.i ], [ %i.dx, %bb.ab ], [ %i.lv, %bb.ds ], [ %i.lp, %.loopexit30.i.i ], [ %i.ml, %.loopexit.split-lp31.i.i ] ; 2 uses
  %i.mh = phi ptr [ %i.lw, %bb.dr ], [ %i.dy, %.body.i.i.i.i.i ], [ %i.dy, %bb.ab ], [ %i.lw, %bb.ds ], [ %i.lq, %.loopexit30.i.i ], [ %i.mm, %.loopexit.split-lp31.i.i ] ; 2 uses
  %.pn96.i.i.i.i.i = phi { ptr, i32 } [ %.pn92.pn.pn.i.i.i.i.i, %bb.dr ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.fk, %bb.ab ], [ %.pn92.pn.pn.i.i.i.i.i, %bb.ds ], [ %lpad.loopexit32.i.i, %.loopexit30.i.i ], [ %lpad.loopexit.split-lp33.i.i, %.loopexit.split-lp31.i.i ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.dp, i64 377
  %i.mj = load i8, ptr %i.mi, align 1, !range !101, !noalias !90, !noundef !3
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.hg, label %.body240.i.i.i.i.i

bb.dt:                                            ; preds = %bb.f
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #27
          to label %.noexc.i.i.i.i unwind label %bb.hh, !noalias !89

.noexc.i.i.i.i:                                   ; preds = %bb.dt
  unreachable

bb.du:                                            ; preds = %bb.f
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #27
          to label %.noexc4.i.i.i.i unwind label %bb.hh, !noalias !89

.noexc4.i.i.i.i:                                  ; preds = %bb.du
  unreachable

bb.dv:                                            ; preds = %bb.cn, %bb.h
  %i.ml = phi ptr [ %i.dx, %bb.cn ], [ %.phi.trans.insert.i.i.i.i, %bb.h ] ; 17 uses
  %i.mm = phi ptr [ %i.dy, %bb.cn ], [ %i.dv, %bb.h ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !94
  %i.mn = getelementptr inbounds nuw i8, ptr %i.dp, i64 360 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEIBW_DNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB3S_4SendEL_EEB49_EL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.mn, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %bb.dx unwind label %bb.dw, !noalias !95

bb.dw:                                            ; preds = %bb.dv
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !94
  %.val138.i.i.i.i.i = load ptr, ptr %i.mn, align 8, !noalias !90
  %i.mp = getelementptr i8, ptr %i.dp, i64 368
  %.val139.i.i.i.i.i = load ptr, ptr %i.mp, align 8, !noalias !90, !nonnull !3, !align !38, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB4b_4SendEL_EEB4s_EL_EEECs7p2uQeJxui2_9deltalake(ptr %.val138.i.i.i.i.i, ptr nonnull %.val139.i.i.i.i.i) #29
          to label %.body189.i.i.i.i.i unwind label %bb.dc, !noalias !95

bb.dx:                                            ; preds = %bb.dv
  %i.mq = load i64, ptr %i.ao, align 8, !range !228, !noalias !94, !noundef !3 ; 3 uses
  %i.mr = icmp eq i64 %i.mq, 4
  br i1 %i.mr, label %.thread27.i.i.i.i, label %bb.dy

.thread27.i.i.i.i:                                ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !94
  store i8 3, ptr %i.ml, align 8, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6281.sroa.2.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !84
  br label %bb.hl

bb.dy:                                            ; preds = %bb.dx
  %.sroa.3279.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.3279.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94 ; 3 uses
  %.sroa.5280.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5280.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94 ; 3 uses
  %.sroa.6281.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6281.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6281.sroa.2.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6281.sroa.2.0..sroa.6281.0..sroa_idx.sroa_idx.i.i.i.i.i, i64 112, i1 false), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !94
  %.val140.i.i.i.i.i = load ptr, ptr %i.mn, align 8, !noalias !90 ; 5 uses
  %i.ms = getelementptr i8, ptr %i.dp, i64 368
  %.val141.i.i.i.i.i = load ptr, ptr %i.ms, align 8, !noalias !90, !nonnull !3, !align !38, !noundef !3 ; 5 uses
  %i.mt = load ptr, ptr %.val141.i.i.i.i.i, align 8, !invariant.load !3, !noalias !95 ; 2 uses
  %.not.i.i188.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i188.i.i.i.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val140.i.i.i.i.i) ]
  invoke void %i.mt(ptr noundef nonnull %.val140.i.i.i.i.i)
          to label %bb.ea unwind label %bb.ec, !noalias !95

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.mu = getelementptr inbounds nuw i8, ptr %.val141.i.i.i.i.i, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !range !229, !invariant.load !3, !noalias !95 ; 2 uses
  %i.mw = icmp eq i64 %i.mv, 0
  br i1 %i.mw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB4b_4SendEL_EEB4s_EL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.mx = getelementptr inbounds nuw i8, ptr %.val141.i.i.i.i.i, i64 16
  %i.my = load i64, ptr %i.mx, align 8, !range !156, !invariant.load !3, !noalias !95
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val140.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val140.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.mv, i64 noundef range(i64 1, 536870913) %i.my) #33, !noalias !95
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB4b_4SendEL_EEB4s_EL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i

bb.ec:                                            ; preds = %bb.dz
  %i.mz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.val141.i.i.i.i.i, i64 8
  %i.nb = load i64, ptr %i.na, align 8, !range !229, !invariant.load !3, !noalias !95 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %.body189.i.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.nd = getelementptr inbounds nuw i8, ptr %.val141.i.i.i.i.i, i64 16
  %i.ne = load i64, ptr %i.nd, align 8, !range !156, !invariant.load !3, !noalias !95
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val140.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.nb, i64 noundef range(i64 1, 536870913) %i.ne) #33, !noalias !95
  br label %.body189.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB4b_4SendEL_EEB4s_EL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %i.nf = icmp eq i64 %i.mq, 3
  br i1 %i.nf, label %bb.ee, label %bb.em

bb.ee:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB4b_4SendEL_EEB4s_EL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3279.0.copyload.i.i.i.i.i), "nonnull"(ptr %.sroa.5280.0.copyload.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !230
  store ptr %.sroa.3279.0.copyload.i.i.i.i.i, ptr %i.g, align 8, !noalias !234
  store ptr %.sroa.5280.0.copyload.i.i.i.i.i, ptr %i.dd, align 8, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !234
  store ptr %i.g, ptr %i.e, align 8, !noalias !234
  store ptr @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.42.0..sroa_idx.i.i191.i.i.i.i.i, align 8, !noalias !234
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @6, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i194.i.i.i.i.i unwind label %bb.ef, !noalias !238

bb.ef:                                            ; preds = %bb.ee
  %i.ng = landingpad { ptr, i32 }
          cleanup
  %.val9.i.i192.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !234
  %.val10.i.i193.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !noalias !234, !nonnull !3, !align !38, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs7p2uQeJxui2_9deltalake(ptr %.val9.i.i192.i.i.i.i.i, ptr nonnull %.val10.i.i193.i.i.i.i.i) #29
          to label %.body189.i.i.i.i.i unwind label %bb.el, !noalias !238

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i194.i.i.i.i.i: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !234
  %.sroa.0362.0.copyload.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !239
  %.sroa.4363.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4363.0..sroa_idx.i.i.i.i.i, align 8, !noalias !239
  %.sroa.5364.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5364.0..sroa_idx.i.i.i.i.i, align 8, !noalias !239
  %.val7.i.i195.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !234 ; 5 uses
  %.val8.i.i196.i.i.i.i.i = load ptr, ptr %i.dd, align 8, !noalias !234, !nonnull !3, !align !38, !noundef !3 ; 5 uses
  %i.nh = load ptr, ptr %.val8.i.i196.i.i.i.i.i, align 8, !invariant.load !3, !noalias !238 ; 2 uses
  %.not.i.i.i197.i.i.i.i.i = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i197.i.i.i.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i194.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i195.i.i.i.i.i) ]
  invoke void %i.nh(ptr noundef nonnull %.val7.i.i195.i.i.i.i.i)
          to label %bb.eh unwind label %bb.ej, !noalias !238

bb.eh:                                            ; preds = %bb.eg, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i194.i.i.i.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %.val8.i.i196.i.i.i.i.i, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !range !229, !invariant.load !3, !noalias !238 ; 2 uses
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %bb.gx, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.nl = getelementptr inbounds nuw i8, ptr %.val8.i.i196.i.i.i.i.i, i64 16
  %i.nm = load i64, ptr %i.nl, align 8, !range !156, !invariant.load !3, !noalias !238
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i195.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i195.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.nj, i64 noundef range(i64 1, 536870913) %i.nm) #33, !noalias !238
  br label %bb.gx

bb.ej:                                            ; preds = %bb.eg
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.val8.i.i196.i.i.i.i.i, i64 8
  %i.np = load i64, ptr %i.no, align 8, !range !229, !invariant.load !3, !noalias !238 ; 2 uses
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %.body189.i.i.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.nr = getelementptr inbounds nuw i8, ptr %.val8.i.i196.i.i.i.i.i, i64 16
  %i.ns = load i64, ptr %i.nr, align 8, !range !156, !invariant.load !3, !noalias !238
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i195.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.np, i64 noundef range(i64 1, 536870913) %i.ns) #33, !noalias !238
  br label %.body189.i.i.i.i.i

bb.el:                                            ; preds = %bb.ef
  %i.nt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !238
  unreachable

bb.em:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs4j34XAPZOn0_4http8response8ResponseNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEIBX_DNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB4b_4SendEL_EEB4s_EL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7301.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6281.sroa.2.i.i.i.i.i, i64 112, i1 false), !noalias !94
  store i64 %i.mq, ptr %i.aq, align 8, !noalias !94
  store ptr %.sroa.3279.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx297.i.i.i.i.i, align 8, !noalias !94
  store ptr %.sroa.5280.0.copyload.i.i.i.i.i, ptr %.sroa.5299.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94
  store i64 %.sroa.6281.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.6300.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94
  %.val143.i.i.i.i.i = load i16, ptr %i.cq, align 8, !range !240, !noalias !94, !noundef !3 ; 2 uses
  %i.nu = add i16 %.val143.i.i.i.i.i, -200
  %spec.select.i.i.i.i.i.i.i = icmp ult i16 %i.nu, 100
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.ft, label %bb.eo

bb.en:                                            ; preds = %bb.eo
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !94
  br label %bb.fs

bb.eo:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !94
  %i.nw = getelementptr inbounds nuw i8, ptr %i.dp, i64 336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !94
  store i16 %.val143.i.i.i.i.i, ptr %i.al, align 2, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !94
  store ptr %i.cr, ptr %i.ak, align 8, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !94
  store ptr %i.nw, ptr %i.aj, align 8, !noalias !94
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5305.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94
  store ptr %i.al, ptr %i.cs, align 8, !noalias !94
  store ptr @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.5307.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94
  store ptr %i.ak, ptr %i.ct, align 8, !noalias !94
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.5309.0..sroa_idx.i.i.i.i.i, align 8, !noalias !94
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @65, ptr noundef nonnull %i.aj)
          to label %bb.ep unwind label %bb.en, !noalias !95

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.am, i64 24, i1 false), !alias.scope !241, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !94
  %i.nx = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !94
  %i.ny = icmp samesign ult i64 %i.nx, 2
  br i1 %i.ny, label %bb.eq, label %bb.ex

bb.eq:                                            ; preds = %bb.ep
  %i.nz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB8_14OtlpHttpClientNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter6export0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !94 ; 2 uses
  %i.oa = icmp ult i8 %i.nz, 3
  br i1 %i.oa, label %bb.et, label %bb.er, !prof !140

bb.er:                                            ; preds = %bb.eq
  %i.ob = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB8_14OtlpHttpClientNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter6export0s_10___CALLSITE) #31
          to label %bb.et unwind label %bb.es, !noalias !95

bb.es:                                            ; preds = %bb.er
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.et:                                            ; preds = %bb.er, %bb.eq
  %.sroa.0.0.i207.i.i.i.i.i = phi i8 [ %i.nz, %bb.eq ], [ %i.ob, %bb.er ] ; 2 uses
  %i.od = icmp eq i8 %.sroa.0.0.i207.i.i.i.i.i, 0
  br i1 %i.od, label %bb.ex, label %bb.ev

bb.eu:                                            ; preds = %bb.ev
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.ev:                                            ; preds = %bb.et
  %i.of = load ptr, ptr @_RNvNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB8_14OtlpHttpClientNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter6export0s_10___CALLSITE, align 8, !noalias !94, !nonnull !3, !align !38, !noundef !3
  %i.og = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.of, i8 noundef %.sroa.0.0.i207.i.i.i.i.i)
          to label %bb.ew unwind label %bb.eu, !noalias !95

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.og, label %bb.fi, label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.et, %bb.ep
  %i.oh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !94
  %.not401.i.i.i.i.i = icmp eq i8 %i.oh, 0
  br i1 %.not401.i.i.i.i.i, label %bb.ey, label %bb.fh

bb.ey:                                            ; preds = %bb.ex
  %i.oi = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !94 ; 2 uses
  %i.oj = icmp ult i64 %i.oi, 6
  call void @llvm.assume(i1 %i.oj)
  %i.ok = icmp samesign ugt i64 %i.oi, 3
  br i1 %i.ok, label %bb.fa, label %bb.fh

bb.ez:                                            ; preds = %bb.fa
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fa:                                            ; preds = %bb.ey
  %i.om = load ptr, ptr @_RNvNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB8_14OtlpHttpClientNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter6export0s_10___CALLSITE, align 8, !noalias !94, !nonnull !3, !align !38, !noundef !3 ; 3 uses
  %i.on = getelementptr i8, ptr %i.om, i64 32
  %.val132.i.i.i.i.i = load ptr, ptr %i.on, align 8, !noalias !95, !nonnull !3, !noundef !3
  %i.oo = getelementptr i8, ptr %i.om, i64 40
  %.val133.i.i.i.i.i = load i64, ptr %i.oo, align 8, !noalias !95, !noundef !3
  store i64 4, ptr %i.ae, align 8, !alias.scope !245, !noalias !94
  store ptr %.val132.i.i.i.i.i, ptr %.sroa.6320.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !245, !noalias !94
  store i64 %.val133.i.i.i.i.i, ptr %.sroa.8321.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !245, !noalias !94
  %i.op = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fb unwind label %bb.ez, !noalias !95 ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.oq = extractvalue { ptr, ptr } %i.op, 0      ; 2 uses
  %i.or = extractvalue { ptr, ptr } %i.op, 1      ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ot = load ptr, ptr %i.os, align 8, !invariant.load !3, !noalias !95, !nonnull !3
  %i.ou = invoke noundef zeroext i1 %i.ot(ptr noundef %i.oq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.fd unwind label %bb.fc, !noalias !95

bb.fc:                                            ; preds = %bb.fb
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fd:                                            ; preds = %bb.fb
  br i1 %i.ou, label %bb.fe, label %bb.fh

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !94
  %i.ow = load ptr, ptr @_RNvNCNvXNtNtNtCs1e4wyRlCFp2_18opentelemetry_otlp8exporter4http5traceNtB8_14OtlpHttpClientNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter6export0s_10___CALLSITE, align 8, !noalias !94, !nonnull !3, !align !38, !noundef !3
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !94
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.ab, align 16, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !94
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler14current_threadNtB1b_13CurrentThread8block_onNCNvNtCs7p2uQeJxui2_9deltalake5utils9walk_tree0E0INtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3D_5ErrorEEB2i_:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime17EnterRuntimeGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.l) #29
          to label %bb.af unwind label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync6notify8NotifiedECs7p2uQeJxui2_9deltalake.exit.i, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime7context7runtime17EnterRuntimeGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void

bb.ae:                                            ; preds = %.body
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.af:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtCs2pqxYH9ZEk8_3std2io19default_read_to_end16small_probe_readINtB4_4TakeNtNtB6_2fs4FileEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !14512, !noalias !14515, !noundef !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.noexc, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit
  %i.h = phi i64 [ %i.d, %.lr.ph ], [ %i.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit ]
  %.sroa.0.0.i.i = call noundef range(i64 1, 33) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.h, i64 32)
  %i.i = call { i64, ptr } @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f, ptr noalias noundef nonnull %i.b, i64 noundef %.sroa.0.0.i.i) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 14 uses
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = load i64, ptr %i.c, align 8, !alias.scope !14512, !noalias !14515, !noundef !3 ; 2 uses
  %.not.i = icmp ult i64 %i.n, %i.m
  br i1 %.not.i, label %bb.d, label %.loopexit, !prof !39

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @219, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #27
  unreachable

bb.e:                                             ; preds = %bb.b
  store i64 1, ptr %i.a, align 8
  store ptr %i.k, ptr %i.g, align 8
  %i.o = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %bb.i
    i64 3, label %bb.l
    i64 0, label %bb.j
    i64 1, label %bb.k
  ], !prof !2492

default.unreachable:                              ; preds = %bb.e
  unreachable

.loopexit:                                        ; preds = %bb.c
  %i.q = sub nuw i64 %i.n, %i.m
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !14512, !noalias !14515
  %.cast = ptrtoint ptr %i.k to i64               ; 2 uses
  %i.r = icmp ult ptr %i.k, inttoptr (i64 33 to ptr)
  br i1 %i.r, label %.noexc, label %bb.f, !prof !14517

bb.f:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.cast, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

.noexc:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, %bb.a, %.loopexit
  %.cast60 = phi i64 [ %.cast, %.loopexit ], [ 0, %bb.a ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %.sroa.4.0.i.ph59 = phi ptr [ %i.k, %.loopexit ], [ null, %bb.a ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.cast60)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !14518, !noundef !3 ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  call void @llvm.assume(i1 %i.u)
  %.not.i3 = icmp eq ptr %.sroa.4.0.i.ph59, null
  br i1 %.not.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !14518, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull readonly align 1 %i.b, i64 %.cast60, i1 false)
  %.pre.i = load i64, ptr %i.s, align 8, !alias.scope !14518
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc
  %i.y = phi i64 [ %.pre.i, %bb.g ], [ %i.t, %.noexc ]
  %i.z = add i64 %i.y, %.cast60
  store i64 %i.z, ptr %i.s, align 8, !alias.scope !14518
  br label %.loopexit41

.loopexit41:                                      ; preds = %bb.l, %bb.i, %bb.k, %bb.j, %bb.h
  %.sroa.3.0 = phi ptr [ %.sroa.4.0.i.ph59, %bb.h ], [ %i.k, %bb.j ], [ %i.k, %bb.k ], [ %i.k, %bb.i ], [ %i.k, %bb.l ]
  %.sroa.0.0 = phi i64 [ 0, %bb.h ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ab = insertvalue { i64, ptr } %i.aa, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ab

bb.i:                                             ; preds = %bb.e
  %.mask40 = and i64 %i.o, -4294967296
  %i.ac = icmp eq i64 %.mask40, 17179869184
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, label %.loopexit41

bb.j:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !2493, !noundef !3
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, label %.loopexit41

bb.k:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.k, i64 15
  %i.ah = load i8, ptr %i.ag, align 8, !range !2493, !noundef !3
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, label %.loopexit41

bb.l:                                             ; preds = %bb.e
  %i.aj = icmp ult ptr %i.k, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.aj)
  %.mask = and i64 %i.o, -4294967296
  %i.ak = icmp eq i64 %.mask, 150323855360
  br i1 %i.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit, label %.loopexit41

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j, %bb.k, %bb.i, %bb.l
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.al = load i64, ptr %i.c, align 8, !alias.scope !14512, !noalias !14515, !noundef !3 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.noexc, label %bb.b
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @_RINvXNtNtCs2pqxYH9ZEk8_3std2io4copyINtB5_4TakeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderENtB3_18BufferedReaderSpec7copy_toQINtNtNtBO_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 {
bb.a:
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #27
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !14526 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !14526 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !14526 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !14526 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !3
  %i.t = load i8, ptr %i.r, align 1, !noundef !3
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !14521, !noalias !14524
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !14524, !noalias !14521
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !14521, !noalias !14524
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !14524, !noalias !14521
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB7_18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB1n_6filter3env9EnvFilterNtNtNtB1n_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1l_5LayerB1g_E8on_enter0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14530)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !14530, !noalias !14527, !noundef !3 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !14532
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !14530, !noalias !14527, !noundef !3 ; 3 uses
  %.not4.i = icmp eq ptr %i.i, null
  br i1 %.not4.i, label %_RNvXs4_NtCskFSgV2vI2Ct_13opentelemetry7contextNtB5_7ContextNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !14532
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %_RNvXs4_NtCskFSgV2vI2Ct_13opentelemetry7contextNtB5_7ContextNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXs4_NtCskFSgV2vI2Ct_13opentelemetry7contextNtB5_7ContextNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.c, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !101, !alias.scope !14530, !noalias !14527, !noundef !3
  store ptr %i.e, ptr %i.d, align 8, !alias.scope !14527, !noalias !14530
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.n, align 8, !alias.scope !14527, !noalias !14530
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.m, ptr %i.o, align 8, !alias.scope !14527, !noalias !14530
  %i.p = call noundef i16 @_RNvMNtCskFSgV2vI2Ct_13opentelemetry7contextNtB2_7Context6attach(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = load ptr, ptr %0, align 8, !nonnull !3, !align !38, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14533
  store ptr %i.q, ptr %i.c, align 8, !noalias !14539
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i16 %i.p, ptr %i.r, align 8, !noalias !14539
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i8, ptr %i.t, align 8, !range !172, !noalias !14540, !noundef !3
  %i.v = icmp eq i8 %i.u, 1
  br i1 %i.v, label %_RNvYNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1d_6option6OptionQIB1S_INtNtB1d_4cell7RefCellINtNtBa_5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %bb.g, !prof !37

bb.g:                                             ; preds = %_RNvXs4_NtCskFSgV2vI2Ct_13opentelemetry7contextNtB5_7ContextNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %i.w = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEuE16get_or_init_slowNvNvNtB1U_5layer11GUARD_STACK27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(40) null)
          to label %_RNvYNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1d_6option6OptionQIB1S_INtNtB1d_4cell7RefCellINtNtBa_5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.q ; 2 uses

_RNvYNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1d_6option6OptionQIB1S_INtNtB1d_4cell7RefCellINtNtBa_5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.g
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.s, label %_RNvYNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1d_6option6OptionQIB1S_INtNtB1d_4cell7RefCellINtNtBa_5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1d_6option6OptionQIB1S_INtNtB1d_4cell7RefCellINtNtBa_5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1d_6option6OptionQIB1S_INtNtB1d_4cell7RefCellINtNtBa_5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvXs4_NtCskFSgV2vI2Ct_13opentelemetry7contextNtB5_7ContextNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %.sroa.0.0.i.i.i6.i.i = phi ptr [ %i.w, %_RNvYNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1d_6option6OptionQIB1S_INtNtB1d_4cell7RefCellINtNtBa_5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.s, %_RNvXs4_NtCskFSgV2vI2Ct_13opentelemetry7contextNtB5_7ContextNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14539
  store ptr %i.q, ptr %i.b, align 8, !noalias !14550
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i16 %i.p, ptr %i.y, align 8, !noalias !14550
  %i.z = load i64, ptr %.sroa.0.0.i.i.i6.i.i, align 8, !noalias !14547, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !37

bb.h:                                             ; preds = %_RNvYNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1d_6option6OptionQIB1S_INtNtB1d_4cell7RefCellINtNtBa_5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  store i64 -1, ptr %.sroa.0.0.i.i.i6.i.i, align 8, !noalias !14547
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i6.i.i, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.q, align 8, !range !4876, !alias.scope !14550, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14550
  store i64 %i.ab, ptr %i.a, align 8, !noalias !14554
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i16 %i.p, ptr %i.ac, align 8, !noalias !14554
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i6.i.i, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !14551, !noalias !14547, !noundef !3 ; 3 uses
  %i.af = load i64, ptr %i.aa, align 8, !range !229, !alias.scope !14551, !noalias !14547, !noundef !3
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEE4withNCNCNvXs5_NtB1A_5layerINtB3G_18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB4q_6filter3env9EnvFilterNtNtNtB4q_8registry7sharded8RegistryENtNtNtB2z_6global5trace11BoxedTracerEINtB4o_5LayerB4j_E8on_enter00uECs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack7IdValueNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell7RefCellINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEE4withNCNCNvXs5_NtB1A_5layerINtB3G_18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB4q_6filter3env9EnvFilterNtNtNtB4q_8registry7sharded8RegistryENtNtNtB2z_6global5trace11BoxedTracerEINtB4o_5LayerB4j_E8on_enter00uECs7p2uQeJxui2_9deltalake.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtCskFSgV2vI2Ct_13opentelemetry7contextNtB5_12ContextGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 2 dereferenceable(2) %i.ac)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.l:                                             ; preds = %_RNvYNCNKNvNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer11GUARD_STACK00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1d_6option6OptionQIB1S_INtNtB1d_4cell7RefCellINtNtBa_5stack12IdValueStackNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardEEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #28
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.aj = load i64, ptr %.sroa.0.0.i.i.i6.i.i, align 8, !noalias !14547, !noundef !3
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %.sroa.0.0.i.i.i6.i.i, align 8, !noalias !14547
  br label %.body.i.i

end_hunk_2
