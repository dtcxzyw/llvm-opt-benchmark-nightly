Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.10?download=true
inline.NumInlined: 3510
inline.NumDeleted: 1493
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBb_13V1HttpHandler13execute_query0s2_00CsbakdBCgU4AF_16influxdb3_server:bb.a
          to label %bb.sc unwind label %bb.li, !noalias !10161

bb.se:                                            ; preds = %bb.oi
  %i.aun = getelementptr inbounds nuw i8, ptr %1, i64 1472
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7q2UDKzmthI_9iox_query9query_log19QueryCompletedTokenNtBE_21StateLogicallyPlannedEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48) %i.aun) #34
          to label %bb.oj unwind label %bb.li, !noalias !10161

bb.sf:                                            ; preds = %bb.oj
  %i.auo = getelementptr inbounds nuw i8, ptr %1, i64 9376
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan4plan11LogicalPlanECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 16 dereferenceable(320) %i.auo) #34
          to label %bb.om unwind label %bb.li, !noalias !10161

bb.sg:                                            ; preds = %bb.lw
  %i.aup = getelementptr inbounds nuw i8, ptr %1, i64 544
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7q2UDKzmthI_9iox_query4exec7context17IOxSessionContextECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 16 dereferenceable(288) %i.aup) #34
          to label %bb.lx unwind label %bb.li, !noalias !10161

bb.sh:                                            ; preds = %bb.ly
  %i.auq = getelementptr inbounds nuw i8, ptr %1, i64 1336
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7q2UDKzmthI_9iox_query9query_log19QueryCompletedTokenNtBE_13StateReceivedEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(40) %i.auq) #34
          to label %bb.mb unwind label %bb.li, !noalias !10161

bb.si:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.aur = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aus = load i64, ptr %i.aur, align 16, !range !17, !alias.scope !10294, !noalias !10156, !noundef !10
  %i.aut = icmp eq i64 %i.aus, -1
  br i1 %i.aut, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsbakdBCgU4AF_16influxdb3_server.exit262.i, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.auu = getelementptr inbounds nuw i8, ptr %1, i64 880
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.auu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsbakdBCgU4AF_16influxdb3_server.exit262.i unwind label %bb.li, !noalias !10161

bb.sk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsbakdBCgU4AF_16influxdb3_server.exit262.i
  %i.auv = getelementptr inbounds nuw i8, ptr %1, i64 1472
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.auv) #34
          to label %.body255.i unwind label %bb.li, !noalias !10161

bb.sl:                                            ; preds = %.body255.i
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 832
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.auw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit264.i unwind label %bb.li, !noalias !10161

bb.sm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit264.i
  %i.aux = getelementptr inbounds nuw i8, ptr %1, i64 1312
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aux) #34
          to label %.body259.i unwind label %bb.li, !noalias !10161

.thread572:                                       ; preds = %bb.jt, %bb.oc, %bb.qf
  %i.auy = phi ptr [ %i.ys, %bb.jt ], [ %i.aho, %bb.oc ], [ %i.amv, %bb.qf ]
  %.sink.i288.ph = phi i8 [ 3, %bb.jt ], [ 4, %bb.oc ], [ 5, %bb.qf ]
  store i8 %.sink.i288.ph, ptr %i.auy, align 8, !noalias !10156
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18407.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.so

bb.sn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.auz = phi ptr [ %i.afc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.amv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ]
  %i.ava = phi ptr [ %i.afd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.amw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ]
  %.sroa.24.0.i = phi ptr [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.aqf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ]
  %.sroa.19.3.i = phi i64 [ %.sroa.19.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.9455.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ] ; 2 uses
  %.sroa.16.3.i = phi ptr [ %.sroa.16.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.7453.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ] ; 2 uses
  %.sroa.14402.3.i = phi ptr [ %.sroa.14402.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.6452.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ] ; 2 uses
  %.sroa.10399.3.i = phi ptr [ %.sroa.10399.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.5451.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ] ; 2 uses
  %.sroa.6397.3.i = phi i64 [ %.sroa.6397.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.4450.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ] ; 2 uses
  %.sroa.0395.3.i = phi i64 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %.sroa.0449.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ] ; 3 uses
  %i.avb = phi <2 x ptr> [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i ], [ %i.aqe, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaRedpzzhJaR_10trace_http3ctx17RequestLogContextEECsbakdBCgU4AF_16influxdb3_server.exit245.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18407.i, i64 16, i1 false), !noalias !10295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.16, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.21.i, i64 224, i1 false), !noalias !10295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.20, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.23.i, i64 64, i1 false), !noalias !10295
  store i8 1, ptr %i.auz, align 8, !noalias !10156
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18407.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.avc = icmp eq i64 %.sroa.0395.3.i, -2
  br i1 %i.avc, label %bb.so, label %bb.sp

bb.so:                                            ; preds = %.thread572, %bb.sn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0427.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8429)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10431)
  br label %common.ret

bb.sp:                                            ; preds = %bb.sn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.330.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.432.sroa.0, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.16, i64 224, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.432.sroa.4, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.20, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtBJ_13V1HttpHandler10plan_query0ECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 16 %i.ava)
          to label %bb.sr unwind label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.avd = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.sr:                                            ; preds = %bb.sp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0427.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8429)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10431)
  %i.ave = icmp eq i64 %.sroa.0395.3.i, -1
  br i1 %i.ave, label %bb.ss, label %bb.st

bb.ss:                                            ; preds = %bb.sr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store i64 %.sroa.6397.3.i, ptr %i.bt, align 8
  %.sroa.330.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %.sroa.10399.3.i, ptr %.sroa.330.sroa.3.0..sroa_idx, align 8
  %.sroa.330.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %.sroa.14402.3.i, ptr %.sroa.330.sroa.4.0..sroa_idx, align 8
  %.sroa.330.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %.sroa.16.3.i, ptr %.sroa.330.sroa.5.0..sroa_idx, align 8
  %.sroa.330.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.330.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.330.sroa.6, i64 16, i1 false)
  %.sroa.330.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store i64 %.sroa.19.3.i, ptr %.sroa.330.sroa.7.0..sroa_idx, align 8
  %i.avf = invoke { ptr, ptr } @_RNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler15error_statement(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.bt)
          to label %bb.tb unwind label %bb.ta

