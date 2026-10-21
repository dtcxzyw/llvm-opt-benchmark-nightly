Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.08?download=true
inline.NumInlined: 1716
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3e_6marker4SendNtB3L_4SyncEL_EEEB4_:bb.a

bb.as:                                            ; preds = %bb.ap
  %.sroa.4.sroa.0.2.extract.shift.i.i.i = lshr i32 %.sroa.6.sroa.0.0.copyload.i.i.i, 16
  %.sroa.4.sroa.0.2.extract.trunc.i.i.i = trunc nuw i32 %.sroa.4.sroa.0.2.extract.shift.i.i.i to i16
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 2 dereferenceable(14) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i, i64 14, i1 false), !noalias !1644
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i16 %.sroa.4.sroa.0.2.extract.trunc.i.i.i, ptr %i.gs, align 1, !noalias !1642
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i32 %.sroa.6.sroa.0.0.copyload.i.i.i, ptr %i.gt, align 1, !noalias !1642
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink.i.i.i = phi i8 [ 1, %bb.as ], [ 0, %bb.at ]
  store i8 %.sink.i.i.i, ptr %i.e, align 1, !noalias !1642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1645
  store i64 0, ptr %i.c, align 8, !noalias !1645
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !1645
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !1645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1645
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.gu, align 8, !noalias !1645
  %.sroa.4.0..sroa_idx.i7.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i7.i.i.i, align 4, !noalias !1645
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !1645
  store ptr %i.c, ptr %i.b, align 8, !noalias !1645
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @153, ptr %i.gv, align 8, !noalias !1645
  %i.gw = invoke noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.aw unwind label %bb.av, !noalias !1646

bb.av:                                            ; preds = %bb.ax, %bb.au
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %.body.i unwind label %bb.ay, !noalias !1646

bb.aw:                                            ; preds = %bb.au
  br i1 %i.gw, label %bb.ax, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCs4NRVxsYgnAr_4core3net7ip_addr6IpAddrNtB5_12SpecToString14spec_to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, !prof !10

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @737, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @739) #35
          to label %.noexc.i.i.i.i unwind label %bb.av, !noalias !1646

.noexc.i.i.i.i:                                   ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !1646
  unreachable

_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCs4NRVxsYgnAr_4core3net7ip_addr6IpAddrNtB5_12SpecToString14spec_to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.aw
  %.sroa.0.0.copyload2.i.i = load i64, ptr %i.c, align 8, !noalias !1647
  %.sroa.5.0.copyload4.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !1647
  %.sroa.6.0.copyload6.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !1647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1642
  br label %_RNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3g_6marker4SendNtB3N_4SyncEL_EEEs2_0B6_.exit.i

_RNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3g_6marker4SendNtB3N_4SyncEL_EEEs2_0B6_.exit.thread.i: ; preds = %.noexc.i23
  store i64 -1, ptr %0, align 8, !alias.scope !1648
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCscdodAO9FK5_5alloc6string6StringE7or_elseNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtBM_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB4K_4SyncEL_EEEs2_0EB1z_.exit

