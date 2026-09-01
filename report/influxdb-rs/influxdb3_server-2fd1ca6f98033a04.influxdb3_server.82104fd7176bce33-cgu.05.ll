Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.05?download=true
inline.NumInlined: 2484
inline.NumDeleted: 1028
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.u = call { i64, i64 } %i.t(ptr noundef nonnull %i.q), !noalias !7082, !inline_history !7085 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner12decode_chunk(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(232) %1, i64 noundef %i.v, i64 noundef %i.w), !noalias !7084
  %i.x = load i64, ptr %i.d, align 8, !range !183, !noalias !7082, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr %i.k, align 8, !noalias !7082, !align !27, !noundef !4 ; 3 uses
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7082
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.l, align 8, !noalias !7082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7082
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7082
  store ptr %i.z, ptr %i.c, align 8, !noalias !7082
  store i64 %i.aa, ptr %i.m, align 8, !noalias !7082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7082
  %i.ab = load ptr, ptr %i.i, align 8, !alias.scope !7079, !noalias !7084, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.j, align 8, !alias.scope !7079, !noalias !7084, !nonnull !4, !align !27, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !7084, !nonnull !4
  call void %i.ae(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !7084, !inline_history !7085
  %i.af = load i64, ptr %i.b, align 8, !range !2290, !noalias !7082, !noundef !4 ; 4 uses
  %i.ag = icmp eq i64 %i.af, -2
  %i.ah = load ptr, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !7082 ; 3 uses
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7082
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.522.0..sroa_idx.i, i64 40, i1 false), !noalias !7082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7082
  %.not26.i = icmp eq i64 %i.af, -1
  br i1 %.not26.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7082
  store i64 %i.af, ptr %i.a, align 8, !noalias !7082
  store ptr %i.ah, ptr %.sroa.311.0..sroa_idx.i, align 8, !noalias !7082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false), !noalias !7082
  %i.ai = load i8, ptr %i.f, align 8, !range !1551, !alias.scope !7086, !noalias !7084, !noundef !4
  %switch.i.i = icmp samesign ult i8 %i.ai, 2
  br i1 %switch.i.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.n, align 8, !alias.scope !7089, !noalias !7084, !align !27, !noundef !4
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.k, !noalias !7084

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.f, align 8, !alias.scope !7079, !noalias !7084
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(56) %i.a) #34
          to label %common.resume unwind label %bb.l, !noalias !7084

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7084
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.z ], [ %i.al, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.h, %bb.i, %bb.j
  store i8 0, ptr %i.f, align 8, !alias.scope !7079, !noalias !7084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7082
  br label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68.sink.split

bb.m:                                             ; preds = %bb.y, %bb.aa, %bb.p, %._crit_edge
  ret void

.loopexit:                                        ; preds = %bb.f, %bb.c
  %.sroa.10.1.ph = phi ptr [ %i.ah, %bb.f ], [ %i.z, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.1.ph) ]
  br label %bb.p

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68.sink.split: ; preds = %bb.g, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.0.172.ph = phi i64 [ %i.af, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit ], [ -1, %bb.g ]
  %.sroa.10.171.ph = phi ptr [ %i.ah, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit ], [ undef, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7082
  br label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68: ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68.sink.split, %bb.d
  %.sroa.0.172 = phi i64 [ -1, %bb.d ], [ %.sroa.0.172.ph, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68.sink.split ] ; 2 uses
  %.sroa.10.171 = phi ptr [ undef, %bb.d ], [ %.sroa.10.171.ph, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %.not = icmp eq i64 %.sroa.0.172, -1
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.14, i64 40, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6ActionE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner10poll_frame(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(216) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.an = load i8, ptr %i.e, align 8, !range !1551, !noundef !4
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
  %.sroa.331.0.copyload = load ptr, ptr %.sroa.331.0..sroa_idx, align 8, !nonnull !4, !noundef !4
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
  %.pre = load i8, ptr %i.f, align 8, !range !1551
  %i.aq = icmp eq i8 %.pre, 2
  br i1 %i.aq, label %._crit_edge, label %bb.b

bb.v:                                             ; preds = %bb.t
  %i.ar = load i8, ptr %i.f, align 8, !range !1551, !alias.scope !7092, !noundef !4
  %switch.i = icmp samesign ult i8 %i.ar, 2
  br i1 %switch.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = load ptr, ptr %i.n, align 8, !alias.scope !7095, !align !27, !noundef !4
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
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
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(232) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.8 = alloca ptr, align 8                  ; 7 uses
  %.sroa.17 = alloca ptr, align 8                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 8 uses
  %i.f = load i8, ptr %i.e, align 8, !range !1551, !noundef !4
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
  %i.p = load ptr, ptr %i.o, align 8, !align !27, !noundef !4 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7098)
  call void @llvm.experimental.noalias.scope.decl(metadata !7101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7103
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !7101, !noalias !7098, !nonnull !4, !noundef !4
  %i.r = load ptr, ptr %i.i, align 8, !alias.scope !7101, !noalias !7098, !nonnull !4, !align !27, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !4, !noalias !7103, !nonnull !4
  %i.u = call { i64, i64 } %i.t(ptr noundef nonnull %i.q), !noalias !7103, !inline_history !7104 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner12decode_chunk(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(232) %1, i64 noundef %i.v, i64 noundef %i.w), !noalias !7098
  %i.x = load i64, ptr %i.c, align 8, !range !183, !noalias !7103, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr %i.j, align 8, !noalias !7103, !align !27, !noundef !4 ; 3 uses
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7103
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.k, align 8, !noalias !7103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7103
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7103
  store ptr %i.z, ptr %i.b, align 8, !noalias !7103
  store i64 %i.aa, ptr %i.l, align 8, !noalias !7103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7103
  %i.ab = load ptr, ptr %i.h, align 8, !alias.scope !7101, !noalias !7098, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.i, align 8, !alias.scope !7101, !noalias !7098, !nonnull !4, !align !27, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !7098, !nonnull !4
  call void %i.ae(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !7098, !inline_history !7104
  %i.af = load i64, ptr %i.a, align 8, !range !183, !noalias !7103, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = load ptr, ptr %i.m, align 8, !noalias !7103 ; 4 uses
  br i1 %i.ag, label %bb.f, label %bb.g

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7103
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %.sroa.420.sroa.0.0.copyload.i = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !7103 ; 2 uses
  %.sroa.420.sroa.4.0.copyload.i = load i64, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx.i, align 8, !noalias !7103 ; 2 uses
  %.sroa.420.sroa.5.0.copyload.i = load ptr, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx.i, align 8, !noalias !7103 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7103
  %.not23.i = icmp eq ptr %i.ah, null
  br i1 %.not23.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.e, align 8, !range !1551, !alias.scope !7105, !noalias !7098, !noundef !4
  %switch.i.i = icmp samesign ult i8 %i.ai, 2
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.n, align 8, !alias.scope !7108, !noalias !7098, !align !27, !noundef !4
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.k, !noalias !7098

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.e, align 8, !alias.scope !7101, !noalias !7098
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !noalias !7111, !nonnull !4, !noundef !4
  invoke void %i.an(ptr noundef %.sroa.420.sroa.5.0.copyload.i, ptr noundef %.sroa.420.sroa.0.0.copyload.i, i64 noundef %.sroa.420.sroa.4.0.copyload.i)
          to label %common.resume unwind label %bb.l, !noalias !7098, !inline_history !2622

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  store i8 0, ptr %i.e, align 8, !alias.scope !7101, !noalias !7098
  store ptr %i.ah, ptr %.sroa.8, align 8, !alias.scope !7098, !noalias !7101
  br label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7098
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

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i
  %.sroa.16.0 = phi i64 [ undef, %bb.g ], [ %.sroa.420.sroa.4.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.14.0 = phi ptr [ undef, %bb.g ], [ %.sroa.420.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.8, %bb.g ], [ %.sroa.17, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.420.sroa.5.0.copyload.sink.i = phi ptr [ null, %bb.g ], [ %.sroa.420.sroa.5.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  store ptr %.sroa.420.sroa.5.0.copyload.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !7098, !noalias !7101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7103
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr = load ptr, ptr %.sroa.8, align 8 ; 2 uses
  %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.copyload = load ptr, ptr %.sroa.17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  %.not = icmp eq ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit
  store i64 1, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.4.sroa.4.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.0, ptr %.sroa.415.sroa.4.sroa.4.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.4.sroa.5.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.copyload, ptr %.sroa.415.sroa.4.sroa.5.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.m

bb.p:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen6TicketE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner10poll_frame(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(216) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.ap = load i8, ptr %i.d, align 8, !range !1551, !noundef !4
  switch i8 %i.ap, label %bb.r [
    i8 2, label %bb.q
    i8 0, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i64 2, ptr %0, align 8
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.322.0.copyload = load ptr, ptr %.sroa.322.0..sroa_idx, align 8, !nonnull !4, !noundef !4
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
  %.pre = load i8, ptr %i.e, align 8, !range !1551
  %i.as = icmp eq i8 %.pre, 2
  br i1 %i.as, label %._crit_edge, label %bb.b

bb.v:                                             ; preds = %bb.t
  %i.at = load i8, ptr %i.e, align 8, !range !1551, !alias.scope !7118, !noundef !4
  %switch.i = icmp samesign ult i8 %i.at, 2
  br i1 %switch.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %i.n, align 8, !alias.scope !7121, !align !27, !noundef !4
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
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
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(232) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.8 = alloca ptr, align 8                  ; 7 uses
  %.sroa.17 = alloca ptr, align 8                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 8 uses
  %i.f = load i8, ptr %i.e, align 8, !range !1551, !noundef !4
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
  %i.p = load ptr, ptr %i.o, align 8, !align !27, !noundef !4 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7124)
  call void @llvm.experimental.noalias.scope.decl(metadata !7127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7129
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !7127, !noalias !7124, !nonnull !4, !noundef !4
  %i.r = load ptr, ptr %i.i, align 8, !alias.scope !7127, !noalias !7124, !nonnull !4, !align !27, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !4, !noalias !7129, !nonnull !4
  %i.u = call { i64, i64 } %i.t(ptr noundef nonnull %i.q), !noalias !7129, !inline_history !7130 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner12decode_chunk(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(232) %1, i64 noundef %i.v, i64 noundef %i.w), !noalias !7124
  %i.x = load i64, ptr %i.c, align 8, !range !183, !noalias !7129, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr %i.j, align 8, !noalias !7129, !align !27, !noundef !4 ; 3 uses
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7129
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.k, align 8, !noalias !7129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7129
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7129
  store ptr %i.z, ptr %i.b, align 8, !noalias !7129
  store i64 %i.aa, ptr %i.l, align 8, !noalias !7129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7129
  %i.ab = load ptr, ptr %i.h, align 8, !alias.scope !7127, !noalias !7124, !nonnull !4, !noundef !4
  %i.ac = load ptr, ptr %i.i, align 8, !alias.scope !7127, !noalias !7124, !nonnull !4, !align !27, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !4, !noalias !7124, !nonnull !4
  call void %i.ae(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !7124, !inline_history !7130
  %i.af = load i64, ptr %i.a, align 8, !range !183, !noalias !7129, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = load ptr, ptr %i.m, align 8, !noalias !7129 ; 4 uses
  br i1 %i.ag, label %bb.f, label %bb.g

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %bb.p

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7129
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %.sroa.420.sroa.0.0.copyload.i = load ptr, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !7129 ; 2 uses
  %.sroa.420.sroa.4.0.copyload.i = load i64, ptr %.sroa.420.sroa.4.0..sroa.420.0..sroa_idx.sroa_idx.i, align 8, !noalias !7129 ; 2 uses
  %.sroa.420.sroa.5.0.copyload.i = load ptr, ptr %.sroa.420.sroa.5.0..sroa.420.0..sroa_idx.sroa_idx.i, align 8, !noalias !7129 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7129
  %.not23.i = icmp eq ptr %i.ah, null
  br i1 %.not23.i, label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.e, align 8, !range !1551, !alias.scope !7131, !noalias !7124, !noundef !4
  %switch.i.i = icmp samesign ult i8 %i.ai, 2
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.n, align 8, !alias.scope !7134, !noalias !7124, !align !27, !noundef !4
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i unwind label %bb.k, !noalias !7124

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.e, align 8, !alias.scope !7127, !noalias !7124
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !noalias !7137, !nonnull !4, !noundef !4
  invoke void %i.an(ptr noundef %.sroa.420.sroa.5.0.copyload.i, ptr noundef %.sroa.420.sroa.0.0.copyload.i, i64 noundef %.sroa.420.sroa.4.0.copyload.i)
          to label %common.resume unwind label %bb.l, !noalias !7124, !inline_history !2643

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  store i8 0, ptr %i.e, align 8, !alias.scope !7127, !noalias !7124
  store ptr %i.ah, ptr %.sroa.8, align 8, !alias.scope !7124, !noalias !7127
  br label %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7124
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

_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i
  %.sroa.16.0 = phi i64 [ undef, %bb.g ], [ %.sroa.420.sroa.4.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.14.0 = phi ptr [ undef, %bb.g ], [ %.sroa.420.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.8, %bb.g ], [ %.sroa.17, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.420.sroa.5.0.copyload.sink.i = phi ptr [ null, %bb.g ], [ %.sroa.420.sroa.5.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbYyEjVLvvus_5tonic5codec6decode5StateECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  store ptr %.sroa.420.sroa.5.0.copyload.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !7124, !noalias !7127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7129
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr = load ptr, ptr %.sroa.8, align 8 ; 2 uses
  %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.copyload = load ptr, ptr %.sroa.17, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  %.not = icmp eq ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit
  store i64 1, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.034.0.copyload.pr, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.0, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.4.sroa.4.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.0, ptr %.sroa.415.sroa.4.sroa.4.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.4.sroa.5.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.17.0..sroa.17.0..sroa.17.0..sroa.17.16.copyload, ptr %.sroa.415.sroa.4.sroa.5.0..sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.m

bb.p:                                             ; preds = %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit.thread, %_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6decodeINtB5_9StreamingNtNtCsekDO8Mha3LU_12arrow_flight3gen8CriteriaE12decode_chunkCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic5codec6decodeNtB5_14StreamingInner10poll_frame(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(216) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.ap = load i8, ptr %i.d, align 8, !range !1551, !noundef !4
  switch i8 %i.ap, label %bb.r [
    i8 2, label %bb.q
    i8 0, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  store i64 2, ptr %0, align 8
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.322.0.copyload = load ptr, ptr %.sroa.322.0..sroa_idx, align 8, !nonnull !4, !noundef !4
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
  %.pre = load i8, ptr %i.e, align 8, !range !1551
  %i.as = icmp eq i8 %.pre, 2
  br i1 %i.as, label %._crit_edge, label %bb.b

bb.v:                                             ; preds = %bb.t
  %i.at = load i8, ptr %i.e, align 8, !range !1551, !alias.scope !7144, !noundef !4
  %switch.i = icmp samesign ult i8 %i.at, 2
  br i1 %switch.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %i.n, align 8, !alias.scope !7147, !align !27, !noundef !4
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
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
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [96 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [176 x i8], align 8               ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 16               ; 3 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 16               ; 3 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 6 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 3 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %i.ai = alloca [48 x i8], align 8               ; 9 uses
  %i.aj = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.9.i = alloca [32 x i8], align 8          ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.ak = alloca [96 x i8], align 8               ; 4 uses
  %i.al = alloca [96 x i8], align 8               ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 8 uses
  %.sroa.19 = alloca ptr, align 8                 ; 6 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7153)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %.val.i = load i64, ptr %i.ap, align 8, !alias.scope !7153, !noalias !7155, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val30.i = load i64, ptr %i.au, align 8, !alias.scope !7153, !noalias !7155, !noundef !4
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !7153, !noalias !7155, !align !27, !noundef !4 ; 2 uses
  store ptr null, ptr %i.at, align 8, !alias.scope !7153, !noalias !7155
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %.thread108

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7160
  %i.aw = load ptr, ptr %i.ao, align 8, !alias.scope !7163, !noalias !7164, !noundef !4
  %.not.i142.i = icmp eq ptr %i.aw, null
  br i1 %.not.i142.i, label %.loopexit101.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.8.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.9.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.as, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !7167
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !7168
  %i.bc = load i64, ptr %i.ae, align 8, !range !2291, !noalias !7167, !noundef !4
  %i.bd = icmp eq i64 %i.bc, -3
  br i1 %i.bd, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7167
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !noalias !7167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7167
  %i.be = load i64, ptr %i.af, align 8, !noalias !7169 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.be, -2
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.ao, align 8, !alias.scope !7170, !noalias !7164
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(48) %i.af) #34
          to label %common.resume unwind label %bb.k, !noalias !7168

bb.d:                                             ; preds = %bb.c
  %.val7.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !7170, !noalias !7164, !noundef !4 ; 4 uses
  %.val8.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !7170, !noalias !7164 ; 6 uses
  %i.bf = icmp eq ptr %.val7.i.i, null
  br i1 %i.bf, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %i.bg = load ptr, ptr %.val8.i.i, align 8, !invariant.load !4, !noalias !7168 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.bg(ptr noundef nonnull %.val7.i.i)
          to label %bb.g unwind label %bb.i, !noalias !7168

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !204, !invariant.load !4, !noalias !7168 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !1728, !invariant.load !4, !noalias !7168
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef range(i64 1, 0) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #32, !noalias !7168
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i

bb.i:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !204, !invariant.load !4, !noalias !7168 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !1728, !invariant.load !4, !noalias !7168
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #32, !noalias !7168
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i: ; preds = %bb.h, %bb.g, %bb.d
  store ptr null, ptr %i.ao, align 8, !alias.scope !7170, !noalias !7164
  br label %.loopexit101.i

bb.k:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7168
  unreachable

common.resume:                                    ; preds = %bb.bu, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i, %bb.p, %bb.y, %bb.ad, %.body.i.i.i, %bb.ap, %bb.ax, %bb.bc, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.hn, %bb.bg ], [ %i.fz, %bb.ax ], [ %i.bm, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i ], [ %i.cw, %bb.p ], [ %lpad.phi107.i, %bb.y ], [ %i.go, %bb.bc ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.phi.i, %bb.ap ], [ %lpad.phi112.i, %bb.ad ], [ %i.ii, %bb.bu ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload50.i = load ptr, ptr %.sroa.8.0..sroa_idx49.i, align 8, !noalias !7169 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx51.i, i64 32, i1 false), !noalias !7169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7167
  switch i64 %i.be, label %bb.t [
    i64 -3, label %.loopexit.i
    i64 -1, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  %i.bt = load i64, ptr %i.az, align 8, !alias.scope !7153, !noalias !7155, !noundef !4 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.bj, label %bb.l

.loopexit101.i:                                   ; preds = %bb.as, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7167
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !7153, !noalias !7155, !noundef !4 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.bl, label %bb.l

bb.l:                                             ; preds = %.loopexit101.i, %.loopexit.i
  %i.by = phi i64 [ %i.bt, %.loopexit.i ], [ %i.bw, %.loopexit101.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !7171
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.by), !noalias !7150
  call void @llvm.experimental.noalias.scope.decl(metadata !7172)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !7172, !noalias !7175, !noundef !4 ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cc = and i64 %i.cb, 1
  %.not.i31.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i31.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = lshr i64 %i.cb, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !7177
  %i.ce = load ptr, ptr %i.aj, align 8, !alias.scope !7172, !noalias !7175, !nonnull !4, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !7172, !noalias !7175, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !7172, !noalias !7175, !noundef !4
  %i.cj = sub nsw i64 0, %i.cd
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj
  %i.cl = add i64 %i.cg, %i.cd
  %i.cm = add i64 %i.ci, %i.cd                    ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  store i64 %i.cm, ptr %i.ad, align 8, !noalias !7177
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ck, ptr %i.co, align 8, !noalias !7177
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.cl, ptr %i.cp, align 8, !noalias !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !7177
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad), !noalias !7178
  call void @llvm.experimental.noalias.scope.decl(metadata !7179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !7177
  store i64 %i.cd, ptr %i.ab, align 8, !noalias !7182
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !7179, !noalias !7177, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.cd, %i.cr
  br i1 %.not.i.i.i, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7182
  store i64 %i.cr, ptr %i.aa, align 8, !noalias !7182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7182
  store ptr %i.ab, ptr %i.z, align 8, !noalias !7182
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !7182
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.cs, align 8, !noalias !7182
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !7182
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i.i unwind label %bb.p, !noalias !7178

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.aj, align 8, !alias.scope !7172, !noalias !7175, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !7172, !noalias !7175, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7183)
  call void @llvm.experimental.noalias.scope.decl(metadata !7186)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !7189, !noalias !7177, !noundef !4
  %i.cz = load ptr, ptr %i.ac, align 8, !alias.scope !7189, !noalias !7177, !nonnull !4, !align !27, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !7190, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !7189, !noalias !7177, !noundef !4
  invoke void %i.db(ptr noundef %i.cy, ptr noundef %i.dd, i64 noundef %i.cr)
          to label %common.resume unwind label %bb.r, !noalias !7178, !inline_history !29

bb.q:                                             ; preds = %bb.m
  %i.de = sub nuw i64 %i.cr, %i.cd
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !7179, !noalias !7177, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7177
  %.sroa.052.0.copyload53.i = load ptr, ptr %i.ac, align 8, !noalias !7191
  %.sroa.7.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.7.0.copyload59.i = load ptr, ptr %.sroa.7.0..sroa_idx58.i, align 8, !noalias !7191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7177
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.r:                                             ; preds = %bb.p
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7178
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.7.0.i = phi ptr [ %i.ca, %bb.o ], [ %.sroa.7.0.copyload59.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.cv, %bb.o ], [ %i.de, %bb.q ]
  %.sroa.5.0.i = phi ptr [ %i.ct, %bb.o ], [ %i.dh, %bb.q ]
  %.sroa.052.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.o ], [ %.sroa.052.0.copyload53.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !7171
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !7150, !noalias !7192
  br label %bb.bk

bb.s:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload50.i) ]
  %i.dj = load i64, ptr %i.az, align 8, !alias.scope !7153, !noalias !7155, !noundef !4 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.thread112, label %bb.ba

bb.t:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7171
  store i64 %i.be, ptr %i.ai, align 8, !noalias !7171
  store ptr %.sroa.8.0.copyload50.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !7171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, i64 32, i1 false), !noalias !7171
  %i.dl = load i8, ptr %i.aq, align 8, !range !1551, !alias.scope !7153, !noalias !7155, !noundef !4 ; 3 uses
  %i.dm = load i64, ptr %1, align 8, !range !183, !alias.scope !7153, !noalias !7155, !noundef !4
  %i.dn = load i64, ptr %i.ay, align 8, !alias.scope !7153, !noalias !7155
  call void @llvm.experimental.noalias.scope.decl(metadata !7193)
  call void @llvm.experimental.noalias.scope.decl(metadata !7196)
  %i.do = load i64, ptr %i.az, align 8, !alias.scope !7198, !noalias !7199, !noundef !4 ; 6 uses
  %i.dp = load i64, ptr %i.ba, align 8, !alias.scope !7198, !noalias !7199, !noundef !4
  %i.dq = sub i64 %i.dp, %i.do
  %i.dr = icmp ugt i64 %i.dq, 4
  br i1 %i.dr, label %.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = invoke noundef zeroext i1 @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef 5, i1 noundef zeroext true)
          to label %bb.v unwind label %.loopexit102.i, !noalias !7201 ; 0 uses

bb.v:                                             ; preds = %bb.u
  %.pre.i.i = load i64, ptr %i.ba, align 8, !alias.scope !7198, !noalias !7199
  %.pre8.i.i = load i64, ptr %i.az, align 8, !alias.scope !7198, !noalias !7199 ; 2 uses
  %.pre9.i.i = sub i64 %.pre.i.i, %.pre8.i.i      ; 2 uses
  %i.dt = icmp ult i64 %.pre9.i.i, 5
  br i1 %i.dt, label %bb.w, label %.thread.i.i, !prof !4133

.thread.i.i:                                      ; preds = %bb.v, %bb.t
  %i.du = phi i64 [ %.pre8.i.i, %bb.v ], [ %i.do, %bb.t ]
  %i.dv = add i64 %i.du, 5
  store i64 %i.dv, ptr %i.az, align 8, !alias.scope !7198, !noalias !7199
  %.not.i32.i = icmp eq i8 %i.dl, 2
  br i1 %.not.i32.i, label %bb.ac, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7202
  store i64 5, ptr %i.u, align 8, !noalias !7202
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.pre9.i.i, ptr %i.dw, align 8, !noalias !7202
  invoke void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u) #31
          to label %bb.ao unwind label %.loopexit.split-lp.i, !noalias !7201

bb.x:                                             ; preds = %.thread.i.i
  %i.dx = trunc nuw i8 %i.dl to i1
  store i64 0, ptr %i.bb, align 8, !alias.scope !7203, !noalias !7204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !7202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false), !noalias !7205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7202
  store ptr %i.as, ptr %i.x, align 8, !noalias !7202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7206
  invoke void @_RINvYNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsktysmkNHh7l_5prost7message7Message6encodeNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.z unwind label %.loopexit103.i, !noalias !7210

.loopexit103.i:                                   ; preds = %bb.x
  %lpad.loopexit105.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp104.i:                          ; preds = %bb.aa
  %lpad.loopexit.split-lp106.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp104.i, %.loopexit103.i
  %lpad.phi107.i = phi { ptr, i32 } [ %lpad.loopexit105.i, %.loopexit103.i ], [ %lpad.loopexit.split-lp106.i, %.loopexit.split-lp104.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y) #34
          to label %common.resume unwind label %bb.ab, !noalias !7210

bb.z:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !7211)
  %i.dy = load i64, ptr %i.t, align 8, !range !183, !alias.scope !7211, !noalias !7206, !noundef !4
  %i.dz = trunc nuw i64 %i.dy to i1
  br i1 %i.dz, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, !prof !5

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7214
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.eb = load <2 x i64>, ptr %i.ea, align 8, !alias.scope !7211, !noalias !7206
  store <2 x i64> %i.eb, ptr %i.s, align 16, !noalias !7214
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 39, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #31
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp104.i, !noalias !7210

.noexc.i.i.i:                                     ; preds = %bb.aa
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7206
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y), !noalias !7210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7202
  %i.ec = load i64, ptr %i.bb, align 8, !alias.scope !7203, !noalias !7204, !noundef !4
  %i.ed = call noundef ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec11compression8compress(i64 noundef %.val.i, i1 noundef zeroext %i.dx, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.ec), !noalias !7210 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ed, null
  br i1 %.not21.i.i, label %bb.am, label %bb.ah

bb.ab:                                            ; preds = %bb.y
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7210
  unreachable

bb.ac:                                            ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false), !noalias !7205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7202
  store ptr %i.ar, ptr %i.v, align 8, !noalias !7202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7215
  invoke void @_RINvYNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsktysmkNHh7l_5prost7message7Message6encodeNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.ae unwind label %.loopexit108.i, !noalias !7201

.loopexit108.i:                                   ; preds = %bb.ac
  %lpad.loopexit110.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp109.i:                          ; preds = %bb.af
  %lpad.loopexit.split-lp111.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp109.i, %.loopexit108.i
  %lpad.phi112.i = phi { ptr, i32 } [ %lpad.loopexit110.i, %.loopexit108.i ], [ %lpad.loopexit.split-lp111.i, %.loopexit.split-lp109.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w) #34
          to label %common.resume unwind label %bb.ag, !noalias !7201

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !7219)
  %i.ef = load i64, ptr %i.r, align 8, !range !183, !alias.scope !7219, !noalias !7215, !noundef !4
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.af, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i22.i.i, !prof !5

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7222
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ei = load <2 x i64>, ptr %i.eh, align 8, !alias.scope !7219, !noalias !7215
  store <2 x i64> %i.ei, ptr %i.q, align 16, !noalias !7222
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 39, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #31
          to label %.noexc.i23.i.i unwind label %.loopexit.split-lp109.i, !noalias !7201

.noexc.i23.i.i:                                   ; preds = %bb.af
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i22.i.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7215
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.w), !noalias !7201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7202
  br label %bb.am

bb.ag:                                            ; preds = %bb.ad
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7201
  unreachable

bb.ah:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7202
  store ptr %i.ed, ptr %i.p, align 8, !noalias !7202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7202
  store ptr %i.p, ptr %i.n, align 8, !noalias !7202
  %.sroa.42.0..sroa_idx.i.i33.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i33.i, align 8, !noalias !7202
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @90, ptr noundef nonnull %i.n)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i unwind label %bb.ai, !noalias !7210

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i, %bb.ai
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ek, %bb.ai ], [ %i.el, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i ]
  %.val6.i.i.i = load ptr, ptr %i.p, align 8, !noalias !7202, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val6.i.i.i) #34
          to label %common.resume unwind label %bb.al, !noalias !7210

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !alias.scope !7226, !noalias !7202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7223
  invoke void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic8metadata3mapNtB5_11MetadataMap3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.k)
          to label %bb.aj unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i, !noalias !7233

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #34
          to label %.body.i.i.i unwind label %bb.ak, !noalias !7233