bb.st:                                            ; preds = %bb.sr
  %.sroa.535.sroa.8.0..sroa.535.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.sroa.8.0..sroa.535.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.330.sroa.6, i64 16, i1 false)
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %.sroa.636.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.432.sroa.0, i64 224, i1 false)
  %.sroa.636.sroa.7.0..sroa.636.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.636.sroa.7.0..sroa.636.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.432.sroa.4, i64 64, i1 false)
  store i64 %.sroa.0395.3.i, ptr %i.bu, align 16
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %.sroa.6397.3.i, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.535.sroa.5.0..sroa.535.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %.sroa.10399.3.i, ptr %.sroa.535.sroa.5.0..sroa.535.0..sroa_idx.sroa_idx, align 16
  %.sroa.535.sroa.6.0..sroa.535.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %.sroa.14402.3.i, ptr %.sroa.535.sroa.6.0..sroa.535.0..sroa_idx.sroa_idx, align 8
  %.sroa.535.sroa.7.0..sroa.535.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %.sroa.16.3.i, ptr %.sroa.535.sroa.7.0..sroa.535.0..sroa_idx.sroa_idx, align 16
  %.sroa.535.sroa.9.0..sroa.535.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store i64 %.sroa.19.3.i, ptr %.sroa.535.sroa.9.0..sroa.535.0..sroa_idx.sroa_idx, align 8
  %.sroa.636.sroa.5.0..sroa.636.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 288
  store <2 x ptr> %i.avb, ptr %.sroa.636.sroa.5.0..sroa.636.0..sroa_idx.sroa_idx, align 16
  %.sroa.636.sroa.8.0..sroa.636.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 368
  store ptr %.sroa.24.0.i, ptr %.sroa.636.sroa.8.0..sroa.636.0..sroa_idx.sroa_idx, align 16
  %i.avg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.avh = load ptr, ptr %i.avg, align 16, !nonnull !10, !align !20, !noundef !10 ; 2 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 24
  %.val159 = load ptr, ptr %i.avi, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.avj = getelementptr i8, ptr %i.avh, i64 32
  %.val160 = load ptr, ptr %i.avj, align 8        ; 2 uses
  %i.avk = atomicrmw add ptr %.val159, i64 1 monotonic, align 8
  %i.avl = icmp slt i64 %i.avk, 0
  br i1 %i.avl, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  call void @llvm.trap()
  unreachable

bb.sv:                                            ; preds = %bb.st
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val160) ]
  %i.avm = invoke { ptr, ptr } @_RNvNtCs1yQqqZMFGFX_16iox_v1_query_api7handler33get_executing_statement_from_plan(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(384) %i.bu, ptr noundef nonnull %.val159, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %.val160)
          to label %bb.sw unwind label %bb.sy

bb.sw:                                            ; preds = %bb.sv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.sx

bb.sx:                                            ; preds = %bb.tb, %bb.sw
  %.pn586 = phi { ptr, ptr } [ %i.avf, %bb.tb ], [ %i.avm, %bb.sw ]
  %i.avn = getelementptr inbounds nuw i8, ptr %1, i64 212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  store <4 x i8> zeroinitializer, ptr %i.avn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.avo = getelementptr inbounds nuw i8, ptr %1, i64 210
  store i8 0, ptr %i.avo, align 2
  br label %bb.en

bb.sy:                                            ; preds = %bb.sv
  %i.avp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.sz

bb.sz:                                            ; preds = %bb.ta, %bb.sy, %bb.if
  %.pn68 = phi { ptr, i32 } [ %i.avu, %bb.ta ], [ %i.avp, %bb.sy ], [ %.pn66, %bb.if ] ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.avr = load i8, ptr %i.avq, align 4, !range !34, !noundef !10
  %3 = trunc nuw i8 %i.avr to i1
  %i.avs = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.avt = load i64, ptr %i.avs, align 16, !range !17
  %4 = icmp ne i64 %i.avt, -1
  %or.cond.not = select i1 %3, i1 %4, i1 false
  br i1 %or.cond.not, label %bb.td, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsbakdBCgU4AF_16influxdb3_server.exit

bb.ta:                                            ; preds = %bb.ss
  %i.avu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.sz

bb.tb:                                            ; preds = %bb.ss
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.sx

bb.tc:                                            ; preds = %bb.en
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %bb.iq unwind label %bb.ip

bb.td:                                            ; preds = %bb.sz
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.ca)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.am

bb.te:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2lpxFwhfAIc_5trace3ctx11SpanContextEECsbakdBCgU4AF_16influxdb3_server.exit
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs1hWu9vWSLgD_16iox_query_params6params14StatementParamEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server.exit311 unwind label %bb.am

bb.tf:                                            ; preds = %bb.ig
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce) #34
          to label %bb.ii unwind label %bb.am

bb.tg:                                            ; preds = %bb.ii
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48) %i.cg) #34
          to label %bb.ir unwind label %bb.am

bb.th:                                            ; preds = %bb.ir
  %i.avv = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avv) #34
          to label %.body285 unwind label %bb.am

bb.ti:                                            ; preds = %bb.bx
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %1) #34
          to label %bb.io unwind label %bb.am
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler10plan_query0s0_0CsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler10plan_query010___CALLSITE, align 8, !nonnull !10, !align !20, !noundef !10
  tail call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 2
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB9_13V1HttpHandler10plan_query010___CALLSITE, align 8, !nonnull !10, !align !20, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !10
  store i64 3, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !10, !nonnull !10
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvMs1_NtNtCs7Ez7UXBn1VF_7parquet4file6writerINtBc_20SerializedFileWriterQINtNtCscdodAO9FK5_5alloc3vec3VechEE14next_row_groups_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTQINtBc_12TrackedWriteB1g_ENtNtBe_8metadata16RowGroupMetaDataIB1i_INtNtB2g_6option6OptionNtNtBg_12bloom_filter4SbbfEEIB1i_IB3Y_NtNtNtBe_10page_index12column_index19ColumnIndexMetaDataEEIB1i_IB3Y_NtNtB50_12offset_index19OffsetIndexMetaDataEEEE9call_once6vtableCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias noundef align 8 dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %6) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [176 x i8], align 8               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store ptr %2, ptr %i.f, align 8, !noalias !10326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false), !noalias !10327
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !noalias !10328
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !noalias !10329
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !noalias !10330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10332)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !10333, !nonnull !10, !align !20, !noundef !10 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10334, !noalias !10335, !noundef !10 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !18, !alias.scope !10334, !noalias !10335, !noundef !10
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs7Ez7UXBn1VF_7parquet12bloom_filter4SbbfEEE8grow_oneCslDm4hszvyIi_29datafusion_datasource_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.f unwind label %bb.c, !noalias !10336

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs7Ez7UXBn1VF_7parquet12bloom_filter4SbbfEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #34
          to label %.body.i.i unwind label %bb.d, !noalias !10337

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !10337
  unreachable