bb.az:                                            ; preds = %bb.ar, %bb.aq, %bb.an
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.az, %bb.av
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.gz, %bb.az ], [ %i.gx, %bb.av ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #34
          to label %common.resume unwind label %bb.ba, !noalias !1637

_RNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3g_6marker4SendNtB3N_4SyncEL_EEEs2_0B6_.exit.i: ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCs4NRVxsYgnAr_4core3net7ip_addr6IpAddrNtB5_12SpecToString14spec_to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %_RNCNCNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3k_6marker4SendNtB3R_4SyncEL_EEEs2_00s_0Ba_.exit.i.i.i
  %.sroa.6.0.i.i = phi i64 [ 7, %_RNCNCNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3k_6marker4SendNtB3R_4SyncEL_EEEs2_00s_0Ba_.exit.i.i.i ], [ %.sroa.6.0.copyload6.i.i, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCs4NRVxsYgnAr_4core3net7ip_addr6IpAddrNtB5_12SpecToString14spec_to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.5.0.i.i = phi ptr [ %i.gq, %_RNCNCNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3k_6marker4SendNtB3R_4SyncEL_EEEs2_00s_0Ba_.exit.i.i.i ], [ %.sroa.5.0.copyload4.i.i, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCs4NRVxsYgnAr_4core3net7ip_addr6IpAddrNtB5_12SpecToString14spec_to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  %.sroa.0.0.i.i26 = phi i64 [ %i.gn, %_RNCNCNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3k_6marker4SendNtB3R_4SyncEL_EEEs2_00s_0Ba_.exit.i.i.i ], [ %.sroa.0.0.copyload2.i.i, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCs4NRVxsYgnAr_4core3net7ip_addr6IpAddrNtB5_12SpecToString14spec_to_stringCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i ]
  store i64 %.sroa.0.0.i.i26, ptr %0, align 8, !alias.scope !1648
  %.sroa.5.0..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i27, align 8, !alias.scope !1648
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1648
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCscdodAO9FK5_5alloc6string6StringE7or_elseNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtBM_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB4K_4SyncEL_EEEs2_0EB1z_.exit

bb.ba:                                            ; preds = %.body.i
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !1637
  unreachable

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCscdodAO9FK5_5alloc6string6StringE7or_elseNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtBM_5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SendNtB4K_4SyncEL_EEEs2_0EB1z_.exit: ; preds = %_RNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3g_6marker4SendNtB3N_4SyncEL_EEEs2_0B6_.exit.i, %bb.am, %_RNCINvNtCsbakdBCgU4AF_16influxdb3_server4http17extract_client_ipINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3g_6marker4SendNtB3N_4SyncEL_EEEs2_0B6_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsdLkRf3gRIi6_10serde_json3ser6to_vecINtNtCsbakdBCgU4AF_16influxdb3_server4http12ErrorMessageINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEEBK_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.e = load i64, ptr %i.c, align 8, !range !8, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !9, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.l = icmp samesign ugt i64 %i.h, 127
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.n, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1662
  store ptr %i.d, ptr %i.b, align 8, !noalias !1662
  call void @llvm.experimental.noalias.scope.decl(metadata !1663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1664
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !11, !alias.scope !1665, !noundef !4
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !noalias !1664
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !1664
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1664
  %i.q = invoke noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %.noexc3 unwind label %bb.h    ; 2 uses

.noexc3:                                          ; preds = %.noexc
  %.not25.i.i = icmp eq ptr %i.q, null
  br i1 %.not25.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.noexc3
  %.not.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.a, align 8, !range !5, !alias.scope !1666, !noalias !1664, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i: ; preds = %bb.e
  %i.t = invoke noundef nonnull align 8 ptr @_RNvNtCsdLkRf3gRIi6_10serde_json3ser17invalid_raw_value()
          to label %bb.i unwind label %bb.h

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.e
  %i.u = invoke noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionIBN_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %.noexc5 unwind label %bb.h    ; 2 uses

.noexc5:                                          ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %.not27.i.i = icmp eq ptr %i.u, null
  br i1 %.not27.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.noexc5, %bb.d
  %.sroa.033.0.copyload.i.i = load i8, ptr %i.a, align 8, !noalias !1664
  %i.v = trunc nuw i8 %.sroa.033.0.copyload.i.i to i1
  %.sroa.434.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !1664
  %i.w = icmp eq i8 %.sroa.434.0.copyload.i.i, 0
  %or.cond.i.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.536.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1664, !nonnull !4, !noundef !4
  %.val.i.i29.i.i = load ptr, ptr %.sroa.536.0.copyload.i.i, align 8, !noalias !1667, !nonnull !4, !align !16, !noundef !4
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i29.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 1)
          to label %bb.l unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, %.noexc, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #34
          to label %common.resume unwind label %bb.n

bb.i:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, %.noexc5, %.noexc3
  %.sroa.0.0.i.i.ph = phi ptr [ %i.q, %.noexc3 ], [ %i.u, %.noexc5 ], [ %i.t, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionIBT_NtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1662
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i.ph, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.x, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.m

bb.l:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsdLkRf3gRIi6_10serde_json3ser6to_vecINtNtCsbakdBCgU4AF_16influxdb3_server4http12ErrorMessageNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEEBK_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.e = load i64, ptr %i.c, align 8, !range !8, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !9, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.l = icmp samesign ugt i64 %i.h, 127
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.n, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1681
  store ptr %i.d, ptr %i.b, align 8, !noalias !1681
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1683
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !11, !alias.scope !1684, !noundef !4
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  store i8 0, ptr %i.a, align 8, !noalias !1683
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !1683
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1683
  %i.q = invoke noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
          to label %.noexc3 unwind label %bb.h    ; 2 uses

.noexc3:                                          ; preds = %.noexc
  %.not25.i.i = icmp eq ptr %i.q, null
  br i1 %.not25.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.noexc3
  %.not.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.a, align 8, !range !5, !alias.scope !1685, !noalias !1683, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i: ; preds = %bb.e
  %i.t = invoke noundef nonnull align 8 ptr @_RNvNtCsdLkRf3gRIi6_10serde_json3ser17invalid_raw_value()
          to label %bb.i unwind label %bb.h

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.e
  %i.u = invoke noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o)
          to label %.noexc5 unwind label %bb.h    ; 2 uses

.noexc5:                                          ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %.not27.i.i = icmp eq ptr %i.u, null
  br i1 %.not27.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.noexc5, %bb.d
  %.sroa.033.0.copyload.i.i = load i8, ptr %i.a, align 8, !noalias !1683
  %i.v = trunc nuw i8 %.sroa.033.0.copyload.i.i to i1
  %.sroa.434.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !1683
  %i.w = icmp eq i8 %.sroa.434.0.copyload.i.i, 0
  %or.cond.i.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.536.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1683, !nonnull !4, !noundef !4
  %.val.i.i29.i.i = load ptr, ptr %.sroa.536.0.copyload.i.i, align 8, !noalias !1686, !nonnull !4, !align !16, !noundef !4
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i29.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 1)
          to label %bb.l unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, %.noexc, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #34
          to label %common.resume unwind label %bb.n

bb.i:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i, %.noexc5, %.noexc3
  %.sroa.0.0.i.i.ph = phi ptr [ %i.q, %.noexc3 ], [ %i.u, %.noexc5 ], [ %i.t, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1681
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i.ph, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.x, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.m

bb.l:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsdLkRf3gRIi6_10serde_json3ser6to_vecINtNtCsbakdBCgU4AF_16influxdb3_server4http12ErrorMessageuEEBK_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !9, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp samesign ugt i64 %i.g, 127
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1690
  store ptr %i.c, ptr %i.a, align 8, !noalias !1690
  %i.n = invoke noundef align 8 ptr @_RINvXNvNtCsbakdBCgU4AF_16influxdb3_server4https0_1__INtB5_12ErrorMessageuENtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #34
          to label %common.resume unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1690
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNtCsdLkRf3gRIi6_10serde_json4read5errorNtB2_9SliceReadNtNtCs1hWu9vWSLgD_16iox_query_params6params15StatementParamsECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { i64, i64 } @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i64 noundef %i.b, i64 noundef %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error9ErrorCodeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %2) #34
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtCsdLkRf3gRIi6_10serde_json4read5errorNtB2_9SliceReadNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v414MaxCardinalityECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { i64, i64 } @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.c)
  %i.e = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.d, 1
  ret { i64, ptr } %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error9ErrorCodeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %1) #34
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseCDlJsl44RV_5tokio4util6as_ref7upgradeNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
end_hunk_0
begin_hunk_1_@_RINvXNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBd_7HttpApi35clear_retention_period_for_database01__NtB5_20ClearRetentionPeriodNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtCscX1haOsHjXZ_16serde_urlencoded2de12DeserializerEBf_:bb.a
  %.sroa.337.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.337.0.copyload.i.i = load ptr, ptr %.sroa.337.0..sroa_idx.i.i, align 8, !noalias !1985
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1985
  br label %bb.ac

bb.aa:                                            ; preds = %.thread99.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1985
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtNtCs5CfTnloWo2c_10serde_core2de5value5ErrorENtB1t_12Deserializer15deserialize_anyNtNtB1t_5impls13StringVisitorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 2)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1998

bb.ab:                                            ; preds = %bb.aa
  %i.au = load i64, ptr %i.h, align 8, !range !11, !noalias !1985, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !1985 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noalias !1985 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1985
  br i1 %i.av, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.337.0.i.i = phi ptr [ %.sroa.337.0.copyload.i.i, %bb.z ], [ %i.ax, %bb.ab ]
  %.sroa.035.0.i.i = phi i64 [ %i.w, %bb.z ], [ %i.au, %bb.ab ]
  %.sroa.4.0.i.i = phi i64 [ %.sroa.4.0.copyload.i.i, %bb.z ], [ %i.az, %bb.ab ]
  store i64 %.sroa.035.0.i.i, ptr %0, align 8, !alias.scope !2025
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.337.0.i.i, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !alias.scope !2025
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i.i, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !alias.scope !2025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1985
  %i.ba = load i64, ptr %i.k, align 8, !range !22, !alias.scope !2026, !noalias !1982, !noundef !4
  %switch.i.i.i.i = icmp ugt i64 %i.ba, -3
  br i1 %switch.i.i.i.i, label %_RINvXs_NtCscX1haOsHjXZ_16serde_urlencoded2deNtB5_12DeserializerNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB2j_7HttpApi35clear_retention_period_for_database01__NtB2b_20ClearRetentionPeriodNtB11_11Deserialize11deserialize9___VisitorEB2l_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5CfTnloWo2c_10serde_core2de5value15MapDeserializerNtNtCscX1haOsHjXZ_16serde_urlencoded2de12PartIteratorNtBE_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.sink.split.i.i unwind label %bb.ae, !noalias !1998