bb.aj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  store i8 13, ptr %i.em, align 8, !noalias !7223
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !7202
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store ptr @19, ptr %i.eo, align 8, !noalias !7223
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !7223
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !7223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !7223
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  store ptr null, ptr %i.ep, align 8, !noalias !7223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7223
  %i.eq = invoke noundef nonnull align 8 ptr @_RNvMNtCsbYyEjVLvvus_5tonic6statusNtB2_11StatusInner11into_status(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.m)
          to label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i unwind label %bb.ai, !noalias !7210

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7233
  unreachable

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7223
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !noalias !7202, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val.i.i.i), !noalias !7210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7202
  br label %.loopexit113.i

bb.al:                                            ; preds = %.body.i.i.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7210
  unreachable

bb.am:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i22.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.et = load i64, ptr %i.az, align 8, !alias.scope !7198, !noalias !7199, !noundef !4 ; 4 uses
  %i.eu = icmp ugt i64 %i.do, %i.et
  br i1 %i.eu, label %bb.an, label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i, !prof !5

bb.an:                                            ; preds = %bb.am
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.do, i64 noundef %i.et, i64 noundef %i.et, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #31, !noalias !7210
  unreachable

bb.ao:                                            ; preds = %bb.w
  unreachable

.loopexit102.i:                                   ; preds = %bb.u
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp.i, %.loopexit102.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit102.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ai) #34
          to label %common.resume unwind label %bb.aq, !noalias !7234

bb.aq:                                            ; preds = %bb.ap
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7234
  unreachable

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.am
  %i.ew = load ptr, ptr %i.ar, align 8, !alias.scope !7198, !noalias !7199, !nonnull !4, !noundef !4
  %i.ex = sub nuw i64 %i.et, %i.do
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.do
  %i.ez = call noundef align 8 ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec6encode15finish_encoding(i8 noundef range(i8 0, 3) %i.dl, i64 noundef range(i64 0, 2) %i.dm, i64 %i.dn, ptr noalias noundef nonnull %i.ey, i64 noundef %i.ex), !noalias !7210 ; 2 uses
  %.not28.i = icmp eq ptr %i.ez, null
  br i1 %.not28.i, label %bb.ar, label %.loopexit113.i

bb.ar:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.fa = load i64, ptr %i.az, align 8, !alias.scope !7153, !noalias !7155, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.fa, %.val30.i
  br i1 %.not29.i, label %bb.as, label %bb.at

.loopexit113.i:                                   ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i
  %.sroa.26.1 = phi i64 [ %.sroa.668.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ undef, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ undef, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.12.1 = phi ptr [ %.sroa.063.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ null, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ null, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.19, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ %.sroa.19, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.771.0.sink.i = phi ptr [ %.sroa.771.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %i.eq, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ %i.ez, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  store ptr %.sroa.771.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !7150, !noalias !7192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7171
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.bk

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7171
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7237
  %i.fb = load ptr, ptr %i.ao, align 8, !alias.scope !7238, !noalias !7164, !noundef !4
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %.loopexit101.i, label %bb.b

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !7171
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.fa), !noalias !7150
  call void @llvm.experimental.noalias.scope.decl(metadata !7239)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !7239, !noalias !7242, !noundef !4 ; 2 uses
  %i.fe = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.ff = and i64 %i.fe, 1
  %.not.i34.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i34.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fg = lshr i64 %i.fe, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7244
  %i.fh = load ptr, ptr %i.ah, align 8, !alias.scope !7239, !noalias !7242, !nonnull !4, !noundef !4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !7239, !noalias !7242, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !7239, !noalias !7242, !noundef !4
  %i.fm = sub nsw i64 0, %i.fg
  %i.fn = getelementptr inbounds i8, ptr %i.fh, i64 %i.fm
  %i.fo = add i64 %i.fj, %i.fg
  %i.fp = add i64 %i.fl, %i.fg                    ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  store i64 %i.fp, ptr %i.j, align 8, !noalias !7244
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fn, ptr %i.fr, align 8, !noalias !7244
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.fo, ptr %i.fs, align 8, !noalias !7244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7244
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !7245
  call void @llvm.experimental.noalias.scope.decl(metadata !7246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7244
  store i64 %i.fg, ptr %i.h, align 8, !noalias !7249
  %i.ft = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !7246, !noalias !7244, !noundef !4 ; 4 uses
  %.not.i.i35.i = icmp ugt i64 %i.fg, %i.fu
  br i1 %.not.i.i35.i, label %bb.av, label %bb.ay, !prof !5

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7249
  store i64 %i.fu, ptr %i.g, align 8, !noalias !7249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7249
  store ptr %i.h, ptr %i.f, align 8, !noalias !7249
  %.sroa.42.0..sroa_idx.i.i36.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i36.i, align 8, !noalias !7249
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.fv, align 8, !noalias !7249
  %.sroa.46.0..sroa_idx.i.i37.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i37.i, align 8, !noalias !7249
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i39.i unwind label %bb.ax, !noalias !7245

.noexc.i39.i:                                     ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.fw = load ptr, ptr %i.ah, align 8, !alias.scope !7239, !noalias !7242, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !7239, !noalias !7242, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i

bb.ax:                                            ; preds = %bb.av
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7250)
  call void @llvm.experimental.noalias.scope.decl(metadata !7253)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !7256, !noalias !7244, !noundef !4
  %i.gc = load ptr, ptr %i.i, align 8, !alias.scope !7256, !noalias !7244, !nonnull !4, !align !27, !noundef !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !7257, !nonnull !4, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !7256, !noalias !7244, !noundef !4
  invoke void %i.ge(ptr noundef %i.gb, ptr noundef %i.gg, i64 noundef %i.fu)
          to label %common.resume unwind label %bb.az, !noalias !7245, !inline_history !29

bb.ay:                                            ; preds = %bb.au
  %i.gh = sub nuw i64 %i.fu, %i.fg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !7246, !noalias !7244, !noundef !4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7244
  %.sroa.063.0.copyload64.i = load ptr, ptr %i.i, align 8, !noalias !7258
  %.sroa.771.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.771.0.copyload73.i = load ptr, ptr %.sroa.771.0..sroa_idx72.i, align 8, !noalias !7258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7244
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i

bb.az:                                            ; preds = %bb.ax
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7245
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i: ; preds = %bb.ay, %bb.aw
  %.sroa.771.0.i = phi ptr [ %i.fd, %bb.aw ], [ %.sroa.771.0.copyload73.i, %bb.ay ]
  %.sroa.668.0.i = phi i64 [ %i.fy, %bb.aw ], [ %i.gh, %bb.ay ]
  %.sroa.565.0.i = phi ptr [ %i.fw, %bb.aw ], [ %i.gk, %bb.ay ]
  %.sroa.063.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.aw ], [ %.sroa.063.0.copyload64.i, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !7171
  store ptr %.sroa.565.0.i, ptr %.sroa.19, align 8, !alias.scope !7150, !noalias !7192
  br label %.loopexit113.i

.thread112:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %.thread108

bb.ba:                                            ; preds = %bb.s
  %i.gm = load ptr, ptr %i.at, align 8, !alias.scope !7259, !noalias !7155, !align !27, !noundef !4
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.at)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i unwind label %bb.bc, !noalias !7150

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i: ; preds = %bb.bb
  %.pre.i = load i64, ptr %i.az, align 8, !alias.scope !7153, !noalias !7155
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.go = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload50.i, ptr %i.at, align 8, !alias.scope !7153, !noalias !7155
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i, %bb.ba
  %i.gp = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i ], [ %i.dj, %bb.ba ]
  store ptr %.sroa.8.0.copyload50.i, ptr %i.at, align 8, !alias.scope !7153, !noalias !7155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !7171
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.gp), !noalias !7150
  call void @llvm.experimental.noalias.scope.decl(metadata !7262)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !7262, !noalias !7265, !noundef !4 ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gt = and i64 %i.gs, 1
  %.not.i41.i = icmp eq i64 %i.gt, 0
  br i1 %.not.i41.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.gu = lshr i64 %i.gs, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7267
  %i.gv = load ptr, ptr %i.ag, align 8, !alias.scope !7262, !noalias !7265, !nonnull !4, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !7262, !noalias !7265, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !7262, !noalias !7265, !noundef !4
  %i.ha = sub nsw i64 0, %i.gu
  %i.hb = getelementptr inbounds i8, ptr %i.gv, i64 %i.ha
  %i.hc = add i64 %i.gx, %i.gu
  %i.hd = add i64 %i.gz, %i.gu                    ; 2 uses
  %i.he = icmp sgt i64 %i.hd, -1
  call void @llvm.assume(i1 %i.he)
  store i64 %i.hd, ptr %i.e, align 8, !noalias !7267
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.hb, ptr %i.hf, align 8, !noalias !7267
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.hc, ptr %i.hg, align 8, !noalias !7267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7267
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !7268
  call void @llvm.experimental.noalias.scope.decl(metadata !7269)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7267
  store i64 %i.gu, ptr %i.c, align 8, !noalias !7272
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !7269, !noalias !7267, !noundef !4 ; 4 uses
  %.not.i.i42.i = icmp ugt i64 %i.gu, %i.hi
  br i1 %.not.i.i42.i, label %bb.be, label %bb.bh, !prof !5

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7272
  store i64 %i.hi, ptr %i.b, align 8, !noalias !7272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7272
  store ptr %i.c, ptr %i.a, align 8, !noalias !7272
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !7272
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.hj, align 8, !noalias !7272
  %.sroa.46.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i44.i, align 8, !noalias !7272
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i46.i unwind label %bb.bg, !noalias !7268