bb.e:                                             ; preds = %bb.s
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.thread26.i.i

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !10334, !noalias !10335, !nonnull !10, !noundef !10
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !10337
  %i.u = add i64 %i.l, 1
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !10334, !noalias !10335
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !10333, !nonnull !10, !align !20, !noundef !10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !10339
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !10340, !noalias !10335, !noundef !10 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !18, !alias.scope !10340, !noalias !10335, !noundef !10
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEE8grow_oneCslDm4hszvyIi_29datafusion_datasource_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.j unwind label %bb.h, !noalias !10341

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #34
          to label %.body.i.i unwind label %bb.i, !noalias !10335

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !10335
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !10340, !noalias !10335, !nonnull !10, !noundef !10
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !10342
  %i.ag = add i64 %i.y, 1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !10340, !noalias !10335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10338
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !10333, !nonnull !10, !align !20, !noundef !10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !10343
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !10344, !noalias !10335, !noundef !10 ; 3 uses
  %i.al = load i64, ptr %i.ai, align 8, !range !18, !alias.scope !10344, !noalias !10335, !noundef !10
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEE8grow_oneCslDm4hszvyIi_29datafusion_datasource_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.n unwind label %bb.l, !noalias !10345

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtNtCs7Ez7UXBn1VF_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %.thread26.i.i unwind label %bb.m, !noalias !10335
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writerINtB4_11ArrowWriterQINtNtCscdodAO9FK5_5alloc3vec3VechEE5flushCsbakdBCgU4AF_16influxdb3_server:bb.a
  %.sroa.447.0.copyload117242 = phi ptr [ %.sroa.447.0.copyload, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writer16ArrowColumnChunkENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.lr.ph ], [ %i.gh, %bb.ku ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11544)
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.447.0.copyload117242, i64 744 ; 3 uses
  store ptr %i.gh, ptr %.sroa.612.0..sroa_idx, align 8, !alias.scope !11544
  %.sroa.0118.0.copyload119 = load i64, ptr %.sroa.447.0.copyload117242, align 8, !noalias !11544 ; 2 uses
  %.sroa.8120.0..sroa.447.0.copyload117.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.447.0.copyload117242, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(736) %.sroa.8120, ptr noundef nonnull align 8 dereferenceable(736) %.sroa.8120.0..sroa.447.0.copyload117.sroa_idx, i64 736, i1 false), !noalias !11544
  %.not73 = icmp eq i64 %.sroa.0118.0.copyload119, 2
  br i1 %.not73, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writer16ArrowColumnChunkENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit.thread, label %bb.at

bb.at:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writer16ArrowColumnChunkENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i64 %.sroa.0118.0.copyload119, ptr %i.bd, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(736) %.sroa.8120.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(736) %.sroa.8120, i64 736, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.experimental.noalias.scope.decl(metadata !11545)
  call void @llvm.experimental.noalias.scope.decl(metadata !11546)
  call void @llvm.experimental.noalias.scope.decl(metadata !11547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !11548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ap, ptr noundef nonnull align 8 dereferenceable(744) %i.bd, i64 712, i1 false), !noalias !11549
  call void @llvm.experimental.noalias.scope.decl(metadata !11550)
  call void @llvm.experimental.noalias.scope.decl(metadata !11551)
  call void @llvm.experimental.noalias.scope.decl(metadata !11552)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.18.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.20.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.22.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.24.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.sroa.16.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !11548
  %.val164.i.i = load i64, ptr %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx, align 8, !alias.scope !11553, !noundef !10 ; 5 uses
  %.val165.i.i = load i64, ptr %i.ew, align 8, !alias.scope !11553, !noundef !10
  %i.gi = icmp ult i64 %.val164.i.i, 22171567396285519
  call void @llvm.assume(i1 %i.gi)
  %.not.i.i.i = icmp eq i64 %.val165.i.i, %.val164.i.i
  br i1 %.not.i.i.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !11554
  %i.gj = call noundef dereferenceable_or_null(37) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 37, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !11554 ; 3 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %.invoke.i.i, label %bb.av

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.eb, %bb.ea
  %i.gl = trunc nuw i8 %.sroa.081.7.i.i to i1
  br i1 %i.gl, label %bb.fe, label %bb.fd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.thread291: ; preds = %bb.eq, %bb.ee
  %.sroa.089.1.i.i.ph = phi i8 [ 0, %bb.ee ], [ 1, %bb.eq ]
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.thread: ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.gj, ptr noundef nonnull align 1 dereferenceable(37) @79, i64 37, i1 false), !noalias !11555
  store i64 0, ptr %i.bc, align 8, !alias.scope !11556
  store i64 37, ptr %.sroa.4284.0..sroa_idx.i.i, align 8, !alias.scope !11556
  store ptr %i.gj, ptr %.sroa.5285.0..sroa_idx.i.i, align 8, !alias.scope !11556
  store i64 37, ptr %.sroa.6286.0..sroa_idx.i.i, align 8, !alias.scope !11556
  br label %bb.ch

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !11557
  call void @llvm.experimental.noalias.scope.decl(metadata !11558)
  %i.gm = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !11559, !nonnull !10, !noundef !10 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load i64, ptr %i.gn, align 8, !noalias !11560, !noundef !10
  %i.gp = icmp ult i64 %.val164.i.i, %i.go
  br i1 %i.gp, label %bb.ax, label %bb.cf

