Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.09?download=true
inline.NumInlined: 7577
inline.NumDeleted: 2726
begin_hunk_0_@_RNvXs0_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h26serverINtB5_6ServerINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB15_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtNtB15_7service4glue19TowerToHyperServiceINtNtNtCsbakdBCgU4AF_16influxdb3_server15unified_service17remote_addr_layer17RemoteAddrServiceINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceIB5r_INtNtB3Z_7service14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEEEEEINtB5t_10TracedBodyIB99_INtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBbT_6marker4SendNtBcq_4SyncEL_EEEENtB1T_13TokioExecutorENtNtNtBbT_6future6future6Future4pollCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15434
  store ptr @89, ptr %i.a, align 8, !noalias !15434
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx6.i.i, align 8, !noalias !15434
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !15434
  store i32 2147483647, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !15434
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !noalias !15434
  call void @_RNvMNtNtCsi8UQarL1hXO_2h25proto7go_awayNtB2_6GoAway7go_away(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.hn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15432
  call void @_RNvMNtNtCsi8UQarL1hXO_2h25proto9ping_pongNtB2_8PingPong13ping_shutdown(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hf)
  br label %_RNvMs2_NtNtCsi8UQarL1hXO_2h25proto10connectionINtB5_10ConnectionINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB1Y_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtB9_6server4PeerINtNtNtB19_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEE18go_away_gracefullyCsgsNUVCRJO2f_13influxdb3_lib.exit

.loopexit:                                        ; preds = %_RNvMs1_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h26serverINtB5_7ServingINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB16_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEINtNtCsaRedpzzhJaR_10trace_http5tower10TracedBodyIB3d_INtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB6r_6marker4SendNtB6Y_4SyncEL_EEEEE9poll_pingCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 -1, ptr %0, align 8
  br label %bb.ai

.thread:                                          ; preds = %bb.ax, %bb.au, %bb.at
  %.sroa.9.0.i.ph.ph = phi ptr [ %i.ey, %bb.at ], [ %i.ez, %bb.au ], [ %i.fb, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cr

.thread96:                                        ; preds = %bb.aw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h24ping8RecorderECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cs

bb.cq:                                            ; preds = %bb.aw
  %i.ho = call noundef align 8 ptr @_RNvMs_NtNtNtCs2LSxCQSJWSD_5hyper5proto2h24pingNtB4_8Recorder20ensure_not_timed_out(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dn) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.not84 = icmp eq ptr %i.ho, null
  br i1 %.not84, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.thread, %bb.cq
  %.sroa.9.0.i.ph94 = phi ptr [ %.sroa.9.0.i.ph.ph, %.thread ], [ %i.ho, %bb.cq ]
  store i64 2, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.0.i.ph94, ptr %.sroa.474.0..sroa_idx, align 8
  br label %bb.ai

bb.cs:                                            ; preds = %.thread96, %bb.cq
  store i64 0, ptr %0, align 8
  br label %bb.ai
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs17_NtCsIdnmPPg5ba_10data_types7columnsNtB6_10ColumnTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !15435, !noundef !23
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs17_NtCsIdnmPPg5ba_10data_types7columnsNtB6_10ColumnTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs17_NtCsIdnmPPg5ba_10data_types7columnsNtB6_10ColumnTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.817, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs2LSxCQSJWSD_5hyper5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !23, !align !34, !noundef !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs4oFq2PzodUt_7reqwest5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !noundef !23 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !23, !align !34, !noundef !23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolNtB5_8AnyClone10as_any_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @310, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolNtB5_8AnyClone6as_anyCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @310, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolNtB5_8AnyClone8into_anyCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @310, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolNtB5_8AnyClone9clone_boxCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !noalias !15451, !nonnull !23, !align !34, !noundef !23
  %i.c = load ptr, ptr %i.b, align 8, !noalias !15451, !nonnull !23, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !15451, !noundef !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !15451, !noundef !23
  call void %i.c(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.d, ptr noundef %i.f, i64 noundef %i.h), !inline_history !15438
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !15452
  %i.i = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1945) 32, i64 noundef range(i64 1, 17) 8) #32, !noalias !15452 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolE3newCsgsNUVCRJO2f_13influxdb3_lib.exit, !prof !25

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !15453)
  call void @llvm.experimental.noalias.scope.decl(metadata !15454)
  call void @llvm.experimental.noalias.scope.decl(metadata !15455)
  call void @llvm.experimental.noalias.scope.decl(metadata !15456)
  call void @llvm.experimental.noalias.scope.decl(metadata !15457)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !15458, !noundef !23
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !15458, !nonnull !23, !align !34, !noundef !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !15458, !nonnull !23, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !15458, !noundef !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !15458, !noundef !23
  invoke void %i.p(ptr noundef %i.m, ptr noundef %i.r, i64 noundef %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.d, !inline_history !15459

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolE3newCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.w = insertvalue { ptr, ptr } %i.v, ptr @311, 1
  ret { ptr, ptr } %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs6P5GRezSnwZ_4http10extensionsNtNtCs2LSxCQSJWSD_5hyper3ext8ProtocolNtB5_8AnyClone9type_nameCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @312, i64 20 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs844E4pPEVZX_17influxdb3_catalog5errorNtB5_18TruncatedTableNameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
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
  %i.s = load i8, ptr %0, align 8, !range !83, !noundef !23
  switch i8 %i.s, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.r, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @316, i64 noundef 10, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @315)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @317, i64 noundef 10)
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  store ptr %i.y, ptr %i.q, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @321, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 4, ptr noundef nonnull %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @318, ptr noalias noundef nonnull readonly captures(address, read_provenance) @323, i64 noundef 8, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @319, ptr noalias noundef nonnull readonly captures(address, read_provenance) @324, i64 noundef 3, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @320)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.y

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.p, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef 18, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @325)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.y

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.o, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 14, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @327)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.n, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @330, i64 noundef 16, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @329)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.y

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.m, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @332, i64 noundef 17, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @331)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.y

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.l, align 8
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @334, i64 noundef 16, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @333)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.y

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.k, align 8
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @336, i64 noundef 14, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @335)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.y

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.j, align 8
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @337, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 7, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @329)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.l:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %i.i, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 7, ptr noundef nonnull %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @318, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 10, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @329)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.y