.noexc.i46.i:                                     ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.hk = load ptr, ptr %i.ag, align 8, !alias.scope !7262, !noalias !7265, !nonnull !4, !noundef !4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !7262, !noalias !7265, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bg:                                            ; preds = %bb.be
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7273)
  call void @llvm.experimental.noalias.scope.decl(metadata !7276)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !7279, !noalias !7267, !noundef !4
  %i.hq = load ptr, ptr %i.d, align 8, !alias.scope !7279, !noalias !7267, !nonnull !4, !align !27, !noundef !4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !7280, !nonnull !4, !noundef !4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !7279, !noalias !7267, !noundef !4
  invoke void %i.hs(ptr noundef %i.hp, ptr noundef %i.hu, i64 noundef %i.hi)
          to label %common.resume unwind label %bb.bi, !noalias !7268, !inline_history !29

bb.bh:                                            ; preds = %bb.bd
  %i.hv = sub nuw i64 %i.hi, %i.gu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !7269, !noalias !7267, !noundef !4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7267
  %.sroa.078.0.copyload79.i = load ptr, ptr %i.d, align 8, !noalias !7281
  %.sroa.786.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.786.0.copyload88.i = load ptr, ptr %.sroa.786.0..sroa_idx87.i, align 8, !noalias !7281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7267
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bi:                                            ; preds = %bb.bg
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7268
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i: ; preds = %bb.bh, %bb.bf
  %.sroa.786.0.i = phi ptr [ %i.gr, %bb.bf ], [ %.sroa.786.0.copyload88.i, %bb.bh ]
  %.sroa.683.0.i = phi i64 [ %i.hm, %bb.bf ], [ %i.hv, %bb.bh ]
  %.sroa.580.0.i = phi ptr [ %i.hk, %bb.bf ], [ %i.hy, %bb.bh ]
  %.sroa.078.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bf ], [ %.sroa.078.0.copyload79.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !7171
  store ptr %.sroa.786.0.i, ptr %.sroa.30, align 8, !alias.scope !7150, !noalias !7192
  br label %bb.bk

bb.bj:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.by

bb.bk:                                            ; preds = %.loopexit113.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106 = phi ptr [ %.sroa.580.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre, %.loopexit113.i ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.683.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %.loopexit113.i ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.078.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ], [ %.sroa.052.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %.loopexit113.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.ia = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.ia, label %.thread108, label %bb.bq

bb.bl:                                            ; preds = %.loopexit101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an)
  %i.ib = load i64, ptr %i.ak, align 8, !range !3021, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.ib, -2
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.ic = icmp eq i64 %i.ib, -1
  br i1 %i.ic, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bo, %bb.bp, %bb.bl
  %.sroa.017.0 = phi i64 [ -3, %bb.bl ], [ -2, %bb.bo ], [ %i.ib, %bb.bp ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bl ], [ %.sroa.563.0.copyload, %bb.bo ], [ %.sroa.563.0.copyload, %bb.bp ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.by

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bn

.thread108:                                       ; preds = %bb.a, %.thread112, %bb.bk
  %i.id = phi ptr [ %.sroa.8.0.copyload50.i, %.thread112 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, %bb.bk ], [ %i.av, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.id) ]
  store ptr %i.id, ptr %i.am, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.if = load i8, ptr %i.ie, align 8, !range !3, !noundef !4
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bk
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.br:                                            ; preds = %.thread108
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.ih, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %bb.bv unwind label %bb.bu

bb.bs:                                            ; preds = %.thread108
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.id, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.by

bb.bu:                                            ; preds = %bb.br
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am) #34
          to label %common.resume unwind label %bb.bz

bb.bv:                                            ; preds = %bb.br
  %i.ij = load i64, ptr %i.al, align 8, !range !14, !noundef !4 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, -1
  %i.il = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.im = load ptr, ptr %i.il, align 8            ; 2 uses
  br i1 %i.ik, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.im, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 %i.ij, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.im, ptr %.sroa.553.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
  br label %bb.bt

bb.by:                                            ; preds = %bb.bn, %bb.bq, %bb.bt, %bb.bj, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.bz:                                            ; preds = %bb.bu
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [96 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [176 x i8], align 8               ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 16               ; 3 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 16               ; 3 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [160 x i8], align 8               ; 6 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [160 x i8], align 8               ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 3 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [160 x i8], align 8              ; 6 uses
  %i.af = alloca [160 x i8], align 8              ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %i.ai = alloca [160 x i8], align 8              ; 9 uses
  %i.aj = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.9.i = alloca [144 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.ak = alloca [96 x i8], align 8               ; 4 uses
  %i.al = alloca [96 x i8], align 8               ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 8 uses
  %.sroa.19 = alloca ptr, align 8                 ; 6 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7285)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %.val.i = load i64, ptr %i.ap, align 8, !alias.scope !7285, !noalias !7287, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val30.i = load i64, ptr %i.au, align 8, !alias.scope !7285, !noalias !7287, !noundef !4
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !7285, !noalias !7287, !align !27, !noundef !4 ; 2 uses
  store ptr null, ptr %i.at, align 8, !alias.scope !7285, !noalias !7287
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.preheader.i, label %.thread108

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7292
  %i.aw = load ptr, ptr %i.ao, align 8, !alias.scope !7295, !noalias !7296, !noundef !4
  %.not.i142.i = icmp eq ptr %i.aw, null
  br i1 %.not.i142.i, label %.loopexit101.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.8.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.9.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.as, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !7299
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !7300
  %i.bc = load i64, ptr %i.ae, align 8, !range !7301, !noalias !7299, !noundef !4
  %i.bd = icmp eq i64 %i.bc, -4
  br i1 %i.bd, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7299
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.af, ptr noundef nonnull align 8 dereferenceable(160) %i.ae, i64 160, i1 false), !noalias !7299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7299
  %i.be = load i64, ptr %i.af, align 8, !noalias !7302 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.be, -3
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.ao, align 8, !alias.scope !7303, !noalias !7296
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(160) %i.af) #34
          to label %common.resume unwind label %bb.k, !noalias !7300

bb.d:                                             ; preds = %bb.c
  %.val7.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !7303, !noalias !7296, !noundef !4 ; 4 uses
  %.val8.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !7303, !noalias !7296 ; 6 uses
  %i.bf = icmp eq ptr %.val7.i.i, null
  br i1 %i.bf, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %i.bg = load ptr, ptr %.val8.i.i, align 8, !invariant.load !4, !noalias !7300 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.bg(ptr noundef nonnull %.val7.i.i)
          to label %bb.g unwind label %bb.i, !noalias !7300

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !204, !invariant.load !4, !noalias !7300 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !1728, !invariant.load !4, !noalias !7300
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef range(i64 1, 0) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #32, !noalias !7300
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i

bb.i:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !204, !invariant.load !4, !noalias !7300 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !1728, !invariant.load !4, !noalias !7300
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #32, !noalias !7300
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i: ; preds = %bb.h, %bb.g, %bb.d
  store ptr null, ptr %i.ao, align 8, !alias.scope !7303, !noalias !7296
  br label %.loopexit101.i

bb.k:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7300
  unreachable

common.resume:                                    ; preds = %bb.bu, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i, %bb.p, %bb.y, %bb.ad, %.body.i.i.i, %bb.ap, %bb.ax, %bb.bc, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.hn, %bb.bg ], [ %i.fz, %bb.ax ], [ %i.bm, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i ], [ %i.cw, %bb.p ], [ %lpad.phi107.i, %bb.y ], [ %i.go, %bb.bc ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.phi.i, %bb.ap ], [ %lpad.phi112.i, %bb.ad ], [ %i.ii, %bb.bu ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload50.i = load ptr, ptr %.sroa.8.0..sroa_idx49.i, align 8, !noalias !7302 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.0..sroa_idx51.i, i64 144, i1 false), !noalias !7302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7299
  switch i64 %i.be, label %bb.t [
    i64 -4, label %.loopexit.i
    i64 -2, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  %i.bt = load i64, ptr %i.az, align 8, !alias.scope !7285, !noalias !7287, !noundef !4 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.bj, label %bb.l

.loopexit101.i:                                   ; preds = %bb.as, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread198.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !7299
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !7285, !noalias !7287, !noundef !4 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.bl, label %bb.l

bb.l:                                             ; preds = %.loopexit101.i, %.loopexit.i
  %i.by = phi i64 [ %i.bt, %.loopexit.i ], [ %i.bw, %.loopexit101.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !7304
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.by), !noalias !7282
  call void @llvm.experimental.noalias.scope.decl(metadata !7305)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !7305, !noalias !7308, !noundef !4 ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cc = and i64 %i.cb, 1
  %.not.i31.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i31.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = lshr i64 %i.cb, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !7310
  %i.ce = load ptr, ptr %i.aj, align 8, !alias.scope !7305, !noalias !7308, !nonnull !4, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !7305, !noalias !7308, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !7305, !noalias !7308, !noundef !4
  %i.cj = sub nsw i64 0, %i.cd
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj
  %i.cl = add i64 %i.cg, %i.cd
  %i.cm = add i64 %i.ci, %i.cd                    ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  store i64 %i.cm, ptr %i.ad, align 8, !noalias !7310
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ck, ptr %i.co, align 8, !noalias !7310
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.cl, ptr %i.cp, align 8, !noalias !7310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !7310
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad), !noalias !7311
  call void @llvm.experimental.noalias.scope.decl(metadata !7312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !7310
  store i64 %i.cd, ptr %i.ab, align 8, !noalias !7315
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !7312, !noalias !7310, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.cd, %i.cr
  br i1 %.not.i.i.i, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7315
  store i64 %i.cr, ptr %i.aa, align 8, !noalias !7315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7315
  store ptr %i.ab, ptr %i.z, align 8, !noalias !7315
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !7315
  %i.cs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.cs, align 8, !noalias !7315
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !7315
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i.i unwind label %bb.p, !noalias !7311

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.aj, align 8, !alias.scope !7305, !noalias !7308, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !7305, !noalias !7308, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7316)
  call void @llvm.experimental.noalias.scope.decl(metadata !7319)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !7322, !noalias !7310, !noundef !4
  %i.cz = load ptr, ptr %i.ac, align 8, !alias.scope !7322, !noalias !7310, !nonnull !4, !align !27, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !7323, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !7322, !noalias !7310, !noundef !4
  invoke void %i.db(ptr noundef %i.cy, ptr noundef %i.dd, i64 noundef %i.cr)
          to label %common.resume unwind label %bb.r, !noalias !7311, !inline_history !29

bb.q:                                             ; preds = %bb.m
  %i.de = sub nuw i64 %i.cr, %i.cd
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !7312, !noalias !7310, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7310
  %.sroa.052.0.copyload53.i = load ptr, ptr %i.ac, align 8, !noalias !7324
  %.sroa.7.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.7.0.copyload59.i = load ptr, ptr %.sroa.7.0..sroa_idx58.i, align 8, !noalias !7324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7310
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.r:                                             ; preds = %bb.p
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7311
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.7.0.i = phi ptr [ %i.ca, %bb.o ], [ %.sroa.7.0.copyload59.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.cv, %bb.o ], [ %i.de, %bb.q ]
  %.sroa.5.0.i = phi ptr [ %i.ct, %bb.o ], [ %i.dh, %bb.q ]
  %.sroa.052.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.o ], [ %.sroa.052.0.copyload53.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !7304
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !7282, !noalias !7325
  br label %bb.bk

bb.s:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload50.i) ]
  %i.dj = load i64, ptr %i.az, align 8, !alias.scope !7285, !noalias !7287, !noundef !4 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.thread112, label %bb.ba

bb.t:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7304
  store i64 %i.be, ptr %i.ai, align 8, !noalias !7304
  store ptr %.sroa.8.0.copyload50.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !7304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.i, i64 144, i1 false), !noalias !7304
  %i.dl = load i8, ptr %i.aq, align 8, !range !1551, !alias.scope !7285, !noalias !7287, !noundef !4 ; 3 uses
  %i.dm = load i64, ptr %1, align 8, !range !183, !alias.scope !7285, !noalias !7287, !noundef !4
  %i.dn = load i64, ptr %i.ay, align 8, !alias.scope !7285, !noalias !7287
  call void @llvm.experimental.noalias.scope.decl(metadata !7326)
  call void @llvm.experimental.noalias.scope.decl(metadata !7329)
  %i.do = load i64, ptr %i.az, align 8, !alias.scope !7331, !noalias !7332, !noundef !4 ; 6 uses
  %i.dp = load i64, ptr %i.ba, align 8, !alias.scope !7331, !noalias !7332, !noundef !4
  %i.dq = sub i64 %i.dp, %i.do
  %i.dr = icmp ugt i64 %i.dq, 4
  br i1 %i.dr, label %.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = invoke noundef zeroext i1 @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef 5, i1 noundef zeroext true)
          to label %bb.v unwind label %.loopexit102.i, !noalias !7334 ; 0 uses

bb.v:                                             ; preds = %bb.u
  %.pre.i.i = load i64, ptr %i.ba, align 8, !alias.scope !7331, !noalias !7332
  %.pre8.i.i = load i64, ptr %i.az, align 8, !alias.scope !7331, !noalias !7332 ; 2 uses
  %.pre9.i.i = sub i64 %.pre.i.i, %.pre8.i.i      ; 2 uses
  %i.dt = icmp ult i64 %.pre9.i.i, 5
  br i1 %i.dt, label %bb.w, label %.thread.i.i, !prof !4133

.thread.i.i:                                      ; preds = %bb.v, %bb.t
  %i.du = phi i64 [ %.pre8.i.i, %bb.v ], [ %i.do, %bb.t ]
  %i.dv = add i64 %i.du, 5
  store i64 %i.dv, ptr %i.az, align 8, !alias.scope !7331, !noalias !7332
  %.not.i32.i = icmp eq i8 %i.dl, 2
  br i1 %.not.i32.i, label %bb.ac, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7335
  store i64 5, ptr %i.u, align 8, !noalias !7335
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.pre9.i.i, ptr %i.dw, align 8, !noalias !7335
  invoke void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u) #31
          to label %bb.ao unwind label %.loopexit.split-lp.i, !noalias !7334

bb.x:                                             ; preds = %.thread.i.i
  %i.dx = trunc nuw i8 %i.dl to i1
  store i64 0, ptr %i.bb, align 8, !alias.scope !7336, !noalias !7337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !7335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.y, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 160, i1 false), !noalias !7338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7335
  store ptr %i.as, ptr %i.x, align 8, !noalias !7335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7339
  invoke void @_RINvYNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsktysmkNHh7l_5prost7message7Message6encodeNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(160) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.z unwind label %.loopexit103.i, !noalias !7343

.loopexit103.i:                                   ; preds = %bb.x
  %lpad.loopexit105.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp104.i:                          ; preds = %bb.aa
  %lpad.loopexit.split-lp106.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp104.i, %.loopexit103.i
  %lpad.phi107.i = phi { ptr, i32 } [ %lpad.loopexit105.i, %.loopexit103.i ], [ %lpad.loopexit.split-lp106.i, %.loopexit.split-lp104.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.y) #34
          to label %common.resume unwind label %bb.ab, !noalias !7343

bb.z:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !7344)
  %i.dy = load i64, ptr %i.t, align 8, !range !183, !alias.scope !7344, !noalias !7339, !noundef !4
  %i.dz = trunc nuw i64 %i.dy to i1
  br i1 %i.dz, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, !prof !5

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7347
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.eb = load <2 x i64>, ptr %i.ea, align 8, !alias.scope !7344, !noalias !7339
  store <2 x i64> %i.eb, ptr %i.s, align 16, !noalias !7347
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 39, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #31
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp104.i, !noalias !7343

.noexc.i.i.i:                                     ; preds = %bb.aa
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7339
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.y), !noalias !7343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7335
  %i.ec = load i64, ptr %i.bb, align 8, !alias.scope !7336, !noalias !7337, !noundef !4
  %i.ed = call noundef ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec11compression8compress(i64 noundef %.val.i, i1 noundef zeroext %i.dx, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.ec), !noalias !7343 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ed, null
  br i1 %.not21.i.i, label %bb.am, label %bb.ah