bb.ax:                                            ; preds = %bb.aw
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !11560, !nonnull !10, !noundef !10
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %.val164.i.i
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !11560, !nonnull !10, !noundef !10 ; 7 uses
  %i.gu = atomicrmw add ptr %i.gt, i64 1 monotonic, align 8, !noalias !11560
  %i.gv = icmp slt i64 %i.gu, 0
  br i1 %i.gv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.trap()
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.gw = add nuw nsw i64 %.val164.i.i, 1
  store i64 %i.gw, ptr %i.ew, align 8, !alias.scope !11559
  store ptr %i.gt, ptr %i.ao, align 8, !noalias !11557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !11557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.an, ptr noundef nonnull align 8 dereferenceable(712) %i.ap, i64 416, i1 false), !noalias !11561
  %i.gx = load ptr, ptr %i.ex, align 8, !noalias !11557, !nonnull !10, !noundef !10 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11562)
  call void @llvm.experimental.noalias.scope.decl(metadata !11563)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.gz = load i16, ptr %i.gy, align 8, !alias.scope !11562, !noalias !11564, !noundef !10
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  %i.hb = load i16, ptr %i.ha, align 8, !alias.scope !11563, !noalias !11564, !noundef !10
  %i.hc = icmp eq i16 %i.gz, %i.hb
  br i1 %i.hc, label %bb.ba, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ba:                                            ; preds = %bb.az
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 50
  %i.he = load i16, ptr %i.hd, align 2, !alias.scope !11562, !noalias !11564, !noundef !10
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 50
  %i.hg = load i16, ptr %i.hf, align 2, !alias.scope !11563, !noalias !11564, !noundef !10
  %i.hh = icmp eq i16 %i.he, %i.hg
  br i1 %i.hh, label %bb.bb, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !11562, !noalias !11564, !nonnull !10, !noundef !10 ; 21 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !11563, !noalias !11564, !nonnull !10, !noundef !10 ; 21 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !11565)
  call void @llvm.experimental.noalias.scope.decl(metadata !11566)
  %i.ho = load i64, ptr %i.hk, align 8, !range !17, !alias.scope !11565, !noalias !11567, !noundef !10
  %i.hp = icmp ne i64 %i.ho, -1                   ; 2 uses
  %i.hq = load i64, ptr %i.hn, align 8, !range !17, !alias.scope !11566, !noalias !11567, !noundef !10
  %i.hr = icmp eq i64 %i.hq, -1                   ; 3 uses
  %not..i.i.i.i = xor i1 %i.hr, true
  %i.hs = xor i1 %i.hp, %i.hr
  br i1 %i.hs, label %bb.bc, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.hp, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 %not..i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !11568)
  call void @llvm.experimental.noalias.scope.decl(metadata !11569)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !11570, !noalias !11567, !noundef !10 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !11571, !noalias !11567, !noundef !10
  %i.hx = icmp eq i64 %i.hu, %i.hw
  br i1 %i.hx, label %bb.be, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.be:                                            ; preds = %bb.bd
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !11571, !noalias !11567, !nonnull !10, !noundef !10
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !11570, !noalias !11567, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ib, ptr nonnull %i.hz, i64 %i.hu), !noalias !11572
  %i.ic = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ic, label %bb.bf, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bf:                                            ; preds = %bb.be
  %i.id = getelementptr inbounds nuw i8, ptr %i.hj, i64 80
  %i.ie = load i8, ptr %i.id, align 8, !range !56, !alias.scope !11570, !noalias !11567, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ie, -1
  %i.if = getelementptr inbounds nuw i8, ptr %i.hm, i64 80
  %i.ig = load i8, ptr %i.if, align 8, !range !56, !alias.scope !11571, !noalias !11567, !noundef !10 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ih = icmp eq i8 %i.ie, %i.ig
  br i1 %i.ih, label %bb.bi, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ii = icmp eq i8 %i.ig, -1
  br i1 %i.ii, label %bb.bi, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hj, i64 81
  %i.ik = load i8, ptr %i.ij, align 1, !range !57, !alias.scope !11570, !noalias !11567, !noundef !10
  %i.il = getelementptr inbounds nuw i8, ptr %i.hm, i64 81
  %i.im = load i8, ptr %i.il, align 1, !range !57, !alias.scope !11571, !noalias !11567, !noundef !10
  %i.in = icmp eq i8 %i.ik, %i.im
  br i1 %i.in, label %bb.bj, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.io = getelementptr inbounds nuw i8, ptr %i.hj, i64 40 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !range !30, !alias.scope !11570, !noalias !11567, !noundef !10
  %.not5.i.i.i.i.i = icmp eq i64 %i.ip, -2
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hm, i64 40 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !range !30, !alias.scope !11571, !noalias !11567, !noundef !10
  %i.is = icmp eq i64 %i.ir, -2                   ; 2 uses
  br i1 %.not5.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.is, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, label %.split7.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.is, label %bb.bm, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split7.i.i.i.i.i:                                ; preds = %bb.bk
  %i.it = call fastcc noundef zeroext i1 @_RNvXs1R_NtCs7Ez7UXBn1VF_7parquet5basicNtB6_11LogicalTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.io, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iq), !noalias !11567
  br i1 %i.it, label %bb.bm, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bm:                                            ; preds = %.split7.i.i.i.i.i, %bb.bl
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hj, i64 72
  %i.iv = load i32, ptr %i.iu, align 8, !range !55, !alias.scope !11570, !noalias !11567, !noundef !10
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hj, i64 76
  %i.ix = trunc nuw i32 %i.iv to i1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  %i.iz = load i32, ptr %i.iy, align 8, !range !55, !alias.scope !11571, !noalias !11567, !noundef !10
  %2 = trunc nuw i32 %i.iz to i1                  ; 2 uses
  br i1 %i.ix, label %bb.bn, label %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  br i1 %2, label %.split.i.i.i.i, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i.i.i:                                   ; preds = %bb.bn
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hm, i64 76
  %i.jb = load i32, ptr %i.iw, align 4, !alias.scope !11570, !noalias !11567, !noundef !10
  %i.jc = load i32, ptr %i.ja, align 4, !alias.scope !11571, !noalias !11567, !noundef !10
  %i.jd = icmp eq i32 %i.jb, %i.jc
  br i1 %i.jd, label %bb.cc, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.bm
  br i1 %2, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, label %bb.cc

