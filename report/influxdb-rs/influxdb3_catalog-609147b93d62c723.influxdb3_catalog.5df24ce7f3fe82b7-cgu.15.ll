Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.15?download=true
inline.NumInlined: 2685
inline.NumDeleted: 1200
begin_hunk_0_@_RINvNvNtCs2AWtUsOyxgP_3std2io19default_read_to_end16small_probe_readINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB6_2fs4FileEECs844E4pPEVZX_17influxdb3_catalog:bb.a
  store ptr %i.e, ptr %i.f, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog.exit
  %i.h = phi ptr [ %i.aj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.e, %bb.a ] ; 9 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.e
    i64 0, label %.split25
    i64 1, label %.split24
  ], !prof !15

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog.exit, %bb.a
  %.in = phi ptr [ %i.e, %bb.a ], [ %i.aj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog.exit ] ; 4 uses
  %i.k = ptrtoint ptr %.in to i64                 ; 4 uses
  %i.l = icmp ult ptr %.in, inttoptr (i64 33 to ptr)
  br i1 %i.l, label %.noexc, label %bb.b, !prof !1372

bb.b:                                             ; preds = %._crit_edge
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.k, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #35
  unreachable

.noexc:                                           ; preds = %._crit_edge
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1373, !noundef !6 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.o)
  %.not.i = icmp eq ptr %.in, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1373, !nonnull !6, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.b, i64 %i.k, i1 false)
  %.pre.i = load i64, ptr %i.m, align 8, !alias.scope !1373
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.s = phi i64 [ %.pre.i, %bb.c ], [ %i.n, %.noexc ]
  %i.t = add i64 %i.s, %i.k
  store i64 %i.t, ptr %i.m, align 8, !alias.scope !1373
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.split, %.split24, %.split25, %bb.d
  %.sroa.3.0 = phi ptr [ %.in, %bb.d ], [ %i.h, %.split25 ], [ %i.h, %.split24 ], [ %i.h, %.split ], [ %i.h, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %.split25 ], [ 1, %.split24 ], [ 1, %.split ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.v

.split:                                           ; preds = %.lr.ph
  %.mask = and i64 %i.i, -4294967296
  %i.w = icmp eq i64 %.mask, 17179869184
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.loopexit

.split25:                                         ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !16, !noundef !6
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.loopexit

.split24:                                         ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %i.h, i64 15
  %i.ab = load i8, ptr %i.aa, align 8, !range !16, !noundef !6
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.ad = lshr i64 %i.i, 32
  %i.ae = icmp ult ptr %i.h, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.ad to i8
  %spec.select.i.i = select i1 %i.ae, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.af = icmp ne i8 %spec.select.i.i, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog.exit, label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %.split25, %.split24, %.split, %bb.e
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = call { i64, ptr } @_RNvXsd_NtCs2AWtUsOyxgP_3std2ioINtNtNtCs4NRVxsYgnAr_4core2io4util4TakeNtNtB7_2fs4FileENtB5_4Read4readCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull %i.b, i64 noundef 32) ; 2 uses
  %i.ai = extractvalue { i64, ptr } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ah, 1      ; 3 uses
  store i64 %i.ai, ptr %i.a, align 8
  store ptr %i.aj, ptr %i.f, align 8
  %i.ak = trunc nuw i64 %i.ai to i1
  br i1 %i.ak, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXNvCsaXLCtUcOqO5_15influxdb3_authzs1_1__NtB5_24SystemResourceIdentifierNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i16, ptr %0, align 2, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @_RNvXss_CscOYT7KBnvIh_4itoatNtB5_8Unsigned3fmt(i16 noundef %.val1, ptr noalias noundef nonnull dereferenceable(5) %i.a) ; 2 uses
  %i.c = sub nuw i64 5, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, 21) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCsaXLCtUcOqO5_15influxdb3_authzs2_1__NtB5_24SystemResourceIdentifierNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB2e_4read9SliceReadEECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1382
  call void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u16NtNvXs13_NtB1l_5implstNtB1l_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !1383
  %i.b = load i16, ptr %i.a, align 8, !range !30, !noalias !1382, !noundef !6
  %i.c = trunc nuw i16 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1382, !nonnull !6, !align !17, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1382
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !1383
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvCsaXLCtUcOqO5_15influxdb3_authzs2_1__NtB2D_24SystemResourceIdentifierNtB1l_11Deserialize11deserialize9___VisitorECs844E4pPEVZX_17influxdb3_catalog.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = load i16, ptr %i.g, align 2, !noalias !1382, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1382
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.h, ptr %i.i, align 2, !alias.scope !1383
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvCsaXLCtUcOqO5_15influxdb3_authzs2_1__NtB2D_24SystemResourceIdentifierNtB1l_11Deserialize11deserialize9___VisitorECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvCsaXLCtUcOqO5_15influxdb3_authzs2_1__NtB2D_24SystemResourceIdentifierNtB1l_11Deserialize11deserialize9___VisitorECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi i16 [ 0, %bb.c ], [ 1, %bb.b ]
  store i16 %storemerge.i.i, ptr %0, align 8, !alias.scope !1383
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvCsaXLCtUcOqO5_15influxdb3_authzs3_1__NtB5_16ResourceMetadataNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !1399, !nonnull !6, !align !17, !noundef !6
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef range(i64 0, 21) 1), !noalias !1400
  store i8 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.a, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCs844E4pPEVZX_17influxdb3_catalog.exit

bb.a:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.c = load i8, ptr %i.a, align 8, !range !9, !alias.scope !1401, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldbECs844E4pPEVZX_17influxdb3_catalog.exit.thread, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldbECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldbECs844E4pPEVZX_17influxdb3_catalog.exit.thread: ; preds = %bb.a
  %i.e = call noundef nonnull align 8 ptr @_RNvNtCsdLkRf3gRIi6_10serde_json3ser17invalid_raw_value(), !noalias !1402
  br label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCs844E4pPEVZX_17influxdb3_catalog.exit

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldbECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryebECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f) ; 2 uses
  %.not21 = icmp eq ptr %i.g, null
  br i1 %.not21, label %bb.b, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCs844E4pPEVZX_17influxdb3_catalog.exit

