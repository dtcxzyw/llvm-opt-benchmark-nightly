Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.12?download=true
inline.NumInlined: 1946
inline.NumDeleted: 1013
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_sliceNtNtCs92BnbMq7p8c_15influxdb3_write11table_index18TableIndexSnapshotEBN_:bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCs92BnbMq7p8c_15influxdb3_write11table_index18TableIndexSnapshotEB19_.exit unwind label %bb.j, !noalias !2403

bb.j:                                             ; preds = %.loopexit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume.i unwind label %bb.k, !noalias !2403

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2403
  unreachable

common.resume.i:                                  ; preds = %bb.m, %bb.j, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %i.s, %bb.j ], [ %.pn.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2403
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCs92BnbMq7p8c_15influxdb3_write11table_index18TableIndexSnapshotEB19_.exit unwind label %bb.m, !noalias !2403

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %common.resume.i unwind label %bb.n, !noalias !2403

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2403
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2403
  unreachable

_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCs92BnbMq7p8c_15influxdb3_write11table_index18TableIndexSnapshotEB19_.exit: ; preds = %.loopexit.i, %bb.l
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c), !noalias !2403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2403
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_sliceNtNtCs92BnbMq7p8c_15influxdb3_write17table_index_cache29TableIndexConversionCompletedEBN_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2425
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store i64 0, ptr %i.b, align 8, !noalias !2425
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2425
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !2425
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 -128, ptr %i.d, align 8, !noalias !2425
  %i.e = invoke { i64, ptr } @_RINvXNvNtCs92BnbMq7p8c_15influxdb3_write17table_index_cache1__NtB5_29TableIndexConversionCompletedNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2B_4read9SliceReadEEB7_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.f, !noalias !2425 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  %i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2428, !noalias !2425, !noundef !7 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2429, !noalias !2425 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !2428, !noalias !2425, !nonnull !7, !noundef !7
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.l = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !2431, !noundef !7
  switch i8 %i.n, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs92BnbMq7p8c_15influxdb3_write.exit.i.i [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.o = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2432, !noalias !2425
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.d

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs92BnbMq7p8c_15influxdb3_write.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2433
  store i64 22, ptr %i.a, align 8, !noalias !2433
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE3endCs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.f, !noalias !2425

bb.f:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs92BnbMq7p8c_15influxdb3_write.exit.i.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtBG_4read9SliceReadEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(64) %i.b) #25
          to label %common.resume.i unwind label %bb.l, !noalias !2425

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE3endCs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs92BnbMq7p8c_15influxdb3_write.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2433
  br label %bb.i

.loopexit.i:                                      ; preds = %bb.e, %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCs92BnbMq7p8c_15influxdb3_write17table_index_cache29TableIndexConversionCompletedEB19_.exit unwind label %bb.g, !noalias !2425

bb.g:                                             ; preds = %.loopexit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume.i unwind label %bb.h, !noalias !2425

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2425
  unreachable

common.resume.i:                                  ; preds = %bb.j, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.r, %bb.g ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE3endCs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.b
  %.sroa.5.1.i = phi ptr [ %i.g, %bb.b ], [ %i.p, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE3endCs92BnbMq7p8c_15influxdb3_write.exit.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCs92BnbMq7p8c_15influxdb3_write17table_index_cache29TableIndexConversionCompletedEB19_.exit unwind label %bb.j, !noalias !2425

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %common.resume.i unwind label %bb.k, !noalias !2425

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2425
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2425
  unreachable

_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCs92BnbMq7p8c_15influxdb3_write17table_index_cache29TableIndexConversionCompletedEB19_.exit: ; preds = %.loopexit.i, %bb.i
  %.sroa.5.0.i = phi ptr [ %.sroa.5.1.i, %bb.i ], [ %i.g, %.loopexit.i ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.i ], [ 0, %.loopexit.i ]
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b), !noalias !2425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2425
  %i.w = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.x = insertvalue { i64, ptr } %i.w, ptr %.sroa.5.0.i, 1
  ret { i64, ptr } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RINvNtCsdLkRf3gRIi6_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs92BnbMq7p8c_15influxdb3_write(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [6 x i8], align 4                 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !align !10, !noundef !7 ; 6 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @214, i64 noundef range(i64 0, -9223372036854775808) 1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %exitcond.not.i1722 = icmp eq i64 %3, 0
  br i1 %exitcond.not.i1722, label %.outer.i._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i.lr.ph

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i.lr.ph: ; preds = %bb.a, %_RINvYNtNtCsdLkRf3gRIi6_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %.sroa.05.0.ph.i24 = phi ptr [ %i.o, %_RINvYNtNtCsdLkRf3gRIi6_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %2, %bb.a ] ; 4 uses
  %.sroa.5.0.ph.i23 = phi i64 [ %i.q, %_RINvYNtNtCsdLkRf3gRIi6_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %3, %bb.a ] ; 3 uses
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.f = add i64 %.sroa.010.0.i18, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %.sroa.5.0.ph.i23
  br i1 %exitcond.not.i, label %.outer.i._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i

.outer.i._crit_edge:                              ; preds = %_RINvYNtNtCsdLkRf3gRIi6_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.b, %bb.a
  %.sroa.5.0.ph.i.lcssa = phi i64 [ %.sroa.5.0.ph.i23, %bb.b ], [ 0, %bb.a ], [ 0, %_RINvYNtNtCsdLkRf3gRIi6_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i ] ; 2 uses
  %.sroa.05.0.ph.i.lcssa = phi ptr [ %.sroa.05.0.ph.i24, %bb.b ], [ %2, %bb.a ], [ %i.o, %_RINvYNtNtCsdLkRf3gRIi6_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %i.g = icmp eq i64 %.sroa.5.0.ph.i.lcssa, 0
  br i1 %i.g, label %_RINvNtCsdLkRf3gRIi6_10serde_json3ser27format_escaped_str_contentsQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.c

bb.c:                                             ; preds = %.outer.i._crit_edge
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.lcssa, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i.lcssa)
  br label %_RINvNtCsdLkRf3gRIi6_10serde_json3ser27format_escaped_str_contentsQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs92BnbMq7p8c_15influxdb3_write.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i.lr.ph, %bb.b
  %.sroa.010.0.i18 = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i.lr.ph ], [ %i.f, %bb.b ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i24, i64 %.sroa.010.0.i18
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !2436, !noundef !7 ; 3 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_RNvNtCsdLkRf3gRIi6_10serde_json3ser6ESCAPE, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !2436, !noundef !7 ; 3 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i24, i64 %.sroa.010.0.i18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.p = xor i64 %.sroa.010.0.i18, -1
  %i.q = add i64 %.sroa.5.0.ph.i23, %i.p          ; 2 uses
  %i.r = icmp eq i64 %.sroa.010.0.i18, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i24, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i18)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = icmp eq i8 %i.l, 117
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2436
  %i.t = and i8 %i.i, 15
  %i.u = zext nneg i8 %i.t to i64
  %i.v = lshr i8 %i.i, 4
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsdLkRf3gRIi6_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !2436, !noundef !7
  %i.z = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsdLkRf3gRIi6_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.u
  %i.aa = load i8, ptr %i.z, align 1, !noalias !2436, !noundef !7
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !noalias !2436
  store i8 %i.y, ptr %i.d, align 4, !noalias !2436
  store i8 %i.aa, ptr %i.e, align 1, !noalias !2436
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2436
  br label %_RINvYNtNtCsdLkRf3gRIi6_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2436
  store i8 92, ptr %i.a, align 1, !noalias !2436
  store i8 %i.l, ptr %i.c, align 1, !noalias !2436
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2436
  br label %_RINvYNtNtCsdLkRf3gRIi6_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i

_RINvYNtNtCsdLkRf3gRIi6_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.h, %bb.g
  %exitcond.not.i17 = icmp eq i64 %i.q, 0
  br i1 %exitcond.not.i17, label %.outer.i._crit_edge, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs92BnbMq7p8c_15influxdb3_write.exit.i.lr.ph

_RINvNtCsdLkRf3gRIi6_10serde_json3ser27format_escaped_str_contentsQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_15PrettyFormatterECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %.outer.i._crit_edge, %bb.c
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @214, i64 noundef range(i64 0, -9223372036854775808) 1)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvNtNtCs6ePPILGZvJ2_11arrow_array7builder32generic_bytes_dictionary_builder9get_bytesINtNtB6_5types17GenericStringTypelEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 2 uses
  %i.i = add i64 %1, 1                            ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.d
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.i
  %i.l = load i32, ptr %i.k, align 4, !noundef !7 ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp ult i64 %1, %i.d
  br i1 %i.n, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %1
  %i.p = load i32, ptr %i.o, align 4, !noundef !7 ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = icmp ult i32 %i.l, %i.p
  %.not = icmp ult i64 %i.h, %i.m
  %or.cond = or i1 %.not, %i.r
  br i1 %or.cond, label %bb.f, label %bb.g, !prof !16

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #24
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.q, i64 noundef %i.m, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #24
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.s = sub nuw nsw i64 %i.m, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %i.u = insertvalue { ptr, i64 } poison, ptr %i.t, 0
  %i.v = insertvalue { ptr, i64 } %i.u, i64 %i.s, 1
  ret { ptr, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENvYBX_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr noalias noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %.sroa.0.0.i, 3          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %.sroa.13.2 = phi ptr [ %i.p, %.noexc ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.r, %.noexc ], [ %i.h, %.critedge ] ; 2 uses
  %.sroa.0.0.i17 = phi ptr [ %i.l, %.noexc ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -8 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -8 ; 3 uses
  %i.k = invoke noundef zeroext i1 @_RNvXsR_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltBH_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -8 ; 2 uses
  %..i = select i1 %i.k, ptr %i.i, ptr %i.j
  %i.m = load i64, ptr %..i, align 8, !noalias !2449
  store i64 %i.m, ptr %i.l, align 8, !noalias !2449
  %i.n = xor i1 %i.k, true
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o ; 3 uses
  %i.q = zext i1 %i.k to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.q ; 3 uses
  %i.s = icmp eq ptr %i.p, %0
  %i.t = icmp eq ptr %i.r, %2
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1J_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc20
  %.sroa.13.3 = phi ptr [ %i.ab, %.noexc20 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.y, %.noexc20 ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.aa, %.noexc20 ], [ %i.e, %.critedge ] ; 3 uses
  %i.u = invoke noundef zeroext i1 @_RNvXsR_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileENtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltBH_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.2)
          to label %.noexc20 unwind label %.loopexit.split-lp ; 3 uses

.noexc20:                                         ; preds = %.lr.ph.i
  %i.v = xor i1 %i.u, true
  %spec.select.i = select i1 %i.u, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  %i.w = load i64, ptr %spec.select.i, align 8, !noalias !2450
  store i64 %i.w, ptr %.sroa.13.3, align 8, !noalias !2450
  %i.x = zext i1 %i.v to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2, i64 %i.x ; 3 uses
  %i.z = zext i1 %i.u to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 8 ; 2 uses
  %i.ac = icmp ne ptr %i.y, %i.h
  %i.ad = icmp ne ptr %i.aa, %i.f
  %or.cond.i19 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1J_.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1J_.exit: ; preds = %.noexc20, %.noexc
  %.sroa.13.1 = phi ptr [ %i.p, %.noexc ], [ %i.ab, %.noexc20 ]
  %.sroa.7.1 = phi ptr [ %i.r, %.noexc ], [ %i.h, %.noexc20 ]
  %.sroa.0.1 = phi ptr [ %2, %.noexc ], [ %i.y, %.noexc20 ] ; 2 uses
  %i.ae = ptrtoint ptr %.sroa.7.1 to i64
  %i.af = ptrtoint ptr %.sroa.0.1 to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.ag, i1 false), !noalias !2451
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCscdodAO9FK5_5alloc4sync3ArcNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1J_.exit
  ret void

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ah = ptrtoint ptr %.sroa.7.0 to i64
  %i.ai = ptrtoint ptr %.sroa.0.0 to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aj, i1 false), !noalias !2452
  resume { ptr, i32 } %lpad.phi
}
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs1_1__NtB2s_14CoreTableIndexNtB1l_11Deserialize11deserialize9___VisitorEB2u_:bb.a