bb.bo:                                            ; preds = %bb.bc
  call void @llvm.assume(i1 %i.hr)
  %i.je = getelementptr inbounds nuw i8, ptr %i.hj, i64 96
  %i.jf = load i32, ptr %i.je, align 8, !alias.scope !11565, !noalias !11567, !noundef !10
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  %i.jh = load i32, ptr %i.jg, align 8, !alias.scope !11566, !noalias !11567, !noundef !10
  %i.ji = icmp eq i32 %i.jf, %i.jh
  br i1 %i.ji, label %bb.bp, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hj, i64 100
  %i.jk = load i32, ptr %i.jj, align 4, !alias.scope !11565, !noalias !11567, !noundef !10
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hm, i64 100
  %i.jm = load i32, ptr %i.jl, align 4, !alias.scope !11566, !noalias !11567, !noundef !10
  %i.jn = icmp eq i32 %i.jk, %i.jm
  br i1 %i.jn, label %bb.bq, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hj, i64 104
  %i.jp = load i32, ptr %i.jo, align 8, !alias.scope !11565, !noalias !11567, !noundef !10
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hm, i64 104
  %i.jr = load i32, ptr %i.jq, align 8, !alias.scope !11566, !noalias !11567, !noundef !10
  %i.js = icmp eq i32 %i.jp, %i.jr
  br i1 %i.js, label %bb.br, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !11573)
  call void @llvm.experimental.noalias.scope.decl(metadata !11574)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.ju = load i64, ptr %i.jt, align 8, !alias.scope !11575, !noalias !11567, !noundef !10 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %i.jw = load i64, ptr %i.jv, align 8, !alias.scope !11576, !noalias !11567, !noundef !10
  %i.jx = icmp eq i64 %i.ju, %i.jw
  br i1 %i.jx, label %bb.bs, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bs:                                            ; preds = %bb.br
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !alias.scope !11576, !noalias !11567, !nonnull !10, !noundef !10
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !alias.scope !11575, !noalias !11567, !nonnull !10, !noundef !10
  %bcmp.i4.i.i.i.i = call i32 @bcmp(ptr nonnull %i.kb, ptr nonnull %i.jz, i64 %i.ju), !noalias !11577
  %i.kc = icmp eq i32 %bcmp.i4.i.i.i.i, 0
  br i1 %i.kc, label %bb.bt, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hj, i64 88
  %i.ke = load i8, ptr %i.kd, align 8, !range !56, !alias.scope !11575, !noalias !11567, !noundef !10 ; 2 uses
  %.not.i5.i.i.i.i = icmp eq i8 %i.ke, -1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hm, i64 88
  %i.kg = load i8, ptr %i.kf, align 8, !range !56, !alias.scope !11576, !noalias !11567, !noundef !10 ; 2 uses
  br i1 %.not.i5.i.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kh = icmp eq i8 %i.ke, %i.kg
  br i1 %i.kh, label %bb.bw, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.ki = icmp eq i8 %i.kg, -1
  br i1 %i.ki, label %bb.bw, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hj, i64 89
  %i.kk = load i8, ptr %i.kj, align 1, !range !57, !alias.scope !11575, !noalias !11567, !noundef !10
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hm, i64 89
  %i.km = load i8, ptr %i.kl, align 1, !range !57, !alias.scope !11576, !noalias !11567, !noundef !10
  %i.kn = icmp eq i8 %i.kk, %i.km
  br i1 %i.kn, label %bb.bx, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hj, i64 48 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !range !30, !alias.scope !11575, !noalias !11567, !noundef !10
  %.not5.i6.i.i.i.i = icmp eq i64 %i.kp, -2
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hm, i64 48 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !range !30, !alias.scope !11576, !noalias !11567, !noundef !10
  %i.ks = icmp eq i64 %i.kr, -2                   ; 2 uses
  br i1 %.not5.i6.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br i1 %i.ks, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, label %.split7.i7.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  br i1 %i.ks, label %bb.ca, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split7.i7.i.i.i.i:                               ; preds = %bb.by
  %i.kt = call fastcc noundef zeroext i1 @_RNvXs1R_NtCs7Ez7UXBn1VF_7parquet5basicNtB6_11LogicalTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ko, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kq), !noalias !11567
  br i1 %i.kt, label %bb.ca, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ca:                                            ; preds = %.split7.i7.i.i.i.i, %bb.bz
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hj, i64 80
  %i.kv = load i32, ptr %i.ku, align 8, !range !55, !alias.scope !11575, !noalias !11567, !noundef !10
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hj, i64 84
  %i.kx = trunc nuw i32 %i.kv to i1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hm, i64 80
  %i.kz = load i32, ptr %i.ky, align 8, !range !55, !alias.scope !11576, !noalias !11567, !noundef !10
  %3 = trunc nuw i32 %i.kz to i1                  ; 2 uses
  br i1 %i.kx, label %bb.cb, label %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit8.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  br i1 %3, label %.split11.i.i.i.i, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split11.i.i.i.i:                                 ; preds = %bb.cb
  %i.la = getelementptr inbounds nuw i8, ptr %i.hm, i64 84
  %i.lb = load i32, ptr %i.kw, align 4, !alias.scope !11575, !noalias !11567, !noundef !10
  %i.lc = load i32, ptr %i.la, align 4, !alias.scope !11576, !noalias !11567, !noundef !10
  %i.ld = icmp eq i32 %i.lb, %i.lc
  br i1 %i.ld, label %_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit8.i.i.i.i: ; preds = %bb.ca
  br i1 %3, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, label %_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i

bb.cc:                                            ; preds = %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.hj, i64 104
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !11565, !noalias !11567, !noundef !10 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hm, i64 104
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !11566, !noalias !11567, !noundef !10
  %i.li = icmp eq i64 %i.lf, %i.lh
  br i1 %i.li, label %.split.i.i.i, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i.i:                                     ; preds = %bb.cc
  %i.lj = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  %i.lk = load ptr, ptr %i.lj, align 8, !alias.scope !11566, !noalias !11567, !nonnull !10, !noundef !10
  %i.ll = getelementptr inbounds nuw i8, ptr %i.hj, i64 96
  %i.lm = load ptr, ptr %i.ll, align 8, !alias.scope !11565, !noalias !11567, !nonnull !10, !noundef !10
  %i.ln = invoke noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types4TypeEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull %i.lm, ptr noundef nonnull %i.lk, i64 noundef %i.lf)
          to label %.noexc167.i.i unwind label %bb.cj, !noalias !11564

.noexc167.i.i:                                    ; preds = %.split.i.i.i
  br i1 %i.ln, label %bb.cd, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit8.i.i.i.i, %.split11.i.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hj, i64 108
  %i.lp = load i8, ptr %i.lo, align 4, !range !27, !alias.scope !11565, !noalias !11567, !noundef !10
  %i.lq = getelementptr inbounds nuw i8, ptr %i.hm, i64 108
  %i.lr = load i8, ptr %i.lq, align 4, !range !27, !alias.scope !11566, !noalias !11567, !noundef !10
  %i.ls = icmp eq i8 %i.lp, %i.lr
  br i1 %i.ls, label %bb.cd, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.cd:                                            ; preds = %_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, %.noexc167.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.lu = load i64, ptr %i.lt, align 8, !alias.scope !11562, !noalias !11564, !noundef !10 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.lw = load i64, ptr %i.lv, align 8, !alias.scope !11563, !noalias !11564, !noundef !10
  %i.lx = icmp eq i64 %i.lu, %i.lw
  br i1 %i.lx, label %bb.ce, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !alias.scope !11563, !noalias !11564, !nonnull !10, !noundef !10
  %i.ma = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !11562, !noalias !11564, !nonnull !10, !noundef !10
  %i.mc = invoke noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCscdodAO9FK5_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull %i.mb, ptr noundef nonnull %i.lz, i64 noundef %i.lu)
          to label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i unwind label %bb.cj, !noalias !11564

bb.cf:                                            ; preds = %bb.aw
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !11578
  %i.md = call noundef dereferenceable_or_null(45) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 45, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !11578 ; 3 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %.invoke.i.i, label %bb.cg

.invoke.i.i:                                      ; preds = %bb.cf, %bb.au
  %i.mf = phi i64 [ 45, %bb.cf ], [ 37, %bb.au ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.mf) #33
          to label %.cont.i.i unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.thread, !noalias !11564

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.md, ptr noundef nonnull align 1 dereferenceable(45) @24, i64 45, i1 false), !noalias !11579
  store i64 0, ptr %i.bc, align 8, !alias.scope !11556
  store ptr inttoptr (i64 45 to ptr), ptr %.sroa.4284.0..sroa_idx.i.i, align 8, !alias.scope !11556
  store ptr %i.md, ptr %.sroa.5285.0..sroa_idx.i.i, align 8, !alias.scope !11556
  store i64 45, ptr %.sroa.6286.0..sroa_idx.i.i, align 8, !alias.scope !11556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !11557
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.av
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata19ColumnChunkMetaDataECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(712) %i.ap)
          to label %bb.er unwind label %bb.ex, !noalias !11556