bb.b:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldbECs844E4pPEVZX_17influxdb3_catalog.exit
  %.sroa.027.0.copyload = load i8, ptr %i.a, align 8
  %i.h = trunc nuw i8 %.sroa.027.0.copyload to i1
  %.sroa.428.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.i = icmp eq i8 %.sroa.428.0.copyload, 0
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.530.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.val.i.i23 = load ptr, ptr %.sroa.530.0.copyload, align 8, !noalias !1403, !nonnull !6, !align !17, !noundef !6
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i23, ptr noalias noundef nonnull readonly captures(address, read_provenance) @308, i64 noundef range(i64 0, 21) 1), !noalias !1403
  br label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCs844E4pPEVZX_17influxdb3_catalog.exit

_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.c, %bb.b, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldbECs844E4pPEVZX_17influxdb3_catalog.exit, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldbECs844E4pPEVZX_17influxdb3_catalog.exit.thread
  %.sroa.0.0 = phi ptr [ %i.g, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldbECs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.e, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldbECs844E4pPEVZX_17influxdb3_catalog.exit.thread ], [ %i.b, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECs844E4pPEVZX_17influxdb3_catalog.exit ], [ null, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCsaXLCtUcOqO5_15influxdb3_authzs4_1__NtB5_16ResourceMetadataNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB26_4read9SliceReadEECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_structNtNvXNvCsaXLCtUcOqO5_15influxdb3_authzs4_1__NtB2v_16ResourceMetadataNtB1l_11Deserialize11deserialize9___VisitorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @85, i64 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_id1__NtB5_6NodeIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1H_16CompactFormatterEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsa_NtCsdLkRf3gRIi6_10serde_json3serINtB6_18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer24serialize_newtype_structmECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 6, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_id1__NtB5_6NodeIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i32, ptr %0, align 4, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @_RNvXst_CscOYT7KBnvIh_4itoamNtB5_8Unsigned3fmt(i32 noundef %.val1, ptr noalias noundef nonnull dereferenceable(10) %i.a) ; 2 uses
  %i.c = sub nuw i64 10, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, 21) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids2_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1I_16CompactFormatterEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsa_NtCsdLkRf3gRIi6_10serde_json3serINtB6_18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer24serialize_newtype_structmECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids2_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i32, ptr %0, align 4, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @_RNvXst_CscOYT7KBnvIh_4itoamNtB5_8Unsigned3fmt(i32 noundef %.val1, ptr noalias noundef nonnull dereferenceable(10) %i.a) ; 2 uses
  %i.c = sub nuw i64 10, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, 21) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeINtNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB3f_4DbIdNtB28_11Deserialize11deserialize9___VisitorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !alias.scope !1410, !noundef !6
  %i.b = icmp eq i64 %i.a, 9
  br i1 %i.b, label %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u324cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.c, label %_RINvXNvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB8_4DbIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtBS_7Visitor20visit_newtype_structNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog.exit, label %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i

_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1412, !noundef !6 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 1, !noalias !1411
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.f, ptr %i.d, align 8, !alias.scope !1412
  br label %_RINvXNvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB8_4DbIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtBS_7Visitor20visit_newtype_structNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvXNvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB8_4DbIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtBS_7Visitor20visit_newtype_structNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.b, %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %.sroa.0.0.i7.i = phi i32 [ 0, %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ 1, %bb.b ]
  %i.g = phi i32 [ %.sroa.0.0.copyload.i.i, %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ undef, %bb.b ]
  %i.h = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i7.i, 0
  %i.i = insertvalue { i32, i32 } %i.h, i32 %i.g, 1
  ret { i32, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB5_4DbIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1Q_4read9SliceReadEECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1421
  call void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB1l_5implsmNtB1l_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !1422
  %i.b = load i32, ptr %i.a, align 8, !range !33, !noalias !1421, !noundef !6
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1421, !nonnull !6, !align !17, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1421
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !1422
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB2D_4DbIdNtB1l_11Deserialize11deserialize9___VisitorECs844E4pPEVZX_17influxdb3_catalog.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noalias !1421, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1421
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4, !alias.scope !1422
  br label %_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB2D_4DbIdNtB1l_11Deserialize11deserialize9___VisitorECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvCsbFlE7Gjht9i_12influxdb3_ids3_1__NtB2D_4DbIdNtB1l_11Deserialize11deserialize9___VisitorECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge.i.i, ptr %0, align 8, !alias.scope !1422
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids4_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1L_16CompactFormatterEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsa_NtCsdLkRf3gRIi6_10serde_json3serINtB6_18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer24serialize_newtype_structmECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 7, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids4_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i32, ptr %0, align 4, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @_RNvXst_CscOYT7KBnvIh_4itoamNtB5_8Unsigned3fmt(i32 noundef %.val1, ptr noalias noundef nonnull dereferenceable(10) %i.a) ; 2 uses
  %i.c = sub nuw i64 10, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, 21) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids5_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeINtNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorEECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXNvNtNtCsjd55S3IyyYQ_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_anyNtNvXNvCsbFlE7Gjht9i_12influxdb3_ids5_1__NtB3f_7TableIdNtB28_11Deserialize11deserialize9___VisitorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids5_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !31, !alias.scope !1429, !noundef !6
  %i.b = icmp eq i64 %i.a, 9
  br i1 %i.b, label %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u324cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.c, label %_RINvXNvXNvCsbFlE7Gjht9i_12influxdb3_ids5_1__NtB8_7TableIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtBV_7Visitor20visit_newtype_structNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog.exit, label %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i