bb.cj:                                            ; preds = %bb.ci
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef 40, i64 noundef 8) #27
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.ci
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef 40, i64 noundef 8) #27
  br label %.thread

bb.ck:                                            ; preds = %.thread226, %.thread, %bb.e
  %.sroa.8.1 = phi ptr [ %i.gj, %.thread226 ], [ %i.aq, %bb.e ], [ %i.gp, %.thread ]
  %i.gy = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 %.sroa.8.1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gy, ptr %i.gz, align 8
  store ptr null, ptr %0, align 8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cc
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store ptr %i.gm, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.loopexit43, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB2s_18TableIndexSnapshotNtB1l_11Deserialize11deserialize9___VisitorEB2u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.11.i = alloca [16 x i8], align 8         ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 13 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 10 uses
  %i.u = alloca [64 x i8], align 8                ; 10 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.3.i = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.9249.i = alloca [7 x i8], align 1        ; 6 uses
  %.sroa.14250.i = alloca [16 x i8], align 8      ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 17 uses
  %.sroa.19.i = alloca [16 x i8], align 8         ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 29 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [128 x i8], align 8              ; 14 uses
  %i.ab = alloca [136 x i8], align 8              ; 11 uses
  %.sroa.31.sroa.6 = alloca [32 x i8], align 8    ; 6 uses
  %.sroa.33 = alloca [16 x i8], align 8           ; 6 uses
  %.sroa.36 = alloca [24 x i8], align 8           ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !2917, !noundef !7 ; 2 uses
  %.promoted.i = load i64, ptr %i.ae, align 8, !alias.scope !2916 ; 2 uses
  %i.ah = icmp ult i64 %.promoted.i, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2917, !nonnull !7, !noundef !7
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ak = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.an, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !2919, !noundef !7
  switch i8 %i.am, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !21

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.an = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.an, ptr %i.ae, align 8, !alias.scope !2920
  %exitcond.not.i = icmp eq i64 %i.an, %i.ag
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 5, ptr %i.ad, align 8
  %i.ao = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  store ptr null, ptr %0, align 8
  br label %bb.dn

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 8, !noundef !7
  %i.as = add i8 %i.ar, -1                        ; 2 uses
  store i8 %i.as, ptr %i.aq, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.f, label %bb.g, !prof !9

bb.e:                                             ; preds = %bb.b
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @199)
  br label %bb.dl

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 24, ptr %i.ac, align 8
  %i.av = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  br label %bb.dn

bb.g:                                             ; preds = %bb.d
  %i.ax = add i64 %i.ak, 1
  store i64 %i.ax, ptr %i.ae, align 8, !alias.scope !2921
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %1, ptr %i.z, align 8, !noalias !2922
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 1, ptr %i.ay, align 8, !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2922
  store ptr null, ptr %i.y, align 8, !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2922
  store i64 0, ptr %i.x, align 8, !noalias !2922
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.az, align 8, !noalias !2922
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store i64 0, ptr %i.ba, align 8, !noalias !2922
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.sroa.9249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.763.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.5146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.6147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.578.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.679.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 33
  %.sroa.780.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.881.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.5143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.5140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.638.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 21 uses
  %.sroa.741.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.638.0..sroa_idx39.promoted.i = load ptr, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  br label %.outer

.outer:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEB1E_.exit.i, %bb.g
  %.sroa.4139.0.copyload489.i.ph = phi ptr [ %.sroa.4139.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEB1E_.exit.i ], [ %.sroa.638.0..sroa_idx39.promoted.i, %bb.g ] ; 19 uses
  %.ph = phi ptr [ %.pr.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEB1E_.exit.i ], [ null, %bb.g ] ; 19 uses
  %.sroa.14.0.i.ph = phi i64 [ %.sroa.14.0.i.ph1041, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEB1E_.exit.i ], [ undef, %bb.g ]
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0.0.i.ph1042, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEB1E_.exit.i ], [ null, %bb.g ]
  %.sroa.419.0.i.ph = phi i64 [ %.sroa.419.0.i.ph1049, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEB1E_.exit.i ], [ undef, %bb.g ]
  %.sroa.017.0.i.ph = phi i64 [ %.sroa.017.0.i.ph1050, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEEB1E_.exit.i ], [ 0, %bb.g ]
  br label %.outer1040

.outer1040:                                       ; preds = %.outer, %bb.av
  %.sroa.14.0.i.ph1041 = phi i64 [ %.sroa.14.0.i.ph, %.outer ], [ %i.fh, %bb.av ] ; 6 uses
  %.sroa.0.0.i.ph1042 = phi ptr [ %.sroa.0.0.i.ph, %.outer ], [ %.pr270.i, %bb.av ] ; 27 uses
  %.sroa.419.0.i.ph1043 = phi i64 [ %.sroa.419.0.i.ph, %.outer ], [ %.sroa.419.0.i.ph1049, %bb.av ]
  %.sroa.017.0.i.ph1044 = phi i64 [ %.sroa.017.0.i.ph, %.outer ], [ %.sroa.017.0.i.ph1050, %bb.av ]
  br label %.outer1048

.outer1048:                                       ; preds = %.outer1040, %bb.ak
  %.sroa.419.0.i.ph1049 = phi i64 [ %.sroa.419.0.i.ph1043, %.outer1040 ], [ %i.ed, %bb.ak ] ; 3 uses
  %.sroa.017.0.i.ph1050 = phi i64 [ %.sroa.017.0.i.ph1044, %.outer1040 ], [ 1, %bb.ak ] ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.outer1048, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9249.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14250.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  call void @llvm.experimental.noalias.scope.decl(metadata !2924)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2925
  invoke fastcc void @_RINvNvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB8_9MapAccesspENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp, !noalias !2926

.noexc.i:                                         ; preds = %bb.h
  %i.bd = load i8, ptr %i.l, align 8, !range !6, !noalias !2925, !noundef !7
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !2925, !nonnull !7, !align !10, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2925
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.i

bb.j:                                             ; preds = %.noexc.i
  %i.bh = load i8, ptr %i.bb, align 1, !range !6, !noalias !2925, !noundef !7
  %i.bi = trunc nuw i8 %i.bh to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2925
  br i1 %i.bi, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2925
  %i.bj = load ptr, ptr %i.z, align 8, !alias.scope !2927, !noalias !2922, !nonnull !7, !align !10, !noundef !7 ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  call void @llvm.experimental.noalias.scope.decl(metadata !2930)
  call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  call void @llvm.experimental.noalias.scope.decl(metadata !2935)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 14 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !2936, !noalias !2937, !noundef !7
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.bl, align 8, !alias.scope !2936, !noalias !2937
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 0, ptr %i.bo, align 8, !alias.scope !2938, !noalias !2937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2939
  invoke void @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bj)
          to label %.noexc187.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp, !noalias !2926

.noexc187.i:                                      ; preds = %bb.k
  %i.bp = load i64, ptr %i.j, align 8, !range !13, !noalias !2939, !noundef !7 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 2
  %i.br = load ptr, ptr %i.bc, align 8, !noalias !2939 ; 10 uses
  br i1 %i.bq, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit.thread4.i.i.i, label %bb.l

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit.thread4.i.i.i: ; preds = %.noexc187.i
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2939
  br label %bb.r