bb.ae:                                            ; preds = %bb.ad
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %common.resume.i.i unwind label %bb.af, !noalias !1998

bb.af:                                            ; preds = %bb.ae
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !1998
  unreachable

common.resume.i.i:                                ; preds = %.body81.i.i, %bb.ah, %bb.ae
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bh, %bb.ah ], [ %i.bb, %bb.ae ], [ %.pn62.i.i, %.body81.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

.loopexit.i:                                      ; preds = %bb.q, %bb.ab, %bb.y, %bb.p, %bb.j
  %.lcssa184.sink.i.i = phi ptr [ %i.y, %bb.j ], [ %i.as, %bb.y ], [ %i.ax, %bb.ab ], [ %i.ag, %bb.p ], [ %i.ak, %bb.q ]
  %.sink.i.i = phi i64 [ %i.aa, %bb.j ], [ %i.at, %bb.y ], [ %i.az, %bb.ab ], [ %i.ah, %bb.p ], [ %i.al, %bb.q ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa184.sink.i.i, ptr %i.bd, align 8, !alias.scope !2025
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.i, ptr %i.be, align 8, !alias.scope !2025
  store i64 -1, ptr %0, align 8, !alias.scope !2025
  %i.bf = load i64, ptr %i.j, align 8, !range !11, !noalias !1985, !noundef !4
  %.not61.i.i = icmp eq i64 %i.bf, -1
  br i1 %.not61.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i, label %bb.aj

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5CfTnloWo2c_10serde_core2de5value15MapDeserializerNtNtCscX1haOsHjXZ_16serde_urlencoded2de12PartIteratorNtBE_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.sink.split.i.i: ; preds = %bb.ag, %bb.ad
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k), !noalias !1998
  br label %_RINvXs_NtCscX1haOsHjXZ_16serde_urlencoded2deNtB5_12DeserializerNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB2j_7HttpApi35clear_retention_period_for_database01__NtB2b_20ClearRetentionPeriodNtB11_11Deserialize11deserialize9___VisitorEB2l_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1985
  %i.bg = load i64, ptr %i.k, align 8, !range !22, !alias.scope !2027, !noalias !1982, !noundef !4
  %switch.i.i77.i.i = icmp ugt i64 %i.bg, -3
  br i1 %switch.i.i77.i.i, label %_RINvXs_NtCscX1haOsHjXZ_16serde_urlencoded2deNtB5_12DeserializerNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB2j_7HttpApi35clear_retention_period_for_database01__NtB2b_20ClearRetentionPeriodNtB11_11Deserialize11deserialize9___VisitorEB2l_.exit, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5CfTnloWo2c_10serde_core2de5value15MapDeserializerNtNtCscX1haOsHjXZ_16serde_urlencoded2de12PartIteratorNtBE_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.sink.split.i.i unwind label %bb.ah, !noalias !1998

bb.ah:                                            ; preds = %bb.ag
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %common.resume.i.i unwind label %bb.ai, !noalias !1998

bb.ai:                                            ; preds = %bb.ah
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !1998
  unreachable

bb.aj:                                            ; preds = %.loopexit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i unwind label %bb.ak, !noalias !1998

bb.ak:                                            ; preds = %bb.aj
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body81.i.i unwind label %bb.al, !noalias !1998

bb.al:                                            ; preds = %bb.ak
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !1998
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.aj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.am, !noalias !1998

.body81.i.i:                                      ; preds = %bb.an, %bb.am, %bb.ak, %.loopexit.split-lp.i.i
  %.pn62.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.loopexit.split-lp.i.i ], [ %.pn90.i.i, %bb.an ], [ %i.bl, %bb.am ], [ %i.bj, %bb.ak ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5CfTnloWo2c_10serde_core2de5value15MapDeserializerNtNtCscX1haOsHjXZ_16serde_urlencoded2de12PartIteratorNtBE_5ErrorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k) #34
          to label %common.resume.i.i unwind label %bb.ao, !noalias !1998

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body81.i.i

