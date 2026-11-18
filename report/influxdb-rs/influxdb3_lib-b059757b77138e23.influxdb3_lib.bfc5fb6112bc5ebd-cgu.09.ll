Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.09?download=true
inline.NumInlined: 7577
inline.NumDeleted: 2726
begin_hunk_0_@_RNvXs_NtNtCs6VdLngu4RVT_10hyper_util7service7oneshotINtB4_7OneshotINtNtNtCsbakdBCgU4AF_16influxdb3_server15unified_service17remote_addr_layer17RemoteAddrServiceINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceIB2z_INtNtB17_7service14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEEEEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEENtNtNtCs4NRVxsYgnAr_4core6future6future6Future4pollCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  store i64 -2, ptr %0, align 16
  br label %bb.u

bb.q:                                             ; preds = %bb.e
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.320.0.copyload = load ptr, ptr %.sroa.320.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 16 ; 3 uses
  %i.u = icmp eq i64 %i.p, -1
  br i1 %i.u, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.320.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  store i64 -1, ptr %0, align 16
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.320.0.copyload, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.543.0..sroa_idx, align 16
  br label %bb.u

.body:                                            ; preds = %bb.s
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775806, ptr %i.f, align 16, !noalias !17871
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http8response8ResponseINtNtCsaRedpzzhJaR_10trace_http5tower10TracedBodyIB1i_INtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB4N_4SyncEL_EEEEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 16 dereferenceable(928) %i.c) #30
          to label %common.resume unwind label %bb.v

bb.s:                                             ; preds = %bb.q
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %.sroa.630.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(904) %.sroa.525.0..sroa_idx, i64 904, i1 false)
  store i64 %i.p, ptr %i.c, align 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.320.0.copyload, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.529.0..sroa_idx, align 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6VdLngu4RVT_10hyper_util7service7oneshot7OneshotINtNtNtCsbakdBCgU4AF_16influxdb3_server15unified_service17remote_addr_layer17RemoteAddrServiceINtNtCsaRedpzzhJaR_10trace_http5tower12TraceServiceIB33_INtNtB1B_7service14UnifiedServiceINtNtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_server19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEEEEEINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 16 dereferenceable(816) %1)
          to label %bb.t unwind label %.body, !noalias !17871

