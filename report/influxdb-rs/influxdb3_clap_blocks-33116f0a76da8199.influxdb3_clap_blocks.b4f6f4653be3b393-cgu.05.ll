Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_clap_blocks-33116f0a76da8199.influxdb3_clap_blocks.b4f6f4653be3b393-cgu.05?download=true
inline.NumInlined: 603
inline.NumDeleted: 253
begin_hunk_0_@_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsfxgMthLVlAZ_21influxdb3_clap_blocks:bb.a
  %i.e = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB5_4PeekINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3r_5ErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !align !26, !noundef !11 ; 14 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.pr.i = load i64, ptr %i.c, align 8, !noalias !11
  %.not15.i = icmp eq i64 %.pr.i, -2
  br i1 %.not15.i, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.sroa.5.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  call void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3r_5ErrorENtNtB1c_6marker4SendEL_EEEB2c_9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.e = load i64, ptr %i.b, align 8, !range !955, !noalias !956, !noundef !11 ; 4 uses
  %i.f = icmp eq i64 %i.e, -3
  br i1 %i.f, label %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not12.i = icmp eq i64 %i.e, -2
  %.pr.i6.pr = load i64, ptr %i.c, align 8, !noalias !11 ; 2 uses
  br i1 %.not12.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.pr.i6.pr, -2
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i unwind label %bb.f

common.resume:                                    ; preds = %bb.l, %bb.f
  %.sink = phi i64 [ %i.i, %bb.l ], [ %i.e, %bb.f ]
  %.sroa.5.0..sroa_idx.i12.sink = phi ptr [ %.sroa.5.0..sroa_idx.i12, %bb.l ], [ %.sroa.5.0..sroa_idx.i, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.l ], [ %i.h, %bb.f ]
  store i64 %.sink, ptr %i.c, align 8, !noalias !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx8.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i12.sink, i64 88, i1 false), !noalias !11
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !952, !noalias !958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx8.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i, i64 88, i1 false), !noalias !958
  br label %.thread

_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 28, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
  unreachable

.thread:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit15

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr null, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not15.i7 = icmp eq i64 %.pr.i6.pr, -2
  br i1 %.not15.i7, label %.lr.ph.i10, label %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit15

.lr.ph.i10:                                       ; preds = %bb.h
  call void @_RNvXs0_NtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4fuseINtB5_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3r_5ErrorENtNtB1c_6marker4SendEL_EEEB2c_9poll_nextCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.i = load i64, ptr %i.a, align 8, !range !955, !noalias !962, !noundef !11 ; 4 uses
  %i.j = icmp eq i64 %i.i, -3
  br i1 %i.j, label %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit15, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i10
  %.sroa.5.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not12.i13 = icmp eq i64 %i.i, -2
  br i1 %.not12.i13, label %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = load i64, ptr %i.c, align 8, !range !110, !alias.scope !964, !noalias !967, !noundef !11
  %i.l = icmp eq i64 %i.k, -2
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i14, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtBZ_5ErrorEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i14 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i14: ; preds = %bb.k, %bb.j
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !959, !noalias !967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx8.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i12, i64 88, i1 false), !noalias !967
  br label %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit15

_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit15: ; preds = %.thread, %bb.h, %.lr.ph.i10, %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i14
  %.sroa.3.0.i8 = phi ptr [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i14 ], [ undef, %.lr.ph.i10 ], [ %i.c, %bb.h ], [ null, %bb.i ], [ %i.c, %.thread ]
  %.sroa.0.0.i9 = phi i64 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB1l_5ErrorEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i14 ], [ 1, %.lr.ph.i10 ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit, %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit15
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.i8, %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit15 ], [ undef, %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i9, %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit15 ], [ 1, %_RNvMNtNtNtCs5SRHcsv2kA9_12futures_util6stream6stream4peekINtB2_8PeekableINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB1d_6result6ResultNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1d_6marker4SendEL_EEE9poll_peekCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsfxgMthLVlAZ_21influxdb3_clap_blocks11socket_addrNtB4_10SocketAddrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NtNtCs4NRVxsYgnAr_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 range(i64 4, 409) 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !917

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !968
  %i.n = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !968 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !968
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !968
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.s = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %i.s, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !983, !noalias !984, !nonnull !11, !noundef !11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !985
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !983, !noalias !984, !noundef !11 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !986
  %i.z = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.av, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1T_14AttributeValueEEENCNvMse_B1y_B1v_15clone_from_impl0EECsfxgMthLVlAZ_21influxdb3_clap_blocks(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #27
          to label %.body unwind label %bb.n, !noalias !983

bb.j:                                             ; preds = %_RNvYTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bd, %_RNvYTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ]
  %.sroa.013.027.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ] ; 2 uses
  %.sroa.814.025.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.an, %_RNvYTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ] ; 2 uses
  %.sroa.1015.024.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.025.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.013.027.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !989
  %i.ah = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -768 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ah to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %bb.j ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.025.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.1015.024.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !985
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.as = load i64, ptr %i.ar, align 8, !range !313, !alias.scope !1002, !noalias !1003, !noundef !11 ; 2 uses
  %i.at = icmp slt i64 %i.as, -9223372036854775802
  br i1 %i.at, label %switch.lookup.i.i, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar)
          to label %_RNvXsb_NtCs1LivM9IBWqb_12object_store10attributesNtB5_9AttributeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.i, !noalias !985