bb.l:                                             ; preds = %.noexc187.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !2939 ; 3 uses
  %i.bs = trunc nuw i64 %i.bp to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  br i1 %i.bs, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.q [
    i64 24, label %bb.n
    i64 5, label %bb.o
    i64 13, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.bt = load i128, ptr %i.br, align 1
  %i.bu = xor i128 %i.bt, 132166782065304937894824897480973446771
  %i.bv = getelementptr i8, ptr %i.br, i64 16
  %i.bw = load i64, ptr %i.bv, align 1
  %i.bx = zext i64 %i.bw to i128
  %i.by = xor i128 %i.bx, 8243102915232685925
  %i.bz = or i128 %i.bu, %i.by
  %i.ca = icmp ne i128 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread765.i, label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.cd = load i32, ptr %i.br, align 1
  %i.ce = xor i32 %i.cd, 1701603686
  %i.cf = getelementptr i8, ptr %i.br, i64 4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = xor i32 %i.ch, 115
  %i.cj = or i32 %i.ce, %i.ci
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread765.i, label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.cn = load i64, ptr %i.br, align 1
  %i.co = xor i64 %i.cn, 6873730490624206194
  %i.cp = getelementptr i8, ptr %i.br, i64 5
  %i.cq = load i64, ptr %i.cp, align 1
  %i.cr = xor i64 %i.cq, 8315171486954382437
  %i.cs = or i64 %i.co, %i.cr
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread765.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  store i8 13, ptr %i.k, align 8, !alias.scope !2941, !noalias !2925
  store ptr %i.br, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !2941, !noalias !2925
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !2941, !noalias !2925
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread765.i

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread765.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0248.0.copyload.pr.i = phi i8 [ 23, %bb.o ], [ 13, %bb.q ], [ 22, %bb.n ], [ 24, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2939
  %.sroa.10.0.copyload.pre.i = load ptr, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14250.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !2942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2925
  br label %bb.s

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit.i.i.i: ; preds = %bb.l
  invoke void @_RINvXNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB8_18TableIndexSnapshotNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1o_7Visitor9visit_strNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i)
          to label %.noexc188.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp, !noalias !2926

.noexc188.i:                                      ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit.i.i.i
  %.pr.i.i.i = load i8, ptr %i.k, align 8, !noalias !2942 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2939
  %i.cw = icmp eq i8 %.pr.i.i.i, -1
  %.sroa.10.0.copyload.pre740.i = load ptr, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2942 ; 3 uses
  br i1 %i.cw, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit._crit_edge.i.i.i, label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit._crit_edge.i.i.i: ; preds = %.noexc188.i
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  br label %bb.r

bb.r:                                             ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit._crit_edge.i.i.i, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit.thread4.i.i.i
  %i.cx = phi ptr [ %.sroa.10.0.copyload.pre740.i, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit._crit_edge.i.i.i ], [ %i.br, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit.thread4.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2925
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.i

.body.i:                                          ; preds = %bb.bq, %bb.az, %bb.aw, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i23
  %.sroa.0.0619.i = phi ptr [ %.sroa.0.0.i.ph10421188, %bb.bq ], [ %.sroa.0.0.i.ph1042, %bb.az ], [ %.sroa.0.0.i.ph1042, %bb.aw ], [ %.sroa.0.0.i.ph10421186, %.loopexit.i23 ], [ %.sroa.0.0620.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.0.0.lcssa.i, %.loopexit.split-lp.loopexit.i ]
  %.sroa.0130.1.i = phi i8 [ %.sroa.0130.5.i, %bb.bq ], [ 1, %bb.az ], [ 1, %bb.aw ], [ %.sroa.0130.8.i, %.loopexit.i23 ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i ], [ 1, %.loopexit.split-lp.loopexit.i ]
  %.sroa.0132.1.i = phi i8 [ %.sroa.0132.4.i, %bb.bq ], [ 1, %bb.az ], [ 1, %bb.aw ], [ %.sroa.0132.4.i, %.loopexit.i23 ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i ], [ 1, %.loopexit.split-lp.loopexit.i ]
  %.pn167.i = phi { ptr, i32 } [ %.pn163.i, %bb.bq ], [ %i.fn, %bb.az ], [ %lpad.phi281.i, %bb.aw ], [ %lpad.loopexit.i, %.loopexit.i23 ], [ %lpad.loopexit.split-lp275.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.phi, %.loopexit.split-lp.loopexit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.x) #25
          to label %.body217.i unwind label %bb.bd, !noalias !2926

.loopexit.i23:                                    ; preds = %bb.bz
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp: ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB1q_18TableIndexSnapshotNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB3Y_4read9SliceReadEEB1s_.exit.i.i.i, %bb.k, %bb.h, %.loopexit.i.i.i.i, %bb.ag, %bb.ai
  %lpad.loopexit.split-lp1051 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.i

.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp: ; preds = %bb.au
  %lpad.loopexit.split-lp1046 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.i

.loopexit.split-lp.loopexit.i.loopexit.split-lp:  ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.loopexit.split-lp
  %.pr463.lcssa.i = phi ptr [ null, %.loopexit.split-lp.loopexit.i.loopexit.split-lp ], [ %.ph, %.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp ], [ %.ph, %.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp ]
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.0.0.i.ph1042, %.loopexit.split-lp.loopexit.i.loopexit.split-lp ], [ %.sroa.0.0.i.ph1042, %.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp ], [ null, %.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.loopexit.split-lp ], [ %lpad.loopexit.split-lp1051, %.loopexit.split-lp.loopexit.i.loopexit.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp1046, %.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp ]
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.pr463.lcssa.i, ptr %i.y, align 8, !noalias !2922
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke, %bb.bj, %bb.be, %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.thread.i, %bb.at, %.loopexit.i.i.i205.i, %bb.ao, %.loopexit.i.i.i196.i
  %.sroa.0.0620.i = phi ptr [ null, %bb.at ], [ null, %.loopexit.i.i.i205.i ], [ %.sroa.0.0.i.ph1042, %bb.ao ], [ %.sroa.0.0.i.ph1042, %.loopexit.i.i.i196.i ], [ %.sroa.0.0.i.ph1042, %bb.bj ], [ %.sroa.0.0.i.ph1042, %bb.be ], [ %.sroa.0.0.i.ph1042, %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.thread.i ], [ %.sroa.0.0.i.ph1042, %.invoke ]
  %lpad.loopexit.split-lp275.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i: ; preds = %.noexc188.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9249.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9249.0..sroa_idx.i, i64 7, i1 false), !noalias !2942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14250.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !2942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2925
  %i.cy = icmp eq i8 %.pr.i.i.i, -2
  br i1 %i.cy, label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.loopexit.i, label %bb.s

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.loopexit.i: ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.i

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.i: ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.loopexit.i, %bb.r, %bb.i
  %.sroa.10.0264.i = phi ptr [ %i.bg, %bb.i ], [ %i.cx, %bb.r ], [ %.sroa.10.0.copyload.pre740.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9249.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14250.i)
  br label %bb.cq

bb.s:                                             ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread765.i
  %.sroa.0248.0269.i.ph = phi i8 [ %.sroa.0248.0.copyload.pr.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread765.i ], [ %.pr.i.i.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i ] ; 3 uses
  %.sroa.10.0268.i.ph = phi ptr [ %.sroa.10.0.copyload.pre.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread765.i ], [ %.sroa.10.0.copyload.pre740.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9249.i, i64 7, i1 false), !noalias !2922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14250.i, i64 16, i1 false), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9249.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14250.i)
  %i.cz = add i8 %.sroa.0248.0269.i.ph, -22
  %i.da = icmp ugt i8 %.sroa.0248.0269.i.ph, 21
  %narrow.i = select i1 %i.da, i8 %i.cz, i8 3
  switch i8 %narrow.i, label %bb.u [
    i8 0, label %bb.v
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
  ]

bb.t:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9249.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14250.i)
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  %i.db = trunc nuw i64 %.sroa.017.0.i.ph1050 to i1
  br i1 %i.db, label %bb.bh, label %bb.be

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.s
  %.not1031 = icmp eq i64 %.sroa.017.0.i.ph1050, 0
  br i1 %.not1031, label %bb.ad, label %.invoke, !prof !17

bb.w:                                             ; preds = %bb.s
  %.not166.i = icmp eq ptr %.ph, null
  br i1 %.not166.i, label %bb.al, label %.invoke, !prof !17

bb.x:                                             ; preds = %bb.s
  %.not165.i = icmp eq ptr %.sroa.0.0.i.ph1042, null
  br i1 %.not165.i, label %bb.aq, label %.invoke, !prof !17

bb.y:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.561.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i, i64 7, i1 false), !noalias !2922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.763.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2922
  store i8 %.sroa.0248.0269.i.ph, ptr %i.t, align 8, !noalias !2922
  store ptr %.sroa.10.0268.i.ph, ptr %.sroa.662.0..sroa_idx.i, align 8, !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2922
  call void @llvm.experimental.noalias.scope.decl(metadata !2943)
  call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !2945, !noalias !2946, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !2947, !noalias !2946 ; 2 uses
  %i.de = icmp ult i64 %.promoted.i.i.i.i, %i.dd
  br i1 %i.de, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.df = load ptr, ptr %i.bk, align 8, !alias.scope !2945, !noalias !2946, !nonnull !7, !noundef !7
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.lr.ph.i.i.i.i
  %i.dg = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dj, %bb.aa ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !2949, !noundef !7
  switch i8 %i.di, label %bb.ab [
    i8 32, label %bb.aa
    i8 10, label %bb.aa
    i8 9, label %bb.aa
    i8 13, label %bb.aa
    i8 58, label %bb.ac
  ], !prof !21

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z
  %i.dj = add i64 %i.dg, 1                        ; 3 uses
  store i64 %i.dj, ptr %i.bl, align 8, !alias.scope !2950, !noalias !2946
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dj, %i.dd
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.z

.loopexit.i.i.i:                                  ; preds = %bb.y, %bb.aa
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2951
  store i64 3, ptr %i.h, align 8, !noalias !2951
  %i.dk = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc189.i unwind label %.loopexit.split-lp279.i, !noalias !2926

.noexc189.i:                                      ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2951
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.thread.i

bb.ab:                                            ; preds = %bb.z
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2951
  store i64 6, ptr %i.i, align 8, !noalias !2951
  %i.dl = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc190.i unwind label %.loopexit.split-lp279.i, !noalias !2926

.noexc190.i:                                      ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2951
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.thread.i

bb.ac:                                            ; preds = %bb.z
  %i.dm = add i64 %i.dg, 1
  store i64 %i.dm, ptr %i.bl, align 8, !alias.scope !2952, !noalias !2946
  invoke void @_RINvXsi_NtNtNtCsjd55S3IyyYQ_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs5CfTnloWo2c_10serde_core2de15DeserializeSeed11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2h_4read9SliceReadEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bj)
          to label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %.loopexit278.i, !noalias !2926

bb.ad:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  call void @llvm.experimental.noalias.scope.decl(metadata !2954)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !2955, !noalias !2926, !noundef !7 ; 2 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !2956, !noalias !2926 ; 2 uses
  %i.dp = icmp ult i64 %.promoted.i.i.i.i.i, %i.do
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad
  %i.dq = load ptr, ptr %i.bk, align 8, !alias.scope !2955, !noalias !2926, !nonnull !7, !noundef !7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i
  %i.dr = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.du, %bb.af ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2957)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !2958, !noundef !7
  switch i8 %i.dt, label %bb.ag [
    i8 32, label %bb.af
    i8 10, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 58, label %bb.ai
  ], !prof !21

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.du = add i64 %i.dr, 1                        ; 3 uses
  store i64 %i.du, ptr %i.bl, align 8, !alias.scope !2959, !noalias !2926
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.du, %i.do
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ae

.loopexit.i.i.i.i:                                ; preds = %bb.af, %bb.ad
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB2s_18TableIndexSnapshotNtB1l_11Deserialize11deserialize9___VisitorEB2u_:bb.a
  store i64 %i.fb, ptr %i.bl, align 8, !alias.scope !2979, !noalias !2975
  %exitcond.not.i.i.i.i208.i = icmp eq i64 %i.fb, %i.ev
  br i1 %exitcond.not.i.i.i.i208.i, label %.loopexit.i.i.i205.i, label %bb.ar

.loopexit.i.i.i205.i:                             ; preds = %bb.aq, %bb.as
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2980
  store i64 3, ptr %i.b, align 8, !noalias !2980
  %i.fc = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc209.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2926

.noexc209.i:                                      ; preds = %.loopexit.i.i.i205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2980
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.thread.i

bb.at:                                            ; preds = %bb.ar
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2980
  store i64 6, ptr %i.c, align 8, !noalias !2980
  %i.fd = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc210.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2926

.noexc210.i:                                      ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2980
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.thread.i

bb.au:                                            ; preds = %bb.ar
  %i.fe = add i64 %i.ey, 1
  store i64 %i.fe, ptr %i.bl, align 8, !alias.scope !2981, !noalias !2975
  invoke void @_RINvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3setINtNtBb_3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdENtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB3c_4read9SliceReadEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bj)
          to label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.loopexit.split-lp, !noalias !2926

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.au
  %.pr270.i = load ptr, ptr %i.v, align 8, !noalias !2922 ; 2 uses
  %i.ff = icmp eq ptr %.pr270.i, null
  br i1 %i.ff, label %.loopexit284.i, label %bb.av

.loopexit284.i:                                   ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  %.pre738.i = load ptr, ptr %.sroa.4142.0..sroa_idx.i, align 8, !noalias !2922
  br label %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.thread.i

_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.thread.i: ; preds = %.loopexit284.i, %.noexc210.i, %.noexc209.i
  %i.fg = phi ptr [ %.pre738.i, %.loopexit284.i ], [ %i.fc, %.noexc209.i ], [ %i.fd, %.noexc210.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2922
  br label %bb.cq

bb.av:                                            ; preds = %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %.sroa.4142.0.copyload.i = load ptr, ptr %.sroa.4142.0..sroa_idx.i, align 8, !noalias !2922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5143.0..sroa_idx.i, i64 16, i1 false), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2922
  %i.fh = ptrtoint ptr %.sroa.4142.0.copyload.i to i64
  br label %.outer1040

.loopexit278.i:                                   ; preds = %bb.ac
  %lpad.loopexit280.i = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  br label %bb.aw