_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1431, !noundef !6 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.e, align 1, !noalias !1430
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.f, ptr %i.d, align 8, !alias.scope !1431
  br label %_RINvXNvXNvCsbFlE7Gjht9i_12influxdb3_ids5_1__NtB8_7TableIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtBV_7Visitor20visit_newtype_structNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvXNvXNvCsbFlE7Gjht9i_12influxdb3_ids5_1__NtB8_7TableIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtBV_7Visitor20visit_newtype_structNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.b, %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i
  %.sroa.0.0.i7.i = phi i32 [ 0, %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ 1, %bb.b ]
  %i.g = phi i32 [ %.sroa.0.0.copyload.i.i, %_RINvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB6_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB12_5implsmNtB12_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog.exit.i ], [ undef, %bb.b ]
  %i.h = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i7.i, 0
  %i.i = insertvalue { i32, i32 } %i.h, i32 %i.g, 1
  ret { i32, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCsbFlE7Gjht9i_12influxdb3_ids5_1__NtB5_7TableIdNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeQINtNtCsdLkRf3gRIi6_10serde_json2de12DeserializerNtNtB1T_4read9SliceReadEECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1440
  call void @_RINvXs5_NtCsdLkRf3gRIi6_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtB1l_5implsmNtB1l_11Deserialize11deserialize16PrimitiveVisitorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !1441
  %i.b = load i32, ptr %i.a, align 8, !range !33, !noalias !1440, !noundef !6
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1440, !nonnull !6, !align !17, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
end_hunk_0
begin_hunk_1_@_RINvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s7_1__NtB5_13NodeCatalogOpNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEBb_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.ac = invoke { ptr, i64 } @_RINvXs3s_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc4sync3ArceENtB9_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc.i.i.i.i.i unwind label %bb.j, !noalias !2005 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.h
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit61.i.i.i.i.i, label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit52.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.j
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  %i.af = load ptr, ptr %i.c, align 8, !alias.scope !2008, !noalias !2003, !nonnull !6, !noundef !6
  %i.ag = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !2009
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.i, label %.noexc49.i.i.i.i.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit52.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc49.i.i.i.i.i unwind label %bb.s, !noalias !2005

bb.j:                                             ; preds = %bb.q, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit52.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i
  %i.aj = extractvalue { ptr, i64 } %i.ac, 1
  store ptr %i.ad, ptr %i.b, align 8, !noalias !2003
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.aj, ptr %i.ak, align 8, !noalias !2003
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 176 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !31, !alias.scope !2010, !noalias !2011, !noundef !6
  %i.an = icmp eq i64 %i.am, 10
  br i1 %i.an, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.l, !prof !32

bb.l:                                             ; preds = %bb.k
  %i.ao = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_i644cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc50.i.i.i.i.i unwind label %bb.m, !noalias !2005

.noexc50.i.i.i.i.i:                               ; preds = %bb.l
  br i1 %i.ao, label %.thread89.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i55.i.i.i.i.i, %bb.o, %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  %i.aq = load ptr, ptr %i.b, align 8, !alias.scope !2014, !noalias !2003, !nonnull !6, !noundef !6
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !noalias !2015
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit52.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit52.i.i.i.i.i unwind label %bb.s, !noalias !2005

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc50.i.i.i.i.i, %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016), !noalias !2017
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 208 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !2018, !noalias !2011, !noundef !6 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.au, align 1, !noalias !2019
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.at, align 8, !alias.scope !2018, !noalias !2011
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 264 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !31, !alias.scope !2020, !noalias !2021, !noundef !6
  %i.ay = icmp eq i64 %i.ax, 10
  br i1 %i.ay, label %._crit_edge.i.i.i55.i.i.i.i.i, label %bb.o, !prof !32

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.az = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u644cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc58.i.i.i.i.i unwind label %bb.m, !noalias !2005

.noexc58.i.i.i.i.i:                               ; preds = %bb.o
  br i1 %i.az, label %.thread89.i.i.i.i.i, label %._crit_edge.i.i.i55.i.i.i.i.i

._crit_edge.i.i.i55.i.i.i.i.i:                    ; preds = %.noexc58.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022), !noalias !2023
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 296 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !2024, !noalias !2021, !noundef !6 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i57.i.i.i.i.i = load i64, ptr %i.bb, align 1, !noalias !2025
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bc, ptr %i.ba, align 8, !alias.scope !2024, !noalias !2021
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2026
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeModeENtB8_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1n_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc59.i.i.i.i.i unwind label %bb.m, !noalias !2005

.noexc59.i.i.i.i.i:                               ; preds = %._crit_edge.i.i.i55.i.i.i.i.i
  %i.be = load i64, ptr %i.a, align 8, !range !12, !noalias !2026, !noundef !6 ; 2 uses
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.noexc59.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2026
  br label %.thread89.i.i.i.i.i

.thread89.i.i.i.i.i:                              ; preds = %bb.p, %.noexc58.i.i.i.i.i, %.noexc50.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  %i.bg = load ptr, ptr %i.b, align 8, !alias.scope !2029, !noalias !2003, !nonnull !6, !noundef !6
  %i.bh = atomicrmw add ptr %i.bg, i64 -1 release, align 8, !noalias !2030
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit61.i.i.i.i.i

bb.q:                                             ; preds = %.thread89.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit61.i.i.i.i.i unwind label %bb.j, !noalias !2005

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit61.i.i.i.i.i: ; preds = %bb.q, %.thread89.i.i.i.i.i, %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2003
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  %i.bj = load ptr, ptr %i.c, align 8, !alias.scope !2033, !noalias !2003, !nonnull !6, !noundef !6
  %i.bk = atomicrmw add ptr %i.bj, i64 -1 release, align 8, !noalias !2034
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.r, label %_RINvYNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de13VariantAccess15newtype_variantNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115RegisterNodeLogEB25_.exit.thread24.i

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit61.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !2005
  br label %_RINvYNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de13VariantAccess15newtype_variantNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115RegisterNodeLogEB25_.exit.thread24.i

bb.s:                                             ; preds = %bb.n, %bb.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !2005
  unreachable

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @_RNvNtCs87O7Q65ve1k_7bitcode5serde18panic_type_changed() #35, !noalias !2002
  unreachable

_RINvYNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de13VariantAccess15newtype_variantNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115RegisterNodeLogEB25_.exit.thread24.i: ; preds = %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit61.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2003
  br label %_RINvYNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de13VariantAccess15newtype_variantNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115RegisterNodeLogEB25_.exit.thread.i

_RINvYNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de13VariantAccess15newtype_variantNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115RegisterNodeLogEB25_.exit.thread.i: ; preds = %_RINvYNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de13VariantAccess15newtype_variantNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115RegisterNodeLogEB25_.exit.thread24.i, %bb.f
  store i64 -1, ptr %0, align 8, !alias.scope !1990
  br label %_RINvXs0_NvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s7_1__NtBb_13NodeCatalogOpNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1w_7Visitor10visit_enumNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEBh_.exit

bb.u:                                             ; preds = %.noexc59.i.i.i.i.i
  %.sroa.8.0..sroa_idx67.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx67.i.i.i.i.i, i64 16, i1 false), !noalias !2035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2026
  %i.bn = load ptr, ptr %i.c, align 8, !noalias !2003, !nonnull !6, !noundef !6
  %i.bo = load i64, ptr %i.aa, align 8, !noalias !2003, !noundef !6
  %i.bp = load ptr, ptr %i.b, align 8, !noalias !2003, !nonnull !6, !noundef !6
  %i.bq = load i64, ptr %i.ak, align 8, !noalias !2003, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2003
  store i64 %i.be, ptr %0, align 8, !alias.scope !1990
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bn, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !1990
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bo, ptr %.sroa.611.0..sroa_idx.i, align 8, !alias.scope !1990
  %.sroa.712.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bp, ptr %.sroa.712.0..sroa_idx.i, align 8, !alias.scope !1990
  %.sroa.813.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bq, ptr %.sroa.813.0..sroa_idx.i, align 8, !alias.scope !1990
  %.sroa.914.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, ptr %.sroa.914.0..sroa_idx.i, align 8, !alias.scope !1990
  %.sroa.1015.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.copyload.i.i.i.i57.i.i.i.i.i, ptr %.sroa.1015.0..sroa_idx.i, align 8, !alias.scope !1990
  br label %_RINvXs0_NvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s7_1__NtBb_13NodeCatalogOpNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1w_7Visitor10visit_enumNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEBh_.exit

_RINvXs0_NvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s7_1__NtBb_13NodeCatalogOpNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1w_7Visitor10visit_enumNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEBh_.exit: ; preds = %_RINvYNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de13VariantAccess15newtype_variantNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115RegisterNodeLogEB25_.exit.thread.i, %bb.u, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s9_1__NtB5_17DatabaseCatalogOpNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noalias noundef align 8 dereferenceable(88) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.9.i.i.i.i.i170.i = alloca [16 x i8], align 8 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.062.i.i.i.i.sroa.4.i = alloca [72 x i8], align 8 ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [16 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i.i.i.i.i = alloca [16 x i8], align 8  ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.9.i.i.i.i.i117.i = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.069.i.i.i.i.sroa.4.i = alloca [64 x i8], align 8 ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [16 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 11 uses
  %i.ab = alloca [16 x i8], align 8               ; 10 uses
  %i.ac = alloca [16 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.9.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.059.i.i.i.i.sroa.4.i = alloca [40 x i8], align 8 ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 10 uses
  %i.ah = alloca [16 x i8], align 8               ; 10 uses
  %i.ai = alloca [24 x i8], align 8               ; 11 uses
  %i.aj = alloca [16 x i8], align 8               ; 10 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 10 uses
  %i.am = alloca [16 x i8], align 8               ; 10 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 9 uses
  %i.as = alloca [16 x i8], align 8               ; 10 uses
  %i.at = alloca [16 x i8], align 8               ; 10 uses
  %i.au = alloca [16 x i8], align 8               ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [40 x i8], align 8               ; 5 uses
  %i.ax = alloca [40 x i8], align 8               ; 5 uses
  %.sroa.19283.i = alloca [32 x i8], align 8      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2982)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.062.i.i.i.i.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.069.i.i.i.i.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059.i.i.i.i.sroa.4.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.ay = load i64, ptr %1, align 8, !range !31, !alias.scope !2984, !noundef !6
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %._crit_edge.i.i, label %bb.b, !prof !32

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2985)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !2986, !noalias !2987, !noundef !6 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2988, !noundef !6 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bd, ptr %i.ba, align 8, !alias.scope !2986, !noalias !2987
  %i.be = icmp ult i8 %i.bc, 13
  br i1 %i.be, label %bb.d, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s9_1__NtB1q_17DatabaseCatalogOpNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtB6_5value15U32DeserializerNtNtCs87O7Q65ve1k_7bitcode5error5ErrorEEB1w_.exit.thread.i.i, !prof !2989

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s9_1__NtB1q_17DatabaseCatalogOpNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtB6_5value15U32DeserializerNtNtCs87O7Q65ve1k_7bitcode5error5ErrorEEB1w_.exit.thread.i.i: ; preds = %._crit_edge.i.i
  %i.bf = zext i8 %i.bc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2990
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !noalias !2990
  store i8 1, ptr %i.av, align 8, !noalias !2990
  call void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error13invalid_valueCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.av, ptr noundef nonnull @285, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @283), !noalias !2991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2990
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bh = tail call noundef zeroext i1 @_RNvNvXs1_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de10EnumAccess12variant_seed4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !2991
  br i1 %i.bh, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s9_1__NtB1q_17DatabaseCatalogOpNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtB6_5value15U32DeserializerNtNtCs87O7Q65ve1k_7bitcode5error5ErrorEEB1w_.exit.thread.i.i
  store i64 -1, ptr %0, align 8, !alias.scope !2981
  br label %_RINvXs0_NvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s9_1__NtBb_17DatabaseCatalogOpNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1A_7Visitor10visit_enumNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEBh_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !2984, !nonnull !6, !noundef !6
  %i.bk = zext nneg i8 %i.bc to i64
  %i.bl = getelementptr inbounds nuw [88 x i8], ptr %i.bj, i64 %i.bk ; 46 uses
  switch i8 %i.bc, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.j
    i8 2, label %bb.u
    i8 3, label %bb.ar
    i8 4, label %bb.bi
    i8 5, label %bb.ca
    i8 6, label %bb.dk
    i8 7, label %bb.dv
    i8 8, label %bb.fv
    i8 9, label %bb.gg
    i8 10, label %bb.hu
    i8 11, label %bb.ie
    i8 12, label %bb.if
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.bm = load i64, ptr %i.bl, align 8, !range !31, !alias.scope !2992, !noundef !6
  %i.bn = icmp eq i64 %i.bm, 6
  br i1 %i.bn, label %._crit_edge.i.i.i.i, label %bb.f, !prof !32

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !2992, !noundef !6
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bp, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.i, !prof !32