bb.ab:                                            ; preds = %bb.y
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7343
  unreachable

bb.ac:                                            ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 160, i1 false), !noalias !7338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7335
  store ptr %i.ar, ptr %i.v, align 8, !noalias !7335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7348
  invoke void @_RINvYNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsktysmkNHh7l_5prost7message7Message6encodeNtNtNtCsbYyEjVLvvus_5tonic5codec6buffer9EncodeBufECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.ae unwind label %.loopexit108.i, !noalias !7334

.loopexit108.i:                                   ; preds = %bb.ac
  %lpad.loopexit110.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp109.i:                          ; preds = %bb.af
  %lpad.loopexit.split-lp111.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp109.i, %.loopexit108.i
  %lpad.phi112.i = phi { ptr, i32 } [ %lpad.loopexit110.i, %.loopexit108.i ], [ %lpad.loopexit.split-lp111.i, %.loopexit.split-lp109.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.w) #34
          to label %common.resume unwind label %bb.ag, !noalias !7334

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !7352)
  %i.ef = load i64, ptr %i.r, align 8, !range !183, !alias.scope !7352, !noalias !7348, !noundef !4
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %bb.af, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i22.i.i, !prof !5

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7355
  %i.eh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ei = load <2 x i64>, ptr %i.eh, align 8, !alias.scope !7352, !noalias !7348
  store <2 x i64> %i.ei, ptr %i.q, align 16, !noalias !7355
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 39, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #31
          to label %.noexc.i23.i.i unwind label %.loopexit.split-lp109.i, !noalias !7334

.noexc.i23.i.i:                                   ; preds = %bb.af
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i22.i.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7348
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.w), !noalias !7334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7335
  br label %bb.am

bb.ag:                                            ; preds = %bb.ad
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7334
  unreachable

bb.ah:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7335
  store ptr %i.ed, ptr %i.p, align 8, !noalias !7335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7335
  store ptr %i.p, ptr %i.n, align 8, !noalias !7335
  %.sroa.42.0..sroa_idx.i.i33.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i33.i, align 8, !noalias !7335
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @90, ptr noundef nonnull %i.n)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i unwind label %bb.ai, !noalias !7343

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i, %bb.ai
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ek, %bb.ai ], [ %i.el, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i ]
  %.val6.i.i.i = load ptr, ptr %i.p, align 8, !noalias !7335, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val6.i.i.i) #34
          to label %common.resume unwind label %bb.al, !noalias !7343

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !alias.scope !7359, !noalias !7335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7356
  invoke void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic8metadata3mapNtB5_11MetadataMap3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.k)
          to label %bb.aj unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i, !noalias !7366

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #34
          to label %.body.i.i.i unwind label %bb.ak, !noalias !7366

bb.aj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  store i8 13, ptr %i.em, align 8, !noalias !7356
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !7335
  %i.eo = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store ptr @19, ptr %i.eo, align 8, !noalias !7356
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !7356
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !7356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !7356
  %i.ep = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  store ptr null, ptr %i.ep, align 8, !noalias !7356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7356
  %i.eq = invoke noundef nonnull align 8 ptr @_RNvMNtCsbYyEjVLvvus_5tonic6statusNtB2_11StatusInner11into_status(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.m)
          to label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i unwind label %bb.ai, !noalias !7343

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7366
  unreachable

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7356
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !noalias !7335, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val.i.i.i), !noalias !7343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7335
  br label %.loopexit113.i

bb.al:                                            ; preds = %.body.i.i.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7343
  unreachable

bb.am:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i22.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtCsktysmkNHh7l_5prost5error11EncodeErrorE6expectCsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.et = load i64, ptr %i.az, align 8, !alias.scope !7331, !noalias !7332, !noundef !4 ; 4 uses
  %i.eu = icmp ugt i64 %i.do, %i.et
  br i1 %i.eu, label %bb.an, label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.i, !prof !5

bb.an:                                            ; preds = %bb.am
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.do, i64 noundef %i.et, i64 noundef %i.et, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #31, !noalias !7343
  unreachable

bb.ao:                                            ; preds = %bb.w
  unreachable

.loopexit102.i:                                   ; preds = %bb.u
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp.i, %.loopexit102.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit102.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.ai) #34
          to label %common.resume unwind label %bb.aq, !noalias !7367

bb.aq:                                            ; preds = %bb.ap
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7367
  unreachable

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.am
  %i.ew = load ptr, ptr %i.ar, align 8, !alias.scope !7331, !noalias !7332, !nonnull !4, !noundef !4
  %i.ex = sub nuw i64 %i.et, %i.do
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.do
  %i.ez = call noundef align 8 ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec6encode15finish_encoding(i8 noundef range(i8 0, 3) %i.dl, i64 noundef range(i64 0, 2) %i.dm, i64 %i.dn, ptr noalias noundef nonnull %i.ey, i64 noundef %i.ex), !noalias !7343 ; 2 uses
  %.not28.i = icmp eq ptr %i.ez, null
  br i1 %.not28.i, label %bb.ar, label %.loopexit113.i

bb.ar:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.fa = load i64, ptr %i.az, align 8, !alias.scope !7285, !noalias !7287, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.fa, %.val30.i
  br i1 %.not29.i, label %bb.as, label %bb.at

.loopexit113.i:                                   ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.i, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i
  %.sroa.26.1 = phi i64 [ %.sroa.668.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ undef, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ undef, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.12.1 = phi ptr [ %.sroa.063.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ null, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ null, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.19, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ %.sroa.19, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.771.0.sink.i = phi ptr [ %.sroa.771.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %i.eq, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ %i.ez, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  store ptr %.sroa.771.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !7282, !noalias !7325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7304
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.bk

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7304
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7368)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7370
  %i.fb = load ptr, ptr %i.ao, align 8, !alias.scope !7371, !noalias !7296, !noundef !4
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %.loopexit101.i, label %bb.b

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !7304
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.fa), !noalias !7282
  call void @llvm.experimental.noalias.scope.decl(metadata !7372)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !7372, !noalias !7375, !noundef !4 ; 2 uses
  %i.fe = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.ff = and i64 %i.fe, 1
  %.not.i34.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i34.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fg = lshr i64 %i.fe, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7377
  %i.fh = load ptr, ptr %i.ah, align 8, !alias.scope !7372, !noalias !7375, !nonnull !4, !noundef !4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !7372, !noalias !7375, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !7372, !noalias !7375, !noundef !4
  %i.fm = sub nsw i64 0, %i.fg
  %i.fn = getelementptr inbounds i8, ptr %i.fh, i64 %i.fm
  %i.fo = add i64 %i.fj, %i.fg
  %i.fp = add i64 %i.fl, %i.fg                    ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  store i64 %i.fp, ptr %i.j, align 8, !noalias !7377
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fn, ptr %i.fr, align 8, !noalias !7377
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.fo, ptr %i.fs, align 8, !noalias !7377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7377
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !7378
  call void @llvm.experimental.noalias.scope.decl(metadata !7379)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7377
  store i64 %i.fg, ptr %i.h, align 8, !noalias !7382
  %i.ft = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !7379, !noalias !7377, !noundef !4 ; 4 uses
  %.not.i.i35.i = icmp ugt i64 %i.fg, %i.fu
  br i1 %.not.i.i35.i, label %bb.av, label %bb.ay, !prof !5

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7382
  store i64 %i.fu, ptr %i.g, align 8, !noalias !7382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7382
  store ptr %i.h, ptr %i.f, align 8, !noalias !7382
  %.sroa.42.0..sroa_idx.i.i36.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i36.i, align 8, !noalias !7382
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.fv, align 8, !noalias !7382
  %.sroa.46.0..sroa_idx.i.i37.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i37.i, align 8, !noalias !7382
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i39.i unwind label %bb.ax, !noalias !7378

.noexc.i39.i:                                     ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.fw = load ptr, ptr %i.ah, align 8, !alias.scope !7372, !noalias !7375, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !7372, !noalias !7375, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i

bb.ax:                                            ; preds = %bb.av
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7383)
  call void @llvm.experimental.noalias.scope.decl(metadata !7386)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !7389, !noalias !7377, !noundef !4
  %i.gc = load ptr, ptr %i.i, align 8, !alias.scope !7389, !noalias !7377, !nonnull !4, !align !27, !noundef !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !7390, !nonnull !4, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !7389, !noalias !7377, !noundef !4
  invoke void %i.ge(ptr noundef %i.gb, ptr noundef %i.gg, i64 noundef %i.fu)
          to label %common.resume unwind label %bb.az, !noalias !7378, !inline_history !29

bb.ay:                                            ; preds = %bb.au
  %i.gh = sub nuw i64 %i.fu, %i.fg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !7379, !noalias !7377, !noundef !4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7377
  %.sroa.063.0.copyload64.i = load ptr, ptr %i.i, align 8, !noalias !7391
  %.sroa.771.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.771.0.copyload73.i = load ptr, ptr %.sroa.771.0..sroa_idx72.i, align 8, !noalias !7391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7377
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i

bb.az:                                            ; preds = %bb.ax
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7378
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i: ; preds = %bb.ay, %bb.aw
  %.sroa.771.0.i = phi ptr [ %i.fd, %bb.aw ], [ %.sroa.771.0.copyload73.i, %bb.ay ]
  %.sroa.668.0.i = phi i64 [ %i.fy, %bb.aw ], [ %i.gh, %bb.ay ]
  %.sroa.565.0.i = phi ptr [ %i.fw, %bb.aw ], [ %i.gk, %bb.ay ]
  %.sroa.063.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.aw ], [ %.sroa.063.0.copyload64.i, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !7304
  store ptr %.sroa.565.0.i, ptr %.sroa.19, align 8, !alias.scope !7282, !noalias !7325
  br label %.loopexit113.i

.thread112:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %.thread108

bb.ba:                                            ; preds = %bb.s
  %i.gm = load ptr, ptr %i.at, align 8, !alias.scope !7392, !noalias !7287, !align !27, !noundef !4
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.at)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i unwind label %bb.bc, !noalias !7282

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i: ; preds = %bb.bb
  %.pre.i = load i64, ptr %i.az, align 8, !alias.scope !7285, !noalias !7287
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.go = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload50.i, ptr %i.at, align 8, !alias.scope !7285, !noalias !7287
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i, %bb.ba
  %i.gp = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i ], [ %i.dj, %bb.ba ]
  store ptr %.sroa.8.0.copyload50.i, ptr %i.at, align 8, !alias.scope !7285, !noalias !7287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !7304
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, i64 noundef %i.gp), !noalias !7282
  call void @llvm.experimental.noalias.scope.decl(metadata !7395)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !7395, !noalias !7398, !noundef !4 ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gt = and i64 %i.gs, 1
  %.not.i41.i = icmp eq i64 %i.gt, 0
  br i1 %.not.i41.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.gu = lshr i64 %i.gs, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7400
  %i.gv = load ptr, ptr %i.ag, align 8, !alias.scope !7395, !noalias !7398, !nonnull !4, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !7395, !noalias !7398, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !7395, !noalias !7398, !noundef !4
  %i.ha = sub nsw i64 0, %i.gu
  %i.hb = getelementptr inbounds i8, ptr %i.gv, i64 %i.ha
  %i.hc = add i64 %i.gx, %i.gu
  %i.hd = add i64 %i.gz, %i.gu                    ; 2 uses
  %i.he = icmp sgt i64 %i.hd, -1
  call void @llvm.assume(i1 %i.he)
  store i64 %i.hd, ptr %i.e, align 8, !noalias !7400
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.hb, ptr %i.hf, align 8, !noalias !7400
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.hc, ptr %i.hg, align 8, !noalias !7400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7400
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !7401
  call void @llvm.experimental.noalias.scope.decl(metadata !7402)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7400
  store i64 %i.gu, ptr %i.c, align 8, !noalias !7405
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !7402, !noalias !7400, !noundef !4 ; 4 uses
  %.not.i.i42.i = icmp ugt i64 %i.gu, %i.hi
  br i1 %.not.i.i42.i, label %bb.be, label %bb.bh, !prof !5

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7405
  store i64 %i.hi, ptr %i.b, align 8, !noalias !7405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7405
  store ptr %i.c, ptr %i.a, align 8, !noalias !7405
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !7405
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.hj, align 8, !noalias !7405
  %.sroa.46.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i44.i, align 8, !noalias !7405
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i46.i unwind label %bb.bg, !noalias !7401

.noexc.i46.i:                                     ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.hk = load ptr, ptr %i.ag, align 8, !alias.scope !7395, !noalias !7398, !nonnull !4, !noundef !4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !7395, !noalias !7398, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bg:                                            ; preds = %bb.be
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7406)
  call void @llvm.experimental.noalias.scope.decl(metadata !7409)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !7412, !noalias !7400, !noundef !4
  %i.hq = load ptr, ptr %i.d, align 8, !alias.scope !7412, !noalias !7400, !nonnull !4, !align !27, !noundef !4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !7413, !nonnull !4, !noundef !4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !7412, !noalias !7400, !noundef !4
  invoke void %i.hs(ptr noundef %i.hp, ptr noundef %i.hu, i64 noundef %i.hi)
          to label %common.resume unwind label %bb.bi, !noalias !7401, !inline_history !29

bb.bh:                                            ; preds = %bb.bd
  %i.hv = sub nuw i64 %i.hi, %i.gu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !7402, !noalias !7400, !noundef !4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7400
  %.sroa.078.0.copyload79.i = load ptr, ptr %i.d, align 8, !noalias !7414
  %.sroa.786.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.786.0.copyload88.i = load ptr, ptr %.sroa.786.0..sroa_idx87.i, align 8, !noalias !7414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7400
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bi:                                            ; preds = %bb.bg
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7401
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i: ; preds = %bb.bh, %bb.bf
  %.sroa.786.0.i = phi ptr [ %i.gr, %bb.bf ], [ %.sroa.786.0.copyload88.i, %bb.bh ]
  %.sroa.683.0.i = phi i64 [ %i.hm, %bb.bf ], [ %i.hv, %bb.bh ]
  %.sroa.580.0.i = phi ptr [ %i.hk, %bb.bf ], [ %i.hy, %bb.bh ]
  %.sroa.078.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bf ], [ %.sroa.078.0.copyload79.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !7304
  store ptr %.sroa.786.0.i, ptr %.sroa.30, align 8, !alias.scope !7282, !noalias !7325
  br label %bb.bk

bb.bj:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.by

bb.bk:                                            ; preds = %.loopexit113.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106 = phi ptr [ %.sroa.580.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre, %.loopexit113.i ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.683.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %.loopexit113.i ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.078.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ], [ %.sroa.052.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %.loopexit113.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.ia = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.ia, label %.thread108, label %bb.bq

bb.bl:                                            ; preds = %.loopexit101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an)
  %i.ib = load i64, ptr %i.ak, align 8, !range !3021, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.ib, -2
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.ic = icmp eq i64 %i.ib, -1
  br i1 %i.ic, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bo, %bb.bp, %bb.bl
  %.sroa.017.0 = phi i64 [ -3, %bb.bl ], [ -2, %bb.bo ], [ %i.ib, %bb.bp ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bl ], [ %.sroa.563.0.copyload, %bb.bo ], [ %.sroa.563.0.copyload, %bb.bp ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.by

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bn

.thread108:                                       ; preds = %bb.a, %.thread112, %bb.bk
  %i.id = phi ptr [ %.sroa.8.0.copyload50.i, %.thread112 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, %bb.bk ], [ %i.av, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.id) ]
  store ptr %i.id, ptr %i.am, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.if = load i8, ptr %i.ie, align 8, !range !3, !noundef !4
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bk
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.br:                                            ; preds = %.thread108
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.ih, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %bb.bv unwind label %bb.bu

bb.bs:                                            ; preds = %.thread108
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.id, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.by

bb.bu:                                            ; preds = %bb.br
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am) #34
          to label %common.resume unwind label %bb.bz

bb.bv:                                            ; preds = %bb.br
  %i.ij = load i64, ptr %i.al, align 8, !range !14, !noundef !4 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, -1
  %i.il = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.im = load ptr, ptr %i.il, align 8            ; 2 uses
  br i1 %i.ik, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.im, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 %i.ij, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.im, ptr %.sroa.553.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
  br label %bb.bt

bb.by:                                            ; preds = %bb.bn, %bb.bq, %bb.bt, %bb.bj, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.bz:                                            ; preds = %bb.bu
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [176 x i8], align 8               ; 6 uses
  %i.q = alloca [176 x i8], align 8               ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [176 x i8], align 8               ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.9.i = alloca [160 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.v = alloca [96 x i8], align 8                ; 4 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 8 uses
  %.sroa.19 = alloca ptr, align 8                 ; 5 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7418)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %.val.i = load i64, ptr %i.aa, align 8, !alias.scope !7418, !noalias !7420, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val30.i = load i64, ptr %i.af, align 8, !alias.scope !7418, !noalias !7420, !noundef !4
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !7418, !noalias !7420, !align !27, !noundef !4 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !alias.scope !7418, !noalias !7420
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.preheader.i, label %.thread108

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7425
  %i.ah = load ptr, ptr %i.z, align 8, !alias.scope !7428, !noalias !7429, !noundef !4
  %.not.i103.i = icmp eq ptr %i.ah, null
  br i1 %.not.i103.i, label %.loopexit96.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.8.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.v, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7430)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7432
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !7433
  %i.al = load i64, ptr %i.p, align 8, !range !2291, !noalias !7432, !noundef !4
  %i.am = icmp eq i64 %i.al, -3
  br i1 %i.am, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7432
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false), !noalias !7432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7432
  %i.an = load i64, ptr %i.q, align 8, !noalias !7434 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.an, -2
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.z, align 8, !alias.scope !7435, !noalias !7429
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(176) %i.q) #34
          to label %common.resume unwind label %bb.k, !noalias !7433

bb.d:                                             ; preds = %bb.c
  %.val7.i.i = load ptr, ptr %i.z, align 8, !alias.scope !7435, !noalias !7429, !noundef !4 ; 4 uses
  %.val8.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !7435, !noalias !7429 ; 6 uses
  %i.ao = icmp eq ptr %.val7.i.i, null
  br i1 %i.ao, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread129.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %i.ap = load ptr, ptr %.val8.i.i, align 8, !invariant.load !4, !noalias !7433 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.ap(ptr noundef nonnull %.val7.i.i)
          to label %bb.g unwind label %bb.i, !noalias !7433

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !204, !invariant.load !4, !noalias !7433 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread129.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !1728, !invariant.load !4, !noalias !7433
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef range(i64 1, 0) %i.ar, i64 noundef range(i64 1, 536870913) %i.au) #32, !noalias !7433
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread129.i