.loopexit.split-lp279.i:                          ; preds = %bb.ab, %.loopexit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp279.i, %.loopexit278.i
  %lpad.phi281.i = phi { ptr, i32 } [ %lpad.loopexit280.i, %.loopexit278.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp279.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.t) #25
          to label %.body.i unwind label %bb.bd, !noalias !2926

_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.ac
  %.pr271.i = load i8, ptr %i.s, align 8, !noalias !2922 ; 2 uses
  %i.fi = icmp eq i8 %.pr271.i, -1
  br i1 %i.fi, label %.loopexit282.i, label %bb.ax

.loopexit282.i:                                   ; preds = %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.i
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  %.pre.i = load ptr, ptr %.sroa.5146.0..sroa_idx.i, align 8, !noalias !2922
  br label %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.thread.i

_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.thread.i: ; preds = %.loopexit282.i, %.noexc190.i, %.noexc189.i
  %i.fj = phi ptr [ %.pre.i, %.loopexit282.i ], [ %i.dk, %.noexc189.i ], [ %i.dl, %.noexc190.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2922
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.t)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2926

bb.ax:                                            ; preds = %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.679.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4145.0..sroa_idx.i, i64 7, i1 false), !noalias !2922
  %.sroa.5146.0.copyload.i = load ptr, ptr %.sroa.5146.0..sroa_idx.i, align 8, !noalias !2922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.881.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6147.0..sroa_idx.i, i64 16, i1 false), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2922
  store i8 %.pr271.i, ptr %.sroa.578.0..sroa_idx.i, align 8, !noalias !2922
  store ptr %.sroa.5146.0.copyload.i, ptr %.sroa.780.0..sroa_idx.i, align 8, !noalias !2922
  %i.fk = load i64, ptr %i.ba, align 8, !alias.scope !2982, !noalias !2922, !noundef !7 ; 3 uses
  %i.fl = load i64, ptr %i.x, align 8, !range !12, !alias.scope !2982, !noalias !2922, !noundef !7
  %i.fm = icmp eq i64 %i.fk, %i.fl
  br i1 %i.fm, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1o_EEE8grow_oneCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.bb unwind label %bb.az, !noalias !2983

bb.az:                                            ; preds = %bb.ay
  %i.fn = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4139.0.copyload489.i.ph, ptr %.sroa.638.0..sroa_idx39.i, align 8, !noalias !2922
  store ptr %.ph, ptr %i.y, align 8, !noalias !2922
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentBY_EEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.u) #25
          to label %.body.i unwind label %bb.ba, !noalias !2926

bb.ba:                                            ; preds = %bb.az
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2926
  unreachable

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.fp = load ptr, ptr %i.az, align 8, !alias.scope !2982, !noalias !2922, !nonnull !7, !noundef !7
  %i.fq = getelementptr inbounds nuw [64 x i8], ptr %i.fp, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fq, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false), !noalias !2926
  %i.fr = add i64 %i.fk, 1
  store i64 %i.fr, ptr %i.ba, align 8, !alias.scope !2982, !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2922
  br label %bb.h

bb.bc:                                            ; preds = %_RINvXs9_NtCsdLkRf3gRIi6_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2922
  br label %bb.cq

bb.bd:                                            ; preds = %bb.dd, %bb.cg, %bb.bq, %bb.aw, %.body.i
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2926
  unreachable

bb.be:                                            ; preds = %bb.t
  %i.ft = invoke { i64, ptr } @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCs1ElB0qm0ygX_13influxdb3_walsj_1__NtB3f_22SnapshotSequenceNumberNtB28_11Deserialize11deserialize9___VisitorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 24)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2926 ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.fu = extractvalue { i64, ptr } %i.ft, 0
  %i.fv = extractvalue { i64, ptr } %i.ft, 1      ; 2 uses
  %i.fw = trunc nuw i64 %i.fu to i1
  br i1 %i.fw, label %bb.cq, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fx = ptrtoint ptr %i.fv to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.t
  %.sroa.087.0.i = phi i64 [ %i.fx, %bb.bg ], [ %.sroa.419.0.i.ph1049, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2922
  %.not160.i = icmp eq ptr %.ph, null
  br i1 %.not160.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !2922
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2922
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyINtNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3setINtNtB3m_3set7HashSetpppENtB28_11Deserialize11deserialize10SeqVisitorNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEEB5p_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 5)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !2926

bb.bk:                                            ; preds = %bb.bj
  %i.fy = load ptr, ptr %i.q, align 8, !noalias !2922, !noundef !7 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  %i.ga = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !2922 ; 2 uses
  br i1 %i.fz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2922
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i

bb.bm:                                            ; preds = %bb.bk
  %.sroa.5150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.597.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5150.0..sroa_idx.i, i64 16, i1 false), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2922
  store ptr %i.fy, ptr %i.r, align 8, !noalias !2922
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.gb, ptr %.sroa.496.0..sroa_idx.i, align 8, !noalias !2922
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bi
  %.sroa.0132.4.i = phi i8 [ 0, %bb.bi ], [ 1, %bb.bm ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  %.not161.i = icmp eq ptr %.sroa.0.0.i.ph1042, null
  br i1 %.not161.i, label %bb.bp, label %bb.bo

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i: ; preds = %bb.ca, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.bl
  %.sroa.0.0.i.ph10421187 = phi ptr [ %.sroa.0.0.i.ph1042, %bb.bl ], [ %.sroa.0.0.i.ph10421186, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.0.0.i.ph10421186, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.ph10421186, %bb.ca ]
  %.sroa.18.4 = phi ptr [ %i.gb, %bb.bl ], [ %.sroa.18.3, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.18.3, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i.i ], [ %.sroa.18.3, %bb.ca ]
  %.sroa.0130.4.i = phi i8 [ 1, %bb.bl ], [ %.sroa.0130.8.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.0130.8.i, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i.i ], [ %.sroa.0130.8.i, %bb.ca ]
  %.sroa.0132.5.i = phi i8 [ 1, %bb.bl ], [ %.sroa.0132.4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.0132.4.i, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i.i ], [ %.sroa.0132.4.i, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2922
  br label %bb.cq

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19.i, i64 16, i1 false), !noalias !2922
  br label %bb.bv

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2922
  invoke void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyINtNvXs_NtNtNtCsc96bKABWO34_9hashbrown20external_trait_impls5serde3setINtNtB3m_3set7HashSetpppENtB28_11Deserialize11deserialize10SeqVisitorNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 13)
          to label %bb.bs unwind label %bb.br, !noalias !2926

bb.bq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.br
  %.sroa.0.0.i.ph10421188 = phi ptr [ null, %bb.br ], [ %.sroa.0.0.i.ph1042, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.sroa.0130.5.i = phi i8 [ 1, %bb.br ], [ %.sroa.0130.7.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.pn163.i = phi { ptr, i32 } [ %i.gc, %bb.br ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_(ptr noalias noundef align 8 dereferenceable(32) %i.r) #25
          to label %.body.i unwind label %bb.bd, !noalias !2926

bb.br:                                            ; preds = %bb.bp
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bp
  %i.gd = load ptr, ptr %i.p, align 8, !noalias !2922, !noundef !7 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  %i.gf = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !2922 ; 2 uses
  br i1 %i.ge, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2922
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.bu:                                            ; preds = %bb.bs
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5153.0..sroa_idx.i, i64 16, i1 false), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2922
  %i.gh = ptrtoint ptr %i.gg to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bo
  %.sroa.8253.0.i = phi i64 [ %i.gh, %bb.bu ], [ %.sroa.14.0.i.ph1041, %bb.bo ] ; 5 uses
  %.sroa.0251.0.i = phi ptr [ %i.gd, %bb.bu ], [ %.sroa.0.0.i.ph1042, %bb.bo ] ; 3 uses
  %.sroa.0130.7.i = phi i8 [ 1, %bb.bu ], [ 0, %bb.bo ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2922
  invoke void @_RINvXs6_NtNtCsjd55S3IyyYQ_5serde7private2deINtB6_19FlatMapDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvCsbFlE7Gjht9i_12influxdb3_idst_1__NtB2Z_12TableIndexIdNtB1P_11Deserialize11deserialize9___VisitorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @192, i64 noundef 3)
          to label %bb.cc unwind label %bb.cb, !noalias !2926

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.cp, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit215.i, %bb.bt
  %.sroa.0.0.i.ph10421186 = phi ptr [ null, %bb.bt ], [ %.sroa.0.0.i.ph1042, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit215.i ], [ %.sroa.0.0.i.ph1042, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.ph1042, %bb.cp ] ; 4 uses
  %.sroa.18.3 = phi ptr [ %i.gg, %bb.bt ], [ %.sroa.18.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit215.i ], [ %.sroa.18.2, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ], [ %.sroa.18.2, %bb.cp ] ; 3 uses
  %.sroa.0130.8.i = phi i8 [ 1, %bb.bt ], [ %.sroa.0130.7.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit215.i ], [ %.sroa.0130.7.i, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i ], [ %.sroa.0130.7.i, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2984)
  call void @llvm.experimental.noalias.scope.decl(metadata !2985)
  call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  call void @llvm.experimental.noalias.scope.decl(metadata !2987)
  call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !2989, !noalias !2922, !noundef !7 ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2990)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !2991, !noalias !2922, !noundef !7 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  br i1 %i.gn, label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  %i.go = load ptr, ptr %i.r, align 8, !alias.scope !2993, !noalias !2922, !nonnull !7, !noundef !7 ; 3 uses
  %.val4.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.go, align 16, !noalias !2994
  %i.gp = icmp sgt <16 x i8> %.val4.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gr = bitcast <16 x i1> %i.gp to i16
  br label %bb.by

bb.by:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i.i, %bb.bx
  %.sroa.14.010.i.i.i.i.i.i.i = phi i64 [ %i.gm, %bb.bx ], [ %i.hd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i.i ]
  %.sroa.10.09.i.i.i.i.i.i.i = phi i16 [ %i.gr, %bb.bx ], [ %i.ha, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.08.i.i.i.i.i.i.i = phi ptr [ %i.gq, %bb.bx ], [ %.sroa.6.1.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.go, %bb.bx ], [ %.sroa.04.1.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not11.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.10.09.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.by, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gs = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.08.i.i.i.i.i.i.i, %bb.by ] ; 2 uses
  %i.gt = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.i, %bb.by ]
  %.val9.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.gs, align 16, !noalias !2995
  %i.gu = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 -1024 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.gu to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i.i

_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.by
  %.sroa.04.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.04.07.i.i.i.i.i.i.i, %bb.by ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.08.i.i.i.i.i.i.i, %bb.by ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.10.09.i.i.i.i.i.i.i, %bb.by ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gx = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.gy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.gz = zext nneg i16 %i.gy to i64
  %i.ha = and i16 %i.gx, %.lcssa.i.i.i.i.i.i.i.i
  %i.hb = sub nsw i64 0, %i.gz
  %i.hc = getelementptr inbounds [64 x i8], ptr %.sroa.04.1.i.i.i.i.i.i.i, i64 %i.hb
  %i.hd = add i64 %.sroa.14.010.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 -64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2996)
  call void @llvm.experimental.noalias.scope.decl(metadata !2997)
  call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !3000, !noalias !3001, !nonnull !7, !noundef !7
  %i.hg = atomicrmw add ptr %i.hf, i64 -1 release, align 8, !noalias !3002
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %bb.bz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.he)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i.i unwind label %.loopexit.i23, !noalias !2926

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i.i: ; preds = %bb.bz, %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i.i
  %i.hi = icmp eq i64 %i.hd, 0
  br i1 %i.hi, label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i.i, label %bb.by