bb.f:                                             ; preds = %bb.e
  %i.bq = tail call noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 2), !noalias !2993
  br i1 %i.bq, label %bb.ig, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !2992, !nonnull !6, !noundef !6 ; 4 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !31, !alias.scope !2994, !noalias !2995, !noundef !6
  %i.bu = icmp eq i64 %i.bt, 9
  br i1 %i.bu, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %bb.h, !prof !32

bb.h:                                             ; preds = %bb.g
  %i.bv = tail call noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u324cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bs, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !2995
  br i1 %i.bv, label %bb.ig, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.h, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2996), !noalias !2997
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !2998, !noalias !2995, !noundef !6 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bx, align 1, !noalias !2999
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store ptr %i.by, ptr %i.bw, align 8, !alias.scope !2998, !noalias !2995
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.ca = tail call { ptr, i64 } @_RINvXs3s_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc4sync3ArceENtB9_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !3000 ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0      ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ig, label %bb.ih

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @_RNvNtCs87O7Q65ve1k_7bitcode5serde18panic_type_changed() #35, !noalias !2993
  unreachable

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3003)
  %i.cd = load i64, ptr %i.bl, align 8, !range !31, !alias.scope !3004, !noundef !6
  %i.ce = icmp eq i64 %i.cd, 6
  br i1 %i.ce, label %._crit_edge.i.i.i40.i, label %bb.k, !prof !32

._crit_edge.i.i.i40.i:                            ; preds = %bb.k, %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !3004, !noundef !6
  %.not.i.i.i.i.i42.i = icmp eq i64 %i.cg, 3
  br i1 %.not.i.i.i.i.i42.i, label %bb.l, label %bb.t, !prof !32

bb.k:                                             ; preds = %bb.j
  %i.ch = tail call noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer17deserialize_tuple4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 3), !noalias !3005
  br i1 %i.ch, label %bb.ii, label %._crit_edge.i.i.i40.i

bb.l:                                             ; preds = %._crit_edge.i.i.i40.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !3004, !nonnull !6, !noundef !6 ; 6 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !31, !alias.scope !3006, !noalias !3007, !noundef !6
  %i.cl = icmp eq i64 %i.ck, 9
  br i1 %i.cl, label %._crit_edge.i.i.i.i.i.i.i.i43.i, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  %i.cm = tail call noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u324cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !3007
  br i1 %i.cm, label %bb.ii, label %._crit_edge.i.i.i.i.i.i.i.i43.i

common.resume.i:                                  ; preds = %bb.ia, %bb.hz, %bb.gl, %.body106.i.i.i.i.i, %bb.gc, %bb.gb, %bb.eb, %.body.i.i.i.i124.i, %bb.dr, %bb.dq, %bb.cj, %.body.i.i.i.i.i, %bb.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit58.i.i.i.i78.i, %bb.ax, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit58.i.i.i.i.i, %bb.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit70.i.i.i.i.i, %bb.q, %bb.p
  %common.resume.op.i = phi { ptr, i32 } [ %.pn87.i.i.i.i.i, %.body106.i.i.i.i.i ], [ %i.da, %bb.p ], [ %.pn57.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit70.i.i.i.i.i ], [ %.pn.i.i.i.i65.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit58.i.i.i.i.i ], [ %.pn.i.i.i.i79.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit58.i.i.i.i78.i ], [ %.pn80.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.nt, %bb.dq ], [ %.pn93.i.i.i.i.i, %.body.i.i.i.i124.i ], [ %i.tv, %bb.gb ], [ %i.da, %bb.q ], [ %.pn57.i.i.i.i.i, %bb.z ], [ %.pn.i.i.i.i65.i, %bb.ax ], [ %.pn.i.i.i.i79.i, %bb.bn ], [ %.pn80.i.i.i.i.i, %bb.cj ], [ %i.nt, %bb.dr ], [ %.pn93.i.i.i.i.i, %bb.eb ], [ %i.tv, %bb.gc ], [ %.pn87.i.i.i.i.i, %bb.gl ], [ %i.yw, %bb.ia ], [ %i.yw, %bb.hz ]
  resume { ptr, i32 } %common.resume.op.i

._crit_edge.i.i.i.i.i.i.i.i43.i:                  ; preds = %bb.m, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3008), !noalias !3009
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !3010, !noalias !3007, !noundef !6 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i45.i = load i32, ptr %i.co, align 1, !noalias !3011
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store ptr %i.cp, ptr %i.cn, align 8, !alias.scope !3010, !noalias !3007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3012
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %i.cr = tail call { ptr, i64 } @_RINvXs3s_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc4sync3ArceENtB9_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !3013 ; 2 uses
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0      ; 5 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit30.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i43.i
  %i.cu = extractvalue { ptr, i64 } %i.cr, 1      ; 2 uses
  store ptr %i.cs, ptr %i.au, align 8, !noalias !3012
  %i.cv = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !noalias !3012
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 176 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !range !31, !alias.scope !3014, !noalias !3015, !noundef !6
  %i.cy = icmp eq i64 %i.cx, 10
  br i1 %i.cy, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.o, !prof !32

bb.o:                                             ; preds = %bb.n
  %i.cz = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_i644cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cw, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc.i.i.i.i.i unwind label %bb.p, !noalias !3016
end_hunk_1
begin_hunk_2_@_RINvXNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1s9_1__NtB5_17DatabaseCatalogOpNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEBb_:bb.a

bb.eg:                                            ; preds = %bb.ef
  %i.px = getelementptr inbounds nuw i8, ptr %i.oo, i64 336
  %i.py = load ptr, ptr %i.px, align 8, !alias.scope !3250, !noalias !3251, !nonnull !6, !noundef !6
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3257
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtB8_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.pz, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc105.i.i.i.i.i unwind label %bb.ec, !noalias !3236