bb.t:                                             ; preds = %bb.s
  store i64 -9223372036854775806, ptr %i.f, align 16, !noalias !17871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(928) %0, ptr noundef nonnull align 16 dereferenceable(928) %i.c, i64 928, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.v:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs844E4pPEVZX_17influxdb3_catalog7catalog10migrationsNtB4_14MigrationErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !guid !17872 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !60, !noundef !24
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 -9223372036854775788)
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @776, i64 noundef 18, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @511)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @777, i64 noundef 23)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @759, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @255)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscX1haOsHjXZ_16serde_urlencoded3ser4partINtB4_14PartSerializerINtNtB6_5value9ValueSinkNtCsj7DbYNsdxOJ_3url8UrlQueryEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_strCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !guid !17873 {
bb.a:
  tail call void @_RNvXs_NtNtCscX1haOsHjXZ_16serde_urlencoded3ser5valueINtB4_9ValueSinkNtCsj7DbYNsdxOJ_3url8UrlQueryENtNtB6_4part4Sink13serialize_strCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscX1haOsHjXZ_16serde_urlencoded3ser4partINtB4_14PartSerializerINtNtB6_5value9ValueSinkNtCsj7DbYNsdxOJ_3url8UrlQueryEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer14serialize_boolCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 !guid !17874 {
bb.a:
  %. = select i1 %2, i64 4, i64 5
  %.1 = select i1 %2, ptr @779, ptr @778
  tail call void @_RNvXs_NtNtCscX1haOsHjXZ_16serde_urlencoded3ser5valueINtB4_9ValueSinkNtCsj7DbYNsdxOJ_3url8UrlQueryENtNtB6_4part4Sink20serialize_static_strCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCscX1haOsHjXZ_16serde_urlencoded3ser4partINtB4_14PartSerializerINtNtB6_5value9ValueSinkNtCsj7DbYNsdxOJ_3url8UrlQueryEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer14serialize_noneCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 !guid !17877 {
bb.a:
  store i64 -3, ptr %0, align 8, !alias.scope !17878
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscX1haOsHjXZ_16serde_urlencoded3ser4partINtB4_14PartSerializerINtNtB6_5value9ValueSinkNtCsj7DbYNsdxOJ_3url8UrlQueryEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer22serialize_unit_variantCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6) unnamed_addr #0 !guid !17879 {
bb.a:
  tail call void @_RNvXs_NtNtCscX1haOsHjXZ_16serde_urlencoded3ser5valueINtB4_9ValueSinkNtCsj7DbYNsdxOJ_3url8UrlQueryENtNtB6_4part4Sink20serialize_static_strCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs_NtNtCsekDO8Mha3LU_12arrow_flight3gen21flight_service_serverINtB4_19FlightServiceServerNtCskNybNtkhOGI_19service_grpc_flight13FlightServiceEINtCs3NpN3vTqQZl_13tower_service7ServiceINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEE4callCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(264) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !17902 {
bb.a:
  %i.a = alloca [1944 x i8], align 16             ; 11 uses
  %i.b = alloca [1944 x i8], align 16             ; 11 uses
  %i.c = alloca [944 x i8], align 16              ; 11 uses
  %i.d = alloca [944 x i8], align 16              ; 11 uses
  %i.e = alloca [1944 x i8], align 16             ; 11 uses
  %i.f = alloca [1944 x i8], align 16             ; 11 uses
  %i.g = alloca [1944 x i8], align 16             ; 11 uses
  %i.h = alloca [1944 x i8], align 16             ; 11 uses
  %i.i = alloca [1944 x i8], align 16             ; 11 uses
  %i.j = alloca [944 x i8], align 16              ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.l = load i64, ptr %i.k, align 8, !noundef !24 ; 6 uses
  %i.m = icmp eq i64 %i.l, 0                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load i8, ptr %i.n, align 8, !range !39
  %.not = icmp eq i8 %i.o, 0
  %or.cond = select i1 %i.m, i1 %.not, i1 false
  br i1 %or.cond, label %.thread146, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.q = load i16, ptr %i.p, align 8, !noundef !24 ; 3 uses
  %i.r = icmp eq i16 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !noundef !24 ; 8 uses
  br i1 %i.r, label %_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = zext i16 %i.q to i64                     ; 5 uses
  %i.v = icmp eq i16 %i.q, 0
  br i1 %i.v, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp ugt i64 %i.l, %i.u
  br i1 %.not.i.i, label %bb.e, label %.split.i.i

.split.i.i:                                       ; preds = %bb.d
  %i.w = icmp ne i64 %i.l, %i.u
  %.not.i = icmp eq ptr %i.t, null
  %or.cond.i = or i1 %.not.i, %i.w
  br i1 %or.cond.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i, label %_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread, !prof !17903

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !17904, !noundef !24
  %i.z = icmp sgt i8 %i.y, -65
  br i1 %i.z, label %_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.c
  %.not.old.i = icmp eq ptr %i.t, null
  br i1 %.not.old.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i, label %.thread146, !prof !28

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i: ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %bb.e, %.split.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.l, i64 noundef 0, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #33
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i
  unreachable

_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread: ; preds = %.split.i.i, %bb.e
  %.sroa.5.0.i.ph = phi i64 [ %i.u, %bb.e ], [ %i.l, %.split.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  br label %bb.f

_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %spec.select = select i1 %i.m, ptr @191, ptr %i.t
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit, %_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread
  %spec.select.i107 = phi i64 [ %.sroa.5.0.i.ph, %_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread ], [ %spec.select.i, %_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit ]
  %i.aa = phi ptr [ %i.t, %_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit.thread ], [ %spec.select, %_RNvMNtNtCs6P5GRezSnwZ_4http3uri4pathNtB2_12PathAndQuery4path.exit ] ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  switch i64 %spec.select.i107, label %.thread146 [
    i64 46, label %bb.g
    i64 48, label %bb.i
    i64 50, label %bb.k
    i64 51, label %bb.m
    i64 42, label %bb.q
    i64 47, label %bb.u
    i64 45, label %bb.w
  ]

bb.g:                                             ; preds = %bb.f
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(46) %i.aa, ptr noundef nonnull dereferenceable(46) @780, i64 46)
  %i.ab = icmp eq i32 %bcmp, 0
  br i1 %i.ab, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ac = load <2 x i64>, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load <2 x i64>, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.cl, label %bb.ch

bb.i:                                             ; preds = %bb.f
  %bcmp45 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.aa, ptr noundef nonnull dereferenceable(48) @781, i64 48)
  %i.aj = icmp eq i32 %bcmp45, 0
  br i1 %i.aj, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.ak = load <2 x i64>, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load <2 x i64>, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.cf, label %bb.cb

bb.k:                                             ; preds = %bb.f
  %bcmp46 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(50) %i.aa, ptr noundef nonnull dereferenceable(50) @782, i64 50)
  %i.ar = icmp eq i32 %bcmp46, 0
  br i1 %i.ar, label %bb.l, label %.thread146

bb.l:                                             ; preds = %bb.k
  %i.as = load <2 x i64>, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load <2 x i64>, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.bz, label %bb.bv

bb.m:                                             ; preds = %bb.f
  %bcmp47 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(51) %i.aa, ptr noundef nonnull dereferenceable(51) @783, i64 51)
  %i.az = icmp eq i32 %bcmp47, 0
  br i1 %i.az, label %bb.n, label %.thread146