_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i.i, %bb.bw
  %i.hj = shl i64 %i.gj, 6                        ; 2 uses
  %i.hk = add i64 %i.hj, 64
  %i.hl = add i64 %i.hj, 79                       ; 2 uses
  %i.hm = icmp uge i64 %i.hl, %i.hk
  call void @llvm.assume(i1 %i.hm)
  %i.hn = and i64 %i.hl, -64                      ; 3 uses
  %i.ho = add i64 %i.gj, 17
  %i.hp = add i64 %i.ho, %i.hn                    ; 4 uses
  %i.hq = icmp uge i64 %i.hp, %i.hn
  %i.hr = icmp ult i64 %i.hp, 9223372036854775793
  call void @llvm.assume(i1 %i.hq)
  call void @llvm.assume(i1 %i.hr)
  %i.hs = icmp eq i64 %i.hp, 0
  br i1 %i.hs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i.i
  %i.ht = load ptr, ptr %i.r, align 8, !alias.scope !2989, !noalias !2922, !nonnull !7, !noundef !7
  %i.hu = sub nsw i64 0, %i.hn
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 %i.hu
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hv, i64 noundef %i.hp, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !3003
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.cg, %bb.cf, %bb.cb
  %.pn.i = phi { ptr, i32 } [ %i.hw, %bb.cb ], [ %i.ib, %bb.cg ], [ %i.ib, %bb.cf ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write(ptr nonnull %.sroa.0251.0.i, i64 %.sroa.8253.0.i) #25, !noalias !2926
  br label %bb.bq

bb.cb:                                            ; preds = %bb.cj, %bb.bv
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.cc:                                            ; preds = %bb.bv
  %i.hx = load ptr, ptr %i.n, align 8, !noalias !2922, !noundef !7 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !2922 ; 2 uses
  br i1 %i.hy, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2922
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit215.i

bb.ce:                                            ; preds = %bb.cc
  %.sroa.5156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5156.0.copyload.i = load i64, ptr %.sroa.5156.0..sroa_idx.i, align 8, !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2922
  store ptr %i.hx, ptr %i.o, align 8, !noalias !2922
  %.sroa.4117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.ia, ptr %.sroa.4117.0..sroa_idx.i, align 8, !noalias !2922
  %.sroa.5118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %.sroa.5156.0.copyload.i, ptr %.sroa.5118.0..sroa_idx.i, align 8, !noalias !2922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2922
  invoke void @_RINvXs6_NtNtCsjd55S3IyyYQ_5serde7private2deINtB6_19FlatMapDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs3_1__NtB2Z_13IndexMetadataNtB1P_11Deserialize11deserialize9___VisitorEB31_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @195, i64 noundef 4)
          to label %bb.ch unwind label %bb.cf, !noalias !2926

bb.cf:                                            ; preds = %bb.ce
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  call void @llvm.experimental.noalias.scope.decl(metadata !3005)
  call void @llvm.experimental.noalias.scope.decl(metadata !3006)
  %i.ic = load ptr, ptr %i.o, align 8, !alias.scope !3007, !noalias !2922, !nonnull !7, !noundef !7
  %i.id = atomicrmw add ptr %i.ic, i64 -1 release, align 8, !noalias !3008
  %i.ie = icmp eq i64 %i.id, 1
  br i1 %i.ie, label %bb.cg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.bd, !noalias !2926

bb.ch:                                            ; preds = %bb.ce
  %i.if = load i64, ptr %i.m, align 8, !range !8, !noalias !2922, !noundef !7
  %i.ig = trunc nuw i64 %i.if to i1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !2922 ; 3 uses
  br i1 %i.ig, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2922
  call void @llvm.experimental.noalias.scope.decl(metadata !3009)
  call void @llvm.experimental.noalias.scope.decl(metadata !3010)
  call void @llvm.experimental.noalias.scope.decl(metadata !3011)
  %i.ij = load ptr, ptr %i.o, align 8, !alias.scope !3012, !noalias !2922, !nonnull !7, !noundef !7
  %i.ik = atomicrmw add ptr %i.ij, i64 -1 release, align 8, !noalias !3013
  %i.il = icmp eq i64 %i.ik, 1
  br i1 %i.il, label %bb.cj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit215.i

bb.cj:                                            ; preds = %bb.ci
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit215.i unwind label %bb.cb, !noalias !2926

bb.ck:                                            ; preds = %bb.ch
  %.sroa.4158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4158.0..sroa_idx.i, i64 24, i1 false), !noalias !3014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2922
  %.sroa.0126.sroa.0.i.sroa.0.0.copyload = load ptr, ptr %i.o, align 8, !noalias !2922
  %.sroa.0126.sroa.0.i.sroa.4.0.copyload = load ptr, ptr %.sroa.4117.0..sroa_idx.i, align 8, !noalias !2922
  %i.im = load i64, ptr %.sroa.5118.0..sroa_idx.i, align 8, !noalias !2922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.31.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !3014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.33, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, i64 16, i1 false), !noalias !3014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2922
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1h_EEENtNtNtBJ_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cm unwind label %bb.cl, !noalias !2926

bb.cl:                                            ; preds = %bb.ck
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1o_EEENtNtNtBQ_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body217.i unwind label %bb.cn, !noalias !2926

bb.cm:                                            ; preds = %bb.ck
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1o_EEENtNtNtBQ_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.co, !noalias !2926

bb.cn:                                            ; preds = %bb.cl
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2926
  unreachable

.body217.i:                                       ; preds = %bb.cr, %bb.co, %bb.cl, %.body.i
  %.sroa.0.0618.i = phi ptr [ %.sroa.0.0619.i, %.body.i ], [ %.sroa.0.0.i.ph1042, %bb.cl ], [ %.sroa.0.0621.i, %bb.co ], [ %.sroa.0.0622.i, %bb.cr ] ; 2 uses
  %.sroa.0130.9.i = phi i8 [ %.sroa.0130.1.i, %.body.i ], [ %.sroa.0130.7.i, %bb.cl ], [ %.sroa.0130.10.i, %bb.co ], [ %.sroa.0130.11.i, %bb.cr ]
  %.sroa.0132.6.i = phi i8 [ %.sroa.0132.1.i, %.body.i ], [ %.sroa.0132.4.i, %bb.cl ], [ %.sroa.0132.7.i, %bb.co ], [ %.sroa.0132.8.i, %bb.cr ]
  %.pn169.i = phi { ptr, i32 } [ %.pn167.i, %.body.i ], [ %i.in, %bb.cl ], [ %i.ir, %bb.co ], [ %i.jf, %bb.cr ] ; 2 uses
  %i.ip = icmp ne ptr %.sroa.0.0618.i, null
  %i.iq = trunc nuw i8 %.sroa.0130.9.i to i1
  %or.cond5.i = select i1 %i.ip, i1 %i.iq, i1 false
  br i1 %or.cond5.i, label %bb.dc, label %bb.cv