bb.i:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !204, !invariant.load !4, !noalias !7433 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !1728, !invariant.load !4, !noalias !7433
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef range(i64 1, 0) %i.ax, i64 noundef range(i64 1, 536870913) %i.ba) #32, !noalias !7433
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread129.i: ; preds = %bb.h, %bb.g, %bb.d
  store ptr null, ptr %i.z, align 8, !alias.scope !7435, !noalias !7429
  br label %.loopexit96.i

bb.k:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7433
  unreachable

common.resume:                                    ; preds = %bb.ax, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i, %bb.p, %bb.aa, %bb.af, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.fl, %bb.aj ], [ %i.dx, %bb.aa ], [ %i.av, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i ], [ %i.cf, %bb.p ], [ %i.em, %bb.af ], [ %i.gg, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload48.i = load ptr, ptr %.sroa.8.0..sroa_idx47.i, align 8, !noalias !7434 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx49.i, i64 160, i1 false), !noalias !7434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7432
  switch i64 %i.an, label %bb.t [
    i64 -3, label %.loopexit.i
    i64 -1, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  %i.bc = load i64, ptr %i.ak, align 8, !alias.scope !7418, !noalias !7420, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.am, label %bb.l

.loopexit96.i:                                    ; preds = %bb.v, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread129.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7432
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !7418, !noalias !7420, !noundef !4 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.ao, label %bb.l

bb.l:                                             ; preds = %.loopexit96.i, %.loopexit.i
  %i.bh = phi i64 [ %i.bc, %.loopexit.i ], [ %i.bf, %.loopexit96.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7436
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.bh), !noalias !7415
  call void @llvm.experimental.noalias.scope.decl(metadata !7437)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !7437, !noalias !7440, !noundef !4 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %.not.i31.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i31.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = lshr i64 %i.bk, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7442
  %i.bn = load ptr, ptr %i.u, align 8, !alias.scope !7437, !noalias !7440, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !7437, !noalias !7440, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !7437, !noalias !7440, !noundef !4
  %i.bs = sub nsw i64 0, %i.bm
  %i.bt = getelementptr inbounds i8, ptr %i.bn, i64 %i.bs
  %i.bu = add i64 %i.bp, %i.bm
  %i.bv = add i64 %i.br, %i.bm                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, -1
  call void @llvm.assume(i1 %i.bw)
  store i64 %i.bv, ptr %i.o, align 8, !noalias !7442
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bt, ptr %i.bx, align 8, !noalias !7442
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.bu, ptr %i.by, align 8, !noalias !7442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7442
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !7443
  call void @llvm.experimental.noalias.scope.decl(metadata !7444)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7442
  store i64 %i.bm, ptr %i.m, align 8, !noalias !7447
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !7444, !noalias !7442, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.bm, %i.ca
  br i1 %.not.i.i.i, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7447
  store i64 %i.ca, ptr %i.l, align 8, !noalias !7447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7447
  store ptr %i.m, ptr %i.k, align 8, !noalias !7447
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !7447
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.cb, align 8, !noalias !7447
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !7447
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i.i unwind label %bb.p, !noalias !7443

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr %i.u, align 8, !alias.scope !7437, !noalias !7440, !nonnull !4, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !7437, !noalias !7440, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7448)
  call void @llvm.experimental.noalias.scope.decl(metadata !7451)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !7454, !noalias !7442, !noundef !4
  %i.ci = load ptr, ptr %i.n, align 8, !alias.scope !7454, !noalias !7442, !nonnull !4, !align !27, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !7455, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !7454, !noalias !7442, !noundef !4
  invoke void %i.ck(ptr noundef %i.ch, ptr noundef %i.cm, i64 noundef %i.ca)
          to label %common.resume unwind label %bb.r, !noalias !7443, !inline_history !29

bb.q:                                             ; preds = %bb.m
  %i.cn = sub nuw i64 %i.ca, %i.bm
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !7444, !noalias !7442, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7442
  %.sroa.050.0.copyload51.i = load ptr, ptr %i.n, align 8, !noalias !7456
  %.sroa.7.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.7.0.copyload57.i = load ptr, ptr %.sroa.7.0..sroa_idx56.i, align 8, !noalias !7456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7442
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7443
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.7.0.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.7.0.copyload57.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.ce, %bb.o ], [ %i.cn, %bb.q ]
  %.sroa.5.0.i = phi ptr [ %i.cc, %bb.o ], [ %i.cq, %bb.q ]
  %.sroa.050.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.o ], [ %.sroa.050.0.copyload51.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7436
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !7415, !noalias !7457
  br label %bb.an

bb.s:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload48.i) ]
  %i.cs = load i64, ptr %i.ak, align 8, !alias.scope !7418, !noalias !7420, !noundef !4 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.thread112, label %bb.ad

bb.t:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7436
  store i64 %i.an, ptr %i.t, align 8, !noalias !7436
  store ptr %.sroa.8.0.copyload48.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !7436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, i64 160, i1 false), !noalias !7436
  %i.cu = load i8, ptr %i.ab, align 8, !range !1551, !alias.scope !7418, !noalias !7420, !noundef !4
  %i.cv = load i64, ptr %1, align 8, !range !183, !alias.scope !7418, !noalias !7420, !noundef !4
  %i.cw = load i64, ptr %i.aj, align 8, !alias.scope !7418, !noalias !7420
  %i.cx = call fastcc noundef align 8 ptr @_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(32) %i.ac, ptr noalias noundef align 8 dereferenceable(32) %i.ad, i8 noundef %i.cu, i64 noundef %i.cv, i64 %i.cw, i64 noundef %.val.i, ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.t) ; 2 uses
  %.not28.i = icmp eq ptr %i.cx, null
  br i1 %.not28.i, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cy = load i64, ptr %i.ak, align 8, !alias.scope !7418, !noalias !7420, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.cy, %.val30.i
  br i1 %.not29.i, label %bb.v, label %bb.w

.loopexit:                                        ; preds = %bb.t, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i
  %.sroa.26.1 = phi i64 [ %.sroa.666.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i ], [ undef, %bb.t ]
  %.sroa.12.1 = phi ptr [ %.sroa.061.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i ], [ null, %bb.t ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i ], [ %.sroa.19, %bb.t ]
  %.sroa.769.0.sink.i = phi ptr [ %.sroa.769.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i ], [ %i.cx, %bb.t ]
  store ptr %.sroa.769.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !7415, !noalias !7457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7436
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.an

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7436
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7458)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7460
  %i.cz = load ptr, ptr %i.z, align 8, !alias.scope !7461, !noalias !7429, !noundef !4
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %.loopexit96.i, label %bb.b

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7436
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.cy), !noalias !7415
  call void @llvm.experimental.noalias.scope.decl(metadata !7462)
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !7462, !noalias !7465, !noundef !4 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.dd = and i64 %i.dc, 1
  %.not.i32.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i32.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = lshr i64 %i.dc, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7467
  %i.df = load ptr, ptr %i.s, align 8, !alias.scope !7462, !noalias !7465, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !7462, !noalias !7465, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !7462, !noalias !7465, !noundef !4
  %i.dk = sub nsw i64 0, %i.de
  %i.dl = getelementptr inbounds i8, ptr %i.df, i64 %i.dk
  %i.dm = add i64 %i.dh, %i.de
  %i.dn = add i64 %i.dj, %i.de                    ; 2 uses
  %i.do = icmp sgt i64 %i.dn, -1
  call void @llvm.assume(i1 %i.do)
  store i64 %i.dn, ptr %i.j, align 8, !noalias !7467
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.dl, ptr %i.dp, align 8, !noalias !7467
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.dm, ptr %i.dq, align 8, !noalias !7467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7467
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !7468
  call void @llvm.experimental.noalias.scope.decl(metadata !7469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7467
  store i64 %i.de, ptr %i.h, align 8, !noalias !7472
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !7469, !noalias !7467, !noundef !4 ; 4 uses
  %.not.i.i33.i = icmp ugt i64 %i.de, %i.ds
  br i1 %.not.i.i33.i, label %bb.y, label %bb.ab, !prof !5

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7472
  store i64 %i.ds, ptr %i.g, align 8, !noalias !7472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7472
  store ptr %i.h, ptr %i.f, align 8, !noalias !7472
  %.sroa.42.0..sroa_idx.i.i34.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i34.i, align 8, !noalias !7472
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.dt, align 8, !noalias !7472
  %.sroa.46.0..sroa_idx.i.i35.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i35.i, align 8, !noalias !7472
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i37.i unwind label %bb.aa, !noalias !7468

.noexc.i37.i:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %i.s, align 8, !alias.scope !7462, !noalias !7465, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !7462, !noalias !7465, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i

bb.aa:                                            ; preds = %bb.y
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7473)
  call void @llvm.experimental.noalias.scope.decl(metadata !7476)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !7479, !noalias !7467, !noundef !4
  %i.ea = load ptr, ptr %i.i, align 8, !alias.scope !7479, !noalias !7467, !nonnull !4, !align !27, !noundef !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !7480, !nonnull !4, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !7479, !noalias !7467, !noundef !4
  invoke void %i.ec(ptr noundef %i.dz, ptr noundef %i.ee, i64 noundef %i.ds)
          to label %common.resume unwind label %bb.ac, !noalias !7468, !inline_history !29

bb.ab:                                            ; preds = %bb.x
  %i.ef = sub nuw i64 %i.ds, %i.de
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !7469, !noalias !7467, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7467
  %.sroa.061.0.copyload62.i = load ptr, ptr %i.i, align 8, !noalias !7481
  %.sroa.769.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.769.0.copyload71.i = load ptr, ptr %.sroa.769.0..sroa_idx70.i, align 8, !noalias !7481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7467
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i

bb.ac:                                            ; preds = %bb.aa
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7468
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i: ; preds = %bb.ab, %bb.z
  %.sroa.769.0.i = phi ptr [ %i.db, %bb.z ], [ %.sroa.769.0.copyload71.i, %bb.ab ]
  %.sroa.666.0.i = phi i64 [ %i.dw, %bb.z ], [ %i.ef, %bb.ab ]
  %.sroa.563.0.i = phi ptr [ %i.du, %bb.z ], [ %i.ei, %bb.ab ]
  %.sroa.061.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.z ], [ %.sroa.061.0.copyload62.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7436
  store ptr %.sroa.563.0.i, ptr %.sroa.19, align 8, !alias.scope !7415, !noalias !7457
  br label %.loopexit

.thread112:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %.thread108

bb.ad:                                            ; preds = %bb.s
  %i.ek = load ptr, ptr %i.ae, align 8, !alias.scope !7482, !noalias !7420, !align !27, !noundef !4
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ae)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i unwind label %bb.af, !noalias !7415

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i: ; preds = %bb.ae
  %.pre.i = load i64, ptr %i.ak, align 8, !alias.scope !7418, !noalias !7420
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.em = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload48.i, ptr %i.ae, align 8, !alias.scope !7418, !noalias !7420
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i, %bb.ad
  %i.en = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i ], [ %i.cs, %bb.ad ]
  store ptr %.sroa.8.0.copyload48.i, ptr %i.ae, align 8, !alias.scope !7418, !noalias !7420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7436
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.en), !noalias !7415
  call void @llvm.experimental.noalias.scope.decl(metadata !7485)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !7485, !noalias !7488, !noundef !4 ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.er = and i64 %i.eq, 1
  %.not.i39.i = icmp eq i64 %i.er, 0
  br i1 %.not.i39.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.es = lshr i64 %i.eq, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7490
  %i.et = load ptr, ptr %i.r, align 8, !alias.scope !7485, !noalias !7488, !nonnull !4, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !7485, !noalias !7488, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !7485, !noalias !7488, !noundef !4
  %i.ey = sub nsw i64 0, %i.es
  %i.ez = getelementptr inbounds i8, ptr %i.et, i64 %i.ey
  %i.fa = add i64 %i.ev, %i.es
  %i.fb = add i64 %i.ex, %i.es                    ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, -1
  call void @llvm.assume(i1 %i.fc)
  store i64 %i.fb, ptr %i.e, align 8, !noalias !7490
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ez, ptr %i.fd, align 8, !noalias !7490
  %i.fe = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.fa, ptr %i.fe, align 8, !noalias !7490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7490
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !7491
  call void @llvm.experimental.noalias.scope.decl(metadata !7492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7490
  store i64 %i.es, ptr %i.c, align 8, !noalias !7495
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !7492, !noalias !7490, !noundef !4 ; 4 uses
  %.not.i.i40.i = icmp ugt i64 %i.es, %i.fg
  br i1 %.not.i.i40.i, label %bb.ah, label %bb.ak, !prof !5

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7495
  store i64 %i.fg, ptr %i.b, align 8, !noalias !7495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7495
  store ptr %i.c, ptr %i.a, align 8, !noalias !7495
  %.sroa.42.0..sroa_idx.i.i41.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i41.i, align 8, !noalias !7495
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.fh, align 8, !noalias !7495
  %.sroa.46.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i42.i, align 8, !noalias !7495
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i44.i unwind label %bb.aj, !noalias !7491

.noexc.i44.i:                                     ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.fi = load ptr, ptr %i.r, align 8, !alias.scope !7485, !noalias !7488, !nonnull !4, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !7485, !noalias !7488, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i

bb.aj:                                            ; preds = %bb.ah
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7496)
  call void @llvm.experimental.noalias.scope.decl(metadata !7499)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !7502, !noalias !7490, !noundef !4
  %i.fo = load ptr, ptr %i.d, align 8, !alias.scope !7502, !noalias !7490, !nonnull !4, !align !27, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !7503, !nonnull !4, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !7502, !noalias !7490, !noundef !4
  invoke void %i.fq(ptr noundef %i.fn, ptr noundef %i.fs, i64 noundef %i.fg)
          to label %common.resume unwind label %bb.al, !noalias !7491, !inline_history !29

bb.ak:                                            ; preds = %bb.ag
  %i.ft = sub nuw i64 %i.fg, %i.es
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !7492, !noalias !7490, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7490
  %.sroa.076.0.copyload77.i = load ptr, ptr %i.d, align 8, !noalias !7504
  %.sroa.784.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.784.0.copyload86.i = load ptr, ptr %.sroa.784.0..sroa_idx85.i, align 8, !noalias !7504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7490
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i

bb.al:                                            ; preds = %bb.aj
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7491
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i: ; preds = %bb.ak, %bb.ai
  %.sroa.784.0.i = phi ptr [ %i.ep, %bb.ai ], [ %.sroa.784.0.copyload86.i, %bb.ak ]
  %.sroa.681.0.i = phi i64 [ %i.fk, %bb.ai ], [ %i.ft, %bb.ak ]
  %.sroa.578.0.i = phi ptr [ %i.fi, %bb.ai ], [ %i.fw, %bb.ak ]
  %.sroa.076.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.ai ], [ %.sroa.076.0.copyload77.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7436
  store ptr %.sroa.784.0.i, ptr %.sroa.30, align 8, !alias.scope !7415, !noalias !7457
  br label %bb.an

bb.am:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.bb

bb.an:                                            ; preds = %.loopexit, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106 = phi ptr [ %.sroa.578.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre, %.loopexit ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.681.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %.loopexit ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.076.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i ], [ %.sroa.050.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.fy = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.fy, label %.thread108, label %bb.at

bb.ao:                                            ; preds = %.loopexit96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
  %i.fz = load i64, ptr %i.v, align 8, !range !3021, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.fz, -2
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ar, %bb.as, %bb.ao
  %.sroa.017.0 = phi i64 [ -3, %bb.ao ], [ -2, %bb.ar ], [ %i.fz, %bb.as ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.ao ], [ %.sroa.563.0.copyload, %bb.ar ], [ %.sroa.563.0.copyload, %bb.as ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.bb

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.aq

bb.as:                                            ; preds = %bb.ap
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.aq

.thread108:                                       ; preds = %bb.a, %.thread112, %bb.an
  %i.gb = phi ptr [ %.sroa.8.0.copyload48.i, %.thread112 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, %bb.an ], [ %i.ag, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gb) ]
  store ptr %i.gb, ptr %i.x, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.gd = load i8, ptr %i.gc, align 8, !range !3, !noundef !4
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.an
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.bb

bb.au:                                            ; preds = %.thread108
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.gf, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.ay unwind label %bb.ax

bb.av:                                            ; preds = %.thread108
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gb, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ba, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bb

bb.ax:                                            ; preds = %bb.au
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x) #34
          to label %common.resume unwind label %bb.bc

bb.ay:                                            ; preds = %bb.au
  %i.gh = load i64, ptr %i.w, align 8, !range !14, !noundef !4 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, -1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  br i1 %i.gi, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gk, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.gh, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gk, ptr %.sroa.553.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
  br label %bb.aw

bb.bb:                                            ; preds = %bb.aq, %bb.at, %bb.aw, %bb.am, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.bc:                                            ; preds = %bb.ax
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(312) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [176 x i8], align 8               ; 6 uses
  %i.q = alloca [176 x i8], align 8               ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [176 x i8], align 8               ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.9.i = alloca [160 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.v = alloca [96 x i8], align 8                ; 4 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 8 uses
  %.sroa.19 = alloca ptr, align 8                 ; 5 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7508)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 6 uses
  %.val.i = load i64, ptr %i.aa, align 8, !alias.scope !7508, !noalias !7510, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val30.i = load i64, ptr %i.af, align 8, !alias.scope !7508, !noalias !7510, !noundef !4
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !7508, !noalias !7510, !align !27, !noundef !4 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !alias.scope !7508, !noalias !7510
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.preheader.i, label %.thread108

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7515
  %i.ah = load i64, ptr %i.z, align 8, !range !2291, !alias.scope !7518, !noalias !7519, !noundef !4
  %.not.i103.i = icmp eq i64 %i.ah, -3
  br i1 %.not.i103.i, label %.loopexit96.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.r, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7522
  call void @_RNvXs_NtCskbjA1QblxuK_12tokio_stream4onceINtB4_4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !7523
  %i.al = load i64, ptr %i.p, align 8, !range !2291, !noalias !7522, !noundef !4
  %i.am = icmp eq i64 %i.al, -3
  br i1 %i.am, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7522
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false), !noalias !7522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7522
  %i.an = load i64, ptr %i.q, align 8, !noalias !7524 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.an, -2
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i