switch.lookup.i.i:                                ; preds = %.loopexit.i.i
  store i64 %i.as, ptr %i.a, align 8, !alias.scope !1004, !noalias !1005
  br label %_RNvXsb_NtCs1LivM9IBWqb_12object_store10attributesNtB5_9AttributeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i

_RNvXsb_NtCs1LivM9IBWqb_12object_store10attributesNtB5_9AttributeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i: ; preds = %switch.lookup.i.i, %bb.k
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 -24
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %_RNvYTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i unwind label %bb.l, !noalias !985

bb.l:                                             ; preds = %_RNvXsb_NtCs1LivM9IBWqb_12object_store10attributesNtB5_9AttributeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #27
          to label %.body.i.i unwind label %bb.m, !noalias !985

bb.m:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !985
  unreachable

_RNvYTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %_RNvXsb_NtCs1LivM9IBWqb_12object_store10attributesNtB5_9AttributeNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i
  %i.ax = ptrtoint ptr %i.ap to i64
  %i.ay = sub i64 %i.ad, %i.ax
  %i.az = sdiv exact i64 %i.ay, 48                ; 2 uses
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !985
  %i.bd = add nsw i64 %i.az, 1
  %i.be = icmp eq i64 %i.aq, 0
  br i1 %i.be, label %.loopexit, label %bb.j

bb.n:                                             ; preds = %.body.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !985
  unreachable

bb.o:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB1k_14AttributeValueEEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #27
          to label %bb.q unwind label %bb.p