bb.co:                                            ; preds = %bb.cs, %bb.cm
  %.sroa.0.0621.i = phi ptr [ %.sroa.0.0622.i, %bb.cs ], [ %.sroa.0.0.i.ph1042, %bb.cm ]
  %.sroa.0130.10.i = phi i8 [ %.sroa.0130.11.i, %bb.cs ], [ %.sroa.0130.7.i, %bb.cm ]
  %.sroa.0132.7.i = phi i8 [ %.sroa.0132.8.i, %bb.cs ], [ %.sroa.0132.4.i, %bb.cm ]
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body217.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  br label %_RINvXs0_NvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtBb_18TableIndexSnapshotNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB35_4read9SliceReadEEBd_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit215.i: ; preds = %bb.cj, %bb.ci, %bb.cd
  %.sroa.18.2 = phi ptr [ %i.ia, %bb.cd ], [ %i.ii, %bb.cj ], [ %i.ii, %bb.ci ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2922
  %i.is = icmp eq i64 %.sroa.8253.0.i, 0
  br i1 %i.is, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIdECs92BnbMq7p8c_15influxdb3_write.exit215.i
  %i.it = shl i64 %.sroa.8253.0.i, 3              ; 2 uses
  %i.iu = add i64 %i.it, 8
  %i.iv = add i64 %i.it, 23                       ; 2 uses
  %i.iw = icmp uge i64 %i.iv, %i.iu
  call void @llvm.assume(i1 %i.iw)
  %i.ix = and i64 %i.iv, -16                      ; 3 uses
  %i.iy = add i64 %.sroa.8253.0.i, 17
  %i.iz = add i64 %i.iy, %i.ix                    ; 4 uses
  %i.ja = icmp uge i64 %i.iz, %i.ix
  %i.jb = icmp ult i64 %i.iz, 9223372036854775793
  call void @llvm.assume(i1 %i.ja)
  call void @llvm.assume(i1 %i.jb)
  %i.jc = icmp eq i64 %i.iz, 0
  br i1 %i.jc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.jd = sub nsw i64 0, %i.ix
  %i.je = getelementptr inbounds i8, ptr %.sroa.0251.0.i, i64 %i.jd
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.je, i64 noundef %i.iz, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !3015
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.cq:                                            ; preds = %.invoke, %bb.bf, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.i, %bb.aj, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB2I_.exit.thread.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.thread.i, %bb.bc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i
  %.sroa.18.1 = phi ptr [ %i.et, %.invoke ], [ %.sroa.18.4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i ], [ %.sroa.10.0264.i, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.i ], [ %i.fj, %bb.bc ], [ %i.eb, %bb.aj ], [ %i.eq, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB2I_.exit.thread.i ], [ %i.fv, %bb.bf ], [ %i.fg, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.thread.i ] ; 4 uses
  %.sroa.0.0622.i = phi ptr [ %.sroa.0.0.i.ph1042, %.invoke ], [ %.sroa.0.0.i.ph10421187, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i ], [ %.sroa.0.0.i.ph1042, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.i ], [ %.sroa.0.0.i.ph1042, %bb.bc ], [ %.sroa.0.0.i.ph1042, %bb.aj ], [ %.sroa.0.0.i.ph1042, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB2I_.exit.thread.i ], [ %.sroa.0.0.i.ph1042, %bb.bf ], [ null, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.thread.i ] ; 4 uses
  %.sroa.0130.11.i = phi i8 [ 1, %.invoke ], [ %.sroa.0130.4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i ], [ 1, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.i ], [ 1, %bb.bc ], [ 1, %bb.aj ], [ 1, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB2I_.exit.thread.i ], [ 1, %bb.bf ], [ 1, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.thread.i ] ; 3 uses
  %.sroa.0132.8.i = phi i8 [ 1, %.invoke ], [ %.sroa.0132.5.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_.exit.i ], [ 1, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtB25_18TableIndexSnapshotNtB1a_11Deserialize11deserialize7___FieldEB27_.exit.thread.i ], [ 1, %bb.bc ], [ 1, %bb.aj ], [ 1, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB2I_.exit.thread.i ], [ 1, %bb.bf ], [ 1, %_RINvYINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de9MapAccess10next_valueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit.thread.i ] ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1h_EEENtNtNtBJ_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cs unwind label %bb.cr, !noalias !2926

bb.cr:                                            ; preds = %bb.cq
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1o_EEENtNtNtBQ_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body217.i unwind label %bb.ct, !noalias !2926

bb.cs:                                            ; preds = %bb.cq
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1o_EEENtNtNtBQ_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit225.i unwind label %bb.co, !noalias !2926

bb.ct:                                            ; preds = %bb.cr
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !2926
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit225.i: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2922
  %i.jh = icmp ne ptr %.sroa.0.0622.i, null
  %i.ji = trunc nuw i8 %.sroa.0130.11.i to i1
  %or.cond.i = select i1 %i.jh, i1 %i.ji, i1 false
  %i.jj = icmp ne i64 %.sroa.14.0.i.ph1041, 0
  %or.cond272.not.i = select i1 %or.cond.i, i1 %i.jj, i1 false
  br i1 %or.cond272.not.i, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i226.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i: ; preds = %bb.cu, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i226.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  %i.jk = load ptr, ptr %i.y, align 8, !noalias !2922, !noundef !7 ; 5 uses
  %i.jl = icmp ne ptr %i.jk, null
  %i.jm = trunc nuw i8 %.sroa.0132.8.i to i1
  %or.cond3.i = select i1 %i.jl, i1 %i.jm, i1 false
  br i1 %or.cond3.i, label %bb.cw, label %_RINvXs0_NvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtBb_18TableIndexSnapshotNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB35_4read9SliceReadEEBd_.exit

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i226.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit225.i
  %i.jn = shl i64 %.sroa.14.0.i.ph1041, 3         ; 2 uses
  %i.jo = add i64 %i.jn, 8
  %i.jp = add i64 %i.jn, 23                       ; 2 uses
  %i.jq = icmp uge i64 %i.jp, %i.jo
  call void @llvm.assume(i1 %i.jq)
  %i.jr = and i64 %i.jp, -16                      ; 3 uses
  %i.js = add i64 %.sroa.14.0.i.ph1041, 17
  %i.jt = add i64 %i.js, %i.jr                    ; 4 uses
  %i.ju = icmp uge i64 %i.jt, %i.jr
  %i.jv = icmp ult i64 %i.jt, 9223372036854775793
  call void @llvm.assume(i1 %i.ju)
  call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp eq i64 %i.jt, 0
  br i1 %i.jw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i, label %bb.cu

bb.cu:                                            ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i226.i
  %i.jx = sub nsw i64 0, %i.jr
  %i.jy = getelementptr inbounds i8, ptr %.sroa.0.0622.i, i64 %i.jx
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jy, i64 noundef %i.jt, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !3016
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i

bb.cv:                                            ; preds = %bb.dc, %.body217.i
  %i.jz = load ptr, ptr %i.y, align 8, !noalias !2922, !noundef !7
  %i.ka = icmp ne ptr %i.jz, null
  %i.kb = trunc nuw i8 %.sroa.0132.6.i to i1
  %or.cond7.i = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %or.cond7.i, label %bb.dd, label %common.resume

bb.cw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  %i.kc = load i64, ptr %.sroa.638.0..sroa_idx39.i, align 8, !alias.scope !3022, !noalias !2922, !noundef !7 ; 3 uses
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %_RINvXs0_NvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtBb_18TableIndexSnapshotNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB35_4read9SliceReadEEBd_.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !3024, !noalias !2922, !noundef !7 ; 2 uses
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.val4.i.i.i.i.i.i.i228.i = load <16 x i8>, ptr %i.jk, align 16, !noalias !3025
  %i.kh = icmp sgt <16 x i8> %.val4.i.i.i.i.i.i.i228.i, splat (i8 -1)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.kj = bitcast <16 x i1> %i.kh to i16
  br label %bb.cz

bb.cz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i238.i, %bb.cy
  %.sroa.14.010.i.i.i.i.i.i229.i = phi i64 [ %i.kf, %bb.cy ], [ %i.kv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i238.i ]
  %.sroa.10.09.i.i.i.i.i.i230.i = phi i16 [ %i.kj, %bb.cy ], [ %i.ks, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i238.i ] ; 2 uses
  %.sroa.6.08.i.i.i.i.i.i231.i = phi ptr [ %i.ki, %bb.cy ], [ %.sroa.6.1.i.i.i.i.i.i236.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i238.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i232.i = phi ptr [ %i.jk, %bb.cy ], [ %.sroa.04.1.i.i.i.i.i.i235.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i238.i ] ; 2 uses
  %.not11.i.i.i.i.i.i.i233.i = icmp eq i16 %.sroa.10.09.i.i.i.i.i.i230.i, 0
  br i1 %.not11.i.i.i.i.i.i.i233.i, label %.lr.ph.i.i.i.i.i.i.i240.i, label %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i234.i

.lr.ph.i.i.i.i.i.i.i240.i:                        ; preds = %bb.cz, %.lr.ph.i.i.i.i.i.i.i240.i
  %i.kk = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i.i.i240.i ], [ %.sroa.6.08.i.i.i.i.i.i231.i, %bb.cz ] ; 2 uses
  %i.kl = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i240.i ], [ %.sroa.04.07.i.i.i.i.i.i232.i, %bb.cz ]
  %.val9.i.i.i.i.i.i.i241.i = load <16 x i8>, ptr %i.kk, align 16, !noalias !3026
  %i.km = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i241.i, splat (i8 -1)
  %i.kn = getelementptr inbounds i8, ptr %i.kl, i64 -1024 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i242.i = bitcast <16 x i1> %i.km to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i243.i = icmp eq i16 %.cast.i.i.i.i.i.i.i242.i, 0
  br i1 %.not.i.i.i.i.i.i.i243.i, label %.lr.ph.i.i.i.i.i.i.i240.i, label %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i234.i

_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i234.i: ; preds = %.lr.ph.i.i.i.i.i.i.i240.i, %bb.cz
  %.sroa.04.1.i.i.i.i.i.i235.i = phi ptr [ %.sroa.04.07.i.i.i.i.i.i232.i, %bb.cz ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.i240.i ] ; 2 uses
  %.sroa.6.1.i.i.i.i.i.i236.i = phi ptr [ %.sroa.6.08.i.i.i.i.i.i231.i, %bb.cz ], [ %i.ko, %.lr.ph.i.i.i.i.i.i.i240.i ]
  %.lcssa.i.i.i.i.i.i.i237.i = phi i16 [ %.sroa.10.09.i.i.i.i.i.i230.i, %bb.cz ], [ %.cast.i.i.i.i.i.i.i242.i, %.lr.ph.i.i.i.i.i.i.i240.i ] ; 3 uses
  %i.kp = add i16 %.lcssa.i.i.i.i.i.i.i237.i, -1
  %i.kq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i237.i, i1 true)
  %i.kr = zext nneg i16 %i.kq to i64
  %i.ks = and i16 %i.kp, %.lcssa.i.i.i.i.i.i.i237.i
  %i.kt = sub nsw i64 0, %i.kr
  %i.ku = getelementptr inbounds [64 x i8], ptr %.sroa.04.1.i.i.i.i.i.i235.i, i64 %i.kt
  %i.kv = add i64 %.sroa.14.010.i.i.i.i.i.i229.i, -1 ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 -64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3027)
  call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  %i.kx = load ptr, ptr %i.kw, align 8, !alias.scope !3031, !noalias !3032, !nonnull !7, !noundef !7
  %i.ky = atomicrmw add ptr %i.kx, i64 -1 release, align 8, !noalias !3033
  %i.kz = icmp eq i64 %i.ky, 1
  br i1 %i.kz, label %bb.da, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i238.i

bb.da:                                            ; preds = %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i234.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.kw), !noalias !3032
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i238.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i238.i: ; preds = %bb.da, %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEE9next_implKb0_EB15_.exit.i.i.i.i.i.i234.i
  %i.la = icmp eq i64 %i.kv, 0
  br i1 %i.la, label %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i, label %bb.cz

_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEBE_.exit.i.i.i.i.i.i238.i, %bb.cx
  %i.lb = shl i64 %i.kc, 6                        ; 2 uses
  %i.lc = add i64 %i.lb, 64
  %i.ld = add i64 %i.lb, 79                       ; 2 uses
  %i.le = icmp uge i64 %i.ld, %i.lc
  call void @llvm.assume(i1 %i.le)
  %i.lf = and i64 %i.ld, -64                      ; 3 uses
  %i.lg = add i64 %i.kc, 17
  %i.lh = add i64 %i.lg, %i.lf                    ; 4 uses
  %i.li = icmp uge i64 %i.lh, %i.lf
  %i.lj = icmp ult i64 %i.lh, 9223372036854775793
  call void @llvm.assume(i1 %i.li)
  call void @llvm.assume(i1 %i.lj)
  %i.lk = icmp eq i64 %i.lh, 0
  br i1 %i.lk, label %_RINvXs0_NvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtBb_18TableIndexSnapshotNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB35_4read9SliceReadEEBd_.exit, label %bb.db

bb.db:                                            ; preds = %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i
  %i.ll = sub nsw i64 0, %i.lf
  %i.lm = getelementptr inbounds i8, ptr %i.jk, i64 %i.ll
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lm, i64 noundef %i.lh, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !3034
  br label %_RINvXs0_NvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtBb_18TableIndexSnapshotNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB35_4read9SliceReadEEBd_.exit

common.resume:                                    ; preds = %bb.de, %bb.cv, %bb.dd, %bb.dk
  %common.resume.op = phi { ptr, i32 } [ %.pn169.i, %bb.cv ], [ %i.lx, %bb.dk ], [ %.pn169.i, %bb.dd ], [ %i.lq, %bb.de ]
  resume { ptr, i32 } %common.resume.op

bb.dc:                                            ; preds = %.body217.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write(ptr nonnull %.sroa.0.0618.i, i64 %.sroa.14.0.i.ph1041) #25, !noalias !2926
  br label %bb.cv

bb.dd:                                            ; preds = %bb.cv
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB1i_(ptr noalias noundef align 8 dereferenceable(32) %i.y) #25
          to label %common.resume unwind label %bb.bd, !noalias !2926