.noexc105.i.i.i.i.i:                              ; preds = %bb.eg
  %i.qa = load i64, ptr %i.w, align 8, !range !12, !noalias !3257, !noundef !6 ; 2 uses
  %i.qb = icmp eq i64 %i.qa, -1
  br i1 %i.qb, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.thread13.i.i.i.i.i146.i, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i144.i

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.thread13.i.i.i.i.i146.i: ; preds = %.noexc105.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3257
  br label %bb.eh

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i144.i: ; preds = %.noexc105.i.i.i.i.i
  %.sroa.9.0..sroa_idx2.i.i.i.i.i145.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i.i117.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx2.i.i.i.i.i145.i, i64 16, i1 false), !noalias !3258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3257
  br label %bb.ei

bb.eh:                                            ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.thread13.i.i.i.i.i146.i, %.noexc104.i.i.i.i.i, %.noexc103.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i117.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecEBJ_.exit.i.i.i.i129.i

bb.ei:                                            ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i144.i, %bb.ef
  %.sroa.0.112.i.i.i.i.i130.i = phi i64 [ %i.qa, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i144.i ], [ -1, %bb.ef ]
  %.sroa.4.0..sroa_idx.i.i.i.i131.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i131.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i.i117.i, i64 16, i1 false), !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i117.i)
  store i64 %.sroa.0.112.i.i.i.i.i130.i, ptr %i.aa, align 8, !noalias !3232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3232
  %i.qc = getelementptr inbounds nuw i8, ptr %i.oo, i64 352
  %i.qd = invoke { ptr, i64 } @_RINvXs3s_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc4sync3ArceENtB9_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.qc, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc106.i.i.i.i.i unwind label %bb.ej, !noalias !3236 ; 2 uses

.noexc106.i.i.i.i.i:                              ; preds = %bb.ei
  %i.qe = extractvalue { ptr, i64 } %i.qd, 0      ; 2 uses
  %i.qf = icmp eq ptr %i.qe, null
  br i1 %i.qf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit112.i.i.i.i.i, label %bb.ek

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit110.i.i.i.i.i: ; preds = %bb.el, %.body.i.i.i132.i, %bb.ej
  %.pn91.i.i.i.i.i = phi { ptr, i32 } [ %i.qg, %bb.ej ], [ %.pn89.i.i.i.i.i, %bb.el ], [ %.pn89.i.i.i.i.i, %.body.i.i.i132.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #36
          to label %.body.i.i.i.i124.i unwind label %bb.fn, !noalias !3236

bb.ej:                                            ; preds = %bb.fo, %bb.ei
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit110.i.i.i.i.i

bb.ek:                                            ; preds = %.noexc106.i.i.i.i.i
  %i.qh = extractvalue { ptr, i64 } %i.qd, 1
  store ptr %i.qe, ptr %i.z, align 8, !noalias !3232
  %i.qi = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store i64 %i.qh, ptr %i.qi, align 8, !noalias !3232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3232
  %i.qj = getelementptr inbounds nuw i8, ptr %i.oo, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3259
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtB8_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.qj, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc108.i.i.i.i.i unwind label %bb.em, !noalias !3236

.noexc108.i.i.i.i.i:                              ; preds = %bb.ek
  %i.qk = load i64, ptr %i.u, align 8, !range !12, !noalias !3259, !noundef !6 ; 2 uses
  %i.ql = icmp eq i64 %i.qk, -1
  br i1 %i.ql, label %bb.en, label %bb.eo

.body.i.i.i132.i:                                 ; preds = %bb.fk, %.body1.i.i.i.i, %bb.em
  %.pn89.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i134.i, %.body1.i.i.i.i ], [ %i.qp, %bb.em ], [ %i.sd, %bb.fk ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3260)
  call void @llvm.experimental.noalias.scope.decl(metadata !3261)
  %i.qm = load ptr, ptr %i.z, align 8, !alias.scope !3262, !noalias !3232, !nonnull !6, !noundef !6
  %i.qn = atomicrmw add ptr %i.qm, i64 -1 release, align 8, !noalias !3263
  %i.qo = icmp eq i64 %i.qn, 1
  br i1 %i.qo, label %bb.el, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit110.i.i.i.i.i

bb.el:                                            ; preds = %.body.i.i.i132.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit110.i.i.i.i.i unwind label %bb.fn, !noalias !3236

bb.em:                                            ; preds = %bb.fl, %bb.ek
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i132.i

bb.en:                                            ; preds = %.noexc108.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3259
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i135.i

bb.eo:                                            ; preds = %.noexc108.i.i.i.i.i
  %.sroa.8121.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.441.0..sroa_idx.i.i.i.i133.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441.0..sroa_idx.i.i.i.i133.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8121.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3259
  store i64 %i.qk, ptr %i.y, align 8, !noalias !3232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.qq = getelementptr inbounds nuw i8, ptr %i.oo, i64 528 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3264), !noalias !3265
  call void @llvm.experimental.noalias.scope.decl(metadata !3266), !noalias !3267
  call void @llvm.experimental.noalias.scope.decl(metadata !3268), !noalias !3267
  call void @llvm.experimental.noalias.scope.decl(metadata !3269), !noalias !3267
  %i.qr = load i64, ptr %i.qq, align 8, !range !31, !alias.scope !3270, !noalias !3271, !noundef !6
  %i.qs = icmp eq i64 %i.qr, 1
  br i1 %i.qs, label %._crit_edge.i.i.i.i.i7.i.i.i.i, label %bb.ep, !prof !32

._crit_edge.i.i.i.i.i7.i.i.i.i:                   ; preds = %.noexc9.i.i.i.i, %bb.eo
  call void @llvm.experimental.noalias.scope.decl(metadata !3272), !noalias !3267
  %i.qt = getelementptr inbounds nuw i8, ptr %i.oo, i64 560 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !alias.scope !3273, !noalias !3274, !noundef !6 ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 1, !noalias !3275, !noundef !6 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 1
  store ptr %i.qw, ptr %i.qt, align 8, !alias.scope !3273, !noalias !3274
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.qv, 2
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.er, label %bb.eq, !prof !37

bb.ep:                                            ; preds = %bb.eo
  %i.qx = invoke noundef zeroext i1 @_RNvNvXs1_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de10EnumAccess12variant_seed4cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.qq, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc9.i.i.i.i unwind label %bb.et, !noalias !3276