bb.m:                                             ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @341, i64 noundef 14)
  br label %bb.y

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.h, align 8
  %i.at = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 14, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @329)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.y

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.g, align 8
  %i.av = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @343, i64 noundef 15, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @329)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.y

bb.p:                                             ; preds = %bb.a
  %i.aw = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 17)
  br label %bb.y

bb.q:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ay, ptr %i.f, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 7, ptr noundef nonnull %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @345, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 10, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.y

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.e, align 8
  %i.bb = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 18, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @329)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.d, align 8
  %i.bd = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 15, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @325)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
begin_hunk_1_@_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkIB18_INtNtNtB7_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB1S_6marker4SendEL_EENcNtINtNtB1S_6result6ResultB3I_NtNtB1S_7convert10InfallibleE2Ok0ENvYB3I_INtB5d_4IntoB3I_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6g_5FrameB3I_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB1o_B3I_B5b_E0EB2S_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  call void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNvMNtCshmaE5oGZBqQ_9http_body5frameINtBU_5FrameNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE4dataEINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultB1C_NtNtB2A_7convert10InfallibleEE8call_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.g), !noalias !17117
  %.sroa.04.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !17126 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17118
  switch i64 %.sroa.04.0.copyload.i.i.i.i.i, label %bb.f [
    i64 -3, label %bb.e
    i64 -2, label %bb.g
  ]

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtB9_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2c_6marker4SendEL_EENcNtINtNtB2c_6result6ResultB42_NtNtB2c_7convert10InfallibleE2Ok0ENvYB42_INtB5x_4IntoB42_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6A_5FrameB42_E4dataEEB3c_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtB9_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2c_6marker4SendEL_EENcNtINtNtB2c_6result6ResultB42_NtNtB2c_7convert10InfallibleE2Ok0ENvYB42_INtB5x_4IntoB42_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6A_5FrameB42_E4dataEEB3c_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  store i64 3, ptr %0, align 8, !alias.scope !17117, !noalias !17127
  br label %_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_IBW_INtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2h_6marker4SendEL_EENcNtINtNtB2h_6result6ResultB47_NtNtB2h_7convert10InfallibleE2Ok0ENvYB47_INtB5C_4IntoB47_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6F_5FrameB47_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B47_B5A_E0EEB3h_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtB9_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2c_6marker4SendEL_EENcNtINtNtB2c_6result6ResultB42_NtNtB2c_7convert10InfallibleE2Ok0ENvYB42_INtB5x_4IntoB42_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6A_5FrameB42_E4dataEEB3c_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17126
  store i64 %.sroa.04.0.copyload.i.i.i.i.i, ptr %i.i, align 8, !noalias !17126
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false), !noalias !17126
  call void @_RNvXse_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyINtNtNtNtB7_6stream6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2A_6marker4SendEL_EENcNtINtNtB2A_6result6ResultB4q_NtNtB2A_7convert10InfallibleE2Ok0EB4q_B5T_E0EINtB5_6FnMut1IB5t_INtNtCshmaE5oGZBqQ_9http_body5frame5FrameB4q_EB5T_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.h, ptr noalias noundef nonnull %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.i), !noalias !17117
  %.sroa.04.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !17126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17126
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtB9_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2c_6marker4SendEL_EENcNtINtNtB2c_6result6ResultB42_NtNtB2c_7convert10InfallibleE2Ok0ENvYB42_INtB5x_4IntoB42_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6A_5FrameB42_E4dataEEB3c_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %.thread.i
  %.sroa.04.0.i = phi i64 [ %.sroa.04.0.copyload.i, %bb.f ], [ -3, %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtB9_6stream3map3MapINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2c_6marker4SendEL_EENcNtINtNtB2c_6result6ResultB42_NtNtB2c_7convert10InfallibleE2Ok0ENvYB42_INtB5x_4IntoB42_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6A_5FrameB42_E4dataEEB3c_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ -3, %.thread.i ]
  store i64 %.sroa.04.0.i, ptr %0, align 8, !alias.scope !17117, !noalias !17127
  %.sroa.56.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.56.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 88, i1 false), !noalias !17127
  br label %_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_IBW_INtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2h_6marker4SendEL_EENcNtINtNtB2h_6result6ResultB47_NtNtB2h_7convert10InfallibleE2Ok0ENvYB47_INtB5C_4IntoB47_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6F_5FrameB47_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B47_B5A_E0EEB3h_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_IBW_INtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2h_6marker4SendEL_EENcNtINtNtB2h_6result6ResultB47_NtNtB2h_7convert10InfallibleE2Ok0ENvYB47_INtB5C_4IntoB47_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB6F_5FrameB47_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B47_B5A_E0EEB3h_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkIB18_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB38_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4w_5FrameB38_E4dataENCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB1o_B38_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i), !noalias !17165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17166
  call void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENtB5_9TryStream13try_poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(144) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !17167
  %i.i = load i64, ptr %i.a, align 8, !range !43, !noalias !17166, !noundef !23 ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !17166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17166
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %.thread.i