bb.an:                                            ; preds = %.thread.i.i, %.loopexit.split-lp.i.i
  %.pn90.i.i = phi { ptr, i32 } [ %eh.lpad-body75.i.i, %.thread.i.i ], [ %eh.lpad-body.i.i, %.loopexit.split-lp.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #34
          to label %.body81.i.i unwind label %bb.ao, !noalias !1998

bb.ao:                                            ; preds = %bb.an, %.body81.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !1998
  unreachable

_RINvXs_NtCscX1haOsHjXZ_16serde_urlencoded2deNtB5_12DeserializerNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB2j_7HttpApi35clear_retention_period_for_database01__NtB2b_20ClearRetentionPeriodNtB11_11Deserialize11deserialize9___VisitorEB2l_.exit: ; preds = %bb.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5CfTnloWo2c_10serde_core2de5value15MapDeserializerNtNtCscX1haOsHjXZ_16serde_urlencoded2de12PartIteratorNtBE_5ErrorEECsbakdBCgU4AF_16influxdb3_server.exit.sink.split.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1982
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs9h7Hq22ZyhR_15influxdb3_types5writes_1__NtB5_9PrecisionNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtCscX1haOsHjXZ_16serde_urlencoded2de4PartECsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtCscX1haOsHjXZ_16serde_urlencoded2deNtB6_4PartNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtCs9h7Hq22ZyhR_15influxdb3_types5writes_1__NtB21_9PrecisionNtBT_11Deserialize11deserialize9___VisitorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @42, i64 noundef 11)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCsbakdBCgU4AF_16influxdb3_server4https0_1__INtB5_12ErrorMessageuENtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !5, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !2043, !nonnull !4, !align !16, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 1), !noalias !2044
  store i8 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.d = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.a, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.a:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2045)
  %i.f = load i8, ptr %i.a, align 8, !range !5, !alias.scope !2045, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server.exit.thread, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server.exit

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server.exit.thread: ; preds = %bb.b
  %i.h = call noundef nonnull align 8 ptr @_RNvNtCsdLkRf3gRIi6_10serde_json3ser17invalid_raw_value(), !noalias !2046
  br label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b
  %i.i = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b) ; 2 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %bb.c, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.c:                                             ; preds = %bb.a, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.031.0.copyload = load i8, ptr %i.a, align 8
  %i.j = trunc nuw i8 %.sroa.031.0.copyload to i1
  %.sroa.432.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.k = icmp eq i8 %.sroa.432.0.copyload, 0
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.534.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.val.i.i27 = load ptr, ptr %.sroa.534.0.copyload, align 8, !noalias !2047, !nonnull !4, !align !16, !noundef !4
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i27, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 1), !noalias !2047
  br label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.d, %bb.c, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server.exit, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server.exit.thread
  %.sroa.0.0 = phi ptr [ %i.h, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server.exit.thread ], [ %i.i, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4NRVxsYgnAr_4core6option6OptionuEECsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.d, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit ], [ null, %bb.c ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCsbakdBCgU4AF_16influxdb3_server4https_1__NtB5_15V1ErrorResponseNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !2060, !nonnull !4, !align !16, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 1), !noalias !2061
  store i8 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.a, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.a:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.022.0.copyload = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %.sroa.022.0.copyload to i1
  %.sroa.423.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.d = icmp eq i8 %.sroa.423.0.copyload, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.525.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.val.i.i18 = load ptr, ptr %.sroa.525.0.copyload, align 8, !noalias !2062, !nonnull !4, !align !16, !noundef !4
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 1), !noalias !2062
  br label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %bb.a, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtCseuJFo0eutjj_19influxdb3_telemetry6sender1__NtB5_16TelemetryPayloadNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(392) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 80 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !2141, !nonnull !4, !align !16, !noundef !4
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 1), !noalias !2142
  store i8 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeINtNtBR_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.a, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.a:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit
  %i.e = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2143, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit179

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit179: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeINtNtBR_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g) ; 2 uses
  %.not138 = icmp eq ptr %i.h, null
  br i1 %.not138, label %bb.b, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.b:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit179
  %i.i = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2144, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit181

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit181: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeINtNtBR_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k) ; 2 uses
  %.not139 = icmp eq ptr %i.l, null
  br i1 %.not139, label %bb.c, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.c:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit181
  %i.m = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2145, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit183

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit183: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeINtNtBR_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o) ; 2 uses
  %.not140 = icmp eq ptr %i.p, null
  br i1 %.not140, label %bb.d, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.d:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit183
  %i.q = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2146, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldjECsbakdBCgU4AF_16influxdb3_server.exit

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldjECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryejECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) ; 2 uses
  %.not141 = icmp eq ptr %i.t, null
  br i1 %.not141, label %bb.e, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.e:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldjECsbakdBCgU4AF_16influxdb3_server.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = call fastcc noundef align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldReECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u) ; 2 uses
  %.not142 = icmp eq ptr %i.v, null
  br i1 %.not142, label %bb.f, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 388
  store ptr %i.w, ptr %i.a, align 8
  %i.x = call fastcc noundef align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNvXNvNtCseuJFo0eutjj_19influxdb3_telemetry6sender1__NtB31_16TelemetryPayloadNtB1Q_9Serialize9serialize15___SerializeWithECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %.not143 = icmp eq ptr %i.x, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not143, label %bb.g, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2147, !noundef !4
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeyECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa) ; 2 uses
  %.not144 = icmp eq ptr %i.ab, null
  br i1 %.not144, label %bb.h, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.h:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit
  %i.ac = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2148, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit187

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit187: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeINtNtBR_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae) ; 2 uses
  %.not145 = icmp eq ptr %i.af, null
  br i1 %.not145, label %bb.i, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.i:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldINtNtBX_4sync3ArceEECsbakdBCgU4AF_16influxdb3_server.exit187
  %i.ag = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2149, !noundef !4
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit189

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit189: ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeyECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai) ; 2 uses
  %.not146 = icmp eq ptr %i.aj, null
  br i1 %.not146, label %bb.j, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.j:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit189
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.al = call fastcc noundef align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldfECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ak) ; 2 uses
  %.not147 = icmp eq ptr %i.al, null
  br i1 %.not147, label %bb.k, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.an = call fastcc noundef align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldfECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.am) ; 2 uses
  %.not148 = icmp eq ptr %i.an, null
  br i1 %.not148, label %bb.l, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ap = call fastcc noundef align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldfECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ao) ; 2 uses
  %.not149 = icmp eq ptr %i.ap, null
  br i1 %.not149, label %bb.m, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2150, !noundef !4
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit191

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit191: ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.at = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeyECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as) ; 2 uses
  %.not150 = icmp eq ptr %i.at, null
  br i1 %.not150, label %bb.n, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.n:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit191
  %i.au = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2151, !noundef !4
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit193

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit193: ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ax = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeyECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 21, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw) ; 2 uses
  %.not151 = icmp eq ptr %i.ax, null
  br i1 %.not151, label %bb.o, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.o:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit193
  %i.ay = load i8, ptr %i.b, align 8, !range !5, !alias.scope !2152, !noundef !4
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit195

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldyECsbakdBCgU4AF_16influxdb3_server.exit195: ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
end_hunk_1
begin_hunk_2_@_RNvXNCNvNtCsbakdBCgU4AF_16influxdb3_server4http27record_batch_stream_to_body0NtB2_9CsvFutureNtNtNtCs4NRVxsYgnAr_4core6future6future6Future4poll:bb.a
.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.de:                                            ; preds = %bb.dd
  %i.rh = load ptr, ptr %i.jt, align 8, !alias.scope !3477, !noalias !3475, !nonnull !4, !noundef !4
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %i.rc
  store i64 %i.ql, ptr %i.ri, align 8, !noalias !3433
  %i.rj = load i64, ptr %i.jn, align 8, !alias.scope !3477, !noalias !3475, !noundef !4
  %i.rk = add i64 %i.rj, 1
  store i64 %i.rk, ptr %i.jn, align 8, !alias.scope !3477, !noalias !3475
  %i.rl = icmp eq ptr %i.kx, %i.kq
  br i1 %i.rl, label %._crit_edge.i, label %.lr.ph.i

bb.df:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i, i64 24, i1 false), !noalias !3455
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3432
  br label %bb.br