.noexc9.i.i.i.i:                                  ; preds = %bb.ep
  br i1 %i.qx, label %bb.fd, label %._crit_edge.i.i.i.i.i7.i.i.i.i

bb.eq:                                            ; preds = %._crit_edge.i.i.i.i.i7.i.i.i.i
  %i.qy = zext i8 %i.qv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3277
  %i.qz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.qy, ptr %i.qz, align 8, !noalias !3277
  store i8 1, ptr %i.p, align 8, !noalias !3277
  invoke void @_RNvYNtNtCs87O7Q65ve1k_7bitcode5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error13invalid_valueCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull @291, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @283)
          to label %.noexc10.i.i.i.i unwind label %bb.et, !noalias !3276

.noexc10.i.i.i.i:                                 ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3277
  br label %bb.fd

bb.er:                                            ; preds = %._crit_edge.i.i.i.i.i7.i.i.i.i
  %i.ra = trunc nuw i8 %i.qv to i1
  br i1 %i.ra, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rb = getelementptr inbounds nuw i8, ptr %i.oo, i64 600
  %i.rc = load ptr, ptr %i.rb, align 8, !alias.scope !3270, !noalias !3271, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3278
  invoke void @_RINvXsh_NtNtCs5CfTnloWo2c_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtB8_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.rc, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc11.i.i.i.i unwind label %bb.et, !noalias !3276

.noexc11.i.i.i.i:                                 ; preds = %bb.es
  %i.rd = load i64, ptr %i.o, align 8, !range !12, !noalias !3278, !noundef !6 ; 2 uses
  %i.re = icmp eq i64 %i.rd, -1
  br i1 %i.re, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.thread11.i.i.i.i.i, label %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.thread11.i.i.i.i.i: ; preds = %.noexc11.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3278
  br label %bb.fd

_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i: ; preds = %.noexc11.i.i.i.i
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !3279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3278
  br label %bb.eu

.body1.i.i.i.i:                                   ; preds = %bb.fi, %.body4.i.i.i.i, %bb.et
  %.pn.i.i.i.i134.i = phi { ptr, i32 } [ %eh.lpad-body5.i.i.i.i, %.body4.i.i.i.i ], [ %i.rf, %bb.et ], [ %i.sb, %bb.fi ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #36
          to label %.body.i.i.i132.i unwind label %bb.fn, !noalias !3236

bb.et:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i, %bb.es, %bb.eq, %bb.ep
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %.body1.i.i.i.i

bb.eu:                                            ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i, %bb.er
  %.sink.i.i10.i.i.i.i.i = phi i64 [ %i.rd, %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.i.i.i.i.i ], [ -1, %bb.er ]
  %.sroa.449.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.449.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, i64 16, i1 false), !noalias !3280
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  store i64 %.sink.i.i10.i.i.i.i.i, ptr %i.x, align 8, !noalias !3232
  %i.rg = getelementptr inbounds nuw i8, ptr %i.oo, i64 616 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3281), !noalias !3265
  call void @llvm.experimental.noalias.scope.decl(metadata !3282), !noalias !3283
  %i.rh = load i64, ptr %i.rg, align 8, !range !31, !alias.scope !3284, !noalias !3285, !noundef !6
  %i.ri = icmp eq i64 %i.rh, 10
  br i1 %i.ri, label %._crit_edge.i.i.i.i.i.i137.i, label %bb.ev, !prof !32

bb.ev:                                            ; preds = %bb.eu
  %i.rj = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u644cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.rg, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc3.i.i.i.i unwind label %bb.fe, !noalias !3276

.noexc3.i.i.i.i:                                  ; preds = %bb.ev
  br i1 %i.rj, label %.thread23.i.i.i.i, label %._crit_edge.i.i.i.i.i.i137.i

._crit_edge.i.i.i.i.i.i137.i:                     ; preds = %.noexc3.i.i.i.i, %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !3286), !noalias !3283
  %i.rk = getelementptr inbounds nuw i8, ptr %i.oo, i64 648 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !alias.scope !3287, !noalias !3285, !noundef !6 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i139.i = load i64, ptr %i.rl, align 1, !noalias !3288 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store ptr %i.rm, ptr %i.rk, align 8, !alias.scope !3287, !noalias !3285
  %i.rn = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i139.i, -11
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i64 %i.rn, -10
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1NtB4_13LastCacheSize3new.exit.i.i.i.i.i.i.i, label %bb.ff

_RNvMs_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1NtB4_13LastCacheSize3new.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i137.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3289
  store i8 39, ptr %i.t, align 8, !noalias !3289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3291
  store i64 0, ptr %i.r, align 8, !noalias !3291
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3291
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !3291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3291
  %i.ro = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 1610612768, ptr %i.ro, align 8, !noalias !3291
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !3291
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 2, !noalias !3291
  store ptr %i.r, ptr %i.q, align 8, !noalias !3291
  %i.rp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @920, ptr %i.rp, align 8, !noalias !3291
  %i.rq = invoke noundef zeroext i1 @_RNvXs8_NtCs844E4pPEVZX_17influxdb3_catalog5errorNtB5_12CatalogErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.ex unwind label %bb.ew, !noalias !3292

bb.ew:                                            ; preds = %bb.ey, %_RNvMs_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1NtB4_13LastCacheSize3new.exit.i.i.i.i.i.i.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #36
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ez, !noalias !3292

bb.ex:                                            ; preds = %_RNvMs_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1NtB4_13LastCacheSize3new.exit.i.i.i.i.i.i.i
  br i1 %i.rq, label %bb.ey, label %bb.fb, !prof !11

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @921, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @340, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @923) #35
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.ew, !noalias !3292

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ey
  unreachable

bb.ez:                                            ; preds = %bb.ew
  %i.rs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !3292
  unreachable

bb.fa:                                            ; preds = %bb.fb
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.fa, %bb.ew
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rt, %bb.fa ], [ %i.rr, %bb.ew ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.t) #36
          to label %.body4.i.i.i.i unwind label %bb.fc, !noalias !3285