bb.ci:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsbakdBCgU4AF_16influxdb3_server.exit173.i.i, %bb.cj
  %.sroa.089.2.i.i = phi i8 [ %.sroa.089.3.i.i, %bb.cj ], [ %.sroa.089.4.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsbakdBCgU4AF_16influxdb3_server.exit173.i.i ]
  %.sroa.081.2.i.i = phi i8 [ 0, %bb.cj ], [ %.sroa.081.4.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsbakdBCgU4AF_16influxdb3_server.exit173.i.i ]
  %.pn151.i.i = phi { ptr, i32 } [ %i.mg, %bb.cj ], [ %.pn149.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsbakdBCgU4AF_16influxdb3_server.exit173.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata19ColumnChunkMetaDataECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(416) %i.an) #34
          to label %bb.ea unwind label %bb.dt, !noalias !11564

bb.cj:                                            ; preds = %bb.ek, %bb.dy, %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.ck, %bb.ce, %.split.i.i.i
  %.sroa.089.3.i.i = phi i8 [ 1, %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 1, %bb.ek ], [ 0, %bb.dy ], [ 1, %.split.i.i.i ], [ 1, %bb.ck ], [ 1, %bb.ce ]
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.ce
  br i1 %i.mc, label %bb.ck, label %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.ck:                                            ; preds = %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i
  %i.mh = load i64, ptr %i.ez, align 8, !range !16, !noalias !11557, !noundef !10 ; 3 uses
  %i.mi = load i64, ptr %i.fa, align 8, !noalias !11557
  %i.mj = load i64, ptr %i.fb, align 8, !noalias !11557, !noundef !10 ; 2 uses
  %i.mk = trunc nuw i64 %i.mh to i1
  %..i.i = select i1 %i.mk, i64 %i.mi, i64 %i.mj  ; 3 uses
  %i.ml = load i64, ptr %i.fc, align 8, !noalias !11557, !noundef !10 ; 3 uses
  %i.mm = load ptr, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !11553, !nonnull !10, !align !20, !noundef !10
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  %i.mo = load i64, ptr %i.mn, align 8, !noalias !11564, !noundef !10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !11557
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !11557
  invoke void @_RNvXs3_NtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writerNtB5_20ArrowColumnChunkDataNtNtNtB9_4file6reader11ChunkReader8get_read(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ev, i64 noundef %..i.i)
          to label %bb.cl unwind label %bb.cj, !noalias !11564

_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsx_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_16ColumnDescriptorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %bb.cd, %_RNvXsj_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, %.noexc167.i.i, %bb.cc, %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit8.i.i.i.i, %.split11.i.i.i.i, %bb.cb, %.split7.i7.i.i.i.i, %bb.bz, %bb.by, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %_RNvXsn_NtNtCs7Ez7UXBn1VF_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i, %bb.bn, %.split7.i.i.i.i.i, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !11557
  %i.mp = load ptr, ptr %i.ex, align 8, !noalias !11557, !nonnull !10, !noundef !10
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  store ptr %i.mq, ptr %i.al, align 8, !noalias !11557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !11557
  store ptr %i.ao, ptr %i.ak, align 8, !noalias !11557
  store ptr @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsbakdBCgU4AF_16influxdb3_server, ptr %.sroa.4104.0..sroa_idx.i.i, align 8, !noalias !11557
  store ptr %i.al, ptr %i.ey, align 8, !noalias !11557
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs7Ez7UXBn1VF_7parquet6schema5types16ColumnDescriptorNtB6_5Debug3fmtCsbakdBCgU4AF_16influxdb3_server, ptr %.sroa.4108.0..sroa_idx.i.i, align 8, !noalias !11557
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noundef nonnull @12, ptr noundef nonnull %i.ak)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.cj, !noalias !11564