_RINvXs0_NvXNvNtCs92BnbMq7p8c_15influxdb3_write11table_indexs_1__NtBb_18TableIndexSnapshotNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1r_7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB35_4read9SliceReadEEBd_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i, %bb.cw, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i, %bb.db
  %.sroa.31.sroa.0.0 = phi i64 [ undef, %bb.cw ], [ undef, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i ], [ undef, %bb.db ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i ], [ %i.im, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.sroa.34.0 = phi i64 [ undef, %bb.cw ], [ undef, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i ], [ undef, %bb.db ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i ], [ %.sroa.087.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.sroa.32.0 = phi i64 [ undef, %bb.cw ], [ undef, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i ], [ undef, %bb.db ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i ], [ %.sroa.8253.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.sroa.3128.0 = phi ptr [ undef, %bb.cw ], [ undef, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i ], [ undef, %bb.db ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i ], [ %.sroa.0251.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.sroa.18.5 = phi ptr [ %.sroa.18.1, %bb.cw ], [ %.sroa.18.1, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i ], [ %.sroa.18.1, %bb.db ], [ %.sroa.18.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i ], [ %.sroa.0126.sroa.0.i.sroa.4.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.sroa.025.5 = phi ptr [ null, %bb.cw ], [ null, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i ], [ null, %bb.db ], [ null, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i ], [ %.sroa.0126.sroa.0.i.sroa.0.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  %.sroa.35.0 = phi ptr [ undef, %bb.cw ], [ undef, %_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileuEEB1k_.exit.i.i.i.i.i239.i ], [ undef, %bb.db ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id13ParquetFileIdEECs92BnbMq7p8c_15influxdb3_write.exit227.i ], [ %i.ii, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentB1u_EEEECs92BnbMq7p8c_15influxdb3_write.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ln = load i8, ptr %i.aq, align 8, !noundef !7
  %i.lo = add i8 %i.ln, 1
  store i8 %i.lo, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %.sroa.025.5, ptr %i.aa, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.18.5, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.31.sroa.0.0, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.31.sroa.6.0..sroa.31.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.31.sroa.6.0..sroa.31.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.31.sroa.6, i64 32, i1 false)
  %.sroa.3128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %.sroa.3128.0, ptr %.sroa.3128.0..sroa_idx, align 8
end_hunk_2
begin_hunk_3_@_RINvYQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write:bb.a
  br i1 %.not.i46.1.i, label %bb.p, label %bb.r, !prof !23

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4503)
  %exitcond.not.i45.2.i = icmp eq i64 %i.ax, %umax.i43.i
  br i1 %exitcond.not.i45.2.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !4504, !noundef !7
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !4505
  %.not.i46.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i46.2.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs92BnbMq7p8c_15influxdb3_write.exit50.i, label %bb.r, !prof !23

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4506
  store i64 5, ptr %i.d, align 8, !noalias !4506
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !4507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4506
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4506
  store i64 9, ptr %i.c, align 8, !noalias !4506
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !4507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4506
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !4508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4509)
  %umax.i52.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.bd) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4510)
  %exitcond.not.i54.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i54.not.i, label %bb.t, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !4511, !noundef !7
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !4512
  %.not.i55.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i55.i, label %bb.u, label %bb.aa, !prof !23

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4513)
  %exitcond.not.i54.1.i = icmp eq i64 %i.bg, %umax.i52.i
  br i1 %exitcond.not.i54.1.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !4514, !noundef !7
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !4515
  %.not.i55.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i55.1.i, label %bb.w, label %bb.aa, !prof !23

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4516)
  %exitcond.not.i54.2.i = icmp eq i64 %i.bj, %umax.i52.i
  br i1 %exitcond.not.i54.2.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !4517, !noundef !7
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !4518
  %.not.i55.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i55.2.i, label %bb.y, label %bb.aa, !prof !23

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4519)
  %exitcond.not.i54.3.i = icmp eq i64 %i.bm, %umax.i52.i
  br i1 %exitcond.not.i54.3.i, label %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !4520, !noundef !7
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !4521
  %.not.i55.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i55.3.i, label %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs92BnbMq7p8c_15influxdb3_write.exit59.i, label %bb.aa, !prof !23

_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4522
  store i64 5, ptr %i.b, align 8, !noalias !4522
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !4523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4522
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4522
  store i64 9, ptr %i.a, align 8, !noalias !4522
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4522
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !4524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4481
  call void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false), !noalias !4473
  %i.bt = load i64, ptr %i.p, align 8, !range !19, !noalias !4481, !noundef !7 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !4525
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !4474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4481
  call void @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !4473
  %i.by = load i64, ptr %i.n, align 8, !range !13, !noalias !4481, !noundef !7 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !4481 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !4474, !noundef !7
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !4474
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !9

bb.ae:                                            ; preds = %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !4474, !noundef !7
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !4474
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.ba, label %bb.bb, !prof !9

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !4473
  store i8 -1, ptr %0, align 8, !alias.scope !4473
  br label %bb.ah

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !4526, !noalias !4481
  br label %.thread.i

bb.ag:                                            ; preds = %.thread91.i, %.thread88.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !4481
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !4527

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !4481
  br label %bb.bl

bb.ah:                                            ; preds = %bb.bm, %bb.ba, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4481
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i
  %.sroa.0.1.i48.ph.i = phi ptr [ %i.bb, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i49.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph.i, ptr %i.cm, align 8, !alias.scope !4473
  store i8 -1, ptr %0, align 8, !alias.scope !4473
  br label %bb.ah

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs92BnbMq7p8c_15influxdb3_write.exit50.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !4528, !noalias !4481
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !4528, !noalias !4481
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i
  %.sroa.0.1.i57.ph.i = phi ptr [ %i.bq, %_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i58.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph.i, ptr %i.cn, align 8, !alias.scope !4473
  store i8 -1, ptr %0, align 8, !alias.scope !4473
  br label %bb.ah

_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs92BnbMq7p8c_15influxdb3_write.exit59.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !4529, !noalias !4481
  %.sroa.4.0..sroa_idx.i60.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i60.i, align 1, !alias.scope !4529, !noalias !4481
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !4481, !nonnull !7, !align !10, !noundef !7
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !4473
  store i8 -1, ptr %0, align 8, !alias.scope !4473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4481
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !4481
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc nuw nsw i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !4530, !noalias !4481
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !4530, !noalias !4481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4481
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !4473
  store i8 -1, ptr %0, align 8, !alias.scope !4473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4481
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4481 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCsjd55S3IyyYQ_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_strNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !4473
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !4531, !noalias !4481
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !4531, !noalias !4481
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4531, !noalias !4481
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4481
  br label %bb.ag

bb.aq:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4481
  store i64 24, ptr %i.m, align 8, !noalias !4481
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !4473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4481
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !alias.scope !4473
  store i8 -1, ptr %0, align 8, !alias.scope !4473
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ad
  %i.cu = add i64 %i.y, 1
  store i64 %i.cu, ptr %i.s, align 8, !alias.scope !4532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4481
  call void @_RINvXsj_NtNtNtCsjd55S3IyyYQ_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_seqINtNtCsdLkRf3gRIi6_10serde_json2de9SeqAccessNtNtB24_4read9SliceReadEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !4473
  %i.cv = load i8, ptr %i.cc, align 8, !alias.scope !4474, !noundef !7
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.cc, align 8, !alias.scope !4474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4481
  %i.cx = invoke noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.at unwind label %bb.as, !noalias !4473 ; 7 uses

bb.as:                                            ; preds = %bb.ar
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.k) #25
          to label %common.resume.i unwind label %bb.ax, !noalias !4473

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !4481
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.cx, ptr %i.cz, align 8, !noalias !4481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4481
  %i.da = load i8, ptr %i.l, align 8, !range !14, !noalias !4481, !noundef !7
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not31.i = icmp eq ptr %i.cx, null
  br i1 %.not31.i, label %.thread115.i, label %bb.aw

.thread115.i:                                     ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !4481
  br label %.thread88.i

bb.av:                                            ; preds = %bb.at
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !4481, !nonnull !7, !align !10, !noundef !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !noalias !4481
  store i8 -1, ptr %i.q, align 8, !noalias !4481
  %.not95.i = icmp eq ptr %i.cx, null
  br i1 %.not95.i, label %.thread88.i, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cx, ptr %i.df, align 8, !noalias !4481
  store i8 -1, ptr %i.q, align 8, !noalias !4481
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.l), !noalias !4473
  br label %.thread88.i

bb.ax:                                            ; preds = %bb.bc, %bb.as
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !4473
  unreachable

.thread88.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.aw, %bb.av, %.thread115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4481
  br label %bb.ag

bb.ay:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error9ErrorCodeECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.cx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.az, !noalias !4473

common.resume.sink.split.i:                       ; preds = %bb.bi, %bb.az
  %.sink122.i = phi ptr [ %i.dn, %bb.bi ], [ %i.cx, %bb.az ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.dw, %bb.bi ], [ %i.dh, %bb.az ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink122.i, i64 noundef 40, i64 noundef 8) #27, !noalias !4473
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.bc, %common.resume.sink.split.i, %bb.as
  %common.resume.op.i = phi { ptr, i32 } [ %i.do, %bb.bc ], [ %i.cy, %bb.as ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.az:                                            ; preds = %bb.ay
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.ay
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef 40, i64 noundef 8) #27, !noalias !4473
  br label %.thread88.i

bb.ba:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4481
  store i64 24, ptr %i.j, align 8, !noalias !4481
  %i.di = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !4473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4481
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !alias.scope !4473
  store i8 -1, ptr %0, align 8, !alias.scope !4473
  br label %bb.ah

bb.bb:                                            ; preds = %bb.ae
  %i.dk = add i64 %i.y, 1
  store i64 %i.dk, ptr %i.s, align 8, !alias.scope !4533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4481
  call void @_RINvXsj_NtNtNtCsjd55S3IyyYQ_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs5CfTnloWo2c_10serde_core2de7Visitor9visit_mapINtNtCsdLkRf3gRIi6_10serde_json2de9MapAccessNtNtB24_4read9SliceReadEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !4473
  %i.dl = load i8, ptr %i.cg, align 8, !alias.scope !4474, !noundef !7
  %i.dm = add i8 %i.dl, 1
  store i8 %i.dm, ptr %i.cg, align 8, !alias.scope !4474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4481
  %i.dn = invoke noundef align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.bd unwind label %bb.bc, !noalias !4473 ; 7 uses

bb.bc:                                            ; preds = %bb.bb
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.h) #25
          to label %common.resume.i unwind label %bb.ax, !noalias !4473

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !4481
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.dn, ptr %i.dp, align 8, !noalias !4481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4481
  %i.dq = load i8, ptr %i.i, align 8, !range !14, !noalias !4481, !noundef !7
  %i.dr = icmp eq i8 %i.dq, -1
  br i1 %i.dr, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not.i = icmp eq ptr %i.dn, null
  br i1 %.not.i, label %.thread117.i, label %bb.bg

.thread117.i:                                     ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !4481
  br label %.thread91.i

bb.bf:                                            ; preds = %bb.bd
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !4481, !nonnull !7, !align !10, !noundef !7
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dt, ptr %i.du, align 8, !noalias !4481
  store i8 -1, ptr %i.q, align 8, !noalias !4481
  %.not94.i = icmp eq ptr %i.dn, null
  br i1 %.not94.i, label %.thread91.i, label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.dn, ptr %i.dv, align 8, !noalias !4481
  store i8 -1, ptr %i.q, align 8, !noalias !4481
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5CfTnloWo2c_10serde_core7private7content7ContentECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.i), !noalias !4473
  br label %.thread91.i

.thread91.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs92BnbMq7p8c_15influxdb3_write.exit61.i, %bb.bg, %bb.bf, %.thread117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4481
  br label %bb.ag

bb.bh:                                            ; preds = %bb.bf
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error9ErrorCodeECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.dn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs92BnbMq7p8c_15influxdb3_write.exit61.i unwind label %bb.bi, !noalias !4473

bb.bi:                                            ; preds = %bb.bh
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs92BnbMq7p8c_15influxdb3_write.exit61.i: ; preds = %bb.bh
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dn, i64 noundef 40, i64 noundef 8) #27, !noalias !4473
  br label %.thread91.i