_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i), !noalias !17165
  br label %bb.c

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i), !noalias !17165
  br label %bb.e

_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17168
  call void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoBU_E4intoEINtB5_6FnMut1INtNtB1y_6result6ResultBU_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8call_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.2.i.i.i.i.i.i.i.i.i), !noalias !17169
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i), !noalias !17165
  call void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNvMNtCshmaE5oGZBqQ_9http_body5frameINtBU_5FrameNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE4dataEINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultB1C_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEE8call_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c), !noalias !17164
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !17170 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17168
  switch i64 %.sroa.02.0.copyload.i.i.i.i.i, label %bb.d [
    i64 3, label %bb.c
    i64 -3, label %bb.e
  ]

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  store i64 3, ptr %0, align 8, !alias.scope !17164, !noalias !17171
  br label %_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3S_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5g_5FrameB3S_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B3S_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17170
  store i64 %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !noalias !17170
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false), !noalias !17170
  call void @_RNvXse_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyINtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0EINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCshmaE5oGZBqQ_9http_body5frame5FrameB3E_EB4d_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noalias noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.e), !noalias !17164
  %.sroa.04.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !17170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17170
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %.thread.i
  %.sroa.04.0.i = phi i64 [ %.sroa.04.0.copyload.i, %bb.d ], [ %.sroa.02.0.copyload.i.i.i.i.i, %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkIB1s_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3s_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB4Q_5FrameB3s_E4dataEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ -3, %.thread.i ]
  store i64 %.sroa.04.0.i, ptr %0, align 8, !alias.scope !17164, !noalias !17171
  %.sroa.56.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.56.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !17171
  br label %_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3S_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5g_5FrameB3S_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B3S_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkIB1R_INtNtNtCs1a9RECLZJLX_10tokio_util2io13reader_stream12ReaderStreamNtNtNtCseCDlJsl44RV_5tokio2fs4file4FileENvYNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCs4NRVxsYgnAr_4core7convert4IntoB3S_E4intoENvMNtCshmaE5oGZBqQ_9http_body5frameINtB5g_5FrameB3S_E4dataEEINtNtBb_3fns8MapErrFnNCINvCs4dh2fNjPIep_13iox_http_util31stream_results_to_response_bodyB28_B3S_NtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkINtNtB7_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB2R_9Multipart16with_constraintsB1j_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB1J_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0ENCB2N_s_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 1)) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.3.i.i.i.i.i = alloca [48 x i8], align 8  ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17188
  call void @_RNvXs2_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtNtCs5SRHcsv2kA9_12futures_util6stream4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENtB5_9TryStream13try_poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !17189
  %i.i = load i64, ptr %i.c, align 8, !range !17190, !noalias !17188, !noundef !23 ; 3 uses
  %i.j = icmp eq i64 %i.i, -4
  br i1 %i.j, label %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.b