bb.cl:                                            ; preds = %bb.ck
  %i.mr = load i64, ptr %i.ai, align 8, !range !13, !noalias !11557, !noundef !10 ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.624.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fd, i64 32, i1 false), !noalias !11557
  br i1 %i.ms, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.624.i.i, i64 32, i1 false), !noalias !11580
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.i.i)
  br label %bb.en

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3203.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5113.0..sroa_idx.i.i, i64 32, i1 false), !noalias !11557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !11557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.624.i.i, i64 32, i1 false), !noalias !11557
  call void @llvm.experimental.noalias.scope.decl(metadata !11581)
  store i64 %i.mr, ptr %i.aj, align 8, !alias.scope !11582, !noalias !11557
  store i64 %i.ml, ptr %i.fe, align 8, !alias.scope !11583, !noalias !11557
  store i64 %i.ml, ptr %i.ff, align 8, !alias.scope !11583, !noalias !11557
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.i.i)
  %i.mt = invoke { i64, ptr } @_RINvNtNtCs2AWtUsOyxgP_3std2io4copy4copyINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEQINtNtNtB1k_4file6writer12TrackedWriteQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11564 ; 2 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs7Ez7UXBn1VF_7parquet4file8metadata26ColumnChunkMetaDataBuilderECsbakdBCgU4AF_16influxdb3_server.exit173.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eh, %bb.eg, %bb.ef, %.body.thread.i.i, %bb.dw, %bb.ds
  %.sroa.089.4.i.i = phi i8 [ 1, %bb.eg ], [ 1, %bb.eh ], [ %.sroa.081.6.i.i, %bb.dw ], [ 1, %bb.ef ], [ 1, %.body.thread.i.i ], [ 1, %bb.ds ], [ 1, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.081.4.i.i = phi i8 [ 0, %bb.eg ], [ 0, %bb.eh ], [ %.sroa.081.6.i.i, %bb.dw ], [ 0, %bb.ef ], [ 0, %.body.thread.i.i ], [ 0, %bb.ds ], [ 0, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn149.i.i = phi { ptr, i32 } [ %i.ot, %bb.eg ], [ %i.ou, %bb.eh ], [ %i.ok, %bb.dw ], [ %i.os, %bb.ef ], [ %eh.lpad-body325.i.i, %.body.thread.i.i ], [ %i.ny, %bb.ds ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_2io4util4TakeNtNtNtCs7Ez7UXBn1VF_7parquet5arrow12arrow_writer22ArrowColumnChunkReaderEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(88) %i.aj) #34
          to label %bb.ci unwind label %bb.dt, !noalias !11564

bb.co:                                            ; preds = %bb.cn
  %i.mu = extractvalue { i64, ptr } %i.mt, 0
  %i.mv = extractvalue { i64, ptr } %i.mt, 1      ; 2 uses
  %i.mw = trunc nuw i64 %i.mu to i1
  br i1 %i.mw, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !11557
  invoke void @_RNvXs1_NtCs7Ez7UXBn1VF_7parquet6errorsNtB5_12ParquetErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noundef nonnull %i.mv)
          to label %bb.em unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !11564

bb.cq:                                            ; preds = %bb.co
  %i.mx = ptrtoint ptr %i.mv to i64
  %.not141.i.i = icmp eq i64 %i.ml, %i.mx
  br i1 %.not141.i.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.my = load ptr, ptr %i.ex, align 8, !noalias !11557, !nonnull !10, !noundef !10
  %i.mz = atomicrmw add ptr %i.my, i64 1 monotonic, align 8, !noalias !11564
  %i.na = icmp slt i64 %i.mz, 0
  br i1 %i.na, label %bb.cu, label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !11584
  %i.nb = call noundef dereferenceable_or_null(71) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 71, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !11584 ; 3 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %bb.ei, label %bb.ej

bb.ct:                                            ; preds = %bb.cr
  %i.nd = load ptr, ptr %i.ex, align 8, !noalias !11557, !nonnull !10, !noundef !10 ; 2 uses
  %i.ne = load i32, ptr %i.fg, align 8, !range !11585, !noalias !11557, !noundef !10 ; 2 uses
  %i.nf = load i32, ptr %i.fh, align 4, !noalias !11557 ; 2 uses
  %i.ng = load i32, ptr %i.fi, align 8, !noalias !11557, !noundef !10 ; 2 uses
  %i.nh = load i64, ptr %i.fc, align 8, !noalias !11557, !noundef !10 ; 2 uses
  %i.ni = load i64, ptr %i.fj, align 8, !noalias !11557, !noundef !10 ; 2 uses
  %i.nj = load i64, ptr %i.fk, align 8, !noalias !11557, !noundef !10 ; 2 uses
  %i.nk = sub i64 %i.mj, %..i.i
  %i.nl = add i64 %i.mo, %i.nk                    ; 2 uses
  %i.nm = load i64, ptr %i.fl, align 8, !range !16, !noalias !11557, !noundef !10 ; 2 uses
  %i.nn = load i64, ptr %i.fm, align 8, !noalias !11557 ; 2 uses
  %i.no = load i64, ptr %i.fn, align 8, !range !17, !noalias !11557, !noundef !10
  %.not142.i.i = icmp eq i64 %i.no, -1
  br i1 %.not142.i.i, label %bb.cw, label %bb.cv

bb.cu:                                            ; preds = %bb.cr
  call void @llvm.trap()
  unreachable

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !11557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11557
  store i64 0, ptr %i.ag, align 8, !noalias !11557
  store i64 %i.mh, ptr %.sroa.0204.sroa.17.0..sroa_idx.i.i, align 8, !noalias !11557
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB32_13V1HttpHandler13execute_query0s2_00EEENtNtCsgAEwGHJqgHw_12futures_task8arc_wake7ArcWake11wake_by_refCsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB4v_13V1HttpHandler13execute_query0s2_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB40_13V1HttpHandler13execute_query0s2_00EEEE9drop_slowCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB4v_13V1HttpHandler13execute_query0s2_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.h

bb.d:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 9785
  store atomic i8 1, ptr %i.i monotonic, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 9784
  %i.k = atomicrmw xchg ptr %i.j, i8 1 seq_cst, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11767)
  %i.m = load ptr, ptr %i.a, align 8, !alias.scope !11768, !nonnull !10, !noundef !10
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !11768
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB4v_13V1HttpHandler13execute_query0s2_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit4

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB40_13V1HttpHandler13execute_query0s2_00EEEE9drop_slowCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB4v_13V1HttpHandler13execute_query0s2_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit4

bb.g:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 9768
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.s = atomicrmw xchg ptr %i.r, ptr %i.b acq_rel, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 9752
  store atomic ptr %i.b, ptr %i.t release, align 8
  %i.u = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  invoke void @_RNvMNtNtNtCsi0Uwx9p0WRp_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.v)
          to label %bb.e unwind label %bb.b

bb.h:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB4v_13V1HttpHandler13execute_query0s2_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperINtNtNtNtBb_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB32_20CatalogSubscriptions11send_update0s_00EEENtNtCsgAEwGHJqgHw_12futures_task8arc_wake7ArcWake11wake_by_refCsbakdBCgU4AF_16influxdb3_server(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  %i.c = tail call noundef ptr @_RNvMsJ_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB41_20CatalogSubscriptions11send_update0s_00EEEE7upgradeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4v_20CatalogSubscriptions11send_update0s_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit4, label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4v_20CatalogSubscriptions11send_update0s_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit4: ; preds = %bb.a, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.b:                                             ; preds = %bb.g
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11778)
  %i.e = load ptr, ptr %i.a, align 8, !alias.scope !11779, !nonnull !10, !noundef !10
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !11779
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4v_20CatalogSubscriptions11send_update0s_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB40_20CatalogSubscriptions11send_update0s_00EEEE9drop_slowCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4v_20CatalogSubscriptions11send_update0s_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.h

bb.d:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 449
  store atomic i8 1, ptr %i.h monotonic, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 448
  %i.j = atomicrmw xchg ptr %i.i, i8 1 seq_cst, align 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11781)
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !11782, !nonnull !10, !noundef !10
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !11782
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4v_20CatalogSubscriptions11send_update0s_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit4

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBM_15futures_ordered12OrderWrapperINtNtNtNtBO_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB40_20CatalogSubscriptions11send_update0s_00EEEE9drop_slowCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4v_20CatalogSubscriptions11send_update0s_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit4

bb.g:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 440
  store atomic ptr null, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.r = atomicrmw xchg ptr %i.q, ptr %i.b acq_rel, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 424
  store atomic ptr %i.b, ptr %i.s release, align 8
  %i.t = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  invoke void @_RNvMNtNtNtCsi0Uwx9p0WRp_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.u)
          to label %bb.e unwind label %bb.b

