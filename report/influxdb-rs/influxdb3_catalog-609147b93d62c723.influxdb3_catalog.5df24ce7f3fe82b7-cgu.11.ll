Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.11?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1354
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc5block5BlockNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7channel8versions2v220CatalogUpdateMessageEEB1Y_:bb.a
bb.m:                                             ; preds = %bb.c
  %i.f = cmpxchg ptr %0, ptr null, ptr %1 release seq_cst, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.d
  %i.g = cmpxchg ptr %0, ptr null, ptr %1 acquire monotonic, align 8
  br label %bb.j

bb.o:                                             ; preds = %bb.d
  %i.h = cmpxchg ptr %0, ptr null, ptr %1 acquire acquire, align 8
  br label %bb.j

bb.p:                                             ; preds = %bb.d
  %i.i = cmpxchg ptr %0, ptr null, ptr %1 acquire seq_cst, align 8
  br label %bb.j

bb.q:                                             ; preds = %bb.e
  %i.j = cmpxchg ptr %0, ptr null, ptr %1 acq_rel monotonic, align 8
  br label %bb.j

bb.r:                                             ; preds = %bb.e
  %i.k = cmpxchg ptr %0, ptr null, ptr %1 acq_rel acquire, align 8
  br label %bb.j

bb.s:                                             ; preds = %bb.e
  %i.l = cmpxchg ptr %0, ptr null, ptr %1 acq_rel seq_cst, align 8
  br label %bb.j

bb.t:                                             ; preds = %bb.f
  %i.m = cmpxchg ptr %0, ptr null, ptr %1 seq_cst monotonic, align 8
  br label %bb.j

bb.u:                                             ; preds = %bb.f
  %i.n = cmpxchg ptr %0, ptr null, ptr %1 seq_cst acquire, align 8
  br label %bb.j

bb.v:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %0, ptr null, ptr %1 seq_cst seq_cst, align 8
  br label %bb.j

bb.w:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @88, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #29
  unreachable

bb.x:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RINvNtNtCs4NRVxsYgnAr_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc5block5BlockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events20CatalogUpdateMessageEEB20_(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #8 {
bb.a:
  switch i8 %2, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.g
    i8 2, label %bb.h
    i8 4, label %bb.i
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !40

bb.c:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.k
    i8 2, label %bb.l
    i8 4, label %bb.m
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !40

bb.d:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.n
    i8 2, label %bb.o
    i8 4, label %bb.p
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !40

bb.e:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.q
    i8 2, label %bb.r
    i8 4, label %bb.s
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !40

bb.f:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.t
    i8 2, label %bb.u
    i8 4, label %bb.v
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !40

bb.g:                                             ; preds = %bb.b
  %i.a = cmpxchg ptr %0, ptr null, ptr %1 monotonic monotonic, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.b = cmpxchg ptr %0, ptr null, ptr %1 monotonic acquire, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.c = cmpxchg ptr %0, ptr null, ptr %1 monotonic seq_cst, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i1 } [ %i.a, %bb.g ], [ %i.b, %bb.h ], [ %i.c, %bb.i ], [ %i.d, %bb.k ], [ %i.e, %bb.l ], [ %i.f, %bb.m ], [ %i.g, %bb.n ], [ %i.h, %bb.o ], [ %i.i, %bb.p ], [ %i.j, %bb.q ], [ %i.k, %bb.r ], [ %i.l, %bb.s ], [ %i.m, %bb.t ], [ %i.n, %bb.u ], [ %i.o, %bb.v ]
  %.sroa.01.0 = extractvalue { ptr, i1 } %.pn, 0
  ret ptr %.sroa.01.0

bb.k:                                             ; preds = %bb.c
  %i.d = cmpxchg ptr %0, ptr null, ptr %1 release monotonic, align 8
  br label %bb.j

bb.l:                                             ; preds = %bb.c
  %i.e = cmpxchg ptr %0, ptr null, ptr %1 release acquire, align 8
  br label %bb.j

bb.m:                                             ; preds = %bb.c
  %i.f = cmpxchg ptr %0, ptr null, ptr %1 release seq_cst, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.d
  %i.g = cmpxchg ptr %0, ptr null, ptr %1 acquire monotonic, align 8
  br label %bb.j

bb.o:                                             ; preds = %bb.d
  %i.h = cmpxchg ptr %0, ptr null, ptr %1 acquire acquire, align 8
  br label %bb.j

bb.p:                                             ; preds = %bb.d
  %i.i = cmpxchg ptr %0, ptr null, ptr %1 acquire seq_cst, align 8
  br label %bb.j

bb.q:                                             ; preds = %bb.e
  %i.j = cmpxchg ptr %0, ptr null, ptr %1 acq_rel monotonic, align 8
  br label %bb.j

bb.r:                                             ; preds = %bb.e
  %i.k = cmpxchg ptr %0, ptr null, ptr %1 acq_rel acquire, align 8
  br label %bb.j

bb.s:                                             ; preds = %bb.e
  %i.l = cmpxchg ptr %0, ptr null, ptr %1 acq_rel seq_cst, align 8
  br label %bb.j

bb.t:                                             ; preds = %bb.f
  %i.m = cmpxchg ptr %0, ptr null, ptr %1 seq_cst monotonic, align 8
  br label %bb.j

bb.u:                                             ; preds = %bb.f
  %i.n = cmpxchg ptr %0, ptr null, ptr %1 seq_cst acquire, align 8
  br label %bb.j