.body.i.i:                                        ; preds = %bb.f, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.z, align 8, !alias.scope !7525, !noalias !7526
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(176) %i.q) #34
          to label %common.resume unwind label %bb.g, !noalias !7523

bb.d:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %i.z, align 8, !range !2291, !alias.scope !7529, !noalias !7526, !noundef !4
  switch i64 %i.ap, label %bb.e [
    i64 -3, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread126.i
    i64 -2, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread126.i
    i64 -1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.z)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread126.i unwind label %.body.i.i, !noalias !7523

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread126.i unwind label %.body.i.i, !noalias !7523

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread126.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  store i64 -3, ptr %i.z, align 8, !alias.scope !7525, !noalias !7526
  br label %.loopexit96.i

bb.g:                                             ; preds = %.body.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7523
  unreachable

common.resume:                                    ; preds = %bb.at, %.body.i.i, %bb.l, %bb.w, %bb.ab, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.fa, %bb.af ], [ %i.dm, %bb.w ], [ %i.ao, %.body.i.i ], [ %i.bu, %bb.l ], [ %i.eb, %bb.ab ], [ %i.fv, %bb.at ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload48.i = load ptr, ptr %.sroa.8.0..sroa_idx47.i, align 8, !noalias !7524 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx49.i, i64 160, i1 false), !noalias !7524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7522
  switch i64 %i.an, label %bb.p [
    i64 -3, label %.loopexit.i
    i64 -1, label %bb.o
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  %i.ar = load i64, ptr %i.ak, align 8, !alias.scope !7508, !noalias !7510, !noundef !4 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.ai, label %bb.h

.loopexit96.i:                                    ; preds = %bb.r, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread126.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7522
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !7508, !noalias !7510, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %.loopexit96.i, %.loopexit.i
  %i.aw = phi i64 [ %i.ar, %.loopexit.i ], [ %i.au, %.loopexit96.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7532
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.aw), !noalias !7505
  call void @llvm.experimental.noalias.scope.decl(metadata !7533)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !7533, !noalias !7536, !noundef !4 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = and i64 %i.az, 1
  %.not.i31.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i31.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = lshr i64 %i.az, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7538
  %i.bc = load ptr, ptr %i.u, align 8, !alias.scope !7533, !noalias !7536, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !7533, !noalias !7536, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !7533, !noalias !7536, !noundef !4
  %i.bh = sub nsw i64 0, %i.bb
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %i.bh
  %i.bj = add i64 %i.be, %i.bb
  %i.bk = add i64 %i.bg, %i.bb                    ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  call void @llvm.assume(i1 %i.bl)
  store i64 %i.bk, ptr %i.o, align 8, !noalias !7538
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bi, ptr %i.bm, align 8, !noalias !7538
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.bj, ptr %i.bn, align 8, !noalias !7538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7538
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !7539
  call void @llvm.experimental.noalias.scope.decl(metadata !7540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7538
  store i64 %i.bb, ptr %i.m, align 8, !noalias !7543
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !7540, !noalias !7538, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.bb, %i.bp
  br i1 %.not.i.i.i, label %bb.j, label %bb.m, !prof !5

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7543
  store i64 %i.bp, ptr %i.l, align 8, !noalias !7543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7543
  store ptr %i.m, ptr %i.k, align 8, !noalias !7543
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !7543
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.bq, align 8, !noalias !7543
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !7543
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i.i unwind label %bb.l, !noalias !7539

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %i.u, align 8, !alias.scope !7533, !noalias !7536, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !7533, !noalias !7536, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7544)
  call void @llvm.experimental.noalias.scope.decl(metadata !7547)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !7550, !noalias !7538, !noundef !4
  %i.bx = load ptr, ptr %i.n, align 8, !alias.scope !7550, !noalias !7538, !nonnull !4, !align !27, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !7551, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !7550, !noalias !7538, !noundef !4
  invoke void %i.bz(ptr noundef %i.bw, ptr noundef %i.cb, i64 noundef %i.bp)
          to label %common.resume unwind label %bb.n, !noalias !7539, !inline_history !29

bb.m:                                             ; preds = %bb.i
  %i.cc = sub nuw i64 %i.bp, %i.bb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !7540, !noalias !7538, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7538
  %.sroa.050.0.copyload51.i = load ptr, ptr %i.n, align 8, !noalias !7552
  %.sroa.7.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.7.0.copyload57.i = load ptr, ptr %.sroa.7.0..sroa_idx56.i, align 8, !noalias !7552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7538
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7539
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.m, %bb.k
  %.sroa.7.0.i = phi ptr [ %i.ay, %bb.k ], [ %.sroa.7.0.copyload57.i, %bb.m ]
  %.sroa.6.0.i = phi i64 [ %i.bt, %bb.k ], [ %i.cc, %bb.m ]
  %.sroa.5.0.i = phi ptr [ %i.br, %bb.k ], [ %i.cf, %bb.m ]
  %.sroa.050.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.k ], [ %.sroa.050.0.copyload51.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7532
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !7505, !noalias !7553
  br label %bb.aj

bb.o:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload48.i) ]
  %i.ch = load i64, ptr %i.ak, align 8, !alias.scope !7508, !noalias !7510, !noundef !4 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.thread112, label %bb.z

bb.p:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7532
  store i64 %i.an, ptr %i.t, align 8, !noalias !7532
  store ptr %.sroa.8.0.copyload48.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !7532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, i64 160, i1 false), !noalias !7532
  %i.cj = load i8, ptr %i.ab, align 8, !range !1551, !alias.scope !7508, !noalias !7510, !noundef !4
  %i.ck = load i64, ptr %1, align 8, !range !183, !alias.scope !7508, !noalias !7510, !noundef !4
  %i.cl = load i64, ptr %i.aj, align 8, !alias.scope !7508, !noalias !7510
  %i.cm = call fastcc noundef align 8 ptr @_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(32) %i.ac, ptr noalias noundef align 8 dereferenceable(32) %i.ad, i8 noundef %i.cj, i64 noundef %i.ck, i64 %i.cl, i64 noundef %.val.i, ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.t) ; 2 uses
  %.not28.i = icmp eq ptr %i.cm, null
  br i1 %.not28.i, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cn = load i64, ptr %i.ak, align 8, !alias.scope !7508, !noalias !7510, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.cn, %.val30.i
  br i1 %.not29.i, label %bb.r, label %bb.s

.loopexit:                                        ; preds = %bb.p, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i
  %.sroa.26.1 = phi i64 [ %.sroa.666.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i ], [ undef, %bb.p ]
  %.sroa.12.1 = phi ptr [ %.sroa.061.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i ], [ null, %bb.p ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i ], [ %.sroa.19, %bb.p ]
  %.sroa.769.0.sink.i = phi ptr [ %.sroa.769.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i ], [ %i.cm, %bb.p ]
  store ptr %.sroa.769.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !7505, !noalias !7553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7532
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.aj

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7532
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7556
  %i.co = load i64, ptr %i.z, align 8, !range !2291, !alias.scope !7557, !noalias !7519, !noundef !4
  %.not.i.i = icmp eq i64 %i.co, -3
  br i1 %.not.i.i, label %.loopexit96.i, label %bb.b

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7532
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.cn), !noalias !7505
  call void @llvm.experimental.noalias.scope.decl(metadata !7558)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !7558, !noalias !7561, !noundef !4 ; 2 uses
  %i.cr = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cs = and i64 %i.cr, 1
  %.not.i32.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i32.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = lshr i64 %i.cr, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7563
  %i.cu = load ptr, ptr %i.s, align 8, !alias.scope !7558, !noalias !7561, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !7558, !noalias !7561, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !7558, !noalias !7561, !noundef !4
  %i.cz = sub nsw i64 0, %i.ct
  %i.da = getelementptr inbounds i8, ptr %i.cu, i64 %i.cz
  %i.db = add i64 %i.cw, %i.ct
  %i.dc = add i64 %i.cy, %i.ct                    ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  store i64 %i.dc, ptr %i.j, align 8, !noalias !7563
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.da, ptr %i.de, align 8, !noalias !7563
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.db, ptr %i.df, align 8, !noalias !7563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7563
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !7564
  call void @llvm.experimental.noalias.scope.decl(metadata !7565)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7563
  store i64 %i.ct, ptr %i.h, align 8, !noalias !7568
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !7565, !noalias !7563, !noundef !4 ; 4 uses
  %.not.i.i33.i = icmp ugt i64 %i.ct, %i.dh
  br i1 %.not.i.i33.i, label %bb.u, label %bb.x, !prof !5

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7568
  store i64 %i.dh, ptr %i.g, align 8, !noalias !7568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7568
  store ptr %i.h, ptr %i.f, align 8, !noalias !7568
  %.sroa.42.0..sroa_idx.i.i34.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i34.i, align 8, !noalias !7568
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.di, align 8, !noalias !7568
  %.sroa.46.0..sroa_idx.i.i35.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i35.i, align 8, !noalias !7568
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i37.i unwind label %bb.w, !noalias !7564

.noexc.i37.i:                                     ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.dj = load ptr, ptr %i.s, align 8, !alias.scope !7558, !noalias !7561, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !7558, !noalias !7561, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i

bb.w:                                             ; preds = %bb.u
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7569)
  call void @llvm.experimental.noalias.scope.decl(metadata !7572)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !7575, !noalias !7563, !noundef !4
  %i.dp = load ptr, ptr %i.i, align 8, !alias.scope !7575, !noalias !7563, !nonnull !4, !align !27, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !7576, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !7575, !noalias !7563, !noundef !4
  invoke void %i.dr(ptr noundef %i.do, ptr noundef %i.dt, i64 noundef %i.dh)
          to label %common.resume unwind label %bb.y, !noalias !7564, !inline_history !29

bb.x:                                             ; preds = %bb.t
  %i.du = sub nuw i64 %i.dh, %i.ct
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !7565, !noalias !7563, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7563
  %.sroa.061.0.copyload62.i = load ptr, ptr %i.i, align 8, !noalias !7577
  %.sroa.769.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.769.0.copyload71.i = load ptr, ptr %.sroa.769.0..sroa_idx70.i, align 8, !noalias !7577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7563
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i

bb.y:                                             ; preds = %bb.w
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7564
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit38.i: ; preds = %bb.x, %bb.v
  %.sroa.769.0.i = phi ptr [ %i.cq, %bb.v ], [ %.sroa.769.0.copyload71.i, %bb.x ]
  %.sroa.666.0.i = phi i64 [ %i.dl, %bb.v ], [ %i.du, %bb.x ]
  %.sroa.563.0.i = phi ptr [ %i.dj, %bb.v ], [ %i.dx, %bb.x ]
  %.sroa.061.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.v ], [ %.sroa.061.0.copyload62.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7532
  store ptr %.sroa.563.0.i, ptr %.sroa.19, align 8, !alias.scope !7505, !noalias !7553
  br label %.loopexit

.thread112:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %.thread108

bb.z:                                             ; preds = %bb.o
  %i.dz = load ptr, ptr %i.ae, align 8, !alias.scope !7578, !noalias !7510, !align !27, !noundef !4
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ae)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i unwind label %bb.ab, !noalias !7505

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i: ; preds = %bb.aa
  %.pre.i = load i64, ptr %i.ak, align 8, !alias.scope !7508, !noalias !7510
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.eb = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload48.i, ptr %i.ae, align 8, !alias.scope !7508, !noalias !7510
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i, %bb.z
  %i.ec = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i ], [ %i.ch, %bb.z ]
  store ptr %.sroa.8.0.copyload48.i, ptr %i.ae, align 8, !alias.scope !7508, !noalias !7510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7532
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.ec), !noalias !7505
  call void @llvm.experimental.noalias.scope.decl(metadata !7581)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !7581, !noalias !7584, !noundef !4 ; 2 uses
  %i.ef = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %.not.i39.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i39.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.eh = lshr i64 %i.ef, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7586
  %i.ei = load ptr, ptr %i.r, align 8, !alias.scope !7581, !noalias !7584, !nonnull !4, !noundef !4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !7581, !noalias !7584, !noundef !4
  %i.el = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !7581, !noalias !7584, !noundef !4
  %i.en = sub nsw i64 0, %i.eh
  %i.eo = getelementptr inbounds i8, ptr %i.ei, i64 %i.en
  %i.ep = add i64 %i.ek, %i.eh
  %i.eq = add i64 %i.em, %i.eh                    ; 2 uses
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  store i64 %i.eq, ptr %i.e, align 8, !noalias !7586
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.eo, ptr %i.es, align 8, !noalias !7586
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ep, ptr %i.et, align 8, !noalias !7586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7586
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !7587
  call void @llvm.experimental.noalias.scope.decl(metadata !7588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7586
  store i64 %i.eh, ptr %i.c, align 8, !noalias !7591
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !7588, !noalias !7586, !noundef !4 ; 4 uses
  %.not.i.i40.i = icmp ugt i64 %i.eh, %i.ev
  br i1 %.not.i.i40.i, label %bb.ad, label %bb.ag, !prof !5

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7591
  store i64 %i.ev, ptr %i.b, align 8, !noalias !7591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7591
  store ptr %i.c, ptr %i.a, align 8, !noalias !7591
  %.sroa.42.0..sroa_idx.i.i41.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i41.i, align 8, !noalias !7591
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ew, align 8, !noalias !7591
  %.sroa.46.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i42.i, align 8, !noalias !7591
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i44.i unwind label %bb.af, !noalias !7587

.noexc.i44.i:                                     ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.ex = load ptr, ptr %i.r, align 8, !alias.scope !7581, !noalias !7584, !nonnull !4, !noundef !4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !7581, !noalias !7584, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i

bb.af:                                            ; preds = %bb.ad
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7592)
  call void @llvm.experimental.noalias.scope.decl(metadata !7595)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !7598, !noalias !7586, !noundef !4
  %i.fd = load ptr, ptr %i.d, align 8, !alias.scope !7598, !noalias !7586, !nonnull !4, !align !27, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !7599, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !7598, !noalias !7586, !noundef !4
  invoke void %i.ff(ptr noundef %i.fc, ptr noundef %i.fh, i64 noundef %i.ev)
          to label %common.resume unwind label %bb.ah, !noalias !7587, !inline_history !29

bb.ag:                                            ; preds = %bb.ac
  %i.fi = sub nuw i64 %i.ev, %i.eh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !7588, !noalias !7586, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7586
  %.sroa.076.0.copyload77.i = load ptr, ptr %i.d, align 8, !noalias !7600
  %.sroa.784.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.784.0.copyload86.i = load ptr, ptr %.sroa.784.0..sroa_idx85.i, align 8, !noalias !7600
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7586
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i

bb.ah:                                            ; preds = %bb.af
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !7587
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i: ; preds = %bb.ag, %bb.ae
  %.sroa.784.0.i = phi ptr [ %i.ee, %bb.ae ], [ %.sroa.784.0.copyload86.i, %bb.ag ]
  %.sroa.681.0.i = phi i64 [ %i.ez, %bb.ae ], [ %i.fi, %bb.ag ]
  %.sroa.578.0.i = phi ptr [ %i.ex, %bb.ae ], [ %i.fl, %bb.ag ]
  %.sroa.076.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.ae ], [ %.sroa.076.0.copyload77.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7532
  store ptr %.sroa.784.0.i, ptr %.sroa.30, align 8, !alias.scope !7505, !noalias !7553
  br label %bb.aj

bb.ai:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.ax

bb.aj:                                            ; preds = %.loopexit, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106 = phi ptr [ %.sroa.578.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre, %.loopexit ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.681.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %.loopexit ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.076.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit45.i ], [ %.sroa.050.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.fn = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.fn, label %.thread108, label %bb.ap

bb.ak:                                            ; preds = %.loopexit96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
  %i.fo = load i64, ptr %i.v, align 8, !range !3021, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.fo, -2
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.fp = icmp eq i64 %i.fo, -1
  br i1 %i.fp, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.an, %bb.ao, %bb.ak
  %.sroa.017.0 = phi i64 [ -3, %bb.ak ], [ -2, %bb.an ], [ %i.fo, %bb.ao ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.ak ], [ %.sroa.563.0.copyload, %bb.an ], [ %.sroa.563.0.copyload, %bb.ao ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.ax

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.am

.thread108:                                       ; preds = %bb.a, %.thread112, %bb.aj
  %i.fq = phi ptr [ %.sroa.8.0.copyload48.i, %.thread112 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, %bb.aj ], [ %i.ag, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  store ptr %i.fq, ptr %i.x, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fs = load i8, ptr %i.fr, align 8, !range !3, !noundef !4
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.aj
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.ax

bb.aq:                                            ; preds = %.thread108
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 305
  store i8 1, ptr %i.fu, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.au unwind label %bb.at

bb.ar:                                            ; preds = %.thread108
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fq, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.aw, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ax

bb.at:                                            ; preds = %bb.aq
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x) #34
          to label %common.resume unwind label %bb.ay

bb.au:                                            ; preds = %bb.aq
  %i.fw = load i64, ptr %i.w, align 8, !range !14, !noundef !4 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, -1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  br i1 %i.fx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fz, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.fw, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fz, ptr %.sroa.553.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
  br label %bb.as

bb.ax:                                            ; preds = %bb.am, %bb.ap, %bb.as, %bb.ai, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.ay:                                            ; preds = %bb.at
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(176) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [96 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [176 x i8], align 8               ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 16               ; 3 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 16               ; 3 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 3 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 11 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %i.ai = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.aj = alloca [96 x i8], align 8               ; 4 uses
  %i.ak = alloca [96 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7601)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 6 uses
  %.val.i = load i64, ptr %i.ao, align 8, !alias.scope !7601, !noalias !7604, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val29.i = load i64, ptr %i.at, align 8, !alias.scope !7601, !noalias !7604, !noundef !4
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !7601, !noalias !7604, !align !27, !noundef !4 ; 2 uses
  store ptr null, ptr %i.as, align 8, !alias.scope !7601, !noalias !7604
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %.thread103

.preheader.i:                                     ; preds = %bb.a
  %.sroa.7.0..sroa_idx111.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.9.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.10.0..sroa_idx115.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx117.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.761.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %.sroa.964.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 3 uses
  %.sroa.761.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %.sroa.964.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %.sroa.11.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.as, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7607)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !7610
  %i.az = load i64, ptr %i.an, align 8, !range !464, !alias.scope !7613, !noalias !7614, !noundef !4
  %.not.i.i = icmp eq i64 %i.az, 2
  br i1 %.not.i.i, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread104.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !7610
  call void @_RNvXs_NtCskbjA1QblxuK_12tokio_stream4onceINtB4_4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !7615
  %i.ba = load i64, ptr %i.ae, align 8, !range !464, !noalias !7610, !noundef !4
  %i.bb = icmp eq i64 %i.ba, 2
  br i1 %i.bb, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !noalias !7610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !7610
  %i.bc = load i64, ptr %i.af, align 8, !range !183, !noalias !7610, !noundef !4
  %.not4.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not4.i.i, label %bb.e, label %bb.l

.body.i.i:                                        ; preds = %bb.i, %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.an, align 8, !alias.scope !7613, !noalias !7616
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(40) %i.af) #34
          to label %common.resume unwind label %bb.j, !noalias !7615

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !7619)
  %i.be = load i64, ptr %i.an, align 8, !range !464, !alias.scope !7622, !noalias !7616, !noundef !4 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !7623), !noalias !7626
  call void @llvm.experimental.noalias.scope.decl(metadata !7627), !noalias !7626
  call void @llvm.experimental.noalias.scope.decl(metadata !7630), !noalias !7626
  call void @llvm.experimental.noalias.scope.decl(metadata !7633), !noalias !7626
  call void @llvm.experimental.noalias.scope.decl(metadata !7636), !noalias !7626
  %i.bg = icmp eq i64 %i.be, 0
  br i1 %i.bg, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !7639), !noalias !7626
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !7642, !noalias !7616, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !7643), !noalias !7626
  call void @llvm.experimental.noalias.scope.decl(metadata !7646), !noalias !7626
  call void @llvm.experimental.noalias.scope.decl(metadata !7649), !noalias !7626
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !7652, !noalias !7616, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !7653, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !7652, !noalias !7616, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2B_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2B_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server:bb.a
  %i.io = load ptr, ptr %i.d, align 8, !alias.scope !8174, !noalias !8162, !nonnull !4, !align !27, !noundef !4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !8175, !nonnull !4, !noundef !4
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !8174, !noalias !8162, !noundef !4
  invoke void %i.iq(ptr noundef %i.in, ptr noundef %i.is, i64 noundef %i.ig)
          to label %common.resume unwind label %bb.bk, !noalias !8163, !inline_history !29