bb.dg:                                            ; preds = %bb.br
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jf, i64 noundef 88, i64 noundef 8) #37, !noalias !3433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3432
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.dh, !noalias !3433

bb.dh:                                            ; preds = %bb.dg
  %i.rm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body105.i unwind label %bb.di, !noalias !3433

bb.di:                                            ; preds = %bb.dh
  %i.rn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3433
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.dg
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.aq, !noalias !3433

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3432
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5awwBqsmTVL_10arrow_cast7display14ArrayFormatterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5awwBqsmTVL_10arrow_cast7display14ArrayFormatterEECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.dj, !noalias !3433

bb.dj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.ro = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5awwBqsmTVL_10arrow_cast7display14ArrayFormatterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.thread unwind label %bb.dk, !noalias !3433

bb.dk:                                            ; preds = %bb.dj
  %i.rp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3433
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5awwBqsmTVL_10arrow_cast7display14ArrayFormatterEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5awwBqsmTVL_10arrow_cast7display14ArrayFormatterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.noexc41 unwind label %.body.thread78

.noexc41:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5awwBqsmTVL_10arrow_cast7display14ArrayFormatterEECsbakdBCgU4AF_16influxdb3_server.exit.i, %bb.ao
  %.sroa.0.0 = phi i64 [ %i.hy, %bb.ao ], [ %.sroa.0.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5awwBqsmTVL_10arrow_cast7display14ArrayFormatterEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3432
  br label %_RNvMNtCsaHf3IsZo6b_9arrow_csv6writerINtB2_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE5writeCsbakdBCgU4AF_16influxdb3_server.exit

bb.dl:                                            ; preds = %.body91.i, %.body85.i, %.body105.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECsbakdBCgU4AF_16influxdb3_server.exit.i, %bb.aa
  %i.rq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3433
  unreachable

bb.dm:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload68 = load i64, ptr %i.p, align 8, !noalias !3455
  %.sroa.10.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx70, i64 24, i1 false), !noalias !3455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3432
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit109.i unwind label %bb.dn, !noalias !3433

bb.dn:                                            ; preds = %bb.dm
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body.thread unwind label %bb.do, !noalias !3433

bb.do:                                            ; preds = %bb.dn
  %i.rs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3433
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit109.i: ; preds = %bb.dm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc42 unwind label %.body.thread78

.noexc42:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3432
  br label %_RNvMNtCsaHf3IsZo6b_9arrow_csv6writerINtB2_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE5writeCsbakdBCgU4AF_16influxdb3_server.exit

bb.dp:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.j

.body.thread78:                                   ; preds = %bb.dq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit109.i, %bb.n, %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i, %bb.k, %bb.bl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5awwBqsmTVL_10arrow_cast7display14ArrayFormatterEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.g, %bb.h, %bb.fc, %_RNvMNtCsaHf3IsZo6b_9arrow_csv6writerINtB2_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE10into_innerCsbakdBCgU4AF_16influxdb3_server.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i38.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread74

_RNvMNtCsaHf3IsZo6b_9arrow_csv6writerINtB2_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE5writeCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.noexc42, %.noexc41
  %.sroa.0.2 = phi i64 [ %.sroa.0.0.copyload68, %.noexc42 ], [ %.sroa.0.0, %.noexc41 ] ; 2 uses
  %.not35 = icmp eq i64 %.sroa.0.2, -1
  br i1 %.not35, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_RNvMNtCsaHf3IsZo6b_9arrow_csv6writerINtB2_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE5writeCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %.sroa.0.2, ptr %i.ag, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvXs2_NtCslWccy9wMl4f_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCsj9JzdWj4GcM_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ag)
          to label %bb.fc unwind label %.body.thread78

bb.dr:                                            ; preds = %_RNvMNtCsaHf3IsZo6b_9arrow_csv6writerINtB2_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE5writeCsbakdBCgU4AF_16influxdb3_server.exit.thread, %_RNvMNtCsaHf3IsZo6b_9arrow_csv6writerINtB2_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE5writeCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.ac, ptr noundef nonnull align 8 dereferenceable(528) %i.ak, i64 528, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  call void @llvm.experimental.noalias.scope.decl(metadata !3479)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull align 8 dereferenceable(376) %i.ak, i64 376, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3481)
  call void @llvm.experimental.noalias.scope.decl(metadata !3482)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 2 uses
  store i8 1, ptr %i.rt, align 1, !alias.scope !3483, !noalias !3480
  %i.ru = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 4 uses
  %i.rv = load i64, ptr %i.ru, align 8, !range !11, !alias.scope !3483, !noalias !3480, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.rv, -1
  br i1 %.not.i.i.i.i, label %.invoke.i.i, label %bb.ds, !prof !10

bb.ds:                                            ; preds = %bb.dr
  %i.rw = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.rx = load i64, ptr %i.rw, align 8, !alias.scope !3483, !noalias !3480, !noundef !4 ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.rz = load i64, ptr %i.ry, align 8, !alias.scope !3483, !noalias !3480, !noundef !4 ; 2 uses
  %.not6.i.i.i.i = icmp ugt i64 %i.rx, %i.rz
  br i1 %.not6.i.i.i.i, label %bb.dt, label %_RNvMs2_NtCsjEnfTjJ0OqM_3csv6writerINtB5_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE9flush_bufCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, !prof !19

bb.dt:                                            ; preds = %bb.ds
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.rx, i64 noundef %i.rz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #35
          to label %.noexc12.i.i unwind label %bb.du, !noalias !3484

.noexc12.i.i:                                     ; preds = %bb.dt
  unreachable

_RNvMs2_NtCsjEnfTjJ0OqM_3csv6writerINtB5_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE9flush_bufCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.ds
  %i.sa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.sb = load ptr, ptr %i.sa, align 8, !alias.scope !3483, !noalias !3480, !nonnull !4, !noundef !4
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ru, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sb, i64 noundef range(i64 0, -9223372036854775808) %i.rx)
          to label %.noexc13.i.i unwind label %bb.du, !noalias !3485

.noexc13.i.i:                                     ; preds = %_RNvMs2_NtCsjEnfTjJ0OqM_3csv6writerINtB5_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE9flush_bufCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  store i8 0, ptr %i.rt, align 1, !alias.scope !3483, !noalias !3480
  store i64 0, ptr %i.rw, align 8, !alias.scope !3483, !noalias !3480
  %i.sc = load i64, ptr %i.ru, align 8, !range !11, !alias.scope !3486, !noalias !3480, !noundef !4 ; 2 uses
  %.not.i.i.i47 = icmp eq i64 %i.sc, -1
  br i1 %.not.i.i.i47, label %.invoke.i.i, label %bb.dv, !prof !10