bb.v:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %0, ptr null, ptr %1 seq_cst seq_cst, align 8
  br label %bb.j

bb.w:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @88, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #29
  unreachable

bb.x:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format8registry20decode_to_value_implNtNtNtB4_7records10generation14SetStorageModeEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.019 = alloca [24 x i8], align 8          ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = tail call noundef i8 @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBM_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !5535 ; 2 uses
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775801, ptr %i.k, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = trunc i64 %2 to i32
  store i32 %3, ptr %.sroa.413.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  store i8 %i.i, ptr %i.h, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5536
  store i64 -1, ptr %i.f, align 8, !noalias !5536
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr null, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !5536
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !5536
  %i.l = invoke noundef align 8 ptr @_RINvXs6_NtNtCsdLkRf3gRIi6_10serde_json5value3serNtB6_12SerializeMapNtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types11StorageModeEB2h_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h)
          to label %bb.d unwind label %bb.e, !noalias !5537 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit, label %_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit.thread

_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit.thread: ; preds = %bb.d
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdLkRf3gRIi6_10serde_json5value3ser12SerializeMapECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(48) %i.f), !noalias !5537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5536
  br label %bb.g

common.resume:                                    ; preds = %.body.i, %bb.p, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.aa, %bb.p ], [ %i.t, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdLkRf3gRIi6_10serde_json5value3ser12SerializeMapECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(48) %i.f) #30
          to label %common.resume unwind label %bb.f, !noalias !5537

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !5537
  unreachable

_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !5536
  call void @_RNvXs6_NtNtCsdLkRf3gRIi6_10serde_json5value3serNtB5_12SerializeMapNtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3end(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5536
  %.pr = load i8, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5536
  %i.o = icmp eq i8 %.pr, -1
  br i1 %i.o, label %_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit._crit_edge, label %bb.r

_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit._crit_edge: ; preds = %_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit._crit_edge, %_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit.thread
  %i.p = phi ptr [ %.pre, %_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit._crit_edge ], [ %i.l, %_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit.thread ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.019)
  call void @llvm.experimental.noalias.scope.decl(metadata !5538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.p, ptr %i.d, align 8, !noalias !5539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5540
  store i64 0, ptr %i.c, align 8, !noalias !5540
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5540
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !5540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5540
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.q, align 8, !noalias !5540
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !5540
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !5540
  store ptr %i.c, ptr %i.b, align 8, !noalias !5540
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @581, ptr %i.r, align 8, !noalias !5540
  %i.s = invoke noundef zeroext i1 @_RNvXs3_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !5541

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body.i unwind label %bb.k, !noalias !5541

bb.i:                                             ; preds = %bb.g
  br i1 %i.s, label %bb.j, label %bb.l, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @582, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @293, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @584) #29
          to label %.noexc.i.i unwind label %bb.h, !noalias !5541

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !5541
  unreachable

.body.i:                                          ; preds = %bb.h
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #30
          to label %common.resume unwind label %bb.q, !noalias !5542

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !5538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5540
  call void @llvm.experimental.noalias.scope.decl(metadata !5543)
  call void @llvm.experimental.noalias.scope.decl(metadata !5544)
  %i.v = load i64, ptr %i.p, align 8, !range !27, !alias.scope !5545, !noalias !5546, !noundef !5
  switch i64 %i.v, label %_RNCINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format8registry20decode_to_value_implNtNtNtB6_7records10generation14SetStorageModeE0B8_.exit [
    i64 0, label %bb.m
    i64 1, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !5545, !noalias !5546, !noundef !5 ; 2 uses
  %i.x = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.x, label %_RNCINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format8registry20decode_to_value_implNtNtNtB6_7records10generation14SetStorageModeE0B8_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !5545, !noalias !5546, !nonnull !5, !noundef !5
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #24, !noalias !5547
  br label %_RNCINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format8registry20decode_to_value_implNtNtNtB6_7records10generation14SetStorageModeE0B8_.exit

bb.o:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.z)
          to label %_RNCINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format8registry20decode_to_value_implNtNtNtB6_7records10generation14SetStorageModeE0B8_.exit unwind label %bb.p, !noalias !5546

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.p, i64 noundef 40, i64 noundef 8) #24, !noalias !5546
  br label %common.resume

bb.q:                                             ; preds = %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !5542
  unreachable

_RNCINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format8registry20decode_to_value_implNtNtNtB6_7records10generation14SetStorageModeE0B8_.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.p, i64 noundef 40, i64 noundef 8) #24, !noalias !5546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 25, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019)
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCsdLkRf3gRIi6_10serde_json5value8to_valueRNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation14SetStorageModeEBS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %_RNCINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format8registry20decode_to_value_implNtNtNtB6_7records10generation14SetStorageModeE0B8_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtCs844E4pPEVZX_17influxdb3_catalog6format8registry20decode_to_value_implNtNtNtB4_7records10generation21SetGenerationDurationEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.028 = alloca [24 x i8], align 8          ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5571
  call void @_RINvNtCs87O7Q65ve1k_7bitcode6derive6decodeNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records10generation21SetGenerationDurationEBM_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !5572
  %i.j = load i64, ptr %i.g, align 8, !range !4, !noalias !5571, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.8.insert.ext = and i64 %2, 4294967295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5571
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775801, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.8.insert.ext, ptr %.sroa.418.0..sroa_idx, align 8
end_hunk_0