bb.fb:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !3293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3291
  invoke void @_RINvXs_NtCs87O7Q65ve1k_7bitcode5serdeNtNtB7_5error5ErrorNtNtCs5CfTnloWo2c_10serde_core2de5Error6customNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.s)
          to label %_RNCINvXs0_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1NtB8_13LastCacheSizeNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperE0Be_.exit.i.i.i.i.i.i.i unwind label %bb.fa, !noalias !3285

bb.fc:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  %i.ru = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !3285
  unreachable

_RNCINvXs0_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1NtB8_13LastCacheSizeNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperE0Be_.exit.i.i.i.i.i.i.i: ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3290
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.t)
          to label %.noexc6.i.i.i.i unwind label %bb.fe, !noalias !3276

.noexc6.i.i.i.i:                                  ; preds = %_RNCINvXs0_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1NtB8_13LastCacheSizeNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperE0Be_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3289
  br label %.thread23.i.i.i.i

bb.fd:                                            ; preds = %_RINvXs3_NtCs5CfTnloWo2c_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefENtB6_15DeserializeSeed11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperEB1r_.exit.thread11.i.i.i.i.i, %.noexc10.i.i.i.i, %.noexc9.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefEBJ_.exit.i.i.i.i

bb.fe:                                            ; preds = %bb.fg, %_RNCINvXs0_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v1NtB8_13LastCacheSizeNtNtCs5CfTnloWo2c_10serde_core2de11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperE0Be_.exit.i.i.i.i.i.i.i, %bb.ev
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i.i.i.i

.body4.i.i.i.i:                                   ; preds = %bb.fe, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body5.i.i.i.i = phi { ptr, i32 } [ %i.rv, %bb.fe ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.x) #36
          to label %.body1.i.i.i.i unwind label %bb.fn, !noalias !3236

bb.ff:                                            ; preds = %._crit_edge.i.i.i.i.i.i137.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.oo, i64 704 ; 2 uses
  %i.rx = load i64, ptr %i.rw, align 8, !range !31, !alias.scope !3294, !noalias !3295, !noundef !6
  %i.ry = icmp eq i64 %i.rx, 10
  br i1 %i.ry, label %_RINvYNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de13VariantAccess15newtype_variantNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v119LastCacheDefinitionEB25_.exit.i, label %bb.fg, !prof !32

bb.fg:                                            ; preds = %bb.ff
  %i.rz = invoke noundef zeroext i1 @_RNvNvXs0_NtNtCs87O7Q65ve1k_7bitcode5serde2deNtB7_14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de12Deserializer15deserialize_u644cold(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.rw, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc.i.i.i unwind label %bb.fe, !noalias !3296

.noexc.i.i.i:                                     ; preds = %bb.fg
  br i1 %i.rz, label %.thread23.i.i.i.i, label %_RINvYNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperNtNtCs5CfTnloWo2c_10serde_core2de13VariantAccess15newtype_variantNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v119LastCacheDefinitionEB25_.exit.i

.thread23.i.i.i.i:                                ; preds = %.noexc.i.i.i, %.noexc6.i.i.i.i, %.noexc3.i.i.i.i
  %i.sa = load i64, ptr %i.x, align 8, !range !12, !alias.scope !3297, !noalias !3232, !noundef !6
  %.not.i.i.i.i.i = icmp eq i64 %i.sa, -1
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefEBJ_.exit.i.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %.thread23.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i unwind label %bb.fi, !noalias !3236

bb.fi:                                            ; preds = %bb.fh
  %i.sb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body1.i.i.i.i unwind label %bb.fj, !noalias !3236

bb.fj:                                            ; preds = %bb.fi
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !3236
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i: ; preds = %bb.fh
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefEBJ_.exit.i.i.i.i unwind label %bb.et, !noalias !3276

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefEBJ_.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i, %.thread23.i.i.i.i, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3232
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.fl unwind label %bb.fk, !noalias !3236

bb.fk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefEBJ_.exit.i.i.i.i
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body.i.i.i132.i unwind label %bb.fm, !noalias !3236

bb.fl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v124LastCacheValueColumnsDefEBJ_.exit.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i135.i unwind label %bb.em, !noalias !3276

bb.fm:                                            ; preds = %bb.fk
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !3236
  unreachable

bb.fn:                                            ; preds = %.body4.i.i.i.i, %.body1.i.i.i.i, %bb.el, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit110.i.i.i.i.i, %bb.eb
  %i.sf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !3236
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i135.i: ; preds = %bb.fl, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3232
  call void @llvm.experimental.noalias.scope.decl(metadata !3298)
  call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  %i.sg = load ptr, ptr %i.z, align 8, !alias.scope !3300, !noalias !3232, !nonnull !6, !noundef !6
  %i.sh = atomicrmw add ptr %i.sg, i64 -1 release, align 8, !noalias !3301
  %i.si = icmp eq i64 %i.sh, 1
  br i1 %i.si, label %bb.fo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit112.i.i.i.i.i

bb.fo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i135.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit112.i.i.i.i.i unwind label %bb.ej, !noalias !3236

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit112.i.i.i.i.i: ; preds = %bb.fo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i135.i, %.noexc106.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3232
  %i.sj = load i64, ptr %i.aa, align 8, !range !12, !alias.scope !3302, !noalias !3232, !noundef !6
  %i.sk = icmp eq i64 %i.sj, -1
  br i1 %i.sk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecEBJ_.exit.i.i.i.i129.i, label %bb.fp

bb.fp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit112.i.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i136.i unwind label %bb.fq, !noalias !3236

bb.fq:                                            ; preds = %bb.fp
  %i.sl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body.i.i.i.i124.i unwind label %bb.fr, !noalias !3236

bb.fr:                                            ; preds = %bb.fq
  %i.sm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !3236
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i136.i: ; preds = %bb.fp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecEBJ_.exit.i.i.i.i129.i unwind label %bb.ec, !noalias !3236

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecEBJ_.exit.i.i.i.i129.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i136.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit112.i.i.i.i.i, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3232
  br label %bb.fs

bb.fs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v18NodeSpecEBJ_.exit.i.i.i.i129.i, %.noexc.i.i.i.i125.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3303)
  call void @llvm.experimental.noalias.scope.decl(metadata !3304)
end_hunk_2