.loopexit:                                        ; preds = %_RNvYTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtB5_14AttributeValueENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  store i64 %i.x, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !984, !noalias !983
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !983, !noalias !984, !noundef !11
  store i64 %i.bh, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !984, !noalias !983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.p:                                             ; preds = %.body
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.q:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtBT_5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 3 uses
  %i.f = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.f, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.g = shl nuw i64 %i.e, 5                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17                     ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %bb.e, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !917

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1006
  %i.l = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1006 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1006
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.i), !noalias !1006
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.o, %bb.f ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.q = icmp ult i64 %i.c, 8
  %i.r = lshr i64 %i.e, 3
  %i.s = mul nuw nsw i64 %i.r, 7
  %.sroa.07.0.i.i = select i1 %i.q, i64 %i.c, i64 %i.s
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.h, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.c, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.p, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !1021, !noalias !1022, !nonnull !11, !noundef !11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.t, i64 %.pre-phi, i1 false), !noalias !1023
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1021, !noalias !1022, !noundef !11 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !1024
  %i.x = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = ptrtoint ptr %i.t to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3s_4SyncEL_EEEENCNvMse_B1y_B1v_15clone_from_impl0EECsfxgMthLVlAZ_21influxdb3_clap_blocks(i64 %.sroa.012.029.i.i, ptr nonnull align 8 dereferenceable(32) %i.a) #27
          to label %.body unwind label %bb.l, !noalias !1021

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.012.029.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %bb.k ]
  %.sroa.013.028.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.k ] ; 2 uses
  %.sroa.6.027.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.k ] ; 2 uses
  %.sroa.814.026.i.i = phi i16 [ %i.y, %.lr.ph.i.i ], [ %i.aq, %bb.k ] ; 2 uses
  %.sroa.1015.025.i.i = phi i64 [ %i.v, %.lr.ph.i.i ], [ %i.ao, %bb.k ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.026.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ac = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.6.027.i.i, %bb.j ] ; 2 uses
  %i.ad = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.013.028.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !1027
  %i.ae = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -512 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ae to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.027.i.i, %bb.j ], [ %i.ag, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %bb.j ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.026.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [32 x i8], ptr %.sroa.013.1.i.i, i64 %i.aj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !1030, !noalias !1023
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %i.an = invoke { ptr, ptr } @_RNvXs2_NtCs6P5GRezSnwZ_4http10extensionsINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB5_8AnyCloneNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1r_4SyncEL_ENtNtB1t_5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.k unwind label %bb.i, !noalias !1023 ; 2 uses

bb.k:                                             ; preds = %.loopexit.i.i
  %i.ao = add i64 %.sroa.1015.025.i.i, -1         ; 2 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = and i16 %i.ap, %.lcssa.i.i.i
  %i.ar = extractvalue { ptr, ptr } %i.an, 0
  %i.as = extractvalue { ptr, ptr } %i.an, 1
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = sub i64 %i.aa, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !noalias !1023
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ax, i64 -16
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1023
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ax, i64 -8
  store ptr %i.as, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !1023
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.az = add nsw i64 %i.av, 1
  %i.ba = icmp eq i64 %i.ao, 0
  br i1 %i.ba, label %.loopexit, label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1023
  unreachable

bb.m:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %bb.i
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2T_4SyncEL_EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit unwind label %bb.n

.loopexit:                                        ; preds = %bb.k, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  store i64 %i.v, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1022, !noalias !1021
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !1021, !noalias !1022, !noundef !11
  store i64 %i.bd, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1022, !noalias !1021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.n:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2T_4SyncEL_EEEECsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %.body
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 range(i64 4, 409) 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 4 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, !prof !917

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1037
  %i.n = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1037 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !1037
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !1037
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.s = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %i.s, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !1052, !noalias !1053, !nonnull !11, !noundef !11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !1054
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !1052, !noalias !1053, !noundef !11 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !1055
  %i.z = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.at, %bb.k ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1R_EEENCNvMse_B1y_B1v_15clone_from_impl0EECsfxgMthLVlAZ_21influxdb3_clap_blocks(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #27
          to label %.body unwind label %bb.m, !noalias !1052

bb.j:                                             ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ]
  %.sroa.013.027.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ] ; 2 uses
  %.sroa.814.025.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.an, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ] ; 2 uses
  %.sroa.1015.024.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.025.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.013.027.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !1058
  %i.ah = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -768 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ah to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %bb.j ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.025.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.1015.024.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1054
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -48
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar)
          to label %.noexc.i.i unwind label %bb.i, !noalias !1054

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -24
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i unwind label %bb.k, !noalias !1054

bb.k:                                             ; preds = %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #27
          to label %.body.i.i unwind label %bb.l, !noalias !1054

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1054
  unreachable

_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i: ; preds = %.noexc.i.i
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.ad, %i.av
  %i.ax = sdiv exact i64 %i.aw, 48                ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1054
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1054
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1i_EEECsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(32) %i.b) #27
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit.i.i, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCsfxgMthLVlAZ_21influxdb3_clap_blocks.exit
  store i64 %i.x, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !1053, !noalias !1052
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !1052, !noalias !1053, !noundef !11
  store i64 %i.bf, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1053, !noalias !1052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB7_2fs4FileENtB5_4Read4readCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a, %bb.f
  %.sroa.4.0 = phi ptr [ %i.i, %bb.f ], [ null, %bb.a ], [ %i.i, %bb.c ]
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.a ], [ 1, %bb.c ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.e

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.b, i64 range(i64 0, -9223372036854775808) %2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call { i64, ptr } @_RNvXsa_NtCs2AWtUsOyxgP_3std2fsNtB5_4FileNtNtB7_2io4Read4read(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f, ptr noalias noundef nonnull %1, i64 noundef %.sroa.0.0.i) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = trunc nuw i64 %i.h to i1
  br i1 %i.k, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %.not9 = icmp ult i64 %i.l, %i.j
  br i1 %.not9, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = sub nuw i64 %i.l, %i.j
  store i64 %i.m, ptr %i.a, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCsfxgMthLVlAZ_21influxdb3_clap_blocks(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
end_hunk_0
