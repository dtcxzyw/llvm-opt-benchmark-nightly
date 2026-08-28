Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.08?download=true
inline.NumInlined: 6681
inline.NumDeleted: 2341
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.u = call { i64, i64 } %i.t(ptr noundef nonnull %i.q), !noalias !12687, !inline_history !12690 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner12decode_chunk(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(232) %1, i64 noundef %i.v, i64 noundef %i.w), !noalias !12689
  %i.x = load i64, ptr %i.d, align 8, !range !43, !noalias !12687, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr %i.k, align 8, !noalias !12687, !align !69, !noundef !3 ; 3 uses
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12687
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.l, align 8, !noalias !12687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12687
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12687
  store ptr %i.z, ptr %i.c, align 8, !noalias !12687
  store i64 %i.aa, ptr %i.m, align 8, !noalias !12687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12687
  %i.ab = load ptr, ptr %i.i, align 8, !alias.scope !12684, !noalias !12689, !nonnull !3, !noundef !3
  %i.ac = load ptr, ptr %i.j, align 8, !alias.scope !12684, !noalias !12689, !nonnull !3, !align !69, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !3, !noalias !12689, !nonnull !3
  call void %i.ae(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !12689, !inline_history !12690
  %i.af = load i64, ptr %i.b, align 8, !range !1229, !noalias !12687, !noundef !3 ; 4 uses
  %i.ag = icmp eq i64 %i.af, -2
  %i.ah = load ptr, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !12687 ; 3 uses
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12687
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.522.0..sroa_idx.i, i64 40, i1 false), !noalias !12687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12687
  %.not26.i = icmp eq i64 %i.af, -1
  br i1 %.not26.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12687
  store i64 %i.af, ptr %i.a, align 8, !noalias !12687
  store ptr %i.ah, ptr %.sroa.311.0..sroa_idx.i, align 8, !noalias !12687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false), !noalias !12687
  %i.ai = load i8, ptr %i.f, align 8, !range !76, !alias.scope !12691, !noalias !12689, !noundef !3
  %switch.i.i = icmp samesign ult i8 %i.ai, 2
  br i1 %switch.i.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.n, align 8, !alias.scope !12694, !noalias !12689, !align !69, !noundef !3
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.k, !noalias !12689

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.f, align 8, !alias.scope !12684, !noalias !12689
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(56) %i.a) #44
          to label %common.resume unwind label %bb.l, !noalias !12689

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45, !noalias !12689
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.z ], [ %i.al, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.h, %bb.i, %bb.j
  store i8 0, ptr %i.f, align 8, !alias.scope !12684, !noalias !12689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12687
  br label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68.sink.split

bb.m:                                             ; preds = %bb.y, %bb.aa, %bb.p, %._crit_edge
  ret void

.loopexit:                                        ; preds = %bb.f, %bb.c
  %.sroa.10.1.ph = phi ptr [ %i.ah, %bb.f ], [ %i.z, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.1.ph) ]
  br label %bb.p

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68.sink.split: ; preds = %bb.g, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit
  %.sroa.0.172.ph = phi i64 [ %i.af, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ -1, %bb.g ]
  %.sroa.10.171.ph = phi ptr [ %i.ah, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ undef, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12687
  br label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68: ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68.sink.split, %bb.d
  %.sroa.0.172 = phi i64 [ -1, %bb.d ], [ %.sroa.0.172.ph, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68.sink.split ] ; 2 uses
  %.sroa.10.171 = phi ptr [ undef, %bb.d ], [ %.sroa.10.171.ph, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %.not = icmp eq i64 %.sroa.0.172, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, i64 40, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner10poll_frame(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(216) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.an = load i8, ptr %i.e, align 8, !range !76, !noundef !3
  switch i8 %i.an, label %bb.r [
    i8 2, label %bb.q
    i8 0, label %bb.s
  ]

bb.p:                                             ; preds = %bb.n, %.loopexit
  %.sroa.0.172.sink = phi i64 [ %.sroa.0.172, %bb.n ], [ -1, %.loopexit ]
  %.sroa.10.171.sink = phi ptr [ %.sroa.10.171, %bb.n ], [ %.sroa.10.1.ph, %.loopexit ]
  store i64 %.sroa.0.172.sink, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.171.sink, ptr %.sroa.423.0..sroa_idx, align 8
  br label %bb.m

bb.q:                                             ; preds = %bb.o
  store i64 -3, ptr %0, align 8
  br label %bb.aa

bb.r:                                             ; preds = %bb.o
  %.sroa.331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.331.0.copyload = load ptr, ptr %.sroa.331.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  store i64 -1, ptr %0, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.331.0.copyload, ptr %.sroa.456.0..sroa_idx, align 8
  br label %bb.aa

bb.s:                                             ; preds = %bb.o
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 1
  %i.ao = trunc nuw i8 %.sroa.2.0.copyload to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.ao, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = call noundef align 8 ptr @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner8response(ptr noalias noundef nonnull align 8 dereferenceable(216) %1) ; 3 uses
  %.not61 = icmp eq ptr %i.ap, null
  br i1 %.not61, label %bb.y, label %bb.v

bb.u:                                             ; preds = %bb.s
  %.pre = load i8, ptr %i.f, align 8, !range !76
  %i.aq = icmp eq i8 %.pre, 2
  br i1 %i.aq, label %._crit_edge, label %bb.b

bb.v:                                             ; preds = %bb.t
  %i.ar = load i8, ptr %i.f, align 8, !range !76, !alias.scope !12697, !noundef !3
  %switch.i = icmp samesign ult i8 %i.ar, 2
  br i1 %switch.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = load ptr, ptr %i.n, align 8, !alias.scope !12700, !align !69, !noundef !3
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %.thread unwind label %bb.z

bb.y:                                             ; preds = %bb.t
  store i64 -2, ptr %0, align 8
  br label %bb.m

bb.z:                                             ; preds = %bb.x
  %i.au = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.f, align 8
  store ptr %i.ap, ptr %i.n, align 8
  br label %common.resume

.thread:                                          ; preds = %bb.x, %bb.v, %bb.w
  store i8 2, ptr %i.f, align 8
  store ptr %i.ap, ptr %i.n, align 8
  br label %._crit_edge

bb.aa:                                            ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(232) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.8 = alloca [8 x i8], align 8             ; 7 uses
  %.sroa.17 = alloca [8 x i8], align 8            ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 8 uses
  %i.f = load i8, ptr %i.e, align 8, !range !76, !noundef !3
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.u, %.thread, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !align !69, !noundef !3 ; 2 uses
  store ptr null, ptr %i.o, align 8
  %.not50 = icmp ne ptr %i.p, null
  %spec.select = zext i1 %.not50 to i64
  store i64 %spec.select, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.experimental.noalias.scope.decl(metadata !12703)
  call void @llvm.experimental.noalias.scope.decl(metadata !12706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12708
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !12706, !noalias !12703, !nonnull !3, !noundef !3
  %i.r = load ptr, ptr %i.i, align 8, !alias.scope !12706, !noalias !12703, !nonnull !3, !align !69, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !3, !noalias !12708, !nonnull !3
  %i.u = call { i64, i64 } %i.t(ptr noundef nonnull %i.q), !noalias !12708, !inline_history !12709 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner12decode_chunk(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(232) %1, i64 noundef %i.v, i64 noundef %i.w), !noalias !12703
  %i.x = load i64, ptr %i.c, align 8, !range !43, !noalias !12708, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr %i.j, align 8, !noalias !12708, !align !69, !noundef !3 ; 3 uses
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12708
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.k, align 8, !noalias !12708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12708
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12708
  store ptr %i.z, ptr %i.b, align 8, !noalias !12708
  store i64 %i.aa, ptr %i.l, align 8, !noalias !12708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12708
  %i.ab = load ptr, ptr %i.h, align 8, !alias.scope !12706, !noalias !12703, !nonnull !3, !noundef !3
  %i.ac = load ptr, ptr %i.i, align 8, !alias.scope !12706, !noalias !12703, !nonnull !3, !align !69, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !3, !noalias !12703, !nonnull !3
  call void %i.ae(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !12703, !inline_history !12709
  %i.af = load i64, ptr %i.a, align 8, !range !43, !noalias !12708, !noundef !3
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = load ptr, ptr %i.m, align 8, !noalias !12708 ; 4 uses
  br i1 %i.ag, label %bb.f, label %bb.g

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12708
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %.sroa.420.sroa.0.0.copyload.i = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !12708 ; 2 uses
  %.sroa.420.sroa.4.0.copyload.i = load i64, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx.i, align 8, !noalias !12708 ; 2 uses
  %.sroa.420.sroa.5.0.copyload.i = load ptr, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx.i, align 8, !noalias !12708 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12708
  %.not23.i = icmp eq ptr %i.ah, null
  br i1 %.not23.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.e, align 8, !range !76, !alias.scope !12710, !noalias !12703, !noundef !3
  %switch.i.i = icmp samesign ult i8 %i.ai, 2
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.n, align 8, !alias.scope !12713, !noalias !12703, !align !69, !noundef !3
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.k, !noalias !12703

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.e, align 8, !alias.scope !12706, !noalias !12703
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !noalias !12716, !nonnull !3, !noundef !3
  invoke void %i.an(ptr noundef %.sroa.420.sroa.5.0.copyload.i, ptr noundef %.sroa.420.sroa.0.0.copyload.i, i64 noundef %.sroa.420.sroa.4.0.copyload.i)
          to label %common.resume unwind label %bb.l, !noalias !12703, !inline_history !12723

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  store i8 0, ptr %i.e, align 8, !alias.scope !12706, !noalias !12703
  store ptr %i.ah, ptr %.sroa.8, align 8, !alias.scope !12703, !noalias !12706
  br label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45, !noalias !12703
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.z ], [ %i.al, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.n, %bb.o, %bb.y, %bb.aa, %._crit_edge
  ret void

bb.n:                                             ; preds = %bb.c, %bb.f
  %.sroa.8.0..sroa.8.0..sroa.8.8. = phi ptr [ %i.z, %bb.c ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  store i64 1, ptr %0, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.0..sroa.8.0..sroa.8.8., ptr %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx, align 8
  br label %bb.m

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.sroa.16.0 = phi i64 [ undef, %bb.g ], [ %.sroa.420.sroa.4.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.14.0 = phi ptr [ undef, %bb.g ], [ %.sroa.420.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.8, %bb.g ], [ %.sroa.17, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.420.sroa.5.0.copyload.sink.i = phi ptr [ null, %bb.g ], [ %.sroa.420.sroa.5.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  store ptr %.sroa.420.sroa.5.0.copyload.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !12703, !noalias !12706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12708
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr = load ptr, ptr %.sroa.8, align 8 ; 2 uses
  %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.copyload.pre = load i64, ptr %.sroa.17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  %.not = icmp eq ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit
  store i64 1, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.4.sroa.4.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.0, ptr %.sroa.415.sroa.4.sroa.4.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.4.sroa.5.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.copyload.pre, ptr %.sroa.415.sroa.4.sroa.5.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.m

bb.p:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner10poll_frame(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(216) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.ap = load i8, ptr %i.d, align 8, !range !76, !noundef !3
  switch i8 %i.ap, label %bb.r [
    i8 2, label %bb.q
    i8 0, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i64 2, ptr %0, align 8
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.322.0.copyload = load ptr, ptr %.sroa.322.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  store i64 1, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.322.0.copyload, ptr %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx, align 8
  br label %bb.aa

bb.s:                                             ; preds = %bb.p
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 1
  %i.aq = trunc nuw i8 %.sroa.2.0.copyload to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.aq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = call noundef align 8 ptr @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner8response(ptr noalias noundef nonnull align 8 dereferenceable(216) %1) ; 3 uses
  %.not49 = icmp eq ptr %i.ar, null
  br i1 %.not49, label %bb.y, label %bb.v

bb.u:                                             ; preds = %bb.s
  %.pre = load i8, ptr %i.e, align 8, !range !76
  %i.as = icmp eq i8 %.pre, 2
  br i1 %i.as, label %._crit_edge, label %bb.b

bb.v:                                             ; preds = %bb.t
  %i.at = load i8, ptr %i.e, align 8, !range !76, !alias.scope !12724, !noundef !3
  %switch.i = icmp samesign ult i8 %i.at, 2
  br i1 %switch.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %i.n, align 8, !alias.scope !12727, !align !69, !noundef !3
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %.thread unwind label %bb.z

bb.y:                                             ; preds = %bb.t
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.z:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.e, align 8
  store ptr %i.ar, ptr %i.n, align 8
  br label %common.resume

.thread:                                          ; preds = %bb.x, %bb.v, %bb.w
  store i8 2, ptr %i.e, align 8
  store ptr %i.ar, ptr %i.n, align 8
  br label %._crit_edge

bb.aa:                                            ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(232) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.8 = alloca [8 x i8], align 8             ; 7 uses
  %.sroa.17 = alloca [8 x i8], align 8            ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 8 uses
  %i.f = load i8, ptr %i.e, align 8, !range !76, !noundef !3
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.u, %.thread, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !align !69, !noundef !3 ; 2 uses
  store ptr null, ptr %i.o, align 8
  %.not50 = icmp ne ptr %i.p, null
  %spec.select = zext i1 %.not50 to i64
  store i64 %spec.select, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.experimental.noalias.scope.decl(metadata !12730)
  call void @llvm.experimental.noalias.scope.decl(metadata !12733)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12735
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !12733, !noalias !12730, !nonnull !3, !noundef !3
  %i.r = load ptr, ptr %i.i, align 8, !alias.scope !12733, !noalias !12730, !nonnull !3, !align !69, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !3, !noalias !12735, !nonnull !3
  %i.u = call { i64, i64 } %i.t(ptr noundef nonnull %i.q), !noalias !12735, !inline_history !12736 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner12decode_chunk(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(232) %1, i64 noundef %i.v, i64 noundef %i.w), !noalias !12730
  %i.x = load i64, ptr %i.c, align 8, !range !43, !noalias !12735, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr %i.j, align 8, !noalias !12735, !align !69, !noundef !3 ; 3 uses
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12735
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.k, align 8, !noalias !12735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12735
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12735
  store ptr %i.z, ptr %i.b, align 8, !noalias !12735
  store i64 %i.aa, ptr %i.l, align 8, !noalias !12735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12735
  %i.ab = load ptr, ptr %i.h, align 8, !alias.scope !12733, !noalias !12730, !nonnull !3, !noundef !3
  %i.ac = load ptr, ptr %i.i, align 8, !alias.scope !12733, !noalias !12730, !nonnull !3, !align !69, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !3, !noalias !12730, !nonnull !3
  call void %i.ae(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !12730, !inline_history !12736
  %i.af = load i64, ptr %i.a, align 8, !range !43, !noalias !12735, !noundef !3
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = load ptr, ptr %i.m, align 8, !noalias !12735 ; 4 uses
  br i1 %i.ag, label %bb.f, label %bb.g

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12735
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %.sroa.420.sroa.0.0.copyload.i = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !12735 ; 2 uses
  %.sroa.420.sroa.4.0.copyload.i = load i64, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx.i, align 8, !noalias !12735 ; 2 uses
  %.sroa.420.sroa.5.0.copyload.i = load ptr, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx.i, align 8, !noalias !12735 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12735
  %.not23.i = icmp eq ptr %i.ah, null
  br i1 %.not23.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.e, align 8, !range !76, !alias.scope !12737, !noalias !12730, !noundef !3
  %switch.i.i = icmp samesign ult i8 %i.ai, 2
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.n, align 8, !alias.scope !12740, !noalias !12730, !align !69, !noundef !3
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.k, !noalias !12730

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.e, align 8, !alias.scope !12733, !noalias !12730
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !noalias !12743, !nonnull !3, !noundef !3
  invoke void %i.an(ptr noundef %.sroa.420.sroa.5.0.copyload.i, ptr noundef %.sroa.420.sroa.0.0.copyload.i, i64 noundef %.sroa.420.sroa.4.0.copyload.i)
          to label %common.resume unwind label %bb.l, !noalias !12730, !inline_history !12750

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  store i8 0, ptr %i.e, align 8, !alias.scope !12733, !noalias !12730
  store ptr %i.ah, ptr %.sroa.8, align 8, !alias.scope !12730, !noalias !12733
  br label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45, !noalias !12730
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.aw, %bb.z ], [ %i.al, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.n, %bb.o, %bb.y, %bb.aa, %._crit_edge
  ret void

bb.n:                                             ; preds = %bb.c, %bb.f
  %.sroa.8.0..sroa.8.0..sroa.8.8. = phi ptr [ %i.z, %bb.c ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  store i64 1, ptr %0, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.0..sroa.8.0..sroa.8.8., ptr %.sroa.437.sroa.4.0..sroa.437.0..sroa_idx.sroa_idx, align 8
  br label %bb.m

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.sroa.16.0 = phi i64 [ undef, %bb.g ], [ %.sroa.420.sroa.4.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.14.0 = phi ptr [ undef, %bb.g ], [ %.sroa.420.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.8, %bb.g ], [ %.sroa.17, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.420.sroa.5.0.copyload.sink.i = phi ptr [ null, %bb.g ], [ %.sroa.420.sroa.5.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  store ptr %.sroa.420.sroa.5.0.copyload.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !12730, !noalias !12733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12735
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr = load ptr, ptr %.sroa.8, align 8 ; 2 uses
  %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.copyload.pre = load i64, ptr %.sroa.17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  %.not = icmp eq ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit
  store i64 1, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.4.sroa.4.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.0, ptr %.sroa.415.sroa.4.sroa.4.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.4.sroa.5.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.copyload.pre, ptr %.sroa.415.sroa.4.sroa.5.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.m

bb.p:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit.thread, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsgsNUVCRJO2f_13influxdb3_lib.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner10poll_frame(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(216) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.ap = load i8, ptr %i.d, align 8, !range !76, !noundef !3
  switch i8 %i.ap, label %bb.r [
    i8 2, label %bb.q
    i8 0, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i64 2, ptr %0, align 8
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.322.0.copyload = load ptr, ptr %.sroa.322.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  store i64 1, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.322.0.copyload, ptr %.sroa.442.sroa.4.0..sroa.442.0..sroa_idx.sroa_idx, align 8
  br label %bb.aa

bb.s:                                             ; preds = %bb.p
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 1
  %i.aq = trunc nuw i8 %.sroa.2.0.copyload to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.aq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = call noundef align 8 ptr @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner8response(ptr noalias noundef nonnull align 8 dereferenceable(216) %1) ; 3 uses
  %.not49 = icmp eq ptr %i.ar, null
  br i1 %.not49, label %bb.y, label %bb.v

bb.u:                                             ; preds = %bb.s
  %.pre = load i8, ptr %i.e, align 8, !range !76
  %i.as = icmp eq i8 %.pre, 2
  br i1 %i.as, label %._crit_edge, label %bb.b

bb.v:                                             ; preds = %bb.t
  %i.at = load i8, ptr %i.e, align 8, !range !76, !alias.scope !12751, !noundef !3
  %switch.i = icmp samesign ult i8 %i.at, 2
  br i1 %switch.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %i.n, align 8, !alias.scope !12754, !align !69, !noundef !3
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %.thread unwind label %bb.z

bb.y:                                             ; preds = %bb.t
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.z:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.e, align 8
  store ptr %i.ar, ptr %i.n, align 8
  br label %common.resume

.thread:                                          ; preds = %bb.x, %bb.v, %bb.w
  store i8 2, ptr %i.e, align 8
  store ptr %i.ar, ptr %i.n, align 8
  br label %._crit_edge

bb.aa:                                            ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCsi8UQarL1hXO_2h25codec12framed_writeINtB5_11FramedWriteINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB21_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEEINtNtNtNtB9_5proto7streams10prioritize11PrioritizedINtNtNtB1c_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEENtNtNtB4a_2io10async_read9AsyncRead9poll_readCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(1528) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB4_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB15_2rt5tokio7TokioIoINtNtCs8rTCm43AEA0_12tokio_rustls6server9TlsStreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtB3e_2io10async_read9AsyncRead9poll_readCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(1168) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_NtNtCsi8UQarL1hXO_2h25codec12framed_writeINtB5_11FramedWriteINtNtNtNtCs2LSxCQSJWSD_5hyper6common2io6compat6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB21_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtNtB9_5proto7streams10prioritize11PrioritizedINtNtNtB1c_5proto2h27SendBufNtNtCsuxFxh2mtOX_5bytes5bytes5BytesEEENtNtNtB3m_2io10async_read9AsyncRead9poll_readCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(424) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXs_NtNtNtCs2LSxCQSJWSD_5hyper6common2io6compatINtB4_6CompatINtNtNtCs6VdLngu4RVT_10hyper_util6common6rewind6RewindINtNtNtB15_2rt5tokio7TokioIoNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2q_2io10async_read9AsyncRead9poll_readCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCsi8UQarL1hXO_2h25frame9stream_idNtB5_8StreamIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @593, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @592)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs3_CshxQpDNzqVNo_7dashmapINtB5_7DashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBH_3AnyNtNtBJ_6marker4SendNtB1X_4SyncEL_EENtNtBJ_3fmt5Debug3fmtCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCshxQpDNzqVNo_7dashmap6mapref8multiple8RefMultiNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1v_3AnyNtNtB4_6marker4SendNtB2w_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit8, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs6_NtCshxQpDNzqVNo_7dashmap4iterINtB5_4IterNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBL_3AnyNtNtBN_6marker4SendNtB21_4SyncEL_EENtNtNtNtBN_4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.f unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCshxQpDNzqVNo_7dashmap6mapref8multiple8RefMultiNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1v_3AnyNtNtB4_6marker4SendNtB2w_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.k, %bb.l, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.u, %bb.l ], [ %i.u, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12757)
  call void @llvm.experimental.noalias.scope.decl(metadata !12760)
  %i.g = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12763, !noundef !3 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCshxQpDNzqVNo_7dashmap4iter4IterNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1e_3AnyNtNtB4_6marker4SendNtB2f_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCshxQpDNzqVNo_7dashmap6mapref8multiple8RefMultiNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1v_3AnyNtNtB4_6marker4SendNtB2w_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !12764
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCshxQpDNzqVNo_7dashmap4iter4IterNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1e_3AnyNtNtB4_6marker4SendNtB2f_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB1z_4util11SharedValueINtNtB7_5boxed3BoxDNtB31_3AnyNtNtB33_6marker4SendNtB4t_4SyncEL_EEEEEE9drop_slowCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCshxQpDNzqVNo_7dashmap4iter4IterNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1e_3AnyNtNtB4_6marker4SendNtB2f_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.o

bb.e:                                             ; preds = %bb.n, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCshxQpDNzqVNo_7dashmap6mapref8multiple8RefMultiNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1v_3AnyNtNtB4_6marker4SendNtB2w_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.f:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.m = load ptr, ptr %i.e, align 8, !noundef !3
  %i.n = load ptr, ptr %i.f, align 8, !noundef !3
  %i.o = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @594, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @595)
          to label %bb.m unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !12771)
  call void @llvm.experimental.noalias.scope.decl(metadata !12774)
  %i.p = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12777, !noundef !3 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCshxQpDNzqVNo_7dashmap4iter4IterNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1e_3AnyNtNtB4_6marker4SendNtB2f_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit5, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !12778
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCshxQpDNzqVNo_7dashmap4iter4IterNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1e_3AnyNtNtB4_6marker4SendNtB2f_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit5

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtCs6gU0GsN6MoR_8lock_api6rwlock15RwLockReadGuardNtNtCshxQpDNzqVNo_7dashmap4lock9RawRwLockINtNtNtCsc96bKABWO34_9hashbrown3raw5inner8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtB1z_4util11SharedValueINtNtB7_5boxed3BoxDNtB31_3AnyNtNtB33_6marker4SendNtB4t_4SyncEL_EEEEEE9drop_slowCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCshxQpDNzqVNo_7dashmap4iter4IterNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1e_3AnyNtNtB4_6marker4SendNtB2f_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCshxQpDNzqVNo_7dashmap4iter4IterNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1e_3AnyNtNtB4_6marker4SendNtB2f_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit5: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.t = call noundef zeroext i1 @_RNvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.t

bb.k:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12785)
  call void @llvm.experimental.noalias.scope.decl(metadata !12788)
  call void @llvm.experimental.noalias.scope.decl(metadata !12791)
  %i.v = load ptr, ptr %i.a, align 8, !alias.scope !12794, !nonnull !3, !noundef !3
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !12794
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCshxQpDNzqVNo_7dashmap6mapref8multiple8RefMultiNtNtB4_3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB1v_3AnyNtNtB4_6marker4SendNtB2w_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit
end_hunk_0