_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i.i.i.i.i, i64 48, i1 false), !noalias !17188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17188
  %.not.i.i.i.i.i = icmp eq i64 %i.i, -3
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i)
  br label %bb.e

_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17188
  store i64 %i.i, ptr %i.b, align 8, !noalias !17188
  %.sroa.3.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx3.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.i.i.i.i.i, i64 48, i1 false), !noalias !17188
  call void @_RNvXsb_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_7MapOkFnNCINvMNtCsgwXesxSsAwT_6multer9multipartNtBX_9Multipart16with_constraintsINtNtNtB7_6stream4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2A_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultB3C_B4b_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b), !noalias !17187
  %.sroa.04.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !17191 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i)
  switch i64 %.sroa.04.0.copyload.i.i.i.i.i, label %bb.d [
    i64 -4, label %bb.c
    i64 -3, label %bb.e
  ]

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  store i8 -3, ptr %0, align 8, !alias.scope !17187, !noalias !17192
  br label %_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3B_9Multipart16with_constraintsB23_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2t_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EEINtNtBb_3fns8MapErrFnNCB3x_s_0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17191
  store i64 %.sroa.04.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !noalias !17191
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx3.i, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !17191
  call void @_RNvXse_NtCs5SRHcsv2kA9_12futures_util3fnsINtB5_8MapErrFnNCINvMNtCsgwXesxSsAwT_6multer9multipartNtBY_9Multipart16with_constraintsINtNtNtB7_6stream4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2B_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringEs_0EINtB5_6FnMut1INtNtCs4NRVxsYgnAr_4core6result6ResultB3D_B4c_EE8call_mutCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.e), !noalias !17187
  %.sroa.04.0.copyload.i = load i8, ptr %i.d, align 8, !noalias !17191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17191
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %.thread.i
  %.sroa.04.0.i = phi i8 [ %.sroa.04.0.copyload.i, %bb.d ], [ -2, %_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ -2, %.thread.i ]
  store i8 %.sroa.04.0.i, ptr %0, align 8, !alias.scope !17187, !noalias !17192
  %.sroa.56.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.56.0..sroa_idx7.i, ptr noundef nonnull align 1 dereferenceable(47) %i.f, i64 47, i1 false), !noalias !17192
  br label %_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3B_9Multipart16with_constraintsB23_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2t_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EEINtNtBb_3fns8MapErrFnNCB3x_s_0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvXs1_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtB1a_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3B_9Multipart16with_constraintsB23_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB2t_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EEINtNtBb_3fns8MapErrFnNCB3x_s_0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtNtCs5SRHcsv2kA9_12futures_util6stream10try_streamINtB5_6MapErrINtB5_5MapOkINtNtB7_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB2R_9Multipart16with_constraintsB1j_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB1J_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0ENCB2N_s_0ENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtB7_5MapOkINtNtB9_4once4OnceNCNCNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler16multipart_upload0s0_0ENCINvMNtCsgwXesxSsAwT_6multer9multipartNtB3b_9Multipart16with_constraintsB1D_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtB23_5error5ErrorNtNtCscdodAO9FK5_5alloc6string6StringE0EENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9size_hintCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @66, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1089, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @383, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1090, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17195)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !17195, !nonnull !23, !noundef !23
  %i.c = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %i.b), !noalias !17195
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtB7_5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1091, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @385, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1092, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @387, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1093, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @389, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1094, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @391, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1095, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @270, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1096, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @393, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1097, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @66, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1098, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorENtNtBT_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorENtNtBT_5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @395, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorENtNtBT_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorENtNtBT_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1099, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @397, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow5error12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1100, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17196
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17197
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtB7_5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17198
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCs1LivM9IBWqb_12object_store5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17199
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs4oFq2PzodUt_7reqwest5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17200
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17201
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17202
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCs87O7Q65ve1k_7bitcode5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17203
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17204
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17205
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorEENtNtB19_5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17206
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17207
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12DisplayErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17208
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17209
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17210
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtCs6TAKc56pues_16influxdb3_client5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17211
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs4NRVxsYgnAr_4core7convert10InfallibleENtNtBL_5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17212
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17213
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17214
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17215
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !nonnull !23
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b), !inline_history !17216
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorReENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorReENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12DisplayErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1101, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1102, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsaIKnL9StOw_6anyhow7wrapper12MessageErrorReENtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1103, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs4DT25d3JcKH_18tracing_subscriber5layer5LayerNtNtNtBG_8registry7sharded8RegistryENtNtCs4NRVxsYgnAr_4core6marker4SendNtB22_4SyncEL_EIBC_B1q_E15with_subscriberCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([568 x i8]) align 8 captures(none) dereferenceable(568) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(544) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [544 x i8], align 8               ; 5 uses
  %i.c = invoke noundef align 8 ptr @_RINvMNtCs4BfJs7E7SEE_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCs4DT25d3JcKH_18tracing_subscriber6filter13layer_filters22MagicPlfDowncastMarkerECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @770)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !23, !noalias !17226, !nonnull !23
  invoke void %i.e(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 dereferenceable(544) %3)
          to label %_RNvXsa_NtCs4DT25d3JcKH_18tracing_subscriber5layerINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtB5_5LayerNtNtNtB7_8registry7sharded8RegistryENtNtCs4NRVxsYgnAr_4core6marker4SendNtB28_4SyncEL_EIB1l_B1w_E8on_layerCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.g, !inline_history !17219