bb.bj:                                            ; preds = %bb.bf
  %i.it = sub nuw i64 %i.ig, %i.hs
  %i.iu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !8164, !noalias !8162, !noundef !4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8162
  %.sroa.084.0.copyload85.i = load ptr, ptr %i.d, align 8, !noalias !8176
  %.sroa.792.0..sroa_idx93.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.792.0.copyload94.i = load ptr, ptr %.sroa.792.0..sroa_idx93.i, align 8, !noalias !8176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8162
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i

bb.bk:                                            ; preds = %bb.bi
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !8163
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i: ; preds = %bb.bj, %bb.bh
  %.sroa.792.0.i = phi ptr [ %i.hp, %bb.bh ], [ %.sroa.792.0.copyload94.i, %bb.bj ]
  %.sroa.689.0.i = phi i64 [ %i.ik, %bb.bh ], [ %i.it, %bb.bj ]
  %.sroa.586.0.i = phi ptr [ %i.ii, %bb.bh ], [ %i.iw, %bb.bj ]
  %.sroa.084.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bh ], [ %.sroa.084.0.copyload85.i, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8014
  br label %bb.bl

_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2C_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2C_6marker4SendEL_EEEB3C_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.m
  store i64 3, ptr %0, align 8
  br label %bb.bz

bb.bl:                                            ; preds = %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i
  %.sroa.30.0.ph.ph = phi ptr [ %.sroa.777.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ %.sroa.753.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.792.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ]
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.674.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.689.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ]
  %.sroa.19.0.ph.ph = phi ptr [ %.sroa.571.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.586.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ] ; 2 uses
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.069.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ %.sroa.047.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.084.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ] ; 2 uses
  %i.iy = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.iy, label %.thread103, label %bb.br

bb.bm:                                            ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread104.i
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am)
  %i.iz = load i64, ptr %i.aj, align 8, !range !3021, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.iz, -2
  br i1 %.not, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.ja = icmp eq i64 %i.iz, -1
  br i1 %i.ja, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bp, %bb.bq, %bb.bm
  %.sroa.017.0 = phi i64 [ -3, %bb.bm ], [ -2, %bb.bp ], [ %i.iz, %bb.bq ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bm ], [ %.sroa.563.0.copyload, %bb.bp ], [ %.sroa.563.0.copyload, %bb.bq ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.bz

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bo

bb.bq:                                            ; preds = %bb.bn
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bo

.thread103:                                       ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEECsbakdBCgU4AF_16influxdb3_server.exit.i, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i, %bb.v, %bb.a, %bb.bl
  %.sroa.19.0.ph.ph108 = phi ptr [ %.sroa.19.0.ph.ph, %bb.bl ], [ %i.fn, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ %i.au, %bb.a ], [ %.sroa.9.0.copyload114.i, %bb.v ], [ %i.fy, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEECsbakdBCgU4AF_16influxdb3_server.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0.ph.ph108) ]
  store ptr %.sroa.19.0.ph.ph108, ptr %i.al, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.jc = load i8, ptr %i.jb, align 8, !range !3, !noundef !4
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %bb.bl
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0.ph.ph, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0.ph.ph, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.bz

bb.bs:                                            ; preds = %.thread103
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.je, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.bw unwind label %bb.bv

bb.bt:                                            ; preds = %.thread103
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0.ph.ph108, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.by, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bs
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al) #34
          to label %common.resume unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  %i.jg = load i64, ptr %i.ak, align 8, !range !14, !noundef !4 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, -1
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8            ; 2 uses
  br i1 %i.jh, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jj, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 %i.jg, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jj, ptr %.sroa.553.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
  br label %bb.bu

bb.bz:                                            ; preds = %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2C_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2C_6marker4SendEL_EEEB3C_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit, %bb.bx, %bb.bo, %bb.br, %bb.bu
  ret void

bb.ca:                                            ; preds = %bb.bv
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(416) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [96 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [176 x i8], align 8               ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [280 x i8], align 8               ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [280 x i8], align 8               ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 3 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [280 x i8], align 8              ; 6 uses
  %i.ab = alloca [280 x i8], align 8              ; 10 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 9 uses
  %i.ae = alloca [280 x i8], align 8              ; 9 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.9.i = alloca [264 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.ag = alloca [96 x i8], align 8               ; 4 uses
  %i.ah = alloca [96 x i8], align 8               ; 7 uses
  %i.ai = alloca [8 x i8], align 8                ; 8 uses
  %.sroa.19 = alloca ptr, align 8                 ; 6 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 400
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8180)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 6 uses
  %.val.i = load i64, ptr %i.al, align 8, !alias.scope !8180, !noalias !8182, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.val30.i = load i64, ptr %i.aq, align 8, !alias.scope !8180, !noalias !8182, !noundef !4
  %i.ar = load ptr, ptr %i.ap, align 8, !alias.scope !8180, !noalias !8182, !align !27, !noundef !4 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !alias.scope !8180, !noalias !8182
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %.preheader.i, label %.thread108

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8187
  %i.as = load i64, ptr %i.ak, align 8, !range !3021, !alias.scope !8190, !noalias !8191, !noundef !4
  %.not.i124.i = icmp eq i64 %i.as, -2
  br i1 %.not.i124.i, label %.loopexit101.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %.sroa.8.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.9.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ak, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8192)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8194
  call void @_RNvXs_NtCskbjA1QblxuK_12tokio_stream4onceINtB4_4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !8195
  %i.ba = load i64, ptr %i.aa, align 8, !range !3021, !noalias !8194, !noundef !4
  %i.bb = icmp eq i64 %i.ba, -2
  br i1 %i.bb, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8194
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ab, ptr noundef nonnull align 8 dereferenceable(280) %i.aa, i64 280, i1 false), !noalias !8194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !8194
  %i.bc = load i64, ptr %i.ab, align 8, !noalias !8196 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.bc, -1
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i

.body.i.i:                                        ; preds = %bb.j, %bb.g
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %i.bg, %bb.g ]
  store i64 -2, ptr %i.ak, align 8, !alias.scope !8197, !noalias !8198
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(280) %i.ab) #34
          to label %common.resume unwind label %bb.k, !noalias !8195

bb.d:                                             ; preds = %bb.c
  %i.bd = load i64, ptr %i.ak, align 8, !range !3021, !alias.scope !8201, !noalias !8198, !noundef !4
  switch i64 %i.bd, label %bb.e [
    i64 -2, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread169.i
    i64 -1, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread169.i
    i64 2, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.be = load i64, ptr %i.au, align 8, !range !1909, !alias.scope !8204, !noalias !8198, !noundef !4
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.au)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !8221

bb.g:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsekDO8Mha3LU_12arrow_flight3gen16FlightDescriptorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %i.av) #34
          to label %.body.i.i unwind label %bb.h, !noalias !8221

bb.h:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !8221
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsekDO8Mha3LU_12arrow_flight3gen16FlightDescriptorEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(64) %i.av)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread169.i unwind label %bb.j, !noalias !8195

bb.i:                                             ; preds = %bb.d
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread169.i unwind label %bb.j, !noalias !8195

bb.j:                                             ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread169.i: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i.i.i.i.i.i, %bb.d, %bb.d
  store i64 -2, ptr %i.ak, align 8, !alias.scope !8197, !noalias !8198
  br label %.loopexit101.i

bb.k:                                             ; preds = %.body.i.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !8195
  unreachable

common.resume:                                    ; preds = %bb.bm, %.body.i.i, %bb.p, %.body.i.i.i, %bb.ah, %bb.ap, %bb.au, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %bb.ay ], [ %i.fg, %bb.ap ], [ %eh.lpad-body6.i.i, %.body.i.i ], [ %i.cn, %bb.p ], [ %lpad.phi.i, %bb.ah ], [ %i.fv, %bb.au ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.hp, %bb.bm ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload50.i = load ptr, ptr %.sroa.8.0..sroa_idx49.i, align 8, !noalias !8196 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.0..sroa_idx51.i, i64 264, i1 false), !noalias !8196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8194
  switch i64 %i.bc, label %bb.t [
    i64 -2, label %.loopexit.i
    i64 2, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  %i.bk = load i64, ptr %i.ax, align 8, !alias.scope !8180, !noalias !8182, !noundef !4 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.bb, label %bb.l

.loopexit101.i:                                   ; preds = %bb.ak, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread169.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !8194
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !8180, !noalias !8182, !noundef !4 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.bd, label %bb.l

bb.l:                                             ; preds = %.loopexit101.i, %.loopexit.i
  %i.bp = phi i64 [ %i.bk, %.loopexit.i ], [ %i.bn, %.loopexit101.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8222
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %i.bp), !noalias !8177
  call void @llvm.experimental.noalias.scope.decl(metadata !8223)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !8223, !noalias !8226, !noundef !4 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = and i64 %i.bs, 1
  %.not.i31.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i31.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = lshr i64 %i.bs, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8228
  %i.bv = load ptr, ptr %i.af, align 8, !alias.scope !8223, !noalias !8226, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !8223, !noalias !8226, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !8223, !noalias !8226, !noundef !4
  %i.ca = sub nsw i64 0, %i.bu
  %i.cb = getelementptr inbounds i8, ptr %i.bv, i64 %i.ca
  %i.cc = add i64 %i.bx, %i.bu
  %i.cd = add i64 %i.bz, %i.bu                    ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, -1
  call void @llvm.assume(i1 %i.ce)
  store i64 %i.cd, ptr %i.z, align 8, !noalias !8228
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.cb, ptr %i.cf, align 8, !noalias !8228
  %i.cg = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.cc, ptr %i.cg, align 8, !noalias !8228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8228
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z), !noalias !8229
  call void @llvm.experimental.noalias.scope.decl(metadata !8230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8228
  store i64 %i.bu, ptr %i.x, align 8, !noalias !8233
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !8230, !noalias !8228, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.bu, %i.ci
  br i1 %.not.i.i.i, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !8233
  store i64 %i.ci, ptr %i.w, align 8, !noalias !8233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8233
  store ptr %i.x, ptr %i.v, align 8, !noalias !8233
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !8233
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.cj, align 8, !noalias !8233
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !8233
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i.i unwind label %bb.p, !noalias !8229

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %i.af, align 8, !alias.scope !8223, !noalias !8226, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !8223, !noalias !8226, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !8234)
  call void @llvm.experimental.noalias.scope.decl(metadata !8237)
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !8240, !noalias !8228, !noundef !4
  %i.cq = load ptr, ptr %i.y, align 8, !alias.scope !8240, !noalias !8228, !nonnull !4, !align !27, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !8241, !nonnull !4, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !8240, !noalias !8228, !noundef !4
  invoke void %i.cs(ptr noundef %i.cp, ptr noundef %i.cu, i64 noundef %i.ci)
          to label %common.resume unwind label %bb.r, !noalias !8229, !inline_history !29

bb.q:                                             ; preds = %bb.m
  %i.cv = sub nuw i64 %i.ci, %i.bu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !8230, !noalias !8228, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !8228
  %.sroa.052.0.copyload53.i = load ptr, ptr %i.y, align 8, !noalias !8242
  %.sroa.7.0..sroa_idx58.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.7.0.copyload59.i = load ptr, ptr %.sroa.7.0..sroa_idx58.i, align 8, !noalias !8242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !8228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !8228
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !8229
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.7.0.i = phi ptr [ %i.br, %bb.o ], [ %.sroa.7.0.copyload59.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.cm, %bb.o ], [ %i.cv, %bb.q ]
  %.sroa.5.0.i = phi ptr [ %i.ck, %bb.o ], [ %i.cy, %bb.q ]
  %.sroa.052.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.o ], [ %.sroa.052.0.copyload53.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8222
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !8177, !noalias !8243
  br label %bb.bc

bb.s:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload50.i) ]
  %i.da = load i64, ptr %i.ax, align 8, !alias.scope !8180, !noalias !8182, !noundef !4 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.thread112, label %bb.as

bb.t:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !8222
  store i64 %i.bc, ptr %i.ae, align 8, !noalias !8222
  store ptr %.sroa.8.0.copyload50.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.i, i64 264, i1 false), !noalias !8222
  %i.dc = load i8, ptr %i.am, align 8, !range !1551, !alias.scope !8180, !noalias !8182, !noundef !4 ; 3 uses
  %i.dd = load i64, ptr %1, align 8, !range !183, !alias.scope !8180, !noalias !8182, !noundef !4
  %i.de = load i64, ptr %i.aw, align 8, !alias.scope !8180, !noalias !8182
  call void @llvm.experimental.noalias.scope.decl(metadata !8244)
  call void @llvm.experimental.noalias.scope.decl(metadata !8247)
  %i.df = load i64, ptr %i.ax, align 8, !alias.scope !8249, !noalias !8250, !noundef !4 ; 6 uses
  %i.dg = load i64, ptr %i.ay, align 8, !alias.scope !8249, !noalias !8250, !noundef !4
  %i.dh = sub i64 %i.dg, %i.df
  %i.di = icmp ugt i64 %i.dh, 4
  br i1 %i.di, label %.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = invoke noundef zeroext i1 @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef 5, i1 noundef zeroext true)
          to label %bb.v unwind label %.loopexit102.i, !noalias !8252 ; 0 uses

bb.v:                                             ; preds = %bb.u
  %.pre.i.i = load i64, ptr %i.ay, align 8, !alias.scope !8249, !noalias !8250
  %.pre7.i.i = load i64, ptr %i.ax, align 8, !alias.scope !8249, !noalias !8250 ; 2 uses
  %.pre8.i.i = sub i64 %.pre.i.i, %.pre7.i.i      ; 2 uses
  %i.dk = icmp ult i64 %.pre8.i.i, 5
  br i1 %i.dk, label %bb.w, label %.thread.i.i, !prof !4133

.thread.i.i:                                      ; preds = %bb.v, %bb.t
  %i.dl = phi i64 [ %.pre7.i.i, %bb.v ], [ %i.df, %bb.t ]
  %i.dm = add i64 %i.dl, 5
  store i64 %i.dm, ptr %i.ax, align 8, !alias.scope !8249, !noalias !8250
  %.not.i32.i = icmp eq i8 %i.dc, 2
  br i1 %.not.i32.i, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !8253
  store i64 5, ptr %i.q, align 8, !noalias !8253
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.pre8.i.i, ptr %i.dn, align 8, !noalias !8253
  invoke void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q) #31
          to label %bb.ag unwind label %.loopexit.split-lp.i, !noalias !8252

bb.x:                                             ; preds = %.thread.i.i
  %i.do = trunc nuw i8 %i.dc to i1
  store i64 0, ptr %i.az, align 8, !alias.scope !8254, !noalias !8255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !8253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.u, ptr noundef nonnull align 8 dereferenceable(280) %i.ae, i64 280, i1 false), !noalias !8256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !8253
  store ptr %i.ao, ptr %i.t, align 8, !noalias !8253
  call fastcc void @_RNvXs3_NtCsk1F0U0dGulz_11tonic_prost5codecINtB5_12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoENtNtCsbYyEjVLvvus_5tonic5codec7Encoder6encodeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 captures(address) dereferenceable(280) %i.u, ptr noalias noundef align 8 dereferenceable(8) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !8253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !8253
  %i.dp = load i64, ptr %i.az, align 8, !alias.scope !8254, !noalias !8255, !noundef !4
  %i.dq = call noundef ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec11compression8compress(i64 noundef %.val.i, i1 noundef zeroext %i.do, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %i.dp), !noalias !8257 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.dq, null
  br i1 %.not21.i.i, label %bb.ae, label %bb.z