.invoke.i.i:                                      ; preds = %.noexc13.i.i, %bb.dr
  %i.sd = phi ptr [ @173, %bb.dr ], [ @172, %.noexc13.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sd) #35
          to label %.cont.i.i unwind label %bb.du, !noalias !3485

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.du:                                            ; preds = %.invoke.i.i, %_RNvMs2_NtCsjEnfTjJ0OqM_3csv6writerINtB5_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE9flush_bufCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %bb.dt
  %i.se = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsjEnfTjJ0OqM_3csv6writer6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(376) %i.a) #34
          to label %.body.i43 unwind label %bb.dw, !noalias !3485

bb.dv:                                            ; preds = %.noexc13.i.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !alias.scope !3487, !noalias !3480
  store i64 -1, ptr %i.ru, align 8, !alias.scope !3482, !noalias !3480
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsjEnfTjJ0OqM_3csv6writer6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(376) %i.a)
          to label %bb.dy unwind label %bb.dx, !noalias !3478

bb.dw:                                            ; preds = %bb.du
  %i.sf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3485
  unreachable

bb.dx:                                            ; preds = %bb.dv
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i43

.body.i43:                                        ; preds = %bb.dx, %bb.du
  %eh.lpad-body.i44 = phi { ptr, i32 } [ %i.se, %bb.du ], [ %i.sg, %bb.dx ]
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ac, i64 376
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.sh) #34
          to label %bb.ex unwind label %bb.ew, !noalias !3478

bb.dy:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3480
  store i64 %i.sc, ptr %i.ad, align 8, !alias.scope !3488
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !alias.scope !3489, !noalias !3479
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.si = getelementptr inbounds nuw i8, ptr %i.ac, i64 376 ; 4 uses
  %i.sj = load i64, ptr %i.si, align 8, !range !11, !alias.scope !3490, !noundef !4
  %i.sk = icmp eq i64 %i.sj, -1
  br i1 %i.sk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.si)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.ea, !noalias !3478

bb.ea:                                            ; preds = %bb.dz
  %i.sl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.si)
          to label %.body11.i unwind label %bb.eb, !noalias !3478

bb.eb:                                            ; preds = %bb.ea
  %i.sm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3478
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.dz
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.si)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.ec, !noalias !3478

bb.ec:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

.body11.i:                                        ; preds = %bb.ec, %bb.ea
  %eh.lpad-body12.i = phi { ptr, i32 } [ %i.sn, %bb.ec ], [ %i.sl, %bb.ea ]
  %i.so = getelementptr inbounds nuw i8, ptr %i.ac, i64 400
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.so) #34
          to label %.body15.i unwind label %bb.ew, !noalias !3478

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.dy
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ac, i64 400 ; 4 uses
  %i.sq = load i64, ptr %i.sp, align 8, !range !11, !alias.scope !3491, !noundef !4
  %i.sr = icmp eq i64 %i.sq, -1
  br i1 %i.sr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit18.i, label %bb.ed

bb.ed:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.sp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i14.i unwind label %bb.ee, !noalias !3478

bb.ee:                                            ; preds = %bb.ed
  %i.ss = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.sp)
          to label %.body15.i unwind label %bb.ef, !noalias !3478

bb.ef:                                            ; preds = %bb.ee
  %i.st = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3478
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i14.i: ; preds = %bb.ed
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.sp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit18.i unwind label %bb.eg, !noalias !3478

.body15.i:                                        ; preds = %bb.eg, %bb.ee, %.body11.i
  %.pn.i48 = phi { ptr, i32 } [ %eh.lpad-body12.i, %.body11.i ], [ %i.sv, %bb.eg ], [ %i.ss, %bb.ee ]
  %i.su = getelementptr inbounds nuw i8, ptr %i.ac, i64 424
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.su) #34
          to label %.body21.i unwind label %bb.ew, !noalias !3478

bb.eg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i14.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.body15.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit18.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i14.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ac, i64 424 ; 4 uses
  %i.sx = load i64, ptr %i.sw, align 8, !range !11, !alias.scope !3492, !noundef !4
  %i.sy = icmp eq i64 %i.sx, -1
  br i1 %i.sy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit24.i, label %bb.eh

bb.eh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit18.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.sw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i20.i unwind label %bb.ei, !noalias !3478

bb.ei:                                            ; preds = %bb.eh
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.sw)
          to label %.body21.i unwind label %bb.ej, !noalias !3478

bb.ej:                                            ; preds = %bb.ei
  %i.ta = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3478
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i20.i: ; preds = %bb.eh
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.sw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit24.i unwind label %bb.ek, !noalias !3478

.body21.i:                                        ; preds = %bb.ek, %bb.ei, %.body15.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i48, %.body15.i ], [ %i.tc, %bb.ek ], [ %i.sz, %bb.ei ]
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ac, i64 448
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.tb) #34
          to label %.body27.i unwind label %bb.ew, !noalias !3478

bb.ek:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i20.i
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %.body21.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit24.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i20.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit18.i
  %i.td = getelementptr inbounds nuw i8, ptr %i.ac, i64 448 ; 4 uses
  %i.te = load i64, ptr %i.td, align 8, !range !11, !alias.scope !3493, !noundef !4
  %i.tf = icmp eq i64 %i.te, -1
  br i1 %i.tf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit30.i, label %bb.el

bb.el:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit24.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.td)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i26.i unwind label %bb.em, !noalias !3478

bb.em:                                            ; preds = %bb.el
  %i.tg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.td)
          to label %.body27.i unwind label %bb.en, !noalias !3478

bb.en:                                            ; preds = %bb.em
  %i.th = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3478
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i26.i: ; preds = %bb.el
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.td)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit30.i unwind label %bb.eo, !noalias !3478

.body27.i:                                        ; preds = %bb.eo, %bb.em, %.body21.i
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %.body21.i ], [ %i.tj, %bb.eo ], [ %i.tg, %bb.em ]
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ac, i64 472
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.ti) #34
          to label %.body33.i unwind label %bb.ew, !noalias !3478

bb.eo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i26.i
  %i.tj = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit30.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i26.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit24.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ac, i64 472 ; 4 uses
  %i.tl = load i64, ptr %i.tk, align 8, !range !11, !alias.scope !3494, !noundef !4
  %i.tm = icmp eq i64 %i.tl, -1
  br i1 %i.tm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit36.i, label %bb.ep

bb.ep:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit30.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i32.i unwind label %bb.eq, !noalias !3478

bb.eq:                                            ; preds = %bb.ep
  %i.tn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tk)
          to label %.body33.i unwind label %bb.er, !noalias !3478