_RNvXsa_NtCs4DT25d3JcKH_18tracing_subscriber5layerINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtB5_5LayerNtNtNtB7_8registry7sharded8RegistryENtNtCs4NRVxsYgnAr_4core6marker4SendNtB28_4SyncEL_EIB1l_B1w_E8on_layerCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.b, ptr noundef nonnull align 8 dereferenceable(544) %3, i64 544, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @235, i64 16, i1 false), !noalias !17230
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !23, !alias.scope !17228, !noalias !17231, !nonnull !23
  %i.h = invoke { i64, ptr } %i.g(ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.c, !noalias !17230, !inline_history !19

bb.c:                                             ; preds = %_RNvXsa_NtCs4DT25d3JcKH_18tracing_subscriber5layerINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtB5_5LayerNtNtNtB7_8registry7sharded8RegistryENtNtCs4NRVxsYgnAr_4core6marker4SendNtB28_4SyncEL_EIB1l_B1w_E8on_layerCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded8RegistryECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(544) %i.b) #30
          to label %bb.e unwind label %bb.d, !noalias !17232

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !17232
  unreachable

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs4DT25d3JcKH_18tracing_subscriber5layer5LayerNtNtNtB1f_8registry7sharded8RegistryENtNtB4_6marker4SendNtB2C_4SyncEL_EECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %1, ptr nonnull readonly align 8 dereferenceable(144) %2) #30
          to label %.critedge unwind label %bb.d, !noalias !17227