bb.y:                                             ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !8253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.s, ptr noundef nonnull align 8 dereferenceable(280) %i.ae, i64 280, i1 false), !noalias !8256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !8253
  store ptr %i.an, ptr %i.r, align 8, !noalias !8253
  call fastcc void @_RNvXs3_NtCsk1F0U0dGulz_11tonic_prost5codecINtB5_12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoENtNtCsbYyEjVLvvus_5tonic5codec7Encoder6encodeCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 captures(address) dereferenceable(280) %i.s, ptr noalias noundef align 8 dereferenceable(8) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !8253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !8253
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !8253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !8253
  store ptr %i.dq, ptr %i.p, align 8, !noalias !8253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8253
  store ptr %i.p, ptr %i.n, align 8, !noalias !8253
  %.sroa.42.0..sroa_idx.i.i33.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i33.i, align 8, !noalias !8253
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @90, ptr noundef nonnull %i.n)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i unwind label %bb.aa, !noalias !8257

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i, %bb.aa
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.dr, %bb.aa ], [ %i.ds, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i ]
  %.val6.i.i.i = load ptr, ptr %i.p, align 8, !noalias !8253, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val6.i.i.i) #34
          to label %common.resume unwind label %bb.ad, !noalias !8257

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !alias.scope !8261, !noalias !8253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8258
  invoke void @_RNvMs0_NtNtCsbYyEjVLvvus_5tonic8metadata3mapNtB5_11MetadataMap3new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.k)
          to label %bb.ab unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i, !noalias !8268

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #34
          to label %.body.i.i.i unwind label %bb.ac, !noalias !8268

bb.ab:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  store i8 13, ptr %i.dt, align 8, !noalias !8258
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !8253
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store ptr @19, ptr %i.dv, align 8, !noalias !8258
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !8258
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !8258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !8258
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  store ptr null, ptr %i.dw, align 8, !noalias !8258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8258
  %i.dx = invoke noundef nonnull align 8 ptr @_RNvMNtCsbYyEjVLvvus_5tonic6statusNtB2_11StatusInner11into_status(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.m)
          to label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i unwind label %bb.aa, !noalias !8257

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !8268
  unreachable

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !8258
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !noalias !8253, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.val.i.i.i), !noalias !8257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !8253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !8253
  br label %.loopexit103.i

bb.ad:                                            ; preds = %.body.i.i.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !8257
  unreachable

bb.ae:                                            ; preds = %bb.y, %bb.x
  %i.ea = load i64, ptr %i.ax, align 8, !alias.scope !8249, !noalias !8250, !noundef !4 ; 4 uses
  %i.eb = icmp ugt i64 %i.df, %i.ea
  br i1 %i.eb, label %bb.af, label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.i, !prof !5

bb.af:                                            ; preds = %bb.ae
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef %i.ea, i64 noundef %i.ea, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #31, !noalias !8257
  unreachable

bb.ag:                                            ; preds = %bb.w
  unreachable

.loopexit102.i:                                   ; preds = %bb.u
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp.i, %.loopexit102.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit102.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.ae) #34
          to label %common.resume unwind label %bb.ai, !noalias !8269

bb.ai:                                            ; preds = %bb.ah
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !8269
  unreachable

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %bb.ae
  %i.ed = load ptr, ptr %i.an, align 8, !alias.scope !8249, !noalias !8250, !nonnull !4, !noundef !4
  %i.ee = sub nuw i64 %i.ea, %i.df
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.df
  %i.eg = call noundef align 8 ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec6encode15finish_encoding(i8 noundef range(i8 0, 3) %i.dc, i64 noundef range(i64 0, 2) %i.dd, i64 %i.de, ptr noalias noundef nonnull %i.ef, i64 noundef %i.ee), !noalias !8257 ; 2 uses
  %.not28.i = icmp eq ptr %i.eg, null
  br i1 %.not28.i, label %bb.aj, label %.loopexit103.i

bb.aj:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.eh = load i64, ptr %i.ax, align 8, !alias.scope !8180, !noalias !8182, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.eh, %.val30.i
  br i1 %.not29.i, label %bb.ak, label %bb.al

.loopexit103.i:                                   ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.i, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i
  %.sroa.26.1 = phi i64 [ %.sroa.668.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ undef, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ undef, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.12.1 = phi ptr [ %.sroa.063.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ null, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ null, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.19, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ %.sroa.19, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  %.sroa.771.0.sink.i = phi ptr [ %.sroa.771.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %i.dx, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.thread.i ], [ %i.eg, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsbakdBCgU4AF_16influxdb3_server.exit.i ]
  store ptr %.sroa.771.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !8177, !noalias !8243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8222
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.bc

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8222
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !8272
  %i.ei = load i64, ptr %i.ak, align 8, !range !3021, !alias.scope !8273, !noalias !8191, !noundef !4
  %.not.i.i = icmp eq i64 %i.ei, -2
  br i1 %.not.i.i, label %.loopexit101.i, label %bb.b

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !8222
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %i.eh), !noalias !8177
  call void @llvm.experimental.noalias.scope.decl(metadata !8274)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !8274, !noalias !8277, !noundef !4 ; 2 uses
  %i.el = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.em = and i64 %i.el, 1
  %.not.i34.i = icmp eq i64 %i.em, 0
  br i1 %.not.i34.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.en = lshr i64 %i.el, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8279
  %i.eo = load ptr, ptr %i.ad, align 8, !alias.scope !8274, !noalias !8277, !nonnull !4, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !8274, !noalias !8277, !noundef !4
  %i.er = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !8274, !noalias !8277, !noundef !4
  %i.et = sub nsw i64 0, %i.en
  %i.eu = getelementptr inbounds i8, ptr %i.eo, i64 %i.et
  %i.ev = add i64 %i.eq, %i.en
  %i.ew = add i64 %i.es, %i.en                    ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  call void @llvm.assume(i1 %i.ex)
  store i64 %i.ew, ptr %i.j, align 8, !noalias !8279
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.eu, ptr %i.ey, align 8, !noalias !8279
  %i.ez = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ev, ptr %i.ez, align 8, !noalias !8279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8279
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !8280
  call void @llvm.experimental.noalias.scope.decl(metadata !8281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8279
  store i64 %i.en, ptr %i.h, align 8, !noalias !8284
  %i.fa = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !8281, !noalias !8279, !noundef !4 ; 4 uses
  %.not.i.i35.i = icmp ugt i64 %i.en, %i.fb
  br i1 %.not.i.i35.i, label %bb.an, label %bb.aq, !prof !5

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8284
  store i64 %i.fb, ptr %i.g, align 8, !noalias !8284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8284
  store ptr %i.h, ptr %i.f, align 8, !noalias !8284
  %.sroa.42.0..sroa_idx.i.i36.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i36.i, align 8, !noalias !8284
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.fc, align 8, !noalias !8284
  %.sroa.46.0..sroa_idx.i.i37.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i37.i, align 8, !noalias !8284
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i39.i unwind label %bb.ap, !noalias !8280

.noexc.i39.i:                                     ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.fd = load ptr, ptr %i.ad, align 8, !alias.scope !8274, !noalias !8277, !nonnull !4, !noundef !4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !8274, !noalias !8277, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i

bb.ap:                                            ; preds = %bb.an
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !8285)
  call void @llvm.experimental.noalias.scope.decl(metadata !8288)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !8291, !noalias !8279, !noundef !4
  %i.fj = load ptr, ptr %i.i, align 8, !alias.scope !8291, !noalias !8279, !nonnull !4, !align !27, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !8292, !nonnull !4, !noundef !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !8291, !noalias !8279, !noundef !4
  invoke void %i.fl(ptr noundef %i.fi, ptr noundef %i.fn, i64 noundef %i.fb)
          to label %common.resume unwind label %bb.ar, !noalias !8280, !inline_history !29

bb.aq:                                            ; preds = %bb.am
  %i.fo = sub nuw i64 %i.fb, %i.en
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !8281, !noalias !8279, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8279
  %.sroa.063.0.copyload64.i = load ptr, ptr %i.i, align 8, !noalias !8293
  %.sroa.771.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.771.0.copyload73.i = load ptr, ptr %.sroa.771.0..sroa_idx72.i, align 8, !noalias !8293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8279
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i

bb.ar:                                            ; preds = %bb.ap
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !8280
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i: ; preds = %bb.aq, %bb.ao
  %.sroa.771.0.i = phi ptr [ %i.ek, %bb.ao ], [ %.sroa.771.0.copyload73.i, %bb.aq ]
  %.sroa.668.0.i = phi i64 [ %i.ff, %bb.ao ], [ %i.fo, %bb.aq ]
  %.sroa.565.0.i = phi ptr [ %i.fd, %bb.ao ], [ %i.fr, %bb.aq ]
  %.sroa.063.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.ao ], [ %.sroa.063.0.copyload64.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !8222
  store ptr %.sroa.565.0.i, ptr %.sroa.19, align 8, !alias.scope !8177, !noalias !8243
  br label %.loopexit103.i

.thread112:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %.thread108

bb.as:                                            ; preds = %bb.s
  %i.ft = load ptr, ptr %i.ap, align 8, !alias.scope !8294, !noalias !8182, !align !27, !noundef !4
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ap)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i unwind label %bb.au, !noalias !8177

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i: ; preds = %bb.at
  %.pre.i = load i64, ptr %i.ax, align 8, !alias.scope !8180, !noalias !8182
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i

bb.au:                                            ; preds = %bb.at
  %i.fv = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload50.i, ptr %i.ap, align 8, !alias.scope !8180, !noalias !8182
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i, %bb.as
  %i.fw = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit_crit_edge.i ], [ %i.da, %bb.as ]
  store ptr %.sroa.8.0.copyload50.i, ptr %i.ap, align 8, !alias.scope !8180, !noalias !8182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !8222
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, i64 noundef %i.fw), !noalias !8177
  call void @llvm.experimental.noalias.scope.decl(metadata !8297)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !8297, !noalias !8300, !noundef !4 ; 2 uses
  %i.fz = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.ga = and i64 %i.fz, 1
  %.not.i41.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i41.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.gb = lshr i64 %i.fz, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8302
  %i.gc = load ptr, ptr %i.ac, align 8, !alias.scope !8297, !noalias !8300, !nonnull !4, !noundef !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !8297, !noalias !8300, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !8297, !noalias !8300, !noundef !4
  %i.gh = sub nsw i64 0, %i.gb
  %i.gi = getelementptr inbounds i8, ptr %i.gc, i64 %i.gh
  %i.gj = add i64 %i.ge, %i.gb
  %i.gk = add i64 %i.gg, %i.gb                    ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, -1
  call void @llvm.assume(i1 %i.gl)
  store i64 %i.gk, ptr %i.e, align 8, !noalias !8302
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gi, ptr %i.gm, align 8, !noalias !8302
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gj, ptr %i.gn, align 8, !noalias !8302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8302
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !8303
  call void @llvm.experimental.noalias.scope.decl(metadata !8304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8302
  store i64 %i.gb, ptr %i.c, align 8, !noalias !8307
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !8304, !noalias !8302, !noundef !4 ; 4 uses
  %.not.i.i42.i = icmp ugt i64 %i.gb, %i.gp
  br i1 %.not.i.i42.i, label %bb.aw, label %bb.az, !prof !5

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8307
  store i64 %i.gp, ptr %i.b, align 8, !noalias !8307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8307
  store ptr %i.c, ptr %i.a, align 8, !noalias !8307
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !8307
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gq, align 8, !noalias !8307
  %.sroa.46.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i44.i, align 8, !noalias !8307
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @182, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #31
          to label %.noexc.i46.i unwind label %bb.ay, !noalias !8303

.noexc.i46.i:                                     ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsbakdBCgU4AF_16influxdb3_server.exit.i
  %i.gr = load ptr, ptr %i.ac, align 8, !alias.scope !8297, !noalias !8300, !nonnull !4, !noundef !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !8297, !noalias !8300, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.ay:                                            ; preds = %bb.aw
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !8308)
  call void @llvm.experimental.noalias.scope.decl(metadata !8311)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !8314, !noalias !8302, !noundef !4
  %i.gx = load ptr, ptr %i.d, align 8, !alias.scope !8314, !noalias !8302, !nonnull !4, !align !27, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !8315, !nonnull !4, !noundef !4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !8314, !noalias !8302, !noundef !4
  invoke void %i.gz(ptr noundef %i.gw, ptr noundef %i.hb, i64 noundef %i.gp)
          to label %common.resume unwind label %bb.ba, !noalias !8303, !inline_history !29

bb.az:                                            ; preds = %bb.av
  %i.hc = sub nuw i64 %i.gp, %i.gb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !8304, !noalias !8302, !noundef !4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8302
  %.sroa.078.0.copyload79.i = load ptr, ptr %i.d, align 8, !noalias !8316
  %.sroa.786.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.786.0.copyload88.i = load ptr, ptr %.sroa.786.0..sroa_idx87.i, align 8, !noalias !8316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8302
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.ba:                                            ; preds = %bb.ay
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !8303
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i: ; preds = %bb.az, %bb.ax
  %.sroa.786.0.i = phi ptr [ %i.fy, %bb.ax ], [ %.sroa.786.0.copyload88.i, %bb.az ]
  %.sroa.683.0.i = phi i64 [ %i.gt, %bb.ax ], [ %i.hc, %bb.az ]
  %.sroa.580.0.i = phi ptr [ %i.gr, %bb.ax ], [ %i.hf, %bb.az ]
  %.sroa.078.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.ax ], [ %.sroa.078.0.copyload79.i, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !8222
  store ptr %.sroa.786.0.i, ptr %.sroa.30, align 8, !alias.scope !8177, !noalias !8243
  br label %bb.bc

bb.bb:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.bq

bb.bc:                                            ; preds = %.loopexit103.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106 = phi ptr [ %.sroa.580.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload107.pre, %.loopexit103.i ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.683.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %.loopexit103.i ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.078.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ], [ %.sroa.052.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %.loopexit103.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.hh = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hh, label %.thread108, label %bb.bi

bb.bd:                                            ; preds = %.loopexit101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj)
  %i.hi = load i64, ptr %i.ag, align 8, !range !3021, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.hi, -2
  br i1 %.not, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hj = icmp eq i64 %i.hi, -1
  br i1 %i.hj, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.bg, %bb.bh, %bb.bd
  %.sroa.017.0 = phi i64 [ -3, %bb.bd ], [ -2, %bb.bg ], [ %i.hi, %bb.bh ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bd ], [ %.sroa.563.0.copyload, %bb.bg ], [ %.sroa.563.0.copyload, %bb.bh ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.bq

bb.bg:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bf

bb.bh:                                            ; preds = %bb.be
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bf

.thread108:                                       ; preds = %bb.a, %.thread112, %bb.bc
  %i.hk = phi ptr [ %.sroa.8.0.copyload50.i, %.thread112 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, %bb.bc ], [ %i.ar, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hk) ]
  store ptr %i.hk, ptr %i.ai, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.hm = load i8, ptr %i.hl, align 8, !range !3, !noundef !4
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %bb.bc
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload106, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload108, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.bq

bb.bj:                                            ; preds = %.thread108
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 1, ptr %i.ho, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %bb.bn unwind label %bb.bm

bb.bk:                                            ; preds = %.thread108
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hk, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bp, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bj
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai) #34
          to label %common.resume unwind label %bb.br

bb.bn:                                            ; preds = %bb.bj
  %i.hq = load i64, ptr %i.ah, align 8, !range !14, !noundef !4 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, -1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8            ; 2 uses
  br i1 %i.hr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ht, ptr %.sroa.459.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 %i.hq, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ht, ptr %.sroa.553.0..sroa_idx, align 8
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ai)
  br label %bb.bl

bb.bq:                                            ; preds = %bb.bf, %bb.bi, %bb.bl, %bb.bb, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.br:                                            ; preds = %bb.bm
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2E_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2E_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [96 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [176 x i8], align 8               ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 16               ; 3 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 16               ; 3 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 3 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 6 uses
  %i.af = alloca [40 x i8], align 8               ; 11 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %i.ai = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.aj = alloca [96 x i8], align 8               ; 4 uses
  %i.ak = alloca [96 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8317)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %.val.i = load i64, ptr %i.ao, align 8, !alias.scope !8317, !noalias !8320, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val29.i = load i64, ptr %i.at, align 8, !alias.scope !8317, !noalias !8320, !noundef !4
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !8317, !noalias !8320, !align !27, !noundef !4 ; 2 uses
  store ptr null, ptr %i.as, align 8, !alias.scope !8317, !noalias !8320
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %.thread103

.preheader.i:                                     ; preds = %bb.a
  %.sroa.7.0..sroa_idx111.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.9.0..sroa_idx113.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.10.0..sroa_idx115.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx117.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.761.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %.sroa.964.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 3 uses
  %.sroa.761.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %.sroa.964.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %.sroa.11.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.au, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8326
  %i.az = load ptr, ptr %i.an, align 8, !alias.scope !8329, !noalias !8330, !noundef !4
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.thread104.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !8326
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !8331
  %i.ba = load i64, ptr %i.ae, align 8, !range !464, !noalias !8326, !noundef !4
  %i.bb = icmp eq i64 %i.ba, 2
  br i1 %i.bb, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !noalias !8326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !8326
  %i.bc = load i64, ptr %i.af, align 8, !range !183, !noalias !8326, !noundef !4
  %.not4.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not4.i.i, label %bb.e, label %bb.n

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server.exit4.i.i.i.i.i: ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.an, align 8, !alias.scope !8329, !noalias !8330
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(40) %i.af) #34
          to label %common.resume unwind label %bb.l, !noalias !8331

bb.e:                                             ; preds = %bb.d
  %.val7.i.i = load ptr, ptr %i.an, align 8, !alias.scope !8329, !noalias !8330, !noundef !4 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val8.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !8329, !noalias !8330 ; 6 uses
  %i.be = icmp eq ptr %.val7.i.i, null
  br i1 %i.be, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %i.bf = load ptr, ptr %.val8.i.i, align 8, !invariant.load !4, !noalias !8331 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.bf(ptr noundef nonnull %.val7.i.i)
          to label %bb.h unwind label %bb.j, !noalias !8331

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !204, !invariant.load !4, !noalias !8331 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !1728, !invariant.load !4, !noalias !8331
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #32, !noalias !8331
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.j:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = getelementptr inbounds nuw i8, ptr %.val8.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !204, !invariant.load !4, !noalias !8331 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
end_hunk_1