bb.er:                                            ; preds = %bb.eq
  %i.to = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3478
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i32.i: ; preds = %bb.ep
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit36.i unwind label %bb.es, !noalias !3478

.body33.i:                                        ; preds = %bb.es, %bb.eq, %.body27.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body27.i ], [ %i.tq, %bb.es ], [ %i.tn, %bb.eq ]
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ac, i64 496
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(24) %i.tp) #34
          to label %.body.thread74 unwind label %bb.ew, !noalias !3478

bb.es:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i32.i
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit36.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i32.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit30.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ac, i64 496 ; 4 uses
  %i.ts = load i64, ptr %i.tr, align 8, !range !11, !alias.scope !3495, !noundef !4
  %i.tt = icmp eq i64 %i.ts, -1
  br i1 %i.tt, label %_RNvMNtCsaHf3IsZo6b_9arrow_csv6writerINtB2_6WriterINtNtCscdodAO9FK5_5alloc3vec3VechEE10into_innerCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.et

bb.et:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsbakdBCgU4AF_16influxdb3_server.exit36.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i38.i unwind label %bb.eu, !noalias !3478

bb.eu:                                            ; preds = %bb.et
end_hunk_2
begin_hunk_3_@_RNvXsb_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB5_15V2WriteApiErrorNtB5_12IntoResponse13into_response:bb.a

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @737, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @739) #35
          to label %.noexc.i71 unwind label %bb.ak, !noalias !3773

.noexc.i71:                                       ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3773
  unreachable

bb.ao:                                            ; preds = %bb.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ac

bb.ap:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3773
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr %i.w, ptr %i.x, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @4, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.v, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @825, ptr %i.di, align 8
  store i64 1, ptr %i.y, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 2, ptr %.sroa.517.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.df, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cn, ptr noundef nonnull %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #34
          to label %.body49 unwind label %bb.ad

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i76 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body49 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i76: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit80 unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit80: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ao

bb.au:                                            ; preds = %bb.ac
  %i.dn = load i64, ptr %i.r, align 8, !range !8, !noundef !4
  %i.do = trunc nuw i64 %i.dn to i1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !range !9, !noundef !4 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.do, label %bb.av, label %bb.aw, !prof !10

bb.av:                                            ; preds = %bb.au
  %i.ds = load i64, ptr %i.dr, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dq, i64 %i.ds) #35
          to label %bb.bi unwind label %bb.d

bb.aw:                                            ; preds = %bb.au
  %i.dt = load ptr, ptr %i.dr, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.du = icmp samesign ugt i64 %i.dq, 18
  call void @llvm.assume(i1 %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.dt, ptr noundef nonnull align 1 dereferenceable(19) @826, i64 19, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNtB5_12SpecToString14spec_to_stringBB_.exit, %bb.aw
  %.sroa.0.0.i48131 = phi i16 [ 401, %bb.aw ], [ %.sroa.0.0.i48.ph, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNtB5_12SpecToString14spec_to_stringBB_.exit ]
  %.sroa.0.0.i115129 = phi i8 [ 1, %bb.aw ], [ %.sroa.0.0.i115.ph, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNtB5_12SpecToString14spec_to_stringBB_.exit ]
  %.sroa.4.0 = phi i64 [ 19, %bb.aw ], [ %.sroa.4.0.copyload100, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNtB5_12SpecToString14spec_to_stringBB_.exit ]
  %.sroa.3.0 = phi ptr [ %i.dt, %bb.aw ], [ %.sroa.3.0.copyload97, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNtB5_12SpecToString14spec_to_stringBB_.exit ]
  %.sroa.093.0 = phi i64 [ %i.dq, %bb.aw ], [ %.sroa.093.0.copyload94, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNtB5_12SpecToString14spec_to_stringBB_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store i8 %.sroa.0.0.i115129, ptr %i.dv, align 8
  store i64 %.sroa.093.0, ptr %i.u, align 8
  %.sroa.3.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx95, align 8
  %.sroa.4.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx98, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3774
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc83 unwind label %.body88

.noexc83:                                         ; preds = %bb.ax
  %i.dw = load i64, ptr %i.d, align 8, !range !8, !noalias !3774, !noundef !4
  %i.dx = trunc nuw i64 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !9, !noalias !3774, !noundef !4 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.dx, label %bb.ay, label %bb.az, !prof !10

bb.ay:                                            ; preds = %.noexc83
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !3774
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dz, i64 %i.eb) #35
          to label %.noexc84 unwind label %.body88

.noexc84:                                         ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %.noexc83
  %i.ec = load ptr, ptr %i.ea, align 8, !noalias !3774, !nonnull !4, !noundef !4
  %i.ed = icmp samesign ugt i64 %i.dz, 127
  call void @llvm.assume(i1 %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3774
  store i64 %i.dz, ptr %i.e, align 8, !noalias !3774
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ec, ptr %i.ee, align 8, !noalias !3774
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.ef, align 8, !noalias !3774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3775
  store ptr %i.e, ptr %i.c, align 8, !noalias !3775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3776
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 1)
          to label %.noexc.i81 unwind label %bb.bd, !noalias !3774

.noexc.i81:                                       ; preds = %bb.az
  store i8 0, ptr %i.b, align 8, !noalias !3776
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !3776
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3776
  %i.eg = invoke noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsbakdBCgU4AF_16influxdb3_server4http16V2WriteErrorCodeEB2Q_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dv)
          to label %.noexc3.i unwind label %bb.bd, !noalias !3777 ; 2 uses

.noexc3.i:                                        ; preds = %.noexc.i81
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %.noexc3.i
  %i.eh = load i8, ptr %i.b, align 8, !range !5, !alias.scope !3778, !noalias !3776, !noundef !4
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i.i, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i.i: ; preds = %bb.ba
  %i.ej = invoke noundef nonnull align 8 ptr @_RNvNtCsdLkRf3gRIi6_10serde_json3ser17invalid_raw_value()
          to label %bb.be unwind label %bb.bd, !noalias !3777

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.ba
  %i.ek = invoke noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %.noexc5.i unwind label %bb.bd, !noalias !3777 ; 2 uses

.noexc5.i:                                        ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %.not21.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not21.i.i.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %.noexc5.i
  %.sroa.027.0.copyload.i.i.i = load i8, ptr %i.b, align 8, !noalias !3776
  %i.el = trunc nuw i8 %.sroa.027.0.copyload.i.i.i to i1
  %.sroa.428.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !3776
  %i.em = icmp eq i8 %.sroa.428.0.copyload.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.el, i1 true, i1 %i.em
  br i1 %or.cond.i.i.i, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.530.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3776, !nonnull !4, !noundef !4
  %.val.i.i23.i.i.i = load ptr, ptr %.sroa.530.0.copyload.i.i.i, align 8, !noalias !3779, !nonnull !4, !align !16, !noundef !4
  invoke void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i23.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 1)
          to label %bb.bj unwind label %bb.bd, !noalias !3777