bb.f:                                             ; preds = %_RNvXsa_NtCs4DT25d3JcKH_18tracing_subscriber5layerINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtB5_5LayerNtNtNtB7_8registry7sharded8RegistryENtNtCs4NRVxsYgnAr_4core6marker4SendNtB28_4SyncEL_EIB1l_B1w_E8on_layerCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17230
  %i.k = extractvalue { i64, ptr } %i.h, 0
  %i.l = icmp eq i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(544) %i.b, i64 544, i1 false), !alias.scope !17233, !noalias !17228
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %1, ptr %i.m, align 8, !alias.scope !17227, !noalias !17234
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %2, ptr %i.n, align 8, !alias.scope !17227, !noalias !17234
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 1, ptr %i.o, align 8, !alias.scope !17227, !noalias !17234
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 561
  %i.q = zext i1 %i.l to i8
  store i8 %i.q, ptr %i.p, align 1, !alias.scope !17227, !noalias !17234
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 1, ptr %i.r, align 2, !alias.scope !17227, !noalias !17234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded8RegistryECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(544) %3) #30
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.critedge:                                        ; preds = %bb.e, %bb.i
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body9

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs4DT25d3JcKH_18tracing_subscriber5layer5LayerNtNtNtB1f_8registry7sharded8RegistryENtNtB4_6marker4SendNtB2C_4SyncEL_EECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %1, ptr nonnull %2) #30
          to label %.critedge unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3map3MapINtNtB9_4iter4IterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB2T_18ObjectStoreCatalog12load_catalog0s2_0ENtB7_9StreamExt8bufferedCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB6_3map3MapINtNtB8_4iter4IterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB3o_18ObjectStoreCatalog12load_catalog0s2_0EE3newCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream3map3MapNtNtCsjWl3uGiVprL_18influxdb3_commands5write16WriteChunkStreamNCNCNvB11_7command00ENtB7_9StreamExt16buffer_unorderedCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream16buffer_unorderedINtB4_15BufferUnorderedINtNtB6_3map3MapNtNtCsjWl3uGiVprL_18influxdb3_commands5write16WriteChunkStreamNCNCNvB1N_7command00EE3newCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1104, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs1LivM9IBWqb_12object_store5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs1LivM9IBWqb_12object_store5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs1LivM9IBWqb_12object_store5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1105, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs6TAKc56pues_16influxdb3_client5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs6TAKc56pues_16influxdb3_client5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs6TAKc56pues_16influxdb3_client5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1106, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs8dx9gOL6MFw_26iox_query_influxql_rewrite5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs8dx9gOL6MFw_26iox_query_influxql_rewrite5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs8dx9gOL6MFw_26iox_query_influxql_rewrite5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs8dx9gOL6MFw_26iox_query_influxql_rewrite5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1107, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1108, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1109, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1hWu9vWSLgD_16iox_query_params6params5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1110, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error10QueryErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error10QueryErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error10QueryErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1111, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs1yQqqZMFGFX_16iox_v1_query_api5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1112, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs2LSxCQSJWSD_5hyper5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2LSxCQSJWSD_5hyper5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2LSxCQSJWSD_5hyper5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1113, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs4NRVxsYgnAr_4core5array17TryFromSliceErrorNtNtB6_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4NRVxsYgnAr_4core5array17TryFromSliceErrorNtNtB6_5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4NRVxsYgnAr_4core5array17TryFromSliceErrorNtNtB6_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4NRVxsYgnAr_4core5array17TryFromSliceErrorNtNtB6_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1114, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4NRVxsYgnAr_4core7convert10InfallibleNtNtB6_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1115, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4oFq2PzodUt_7reqwest5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1116, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs6P5GRezSnwZ_4http5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs6P5GRezSnwZ_4http5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs6P5GRezSnwZ_4http5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1117, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !79, !alias.scope !17237, !noundef !23
  %i.b = icmp eq i64 %i.a, 5                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !17237, !nonnull !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !17237, !nonnull !23, !align !34
  %.sroa.3.0.i = select i1 %i.b, ptr %i.f, ptr undef
  %.sroa.0.0.i = select i1 %i.b, ptr %i.d, ptr null
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7Ez7UXBn1VF_7parquet6errors12ParquetErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1118, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs7xnqXWBEQRv_9humantime8duration5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7xnqXWBEQRv_9humantime8duration5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7xnqXWBEQRv_9humantime8duration5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7xnqXWBEQRv_9humantime8duration5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1119, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store23ObjectStoreCatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1120, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1121, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1122, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1123, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1124, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1125, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsaNmiEuYuYZf_9sqlparser6parser11ParserErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsaNmiEuYuYZf_9sqlparser6parser11ParserErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsaNmiEuYuYZf_9sqlparser6parser11ParserErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaNmiEuYuYZf_9sqlparser6parser11ParserErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1126, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsbYyEjVLvvus_5tonic6status6StatusNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1127, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCscX1haOsHjXZ_16serde_urlencoded3ser5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCscX1haOsHjXZ_16serde_urlencoded3ser5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1128, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1129, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtQNtNtCscdodAO9FK5_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsgsNUVCRJO2f_13influxdb3_lib.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @717, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !17238
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs2_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1130, i64 16, i1 false)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error13missing_fieldCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = call noundef nonnull align 8 ptr @_RINvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull @1131, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error13unknown_fieldCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %i.e, align 8
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.43.0..sroa_idx, align 8
  %i.g = call noundef nonnull align 8 ptr @_RINvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull @1132, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtCs5CfTnloWo2c_10serde_core2deNtB5_5OneOfNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.j = call noundef nonnull align 8 ptr @_RINvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull @1133, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error14invalid_lengthCsgsNUVCRJO2f_13influxdb3_lib(i64 noundef %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRDNtNtCs5CfTnloWo2c_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = call noundef nonnull align 8 ptr @_RINvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull @1134, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error15duplicate_fieldCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = call noundef nonnull align 8 ptr @_RINvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull @1135, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error15unknown_variantCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %i.e, align 8
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.43.0..sroa_idx, align 8
  %i.g = call noundef nonnull align 8 ptr @_RINvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull @1136, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs6_NtCs5CfTnloWo2c_10serde_core2deNtB5_5OneOfNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.j = call noundef nonnull align 8 ptr @_RINvXs6_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull @1137, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsi8UQarL1hXO_2h25error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsi8UQarL1hXO_2h25error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsi8UQarL1hXO_2h25error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsi8UQarL1hXO_2h25error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1138, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsj7DbYNsdxOJ_3url6parser10ParseErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1139, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsj9JzdWj4GcM_12arrow_schema5error10ArrowErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsj9JzdWj4GcM_12arrow_schema5error10ArrowErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsj9JzdWj4GcM_12arrow_schema5error10ArrowErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1140, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error11SchemaErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1141, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1142, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1143, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1145, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { i64, ptr } @_RNvYNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded8RegistryNtNtCs4BfJs7E7SEE_12tracing_core10subscriber10Subscriber12downcast_rawCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #9 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !23
  %i.b = icmp eq i128 %i.a, -83781346989934593726970809727466710049
  %. = zext i1 %i.b to i64
  %i.c = insertvalue { i64, ptr } poison, i64 %., 0
  %i.d = insertvalue { i64, ptr } %i.c, ptr %0, 1
  ret { i64, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i64 -2, 5) i64 @_RNvYNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded8RegistryNtNtCs4BfJs7E7SEE_12tracing_core10subscriber10Subscriber14max_level_hintCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i64 -2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded8RegistryNtNtCs4BfJs7E7SEE_12tracing_core10subscriber10Subscriber20on_register_dispatchCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4DT25d3JcKH_18tracing_subscriber8registry7sharded8RegistryNtNtCs4BfJs7E7SEE_12tracing_core10subscriber10Subscriber9drop_spanCsgsNUVCRJO2f_13influxdb3_lib(ptr nofree nonnull readnone align 8 captures(none) %0, i64 range(i64 1, 0) %1) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1146, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1147, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs4NRVxsYgnAr_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1148, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs5CfTnloWo2c_10serde_core2de5value5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs5CfTnloWo2c_10serde_core2de5value5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs5CfTnloWo2c_10serde_core2de5value5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1149, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrations14MigrationErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1150, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode6NotEofNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode6NotEofNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode6NotEofNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h16encode6NotEofNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1151, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1152, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error6sourceCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1153, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands4show6system5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error11descriptionBa_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret { ptr, i64 } { ptr @288, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands4show6system5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7provideBa_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands4show6system5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1154, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNvNtNtCs2AWtUsOyxgP_3std2io5stdio6stderrNtNtNtCs4DT25d3JcKH_18tracing_subscriber3fmt6writer10MakeWriter15make_writer_forCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #3 {
bb.a:
  ret ptr @_RNvNvNtNtCs2AWtUsOyxgP_3std2io5stdio6stderr8INSTANCE
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvYNvNtNtCs2AWtUsOyxgP_3std2io5stdio6stdoutNtNtNtCs4DT25d3JcKH_18tracing_subscriber3fmt6writer10MakeWriter15make_writer_forCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio6stdout()
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCs1ElB0qm0ygX_13influxdb3_wal12object_store19oldest_wal_file_num(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_11FlushBuffer3new(ptr dead_on_unwind noalias noundef writable sret([208 x i8]) align 8 captures(none) dereferenceable(208), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(120), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs8_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtB5_5MutexNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11FlushBufferE3newCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([248 x i8]) align 8 captures(none) dereferenceable(248), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(208), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs4NRVxsYgnAr_4core3fmt3numoNtB4_7Display3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s0_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB1Z_4body8incoming8IncomingEEINtB3W_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB1j_DNtNtBR_5error5ErrorNtNtBR_6marker4SendNtBaE_4SyncEL_EEENtNtNtB2P_2rt5tokio13TokioExecutorEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 16, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s5_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB1Z_4body8incoming8IncomingEEINtB3W_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB1j_DNtNtBR_5error5ErrorNtNtBR_6marker4SendNtBaE_4SyncEL_EEENtNtNtB2P_2rt5tokio13TokioExecutorEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 16, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCsbakdBCgU4AF_16influxdb3_server15unified_service17remote_addr_layer17RemoteAddrServiceINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceIB5q_INtNtB3Y_7service14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEEEEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtB1Z_4body8incoming8IncomingEEINtB5s_10TracedBodyIBak_INtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesIB1j_DNtNtBR_5error5ErrorNtNtBR_6marker4SendNtBcS_4SyncEL_EEEENtNtNtB2P_2rt5tokio13TokioExecutorEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull align 16, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtB1V_12object_store14WalObjectStoreE0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtB1X_12object_store14WalObjectStoreE0s_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB21_7Catalog17new_with_shutdownINtNtB1n_4sync3ArceEE00EEIB3G_NtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 16, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB22_27ProcessingEngineManagerImpl24replace_plugin_directory0s4_00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB22_27ProcessingEngineManagerImpl24replace_plugin_directory0s6_00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB22_27ProcessingEngineManagerImpl24replace_plugin_directory0s8_00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s0_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s5_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvCsbakdBCgU4AF_16influxdb3_server5serve0s0_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvCsbakdBCgU4AF_16influxdb3_server5serve0s4_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB1X_15WriteBufferImpl3new0s4_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB20_13V1HttpHandler10plan_query00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 16, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB20_13V1HttpHandler10plan_query0s_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 16, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB20_15TableIndexCache28update_all_from_object_store0s2_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB20_15TableIndexCache28update_all_from_object_store0s_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtB20_15TableIndexCache50split_persisted_snapshots_to_table_index_snapshots0s1_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs_NtCs92BnbMq7p8c_15influxdb3_write9persisterNtB1Z_9Persister18persist_checkpoint00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer28check_mem_and_force_snapshot00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvNtCs92BnbMq7p8c_15influxdb3_write12write_buffer33check_mem_and_force_snapshot_loop00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry6sender28send_telemetry_in_background00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvNtCseuJFo0eutjj_19influxdb3_telemetry7sampler14sample_metrics00EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvNtNtCsgsNUVCRJO2f_13influxdb3_lib8commands5serve28initialize_table_index_cache0s_0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB20_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNvMsc_NtCsh4GC5dvIChH_27influxdb3_processing_engine9schedulerNtB1Y_16SchedulerRuntime3run0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNvNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB1Z_14WalObjectStore6replay012get_contents0EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s0_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtBV_4body8incoming8IncomingEEINtB2S_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB9L_6marker4SendNtBai_4SyncEL_EEENtNtNtB1L_2rt5tokio13TokioExecutorEINtNtB9d_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(9152), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceINtNtNtCsib60ZSjILYy_5tower4util10service_fn9ServiceFnNCNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s5_00EEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtBV_4body8incoming8IncomingEEINtB2S_10TracedBodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB9L_6marker4SendNtBai_4SyncEL_EEENtNtNtB1L_2rt5tokio13TokioExecutorEINtNtB9d_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(9152), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h26server8H2StreamINtNtNtCs6VdLngu4RVT_10hyper_util7service4glue25TowerToHyperServiceFutureINtNtNtCsbakdBCgU4AF_16influxdb3_server15unified_service17remote_addr_layer17RemoteAddrServiceINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceIB4m_INtNtB2U_7service14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEEEEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtBV_4body8incoming8IncomingEEINtB4o_10TracedBodyIB9f_INtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBbZ_6marker4SendNtBcw_4SyncEL_EEEENtNtNtB1L_2rt5tokio13TokioExecutorEINtNtBbr_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(928), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskINtNtNtNtCs2LSxCQSJWSD_5hyper5proto2h27upgrade22UpgradedSendStreamTaskNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtBR_12object_store14WalObjectStoreE0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(264), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCINvCs1ElB0qm0ygX_13influxdb3_wal20background_wal_flushNtNtBT_12object_store14WalObjectStoreE0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCINvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBX_7Catalog17new_with_shutdownINtNtCscdodAO9FK5_5alloc4sync3ArceEE00IB2B_NtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(7024), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBY_27ProcessingEngineManagerImpl24replace_plugin_directory0s4_00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBY_27ProcessingEngineManagerImpl24replace_plugin_directory0s6_00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBY_27ProcessingEngineManagerImpl24replace_plugin_directory0s8_00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s0_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(3056), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvCsbakdBCgU4AF_16influxdb3_server35serve_admin_token_recovery_endpoint0s5_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1944), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvCsbakdBCgU4AF_16influxdb3_server5serve0s0_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(3312), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvCsbakdBCgU4AF_16influxdb3_server5serve0s4_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(2192), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtBT_15WriteBufferImpl3new0s4_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(936), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBW_13V1HttpHandler10plan_query00INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(3440), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBW_13V1HttpHandler10plan_query0s_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(3888), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCseCDlJsl44RV_5tokio7runtime4task8new_taskNCNCNvMs0_NtCs92BnbMq7p8c_15influxdb3_write17table_index_cacheNtBW_15TableIndexCache28update_all_from_object_store0s2_0INtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(1192), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #0
end_hunk_1