bb.h:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCs5SRHcsv2kA9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1f_15futures_ordered12OrderWrapperINtNtNtNtB1h_6future10try_future11into_future10IntoFutureNCNCNCNvMs4_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36eventsNtB4v_20CatalogSubscriptions11send_update0s_00EEEEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1R_NtCs7Ez7UXBn1VF_7parquet5basicNtB6_11LogicalTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !39, !noundef !10 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775792
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808       ; 2 uses
  %i.d = icmp ult i64 %i.c, 18
  %i.e = select i1 %i.d, i64 %i.c, i64 16         ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !39, !noundef !10 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775792
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808       ; 2 uses
  %i.i = icmp ult i64 %i.h, 18
  %i.j = select i1 %i.i, i64 %i.h, i64 16
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.i, %.split, %bb.aa, %bb.y, %bb.z, %bb.ab, %bb.w, %bb.u, %bb.v, %bb.s, %bb.p, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.t, %bb.q, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.bb, %bb.l ], [ true, %bb.c ], [ %i.bg, %bb.m ], [ false, %bb.d ], [ %i.bl, %bb.n ], [ false, %bb.e ], [ %i.bq, %bb.o ], [ false, %bb.f ], [ %i.bu, %bb.r ], [ false, %bb.g ], [ %3, %bb.q ], [ %i.ce, %bb.t ], [ %.mux, %bb.i ], [ false, %bb.p ], [ false, %.split ], [ false, %bb.s ], [ %i.aw, %bb.k ], [ %i.da, %bb.ab ], [ true, %bb.aa ], [ false, %bb.y ], [ false, %bb.v ], [ %i.cw, %bb.z ], [ false, %bb.w ], [ false, %bb.u ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.b [
    i64 4, label %bb.d
    i64 6, label %bb.e
    i64 7, label %bb.f
    i64 8, label %bb.g
    i64 14, label %bb.h
    i64 15, label %bb.i
    i64 16, label %bb.j
    i64 17, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !noundef !10
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.l, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i8, ptr %i.q, align 8, !range !34, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !34, !noundef !10
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %bb.m, label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !34, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !34, !noundef !10
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %bb.n, label %bb.b

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !10
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.o, label %bb.b

bb.h:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !34, !noundef !10
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !range !34, !noundef !10
  %2 = trunc nuw i8 %i.ak to i1                   ; 2 uses
  br i1 %i.ah, label %bb.p, label %bb.q

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !17, !noundef !10 ; 2 uses
  %.not10 = icmp eq i64 %i.am, -1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !17, !noundef !10 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %brmerge = or i1 %.not10, %i.ap
  %i.aq = and i64 %i.am, %i.ao
  %.mux = icmp eq i64 %i.aq, -1
  br i1 %brmerge, label %bb.b, label %bb.s

bb.j:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.a, -1
  %i.ar = icmp eq i64 %i.f, -1                    ; 2 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.k:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i16, ptr %i.as, align 8, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i16, ptr %i.au, align 8, !noundef !10
  %i.aw = icmp eq i16 %i.at, %i.av
  br label %bb.b

bb.l:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !noundef !10
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br label %bb.b

bb.m:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !range !59, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !range !59, !noundef !10
  %i.bg = icmp eq i8 %i.bd, %i.bf
  br label %bb.b

bb.n:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !range !59, !noundef !10
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !range !59, !noundef !10
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br label %bb.b

bb.o:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !range !34, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load i8, ptr %i.bo, align 8, !range !34, !noundef !10
  %i.bq = icmp eq i8 %i.bn, %i.bp
  br label %bb.b

bb.p:                                             ; preds = %bb.h
  br i1 %2, label %bb.r, label %bb.b

bb.q:                                             ; preds = %bb.h
  %3 = xor i1 %2, true
  br label %bb.b

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bs = load i8, ptr %i.ai, align 1, !noundef !10
  %i.bt = load i8, ptr %i.br, align 1, !noundef !10
  %i.bu = icmp eq i8 %i.bs, %i.bt
  br label %bb.b

bb.s:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !10 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noundef !10
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.t, label %bb.b

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !10, !noundef !10
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !10, !noundef !10
  %bcmp12 = tail call i32 @bcmp(ptr nonnull %i.cd, ptr nonnull %i.cb, i64 %i.bw)
  %i.ce = icmp eq i32 %bcmp12, 0
  br label %bb.b

bb.u:                                             ; preds = %bb.j
  br i1 %i.ar, label %bb.b, label %bb.w

bb.v:                                             ; preds = %bb.j
  br i1 %i.ar, label %bb.x, label %bb.b

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !10 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !10
  %i.cj = icmp eq i64 %i.cg, %i.ci
  br i1 %i.cj, label %.split, label %bb.b

.split:                                           ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !10, !noundef !10
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !10, !noundef !10
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.cn, ptr nonnull %i.cl, i64 %i.cg)
  %i.co = icmp eq i32 %bcmp, 0
  br i1 %i.co, label %bb.x, label %bb.b

bb.x:                                             ; preds = %.split, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !range !11783, !noundef !10 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not8 = icmp eq i32 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !range !11783, !noundef !10 ; 2 uses
  br i1 %.not8, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cv = icmp eq i32 %i.cq, %i.ct
  br i1 %i.cv, label %bb.aa, label %bb.b

bb.z:                                             ; preds = %bb.x
  %i.cw = icmp eq i32 %i.ct, -1
  br label %bb.b

bb.aa:                                            ; preds = %bb.y
  %i.cx = icmp eq i32 %i.cq, 5
  br i1 %i.cx, label %bb.ab, label %bb.b

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load i32, ptr %i.cr, align 4, !noundef !10
  %i.cz = load i32, ptr %i.cu, align 4, !noundef !10
  %i.da = icmp eq i32 %i.cy, %i.cz
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_Cs4lw9sX6UwIr_8executorNtB5_8JobErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !17, !noundef !10
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11786)
  %i.a = load atomic ptr, ptr @_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS acquire, align 8, !noalias !11786 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0ECs6ePPILGZvJ2_11arrow_array(ptr noundef nonnull align 8 @_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !11786
  br label %_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit

_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x i64>, ptr %.sroa.0.0.i.i, align 8, !noalias !11786
  %i.g = shufflevector <2 x i64> %i.f, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.g, ptr %i.e, align 8, !alias.scope !11786
  %i.h = load <2 x i64>, ptr %i.d, align 8, !noalias !11786
  store <2 x i64> %i.h, ptr %0, align 8, !alias.scope !11786
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs8dx9gOL6MFw_26iox_query_influxql_rewrite9RewrittenNtNtCs2ng9dRaCDyN_24influxdb_influxql_parser9statement9StatementEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = shl nuw i64 %.val, 6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketINtNtB7_4sync3ArcDNtNtCs3bxdDoT6cu5_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id11LastCacheIdINtNtB7_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5cache19LastCacheDefinitionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id12QueryGroupIdINtNtB7_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema11query_group20QueryGroupDefinitionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #32
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id13FieldFamilyIdINtNtB7_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column21FieldFamilyDefinitionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
end_hunk_2