bb.bd:                                            ; preds = %bb.bc, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i.i, %.noexc.i81, %bb.az
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #34
          to label %.body unwind label %bb.bh, !noalias !3777

bb.be:                                            ; preds = %.noexc5.i, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i.i, %.noexc3.i
  %.sroa.0.0.i.i.ph.i = phi ptr [ %i.eg, %.noexc3.i ], [ %i.ek, %.noexc5.i ], [ %i.ej, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3775
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i82 unwind label %bb.bf, !noalias !3777

bb.bf:                                            ; preds = %bb.be
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.bg, !noalias !3777

bb.bg:                                            ; preds = %bb.bf
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3777
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i82: ; preds = %bb.be
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %.body88

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3774
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bd
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3777
  unreachable

bb.bi:                                            ; preds = %bb.av
  unreachable

.body:                                            ; preds = %bb.bx, %bb.bw, %.body88, %bb.bl, %bb.bd, %bb.bf, %bb.cc
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.cc ], [ %lpad.thr_comm.split-lp, %.body88 ], [ %i.en, %bb.bd ], [ %i.fe, %bb.bx ], [ %i.eo, %bb.bf ], [ %i.es, %bb.bl ], [ %i.fe, %bb.bw ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbakdBCgU4AF_16influxdb3_server4http15V2ErrorResponseEBF_(ptr noalias noundef align 8 dereferenceable(32) %i.u) #34
          to label %.body49 unwind label %bb.ad

bb.bj:                                            ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3775
  %.sroa.0102.0.copyload103 = load i64, ptr %i.e, align 8, !noalias !3780 ; 2 uses
  %.sroa.6.0.copyload105 = load ptr, ptr %i.ee, align 8, !noalias !3780 ; 2 uses
  %.sroa.8.0.copyload108 = load i64, ptr %i.ef, align 8, !noalias !3780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3774
  call void @llvm.experimental.noalias.scope.decl(metadata !3781)
  call void @llvm.experimental.noalias.scope.decl(metadata !3782)
  %i.er = icmp eq i64 %.sroa.0102.0.copyload103, -1
  br i1 %i.er, label %bb.bk, label %bb.bo, !prof !13

bb.bk:                                            ; preds = %.thread, %bb.bj
  %.sroa.6.0136 = phi ptr [ %.sroa.0.0.i.i.ph.i, %.thread ], [ %.sroa.6.0.copyload105, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3783
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0136) ]
  store ptr %.sroa.6.0136, ptr %i.m, align 8, !noalias !3783
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #35
          to label %bb.bm unwind label %bb.bl, !noalias !3783

bb.bl:                                            ; preds = %bb.bk
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #34
          to label %.body unwind label %bb.bn, !noalias !3783

bb.bm:                                            ; preds = %bb.bk
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36, !noalias !3783
  unreachable

bb.bo:                                            ; preds = %bb.bj
  store i64 %.sroa.0102.0.copyload103, ptr %i.t, align 8, !alias.scope !3783
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.6.0.copyload105, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3783
  %.sroa.8.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.8.0.copyload108, ptr %.sroa.8.0..sroa_idx106, align 8, !alias.scope !3783
  %i.eu = invoke { ptr, ptr } @_RINvCs4dh2fNjPIep_13iox_http_util22bytes_to_response_bodyINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.bp unwind label %.body88   ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.ev = extractvalue { ptr, ptr } %i.eu, 0      ; 6 uses
  %i.ew = extractvalue { ptr, ptr } %i.eu, 1      ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs2_NtCs6P5GRezSnwZ_4http8responseNtB5_5Parts3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.q)
          to label %bb.bq unwind label %bb.cc

.body88:                                          ; preds = %bb.bo, %bb.ax, %bb.ay, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsbakdBCgU4AF_16influxdb3_server.exit.i82, %bb.by
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.s, ptr noundef nonnull align 8 dereferenceable(112) %i.q, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder8and_thenNCINvB2_6statusNtNtB8_6status10StatusCodeE0ECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.p, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.s, i16 noundef %.sroa.0.0.i48131)
          to label %bb.br unwind label %bb.cc

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ev) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ew) ]
  %.sroa.020.0.copyload = load i64, ptr %i.p, align 8 ; 2 uses
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.522.0.copyload = load i8, ptr %.sroa.522.0..sroa_idx, align 8 ; 2 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %.sroa.625.0.copyload = load i8, ptr %.sroa.625.0..sroa_idx, align 1 ; 2 uses
  %i.ex = icmp eq i64 %.sroa.020.0.copyload, -1
  br i1 %i.ex, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %bb.br
  %i.ey = load ptr, ptr %i.ew, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void %i.ey(ptr noundef nonnull %i.ev)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !range !23, !invariant.load !4 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !range !24, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef range(i64 1, 0) %i.fa, i64 noundef range(i64 1, 536870913) %i.fd) #37
  br label %bb.by

bb.bw:                                            ; preds = %bb.bt
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !23, !invariant.load !4 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %.body, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !24, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ev, i64 noundef range(i64 1, 0) %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #37
  br label %.body

bb.by:                                            ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3784
  store i8 %.sroa.522.0.copyload, ptr %i.n, align 1, !noalias !3784
  %i.fk = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %.sroa.625.0.copyload, ptr %i.fk, align 1, !noalias !3784
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @828) #35
          to label %.noexc unwind label %.body88

.noexc:                                           ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.br
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(102) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(102) %.sroa.7.0..sroa_idx, i64 102, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3785)
  call void @llvm.experimental.noalias.scope.decl(metadata !3786)
  store i64 %.sroa.020.0.copyload, ptr %0, align 8, !alias.scope !3787
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.522.0.copyload, ptr %.sroa.6110.0..sroa_idx, align 8, !alias.scope !3787
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.625.0.copyload, ptr %.sroa.9.0..sroa_idx, align 1, !alias.scope !3787
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ev, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !3787
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ew, ptr %.sroa.14.0..sroa_idx, align 8, !alias.scope !3787
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.body49 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbakdBCgU4AF_16influxdb3_server4http15V2ErrorResponseEBF_.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbakdBCgU4AF_16influxdb3_server4http15V2ErrorResponseEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
  ret void

end_hunk_3