bb.bj:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4481
  store i64 10, ptr %i.g, align 8, !noalias !4481
  %i.dx = call noundef nonnull align 8 ptr @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !4473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4481
  br label %bb.bl

bb.bk:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4481
  call void @_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !4473
  %i.dy = load i64, ptr %i.o, align 8, !range !19, !noalias !4481, !noundef !7 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, -1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %i.dz, label %bb.bm, label %switch.lookup31

bb.bl:                                            ; preds = %bb.bj, %._crit_edge.i
  %i.eb = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dx, %bb.bj ]
  %i.ec = call noundef nonnull align 8 ptr @_RINvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !4473
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !alias.scope !4473
  store i8 -1, ptr %0, align 8, !alias.scope !4473
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ee = load ptr, ptr %i.ea, align 8, !noalias !4481, !nonnull !7, !align !10, !noundef !7
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ee, ptr %i.ef, align 8, !alias.scope !4473
  store i8 -1, ptr %0, align 8, !alias.scope !4473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4481
  br label %bb.ah

switch.lookup31:                                  ; preds = %bb.bk
  %.sroa.269.0.copyload.i = load i64, ptr %i.ea, align 8, !noalias !4481
  %.sroa.41.0..sroa_idx.i.i62.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast32 = trunc nuw nsw i64 %i.dy to i24
  %switch.shiftamt33 = shl nuw nsw i24 %switch.cast32, 3
  %switch.downshift34 = lshr i24 525322, %switch.shiftamt33
  %switch.masked35 = trunc i24 %switch.downshift34 to i8
  store i8 %switch.masked35, ptr %i.q, align 8, !alias.scope !4534, !noalias !4481
  store i64 %.sroa.269.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i62.i, align 8, !alias.scope !4534, !noalias !4481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4481
  br label %.thread.i

.thread.i:                                        ; preds = %switch.lookup, %switch.lookup31, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs92BnbMq7p8c_15influxdb3_write.exit59.i, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs92BnbMq7p8c_15influxdb3_write.exit50.i, %bb.ag, %_RNvMs3_NtCsdLkRf3gRIi6_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !4474
  br label %bb.bn

bb.bn:                                            ; preds = %.thread.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4481
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit

_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsjd55S3IyyYQ_5serde7private2de7content14ContentVisitorECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %.loopexit.i, %bb.ah, %bb.bn
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB7_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIBR_NtCs92BnbMq7p8c_15influxdb3_write11ParquetFileEEB2P_(ptr noalias noundef align 8 dereferenceable(40) initializes((32, 33)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %.val10, 6
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4562)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !4562, !nonnull !7, !align !10, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4563)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4564, !noundef !7 ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !4564
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.g, align 8, !alias.scope !4564
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !4565
  %cond = icmp eq i64 %.val10, 0
  br i1 %cond, label %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %.lr.ph.split.preheader.i.i

_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.a
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !4566
  br label %_RNvXs2_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq3endCs92BnbMq7p8c_15influxdb3_write.exit.sink.split

.lr.ph.split.preheader.i.i:                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileINtNtBe_6result6ResultuNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB3j_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIB3H_B1l_EE0E0B1n_.exit.i.i, %.lr.ph.split.preheader.i.i
  %i.j = phi i1 [ false, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileINtNtBe_6result6ResultuNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB3j_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIB3H_B1l_EE0E0B1n_.exit.i.i ], [ true, %.lr.ph.split.preheader.i.i ]
  %i.k = phi ptr [ %i.l, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileINtNtBe_6result6ResultuNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB3j_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIB3H_B1l_EE0E0B1n_.exit.i.i ], [ %.val, %.lr.ph.split.preheader.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %0, align 8, !noalias !4567, !nonnull !7, !noundef !7 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  br i1 %i.j, label %.split.i.i.i.i.i.i, label %.split8.i.i.i.i.i.i

.split8.i.i.i.i.i.i:                              ; preds = %.lr.ph.split.i.i
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @210, i64 noundef range(i64 0, -9223372036854775808) 2), !noalias !4569
  br label %bb.b

.split.i.i.i.i.i.i:                               ; preds = %.lr.ph.split.i.i
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @211, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !4569
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i.i.i.i.i, %.split8.i.i.i.i.i.i
  %i.m = load i64, ptr %i.d, align 8, !alias.scope !4568, !noalias !4567, !noundef !7 ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !4568, !noalias !4567, !nonnull !7, !noundef !7
  %i.o = load i64, ptr %i.i, align 8, !alias.scope !4568, !noalias !4567, !noundef !7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.sroa.05.01.i.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.b ]
  %i.p = add nuw i64 %.sroa.05.01.i.i.i.i.i.i, 1  ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.o), !noalias !4569
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.p, %i.m
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.q = tail call noundef align 8 ptr @_RINvXNvCs92BnbMq7p8c_15influxdb3_writes4_1__NtB5_11ParquetFileNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1U_15PrettyFormatterEEB5_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(40) %0), !noalias !4570 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileINtNtBe_6result6ResultuNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB3j_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIB3H_B1l_EE0E0B1n_.exit.i.i, label %_RNvXs2_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq3endCs92BnbMq7p8c_15influxdb3_write.exit

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileINtNtBe_6result6ResultuNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB3j_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIB3H_B1l_EE0E0B1n_.exit.i.i: ; preds = %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i
  store i8 1, ptr %i.g, align 8, !alias.scope !4571, !noalias !4570
  %i.r = icmp eq ptr %i.l, %i.c
  br i1 %i.r, label %bb.c, label %.lr.ph.split.i.i

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRNtCs92BnbMq7p8c_15influxdb3_write11ParquetFileINtNtBe_6result6ResultuNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechENtB3j_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIB3H_B1l_EE0E0B1n_.exit.i.i
  %.val.i13 = load ptr, ptr %0, align 8, !noalias !4572, !nonnull !7, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4573)
  %i.s = load i64, ptr %i.d, align 8, !alias.scope !4573, !noalias !4572, !noundef !7
  %i.t = add i64 %i.s, -1                         ; 3 uses
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !4573, !noalias !4572
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @211, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !4574
  %i.u = load ptr, ptr %i.h, align 8, !alias.scope !4573, !noalias !4572, !nonnull !7, !noundef !7
  %i.v = load i64, ptr %i.i, align 8, !alias.scope !4573, !noalias !4572, !noundef !7
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %_RNvXs2_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq3endCs92BnbMq7p8c_15influxdb3_write.exit.sink.split, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %bb.c, %.lr.ph.i.i15
  %.sroa.06.01.i.i = phi i64 [ %i.w, %.lr.ph.i.i15 ], [ 0, %bb.c ]
  %i.w = add nuw i64 %.sroa.06.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i13, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.v), !noalias !4574
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.t
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq3endCs92BnbMq7p8c_15influxdb3_write.exit.sink.split, label %.lr.ph.i.i15

_RNvXs2_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq3endCs92BnbMq7p8c_15influxdb3_write.exit.sink.split: ; preds = %.lr.ph.i.i15, %bb.c, %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %.val.i.sink = phi ptr [ %.val.i, %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.val.i13, %bb.c ], [ %.val.i13, %.lr.ph.i.i15 ]
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.sink, ptr noalias noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7
  br label %_RNvXs2_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq3endCs92BnbMq7p8c_15influxdb3_write.exit

_RNvXs2_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq3endCs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i, %_RNvXs2_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq3endCs92BnbMq7p8c_15influxdb3_write.exit.sink.split
  %.sroa.0.0 = phi ptr [ null, %_RNvXs2_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeSeq3endCs92BnbMq7p8c_15influxdb3_write.exit.sink.split ], [ %i.q, %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNCINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB8_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id12TableIndexIduEE14reserve_rehashNCINvNtBc_3map11make_hasherB10_uINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0E0Cs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !10, !noundef !7
  %i.c = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.d = sub nsw i64 0, %2
  %i.e = getelementptr inbounds [24 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -24
  %.val = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4602
  call void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val), !noalias !4603
  call void @llvm.experimental.noalias.scope.decl(metadata !4604)
  call void @llvm.experimental.noalias.scope.decl(metadata !4605)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4606, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4606, !noundef !7 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4607)
  call void @llvm.experimental.noalias.scope.decl(metadata !4608)
  call void @llvm.experimental.noalias.scope.decl(metadata !4609)
  call void @llvm.experimental.noalias.scope.decl(metadata !4610)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !4611, !noalias !4602, !noundef !7
  %i.m = add i64 %i.l, %i.i
  %i.n = mul i64 %i.m, 6364136223846793005        ; 3 uses
  %i.o = icmp samesign ugt i64 %i.i, 8
  br i1 %i.o, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp samesign ugt i64 %i.i, 1
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.i, 1
  br i1 %i.q, label %bb.e, label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp samesign ugt i64 %i.i, 3
  %i.s = getelementptr i8, ptr %i.j, i64 %i.i     ; 2 uses
  br i1 %i.r, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i, label %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.j, align 1, !alias.scope !4612, !noalias !4613, !noundef !7
  %i.u = zext i8 %i.t to i64                      ; 2 uses
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i29.i.i.i.i.i = load i16, ptr %i.j, align 1, !alias.scope !4614, !noalias !4615
  %i.v = zext i16 %.sroa.0.0.copyload.i29.i.i.i.i.i to i64
  %i.w = getelementptr i8, ptr %i.s, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !4612, !noalias !4613, !noundef !7
  %i.y = zext i8 %i.x to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.0.0.copyload.i31.i.i.i.i.i = load i32, ptr %i.j, align 1, !alias.scope !4614, !noalias !4616
  %i.z = zext i32 %.sroa.0.0.copyload.i31.i.i.i.i.i to i64
  %i.aa = getelementptr i8, ptr %i.s, i64 -4
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.aa, align 1, !alias.scope !4614, !noalias !4617
  %i.ab = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i to i64
  br label %_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i

_RNvNtCs3L39Jvi82fL_5ahash10operations10read_small.exit.i.i.i.i.i: ; preds = %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i, %bb.e, %bb.c
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.ab, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i ], [ %i.y, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i ], [ %i.u, %bb.e ], [ 0, %bb.c ]
  %.sroa.068.0.i.i.i.i.i = phi i64 [ %i.z, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u32.exit.i.i.i.i.i ], [ %i.v, %_RNvXNtCs3L39Jvi82fL_5ahash7convertShNtB2_13ReadFromSlice8read_u16.exit.i.i.i.i.i ], [ %i.u, %bb.e ], [ 0, %bb.c ]
  %i.ac = load i64, ptr %i.a, align 8, !alias.scope !4611, !noalias !4602, !noundef !7
  %i.ad = xor i64 %i.ac, %.sroa.068.0.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !4611, !noalias !4602, !noundef !7
  %i.ag = xor i64 %i.af, %.sroa.7.0.i.i.i.i.i
  %i.ah = zext i64 %i.ad to i128
  %i.ai = zext i64 %i.ag to i128
  %i.aj = mul nuw i128 %i.ai, %i.ah               ; 2 uses
  %i.ak = lshr i128 %i.aj, 64
  %i.al = xor i128 %i.ak, %i.aj
  %i.am = trunc i128 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_3