bb.n:                                             ; preds = %bb.m
  %i.ba = load <2 x i64>, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load <2 x i64>, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.bf = atomicrmw add ptr %i.be, i64 1 monotonic, align 8
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.bt, label %bb.bp

bb.o:                                             ; preds = %bb.g
  %bcmp48 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(46) %i.aa, ptr noundef nonnull dereferenceable(46) @784, i64 46)
  %i.bh = icmp eq i32 %bcmp48, 0
  br i1 %i.bh, label %bb.p, label %.thread146

bb.p:                                             ; preds = %bb.o
  %i.bi = load <2 x i64>, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load <2 x i64>, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.bn = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.bn, label %bb.bj

bb.q:                                             ; preds = %bb.f
  %bcmp49 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(42) %i.aa, ptr noundef nonnull dereferenceable(42) @785, i64 42)
  %i.bp = icmp eq i32 %bcmp49, 0
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bq = load <2 x i64>, ptr %0, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load <2 x i64>, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.bv = atomicrmw add ptr %i.bu, i64 1 monotonic, align 8
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.bh, label %bb.bd

bb.s:                                             ; preds = %bb.q
  %bcmp50 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(42) %i.aa, ptr noundef nonnull dereferenceable(42) @786, i64 42)
  %i.bx = icmp eq i32 %bcmp50, 0
  br i1 %i.bx, label %bb.t, label %.thread146

bb.t:                                             ; preds = %bb.s
  %i.by = load <2 x i64>, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load <2 x i64>, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.cd = atomicrmw add ptr %i.cc, i64 1 monotonic, align 8
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.bb, label %bb.ax

bb.u:                                             ; preds = %bb.f
  %bcmp51 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(47) %i.aa, ptr noundef nonnull dereferenceable(47) @787, i64 47)
  %i.cf = icmp eq i32 %bcmp51, 0
  br i1 %i.cf, label %bb.v, label %.thread146

bb.v:                                             ; preds = %bb.u
  %i.cg = load <2 x i64>, ptr %0, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load <2 x i64>, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.av, label %bb.ar

bb.w:                                             ; preds = %bb.f
  %bcmp52 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(45) %i.aa, ptr noundef nonnull dereferenceable(45) @788, i64 45)
  %i.cn = icmp eq i32 %bcmp52, 0
  br i1 %i.cn, label %bb.x, label %.thread146

bb.x:                                             ; preds = %bb.w
  %i.co = load <2 x i64>, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load <2 x i64>, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ct = atomicrmw add ptr %i.cs, i64 1 monotonic, align 8
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.ap, label %bb.al

bb.y:                                             ; preds = %bb.i
  %bcmp53 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(48) %i.aa, ptr noundef nonnull dereferenceable(48) @789, i64 48)
  %i.cv = icmp eq i32 %bcmp53, 0
  br i1 %i.cv, label %bb.aa, label %.thread146

.thread146:                                       ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %bb.a, %bb.f, %bb.m, %bb.k, %bb.o, %bb.u, %bb.w, %bb.s, %bb.y
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32
  %i.cw = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1945) 1, i64 noundef range(i64 1, 17) 1) #32 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.z, label %bb.ab, !prof !26

bb.z:                                             ; preds = %.thread146
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #33
          to label %.noexc84 unwind label %.body

.noexc84:                                         ; preds = %bb.z
  unreachable

.body:                                            ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i, %bb.z
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(264) %1) #30
          to label %common.resume unwind label %bb.cn

bb.aa:                                            ; preds = %bb.y
  %i.cz = load <2 x i64>, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load <2 x i64>, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.de = atomicrmw add ptr %i.dd, i64 1 monotonic, align 8
  %i.df = icmp slt i64 %i.de, 0
  br i1 %i.df, label %bb.aj, label %bb.af

bb.ab:                                            ; preds = %.thread146
  store i8 0, ptr %i.cw, align 1
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http7request5PartsECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(264) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2LSxCQSJWSD_5hyper4body8incoming8IncomingECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %i.dh) #30
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.ah, %bb.an, %bb.at, %bb.az, %bb.bf, %bb.bl, %bb.br, %bb.bx, %bb.cd, %bb.cj, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.dg, %bb.ac ], [ %i.cy, %.body ], [ %i.hc, %bb.bx ], [ %i.ho, %bb.cd ], [ %i.dw, %bb.ah ], [ %i.ei, %bb.an ], [ %i.eu, %bb.at ], [ %i.fg, %bb.az ], [ %i.fs, %bb.bf ], [ %i.ge, %bb.bl ], [ %i.gq, %bb.br ], [ %i.ia, %bb.cj ]
  resume { ptr, i32 } %common.resume.op
end_hunk_0
