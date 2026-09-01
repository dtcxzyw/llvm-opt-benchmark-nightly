Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.04?download=true
inline.NumInlined: 11297
inline.NumDeleted: 4176
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecoEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecoEE4fromCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecsEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecsEE4fromCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = lshr i64 %i.k, 1
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VectEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVectEE4fromCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = lshr i64 %i.k, 1
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecxEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecxEE4fromCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = lshr i64 %i.k, 3
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecyEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecyEE4fromCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = lshr i64 %i.k, 3
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs6ePPILGZvJ2_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array18logical_null_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs6ePPILGZvJ2_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array3len(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs2_NtNtCs6ePPILGZvJ2_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array5nulls(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs6ePPILGZvJ2_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0) unnamed_addr #10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @112, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs6ePPILGZvJ2_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array6offset(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs6ePPILGZvJ2_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array8is_empty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtNtCs6ePPILGZvJ2_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array9data_type(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [48 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [48 x i8], align 8               ; 9 uses
  %i.ai = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.9.i = alloca [32 x i8], align 8          ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.aj = alloca [96 x i8], align 8               ; 4 uses
  %i.ak = alloca [96 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.19 = alloca ptr, align 8                 ; 12 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21808)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.val30.i = load i64, ptr %i.ao, align 8, !alias.scope !21808, !noalias !21810, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val31.i = load i64, ptr %i.at, align 8, !alias.scope !21808, !noalias !21810, !noundef !4
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !21808, !noalias !21810, !align !665, !noundef !4 ; 3 uses
  store ptr null, ptr %i.as, align 8, !alias.scope !21808, !noalias !21810
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %.thread110

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21812)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !21815
  %i.av = load ptr, ptr %i.an, align 8, !alias.scope !21818, !noalias !21819, !noundef !4
  %.not.i131.i = icmp eq ptr %i.av, null
  br i1 %.not.i131.i, label %.loopexit102.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.8.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.b

.thread110:                                       ; preds = %bb.a
  store ptr %i.au, ptr %.sroa.19, align 8, !alias.scope !21805, !noalias !21820
  br label %bb.bq

bb.b:                                             ; preds = %bb.as, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !21821)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !21823
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !21824
  %i.bb = load i64, ptr %i.ad, align 8, !range !902, !noalias !21823, !noundef !4
  %i.bc = icmp eq i64 %i.bb, -3
  br i1 %i.bc, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !21823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !21823
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !noalias !21823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !21823
  %i.bd = load i64, ptr %i.ae, align 8, !noalias !21825 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.bd, -2
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.an, align 8, !alias.scope !21826, !noalias !21819
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #32
          to label %common.resume unwind label %bb.k, !noalias !21824

bb.d:                                             ; preds = %bb.c
  %.val6.i.i = load ptr, ptr %i.an, align 8, !alias.scope !21826, !noalias !21819, !noundef !4 ; 4 uses
  %.val7.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !21826, !noalias !21819 ; 6 uses
  %i.be = icmp eq ptr %.val6.i.i, null
  br i1 %i.be, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.bf = load ptr, ptr %.val7.i.i, align 8, !invariant.load !4, !noalias !21824 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.bf(ptr noundef nonnull %.val6.i.i)
          to label %bb.g unwind label %bb.i, !noalias !21824

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !993, !invariant.load !4, !noalias !21824 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !1318, !invariant.load !4, !noalias !21824
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #30, !noalias !21824
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i

bb.i:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !993, !invariant.load !4, !noalias !21824 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !1318, !invariant.load !4, !noalias !21824
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #30, !noalias !21824
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i: ; preds = %bb.h, %bb.g, %bb.d
  store ptr null, ptr %i.an, align 8, !alias.scope !21826, !noalias !21819
  br label %.loopexit102.i

bb.k:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21824
  unreachable

common.resume:                                    ; preds = %bb.bv, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, %bb.p, %bb.aa, %bb.af, %bb.aj, %bb.ap, %bb.ax, %bb.bc, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.hd, %bb.bg ], [ %i.fq, %bb.ax ], [ %i.bl, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i ], [ %i.cv, %bb.p ], [ %i.dy, %bb.aa ], [ %i.ge, %bb.bc ], [ %i.ej, %bb.aj ], [ %lpad.phi.i, %bb.ap ], [ %i.ee, %bb.af ], [ %i.hy, %bb.bv ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload51.i = load ptr, ptr %.sroa.8.0..sroa_idx50.i, align 8, !noalias !21825 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx52.i, i64 32, i1 false), !noalias !21825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !21823
  switch i64 %i.bd, label %bb.t [
    i64 -3, label %.loopexit.i
    i64 -1, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.bs = load i64, ptr %i.ay, align 8, !alias.scope !21808, !noalias !21810, !noundef !4 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.bj, label %bb.l

.loopexit102.i:                                   ; preds = %bb.as, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !21823
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !21808, !noalias !21810, !noundef !4 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.bl, label %bb.l

bb.l:                                             ; preds = %.loopexit102.i, %.loopexit.i
  %i.bx = phi i64 [ %i.bs, %.loopexit.i ], [ %i.bv, %.loopexit102.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !21827
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.bx), !noalias !21805
  call void @llvm.experimental.noalias.scope.decl(metadata !21828)
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !21828, !noalias !21831, !noundef !4 ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i32.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i32.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = lshr i64 %i.ca, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !21833
  %i.cd = load ptr, ptr %i.ai, align 8, !alias.scope !21828, !noalias !21831, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !21828, !noalias !21831, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !21828, !noalias !21831, !noundef !4
  %i.ci = sub nsw i64 0, %i.cc
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.ci
  %i.ck = add i64 %i.cf, %i.cc
  %i.cl = add i64 %i.ch, %i.cc                    ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  call void @llvm.assume(i1 %i.cm)
  store i64 %i.cl, ptr %i.ac, align 8, !noalias !21833
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.cj, ptr %i.cn, align 8, !noalias !21833
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ck, ptr %i.co, align 8, !noalias !21833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !21833
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac), !noalias !21834
  call void @llvm.experimental.noalias.scope.decl(metadata !21835)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !21833
  store i64 %i.cc, ptr %i.aa, align 8, !noalias !21838
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !21835, !noalias !21833, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.cc, %i.cq
  br i1 %.not.i.i.i, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !21838
  store i64 %i.cq, ptr %i.z, align 8, !noalias !21838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !21838
  store ptr %i.aa, ptr %i.y, align 8, !noalias !21838
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !21838
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.cr, align 8, !noalias !21838
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !21838
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i.i unwind label %bb.p, !noalias !21834

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.cs = load ptr, ptr %i.ai, align 8, !alias.scope !21828, !noalias !21831, !nonnull !4, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !21828, !noalias !21831, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !21839)
  call void @llvm.experimental.noalias.scope.decl(metadata !21842)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !21845, !noalias !21833, !noundef !4
  %i.cy = load ptr, ptr %i.ab, align 8, !alias.scope !21845, !noalias !21833, !nonnull !4, !align !665, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !21846, !nonnull !4, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !21845, !noalias !21833, !noundef !4
  invoke void %i.da(ptr noundef %i.cx, ptr noundef %i.dc, i64 noundef %i.cq)
          to label %common.resume unwind label %bb.r, !noalias !21834, !inline_history !1663

bb.q:                                             ; preds = %bb.m
  %i.dd = sub nuw i64 %i.cq, %i.cc
  %i.de = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !21835, !noalias !21833, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !21833
  %.sroa.053.0.copyload54.i = load ptr, ptr %i.ab, align 8, !noalias !21847
  %.sroa.7.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.7.0.copyload60.i = load ptr, ptr %.sroa.7.0..sroa_idx59.i, align 8, !noalias !21847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !21833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !21833
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.r:                                             ; preds = %bb.p
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21834
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.7.0.i = phi ptr [ %i.bz, %bb.o ], [ %.sroa.7.0.copyload60.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.cu, %bb.o ], [ %i.dd, %bb.q ]
  %.sroa.5.0.i = phi ptr [ %i.cs, %bb.o ], [ %i.dg, %bb.q ] ; 2 uses
  %.sroa.053.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.o ], [ %.sroa.053.0.copyload54.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !21827
  store ptr %.sroa.5.0.i, ptr %.sroa.19, align 8, !alias.scope !21805, !noalias !21820
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !21805, !noalias !21820
  br label %bb.bk

bb.s:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload51.i) ]
  %i.di = load i64, ptr %i.ay, align 8, !alias.scope !21808, !noalias !21810, !noundef !4 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.thread114, label %bb.ba

bb.t:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !21827
  store i64 %i.bd, ptr %i.ah, align 8, !noalias !21827
  store ptr %.sroa.8.0.copyload51.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !21827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, i64 32, i1 false), !noalias !21827
  %i.dk = load i8, ptr %i.ap, align 8, !range !1960, !alias.scope !21808, !noalias !21810, !noundef !4 ; 3 uses
  %i.dl = load i64, ptr %1, align 8, !range !802, !alias.scope !21808, !noalias !21810, !noundef !4
  %i.dm = load i64, ptr %i.ax, align 8, !alias.scope !21808, !noalias !21810
  call void @llvm.experimental.noalias.scope.decl(metadata !21848)
  call void @llvm.experimental.noalias.scope.decl(metadata !21851)
  %i.dn = load i64, ptr %i.ay, align 8, !alias.scope !21853, !noalias !21854, !noundef !4 ; 6 uses
  %i.do = load i64, ptr %i.az, align 8, !alias.scope !21853, !noalias !21854, !noundef !4
  %i.dp = sub i64 %i.do, %i.dn
  %i.dq = icmp ugt i64 %i.dp, 4
  br i1 %i.dq, label %.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = invoke noundef zeroext i1 @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef 5, i1 noundef zeroext true)
          to label %bb.v unwind label %.loopexit103.i, !noalias !21857 ; 0 uses

bb.v:                                             ; preds = %bb.u
  %.pre.i.i = load i64, ptr %i.az, align 8, !alias.scope !21853, !noalias !21854
  %.pre43.i.i = load i64, ptr %i.ay, align 8, !alias.scope !21853, !noalias !21854 ; 2 uses
  %.pre44.i.i = sub i64 %.pre.i.i, %.pre43.i.i    ; 2 uses
  %i.ds = icmp ult i64 %.pre44.i.i, 5
  br i1 %i.ds, label %bb.w, label %.thread.i.i, !prof !17897

.thread.i.i:                                      ; preds = %bb.v, %bb.t
  %i.dt = phi i64 [ %.pre43.i.i, %bb.v ], [ %i.dn, %bb.t ]
  %i.du = add i64 %i.dt, 5
  store i64 %i.du, ptr %i.ay, align 8, !alias.scope !21853, !noalias !21854
  %.not.i33.i = icmp eq i8 %i.dk, 2
  br i1 %.not.i33.i, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !21858
  store i64 5, ptr %i.t, align 8, !noalias !21858
  %i.dv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.pre44.i.i, ptr %i.dv, align 8, !noalias !21858
  invoke void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t) #29
          to label %bb.ao unwind label %.loopexit.split-lp.i, !noalias !21857

bb.x:                                             ; preds = %.thread.i.i
  store i64 0, ptr %i.ba, align 8, !alias.scope !21859, !noalias !21860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !21858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !noalias !21861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !21858
  store ptr %i.ar, ptr %i.w, align 8, !noalias !21858
  %i.dw = call noundef align 8 ptr @_RNvXs3_NtCsk1F0U0dGulz_11tonic_prost5codecINtB5_12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeENtNtCsbYyEjVLvvus_5tonic5codec7Encoder6encodeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w), !noalias !21862 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !21858
  %.not22.i.i = icmp eq ptr %i.dw, null
  br i1 %.not22.i.i, label %bb.ad, label %bb.z

bb.y:                                             ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !21858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false), !noalias !21861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !21858
  store ptr %i.aq, ptr %i.u, align 8, !noalias !21858
  %i.dx = call noundef align 8 ptr @_RNvXs3_NtCsk1F0U0dGulz_11tonic_prost5codecINtB5_12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeENtNtCsbYyEjVLvvus_5tonic5codec7Encoder6encodeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u), !noalias !21863 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !21858
  %.not21.i.i = icmp eq ptr %i.dx, null
  br i1 %.not21.i.i, label %bb.am, label %bb.ai

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !21858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !21858
  store ptr %i.dw, ptr %i.s, align 8, !noalias !21864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !21864
  store ptr %i.s, ptr %i.q, align 8, !noalias !21864
  %.sroa.42.0..sroa_idx.i.i34.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs7_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i34.i, align 8, !noalias !21864
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @60, ptr noundef nonnull %i.q)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.aa, !noalias !21862

bb.aa:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %.val6.i.i.i = load ptr, ptr %i.s, align 8, !noalias !21864, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val6.i.i.i) #32
          to label %common.resume unwind label %bb.ac, !noalias !21862

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !21864
  %i.dz = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB6_6Status3newNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(i8 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.ab unwind label %bb.aa, !noalias !21862

bb.ab:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %i.s, align 8, !noalias !21864, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i.i.i), !noalias !21862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !21858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !21858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !21858
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.ac:                                            ; preds = %bb.aa
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21862
  unreachable

bb.ad:                                            ; preds = %bb.x
  %i.eb = trunc nuw i8 %i.dk to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !21858
  %i.ec = load i64, ptr %i.ba, align 8, !alias.scope !21859, !noalias !21860, !noundef !4
  %i.ed = call noundef ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec11compression8compress(i64 noundef %.val30.i, i1 noundef zeroext %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.ec), !noalias !21862 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ed, null
  br i1 %.not23.i.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !21858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !21858
  store ptr %i.ed, ptr %i.p, align 8, !noalias !21858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !21858
  store ptr %i.p, ptr %i.n, align 8, !noalias !21858
  %.sroa.42.0..sroa_idx.i24.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i24.i.i, align 8, !noalias !21858
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @61, ptr noundef nonnull %i.n)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i unwind label %bb.af, !noalias !21862

bb.af:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i, %bb.ae
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #32
          to label %common.resume unwind label %bb.ag, !noalias !21862

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !21858
  %i.ef = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB6_6Status3newNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(i8 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.af, !noalias !21862

_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !21862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !21858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !21858
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21862
  unreachable

bb.ah:                                            ; preds = %bb.am, %bb.ad
  %i.eh = load i64, ptr %i.ay, align 8, !alias.scope !21853, !noalias !21854, !noundef !4 ; 4 uses
  %i.ei = icmp ugt i64 %i.dn, %i.eh
  br i1 %i.ei, label %bb.an, label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, !prof !5

bb.ai:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !21858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21858
  store ptr %i.dx, ptr %i.m, align 8, !noalias !21867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !21867
  store ptr %i.m, ptr %i.k, align 8, !noalias !21867
  %.sroa.42.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs7_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i29.i.i, align 8, !noalias !21867
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @60, ptr noundef nonnull %i.k)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i unwind label %bb.aj, !noalias !21863

bb.aj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i, %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %.val6.i30.i.i = load ptr, ptr %i.m, align 8, !noalias !21867, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val6.i30.i.i) #32
          to label %common.resume unwind label %bb.al, !noalias !21863

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21867
  %i.ek = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB6_6Status3newNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(i8 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.ak unwind label %bb.aj, !noalias !21863

bb.ak:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i
  %.val.i32.i.i = load ptr, ptr %i.m, align 8, !noalias !21867, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i32.i.i), !noalias !21863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !21858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !21858
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.al:                                            ; preds = %bb.aj
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21863
  unreachable

bb.am:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !21858
  br label %bb.ah

bb.an:                                            ; preds = %bb.ah
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.dn, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #29, !noalias !21862
  unreachable

bb.ao:                                            ; preds = %bb.w
  unreachable

.loopexit103.i:                                   ; preds = %bb.u
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp.i, %.loopexit103.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit103.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ah) #32
          to label %common.resume unwind label %bb.aq, !noalias !21870

bb.aq:                                            ; preds = %bb.ap
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21870
  unreachable

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ah
  %i.en = load ptr, ptr %i.aq, align 8, !alias.scope !21853, !noalias !21854, !nonnull !4, !noundef !4
  %i.eo = sub nuw i64 %i.eh, %i.dn
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.dn
  %i.eq = call noundef align 8 ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec6encode15finish_encoding(i8 noundef range(i8 0, 3) %i.dk, i64 noundef range(i64 0, 2) %i.dl, i64 %i.dm, ptr noalias noundef nonnull %i.ep, i64 noundef %i.eo), !noalias !21862 ; 2 uses
  %.not28.i = icmp eq ptr %i.eq, null
  br i1 %.not28.i, label %bb.ar, label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.ar:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.er = load i64, ptr %i.ay, align 8, !alias.scope !21808, !noalias !21810, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.er, %.val31.i
  br i1 %.not29.i, label %bb.as, label %bb.at

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.ab, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.ak, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i
  %.sroa.26.1 = phi i64 [ %.sroa.669.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ undef, %bb.ab ], [ undef, %bb.ak ], [ undef, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ undef, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.12.1 = phi ptr [ %.sroa.064.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ null, %bb.ab ], [ null, %bb.ak ], [ null, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ null, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ %.sroa.19, %bb.ab ], [ %.sroa.19, %bb.ak ], [ %.sroa.19, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.19, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.772.0.sink.i = phi ptr [ %.sroa.772.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ %i.dz, %bb.ab ], [ %i.ek, %bb.ak ], [ %i.ef, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.eq, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  store ptr %.sroa.772.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !21805, !noalias !21820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !21827
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.bk

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !21827
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !21871)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !21873
  %i.es = load ptr, ptr %i.an, align 8, !alias.scope !21874, !noalias !21819, !noundef !4
  %.not.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i, label %.loopexit102.i, label %bb.b

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !21827
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.er), !noalias !21805
  call void @llvm.experimental.noalias.scope.decl(metadata !21875)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !21875, !noalias !21878, !noundef !4 ; 2 uses
  %i.ev = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %.not.i35.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i35.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ex = lshr i64 %i.ev, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21880
  %i.ey = load ptr, ptr %i.ag, align 8, !alias.scope !21875, !noalias !21878, !nonnull !4, !noundef !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !21875, !noalias !21878, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !21875, !noalias !21878, !noundef !4
  %i.fd = sub nsw i64 0, %i.ex
  %i.fe = getelementptr inbounds i8, ptr %i.ey, i64 %i.fd
  %i.ff = add i64 %i.fa, %i.ex
  %i.fg = add i64 %i.fc, %i.ex                    ; 2 uses
  %i.fh = icmp sgt i64 %i.fg, -1
  call void @llvm.assume(i1 %i.fh)
  store i64 %i.fg, ptr %i.j, align 8, !noalias !21880
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fe, ptr %i.fi, align 8, !noalias !21880
  %i.fj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ff, ptr %i.fj, align 8, !noalias !21880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21880
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !21881
  call void @llvm.experimental.noalias.scope.decl(metadata !21882)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21880
  store i64 %i.ex, ptr %i.h, align 8, !noalias !21885
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !21882, !noalias !21880, !noundef !4 ; 4 uses
  %.not.i.i36.i = icmp ugt i64 %i.ex, %i.fl
  br i1 %.not.i.i36.i, label %bb.av, label %bb.ay, !prof !5

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21885
  store i64 %i.fl, ptr %i.g, align 8, !noalias !21885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21885
  store ptr %i.h, ptr %i.f, align 8, !noalias !21885
  %.sroa.42.0..sroa_idx.i.i37.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i37.i, align 8, !noalias !21885
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.fm, align 8, !noalias !21885
  %.sroa.46.0..sroa_idx.i.i38.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i38.i, align 8, !noalias !21885
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i40.i unwind label %bb.ax, !noalias !21881

.noexc.i40.i:                                     ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.fn = load ptr, ptr %i.ag, align 8, !alias.scope !21875, !noalias !21878, !nonnull !4, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !21875, !noalias !21878, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i

bb.ax:                                            ; preds = %bb.av
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !21886)
  call void @llvm.experimental.noalias.scope.decl(metadata !21889)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !21892, !noalias !21880, !noundef !4
  %i.ft = load ptr, ptr %i.i, align 8, !alias.scope !21892, !noalias !21880, !nonnull !4, !align !665, !noundef !4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !21893, !nonnull !4, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !21892, !noalias !21880, !noundef !4
  invoke void %i.fv(ptr noundef %i.fs, ptr noundef %i.fx, i64 noundef %i.fl)
          to label %common.resume unwind label %bb.az, !noalias !21881, !inline_history !1663

bb.ay:                                            ; preds = %bb.au
  %i.fy = sub nuw i64 %i.fl, %i.ex
  %i.fz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !21882, !noalias !21880, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21880
  %.sroa.064.0.copyload65.i = load ptr, ptr %i.i, align 8, !noalias !21894
  %.sroa.772.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.772.0.copyload74.i = load ptr, ptr %.sroa.772.0..sroa_idx73.i, align 8, !noalias !21894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21880
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i

bb.az:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21881
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i: ; preds = %bb.ay, %bb.aw
  %.sroa.772.0.i = phi ptr [ %i.eu, %bb.aw ], [ %.sroa.772.0.copyload74.i, %bb.ay ]
  %.sroa.669.0.i = phi i64 [ %i.fp, %bb.aw ], [ %i.fy, %bb.ay ]
  %.sroa.566.0.i = phi ptr [ %i.fn, %bb.aw ], [ %i.gb, %bb.ay ]
  %.sroa.064.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.aw ], [ %.sroa.064.0.copyload65.i, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !21827
  store ptr %.sroa.566.0.i, ptr %.sroa.19, align 8, !alias.scope !21805, !noalias !21820
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

.thread114:                                       ; preds = %bb.s
  store ptr %.sroa.8.0.copyload51.i, ptr %.sroa.19, align 8, !alias.scope !21805, !noalias !21820
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.bq

bb.ba:                                            ; preds = %bb.s
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !21808, !noalias !21810, !align !665, !noundef !4 ; 2 uses
  %i.gd = icmp eq ptr %.val.i, null
  br i1 %i.gd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i unwind label %bb.bc, !noalias !21805

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i: ; preds = %bb.bb
  %.pre.i = load i64, ptr %i.ay, align 8, !alias.scope !21808, !noalias !21810
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.ge = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !21808, !noalias !21810
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.ba
  %i.gf = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.di, %bb.ba ]
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !21808, !noalias !21810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !21827
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.gf), !noalias !21805
  call void @llvm.experimental.noalias.scope.decl(metadata !21895)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !21895, !noalias !21898, !noundef !4 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i42.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i42.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gk = lshr i64 %i.gi, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21900
  %i.gl = load ptr, ptr %i.af, align 8, !alias.scope !21895, !noalias !21898, !nonnull !4, !noundef !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !21895, !noalias !21898, !noundef !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !21895, !noalias !21898, !noundef !4
  %i.gq = sub nsw i64 0, %i.gk
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %i.gq
  %i.gs = add i64 %i.gn, %i.gk
  %i.gt = add i64 %i.gp, %i.gk                    ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  call void @llvm.assume(i1 %i.gu)
  store i64 %i.gt, ptr %i.e, align 8, !noalias !21900
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gr, ptr %i.gv, align 8, !noalias !21900
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gs, ptr %i.gw, align 8, !noalias !21900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21900
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !21901
  call void @llvm.experimental.noalias.scope.decl(metadata !21902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21900
  store i64 %i.gk, ptr %i.c, align 8, !noalias !21905
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !21902, !noalias !21900, !noundef !4 ; 4 uses
  %.not.i.i43.i = icmp ugt i64 %i.gk, %i.gy
  br i1 %.not.i.i43.i, label %bb.be, label %bb.bh, !prof !5

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21905
  store i64 %i.gy, ptr %i.b, align 8, !noalias !21905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21905
  store ptr %i.c, ptr %i.a, align 8, !noalias !21905
  %.sroa.42.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i44.i, align 8, !noalias !21905
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gz, align 8, !noalias !21905
  %.sroa.46.0..sroa_idx.i.i45.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i45.i, align 8, !noalias !21905
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i47.i unwind label %bb.bg, !noalias !21901

.noexc.i47.i:                                     ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ha = load ptr, ptr %i.af, align 8, !alias.scope !21895, !noalias !21898, !nonnull !4, !noundef !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !21895, !noalias !21898, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bg:                                            ; preds = %bb.be
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !21906)
  call void @llvm.experimental.noalias.scope.decl(metadata !21909)
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !21912, !noalias !21900, !noundef !4
  %i.hg = load ptr, ptr %i.d, align 8, !alias.scope !21912, !noalias !21900, !nonnull !4, !align !665, !noundef !4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !21913, !nonnull !4, !noundef !4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !21912, !noalias !21900, !noundef !4
  invoke void %i.hi(ptr noundef %i.hf, ptr noundef %i.hk, i64 noundef %i.gy)
          to label %common.resume unwind label %bb.bi, !noalias !21901, !inline_history !1663

bb.bh:                                            ; preds = %bb.bd
  %i.hl = sub nuw i64 %i.gy, %i.gk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !21902, !noalias !21900, !noundef !4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21900
  %.sroa.079.0.copyload80.i = load ptr, ptr %i.d, align 8, !noalias !21914
  %.sroa.787.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.787.0.copyload89.i = load ptr, ptr %.sroa.787.0..sroa_idx88.i, align 8, !noalias !21914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21900
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bi:                                            ; preds = %bb.bg
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21901
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i: ; preds = %bb.bh, %bb.bf
  %.sroa.787.0.i = phi ptr [ %i.gh, %bb.bf ], [ %.sroa.787.0.copyload89.i, %bb.bh ]
  %.sroa.684.0.i = phi i64 [ %i.hc, %bb.bf ], [ %i.hl, %bb.bh ]
  %.sroa.581.0.i = phi ptr [ %i.ha, %bb.bf ], [ %i.ho, %bb.bh ] ; 2 uses
  %.sroa.079.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bf ], [ %.sroa.079.0.copyload80.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !21827
  store ptr %.sroa.581.0.i, ptr %.sroa.19, align 8, !alias.scope !21805, !noalias !21820
  store ptr %.sroa.787.0.i, ptr %.sroa.30, align 8, !alias.scope !21805, !noalias !21820
  br label %bb.bk

bb.bj:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.bz

bb.bk:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108 = phi ptr [ %.sroa.581.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.684.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.079.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.053.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.hq = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hq, label %bb.bq, label %bb.br

bb.bl:                                            ; preds = %.loopexit102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am)
  %i.hr = load i64, ptr %i.aj, align 8, !range !3841, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.hr, -2
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bo, %bb.bp, %bb.bl
  %.sroa.017.0 = phi i64 [ -3, %bb.bl ], [ -2, %bb.bo ], [ %i.hr, %bb.bp ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bl ], [ %.sroa.563.0.copyload, %bb.bo ], [ %.sroa.563.0.copyload, %bb.bp ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bn

bb.bq:                                            ; preds = %.thread114, %.thread110, %bb.bk
  %i.ht = phi ptr [ %i.au, %.thread110 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, %bb.bk ], [ %.sroa.8.0.copyload51.i, %.thread114 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ht) ]
  store ptr %i.ht, ptr %i.al, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.hv = load i8, ptr %i.hu, align 8, !range !3, !noundef !4
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %bb.bk
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bq
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.hx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.bw unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ht, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.by, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bs
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ht) #32
          to label %common.resume unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  %i.hz = load i64, ptr %i.ak, align 8, !range !1319, !noundef !4 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, -1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  br i1 %i.ia, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ic, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ht)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 %i.hz, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ic, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ht)
  br label %bb.bu

bb.bz:                                            ; preds = %bb.bn, %bb.br, %bb.bu, %bb.bj, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.ca:                                            ; preds = %bb.bv
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [160 x i8], align 8               ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [160 x i8], align 8               ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [160 x i8], align 8              ; 6 uses
  %i.ae = alloca [160 x i8], align 8              ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [160 x i8], align 8              ; 9 uses
  %i.ai = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.9.i = alloca [144 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.aj = alloca [96 x i8], align 8               ; 4 uses
  %i.ak = alloca [96 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.19 = alloca ptr, align 8                 ; 12 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21918)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.val30.i = load i64, ptr %i.ao, align 8, !alias.scope !21918, !noalias !21920, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val31.i = load i64, ptr %i.at, align 8, !alias.scope !21918, !noalias !21920, !noundef !4
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !21918, !noalias !21920, !align !665, !noundef !4 ; 3 uses
  store ptr null, ptr %i.as, align 8, !alias.scope !21918, !noalias !21920
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %.thread110

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !21925
  %i.av = load ptr, ptr %i.an, align 8, !alias.scope !21928, !noalias !21929, !noundef !4
  %.not.i131.i = icmp eq ptr %i.av, null
  br i1 %.not.i131.i, label %.loopexit102.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.8.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.b

.thread110:                                       ; preds = %bb.a
  store ptr %i.au, ptr %.sroa.19, align 8, !alias.scope !21915, !noalias !21930
  br label %bb.bq

bb.b:                                             ; preds = %bb.as, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !21931)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !21933
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !21934
  %i.bb = load i64, ptr %i.ad, align 8, !range !6172, !noalias !21933, !noundef !4
  %i.bc = icmp eq i64 %i.bb, -4
  br i1 %i.bc, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !21933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !21933
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ae, ptr noundef nonnull align 8 dereferenceable(160) %i.ad, i64 160, i1 false), !noalias !21933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !21933
  %i.bd = load i64, ptr %i.ae, align 8, !noalias !21935 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.bd, -3
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.an, align 8, !alias.scope !21936, !noalias !21929
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(160) %i.ae) #32
          to label %common.resume unwind label %bb.k, !noalias !21934

bb.d:                                             ; preds = %bb.c
  %.val6.i.i = load ptr, ptr %i.an, align 8, !alias.scope !21936, !noalias !21929, !noundef !4 ; 4 uses
  %.val7.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !21936, !noalias !21929 ; 6 uses
  %i.be = icmp eq ptr %.val6.i.i, null
  br i1 %i.be, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.bf = load ptr, ptr %.val7.i.i, align 8, !invariant.load !4, !noalias !21934 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.bf(ptr noundef nonnull %.val6.i.i)
          to label %bb.g unwind label %bb.i, !noalias !21934

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !993, !invariant.load !4, !noalias !21934 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !1318, !invariant.load !4, !noalias !21934
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #30, !noalias !21934
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i

bb.i:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !993, !invariant.load !4, !noalias !21934 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !1318, !invariant.load !4, !noalias !21934
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #30, !noalias !21934
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i: ; preds = %bb.h, %bb.g, %bb.d
  store ptr null, ptr %i.an, align 8, !alias.scope !21936, !noalias !21929
  br label %.loopexit102.i

bb.k:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21934
  unreachable

common.resume:                                    ; preds = %bb.bv, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, %bb.p, %bb.aa, %bb.af, %bb.aj, %bb.ap, %bb.ax, %bb.bc, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.hd, %bb.bg ], [ %i.fq, %bb.ax ], [ %i.bl, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i ], [ %i.cv, %bb.p ], [ %i.dy, %bb.aa ], [ %i.ge, %bb.bc ], [ %i.ej, %bb.aj ], [ %lpad.phi.i, %bb.ap ], [ %i.ee, %bb.af ], [ %i.hy, %bb.bv ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload51.i = load ptr, ptr %.sroa.8.0..sroa_idx50.i, align 8, !noalias !21935 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.0..sroa_idx52.i, i64 144, i1 false), !noalias !21935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !21933
  switch i64 %i.bd, label %bb.t [
    i64 -4, label %.loopexit.i
    i64 -2, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.bs = load i64, ptr %i.ay, align 8, !alias.scope !21918, !noalias !21920, !noundef !4 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.bj, label %bb.l

.loopexit102.i:                                   ; preds = %bb.as, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread188.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !21933
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !21918, !noalias !21920, !noundef !4 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.bl, label %bb.l

bb.l:                                             ; preds = %.loopexit102.i, %.loopexit.i
  %i.bx = phi i64 [ %i.bs, %.loopexit.i ], [ %i.bv, %.loopexit102.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !21937
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.bx), !noalias !21915
  call void @llvm.experimental.noalias.scope.decl(metadata !21938)
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !21938, !noalias !21941, !noundef !4 ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i32.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i32.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = lshr i64 %i.ca, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !21943
  %i.cd = load ptr, ptr %i.ai, align 8, !alias.scope !21938, !noalias !21941, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !21938, !noalias !21941, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !21938, !noalias !21941, !noundef !4
  %i.ci = sub nsw i64 0, %i.cc
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.ci
  %i.ck = add i64 %i.cf, %i.cc
  %i.cl = add i64 %i.ch, %i.cc                    ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  call void @llvm.assume(i1 %i.cm)
  store i64 %i.cl, ptr %i.ac, align 8, !noalias !21943
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.cj, ptr %i.cn, align 8, !noalias !21943
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ck, ptr %i.co, align 8, !noalias !21943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !21943
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac), !noalias !21944
  call void @llvm.experimental.noalias.scope.decl(metadata !21945)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !21943
  store i64 %i.cc, ptr %i.aa, align 8, !noalias !21948
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !21945, !noalias !21943, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.cc, %i.cq
  br i1 %.not.i.i.i, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !21948
  store i64 %i.cq, ptr %i.z, align 8, !noalias !21948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !21948
  store ptr %i.aa, ptr %i.y, align 8, !noalias !21948
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !21948
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.cr, align 8, !noalias !21948
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !21948
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i.i unwind label %bb.p, !noalias !21944

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.cs = load ptr, ptr %i.ai, align 8, !alias.scope !21938, !noalias !21941, !nonnull !4, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !21938, !noalias !21941, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !21949)
  call void @llvm.experimental.noalias.scope.decl(metadata !21952)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !21955, !noalias !21943, !noundef !4
  %i.cy = load ptr, ptr %i.ab, align 8, !alias.scope !21955, !noalias !21943, !nonnull !4, !align !665, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !21956, !nonnull !4, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !21955, !noalias !21943, !noundef !4
  invoke void %i.da(ptr noundef %i.cx, ptr noundef %i.dc, i64 noundef %i.cq)
          to label %common.resume unwind label %bb.r, !noalias !21944, !inline_history !1663

bb.q:                                             ; preds = %bb.m
  %i.dd = sub nuw i64 %i.cq, %i.cc
  %i.de = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !21945, !noalias !21943, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !21943
  %.sroa.053.0.copyload54.i = load ptr, ptr %i.ab, align 8, !noalias !21957
  %.sroa.7.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.7.0.copyload60.i = load ptr, ptr %.sroa.7.0..sroa_idx59.i, align 8, !noalias !21957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !21943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !21943
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.r:                                             ; preds = %bb.p
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21944
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.7.0.i = phi ptr [ %i.bz, %bb.o ], [ %.sroa.7.0.copyload60.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.cu, %bb.o ], [ %i.dd, %bb.q ]
  %.sroa.5.0.i = phi ptr [ %i.cs, %bb.o ], [ %i.dg, %bb.q ] ; 2 uses
  %.sroa.053.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.o ], [ %.sroa.053.0.copyload54.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !21937
  store ptr %.sroa.5.0.i, ptr %.sroa.19, align 8, !alias.scope !21915, !noalias !21930
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !21915, !noalias !21930
  br label %bb.bk

bb.s:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload51.i) ]
  %i.di = load i64, ptr %i.ay, align 8, !alias.scope !21918, !noalias !21920, !noundef !4 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.thread114, label %bb.ba

bb.t:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !21937
  store i64 %i.bd, ptr %i.ah, align 8, !noalias !21937
  store ptr %.sroa.8.0.copyload51.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !21937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.i, i64 144, i1 false), !noalias !21937
  %i.dk = load i8, ptr %i.ap, align 8, !range !1960, !alias.scope !21918, !noalias !21920, !noundef !4 ; 3 uses
  %i.dl = load i64, ptr %1, align 8, !range !802, !alias.scope !21918, !noalias !21920, !noundef !4
  %i.dm = load i64, ptr %i.ax, align 8, !alias.scope !21918, !noalias !21920
  call void @llvm.experimental.noalias.scope.decl(metadata !21958)
  call void @llvm.experimental.noalias.scope.decl(metadata !21961)
  %i.dn = load i64, ptr %i.ay, align 8, !alias.scope !21963, !noalias !21964, !noundef !4 ; 6 uses
  %i.do = load i64, ptr %i.az, align 8, !alias.scope !21963, !noalias !21964, !noundef !4
  %i.dp = sub i64 %i.do, %i.dn
  %i.dq = icmp ugt i64 %i.dp, 4
  br i1 %i.dq, label %.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = invoke noundef zeroext i1 @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef 5, i1 noundef zeroext true)
          to label %bb.v unwind label %.loopexit103.i, !noalias !21967 ; 0 uses

bb.v:                                             ; preds = %bb.u
  %.pre.i.i = load i64, ptr %i.az, align 8, !alias.scope !21963, !noalias !21964
  %.pre43.i.i = load i64, ptr %i.ay, align 8, !alias.scope !21963, !noalias !21964 ; 2 uses
  %.pre44.i.i = sub i64 %.pre.i.i, %.pre43.i.i    ; 2 uses
  %i.ds = icmp ult i64 %.pre44.i.i, 5
  br i1 %i.ds, label %bb.w, label %.thread.i.i, !prof !17897

.thread.i.i:                                      ; preds = %bb.v, %bb.t
  %i.dt = phi i64 [ %.pre43.i.i, %bb.v ], [ %i.dn, %bb.t ]
  %i.du = add i64 %i.dt, 5
  store i64 %i.du, ptr %i.ay, align 8, !alias.scope !21963, !noalias !21964
  %.not.i33.i = icmp eq i8 %i.dk, 2
  br i1 %.not.i33.i, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !21968
  store i64 5, ptr %i.t, align 8, !noalias !21968
  %i.dv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.pre44.i.i, ptr %i.dv, align 8, !noalias !21968
  invoke void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t) #29
          to label %bb.ao unwind label %.loopexit.split-lp.i, !noalias !21967

bb.x:                                             ; preds = %.thread.i.i
  store i64 0, ptr %i.ba, align 8, !alias.scope !21969, !noalias !21970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !21968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.x, ptr noundef nonnull align 8 dereferenceable(160) %i.ah, i64 160, i1 false), !noalias !21971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !21968
  store ptr %i.ar, ptr %i.w, align 8, !noalias !21968
  %i.dw = call noundef align 8 ptr @_RNvXs3_NtCsk1F0U0dGulz_11tonic_prost5codecINtB5_12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataENtNtCsbYyEjVLvvus_5tonic5codec7Encoder6encodeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w), !noalias !21972 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !21968
  %.not22.i.i = icmp eq ptr %i.dw, null
  br i1 %.not22.i.i, label %bb.ad, label %bb.z

bb.y:                                             ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !21968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.v, ptr noundef nonnull align 8 dereferenceable(160) %i.ah, i64 160, i1 false), !noalias !21971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !21968
  store ptr %i.aq, ptr %i.u, align 8, !noalias !21968
  %i.dx = call noundef align 8 ptr @_RNvXs3_NtCsk1F0U0dGulz_11tonic_prost5codecINtB5_12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataENtNtCsbYyEjVLvvus_5tonic5codec7Encoder6encodeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u), !noalias !21973 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !21968
  %.not21.i.i = icmp eq ptr %i.dx, null
  br i1 %.not21.i.i, label %bb.am, label %bb.ai

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !21968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !21968
  store ptr %i.dw, ptr %i.s, align 8, !noalias !21974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !21974
  store ptr %i.s, ptr %i.q, align 8, !noalias !21974
  %.sroa.42.0..sroa_idx.i.i34.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs7_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i34.i, align 8, !noalias !21974
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @60, ptr noundef nonnull %i.q)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.aa, !noalias !21972

bb.aa:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %.val6.i.i.i = load ptr, ptr %i.s, align 8, !noalias !21974, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val6.i.i.i) #32
          to label %common.resume unwind label %bb.ac, !noalias !21972

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !21974
  %i.dz = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB6_6Status3newNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(i8 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.ab unwind label %bb.aa, !noalias !21972

bb.ab:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %i.s, align 8, !noalias !21974, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i.i.i), !noalias !21972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !21968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !21968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !21968
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.ac:                                            ; preds = %bb.aa
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21972
  unreachable

bb.ad:                                            ; preds = %bb.x
  %i.eb = trunc nuw i8 %i.dk to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !21968
  %i.ec = load i64, ptr %i.ba, align 8, !alias.scope !21969, !noalias !21970, !noundef !4
  %i.ed = call noundef ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec11compression8compress(i64 noundef %.val30.i, i1 noundef zeroext %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.ec), !noalias !21972 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ed, null
  br i1 %.not23.i.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !21968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !21968
  store ptr %i.ed, ptr %i.p, align 8, !noalias !21968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !21968
  store ptr %i.p, ptr %i.n, align 8, !noalias !21968
  %.sroa.42.0..sroa_idx.i24.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i24.i.i, align 8, !noalias !21968
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @61, ptr noundef nonnull %i.n)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i unwind label %bb.af, !noalias !21972

bb.af:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i, %bb.ae
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #32
          to label %common.resume unwind label %bb.ag, !noalias !21972

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !21968
  %i.ef = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB6_6Status3newNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(i8 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.af, !noalias !21972

_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !21972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !21968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !21968
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21972
  unreachable

bb.ah:                                            ; preds = %bb.am, %bb.ad
  %i.eh = load i64, ptr %i.ay, align 8, !alias.scope !21963, !noalias !21964, !noundef !4 ; 4 uses
  %i.ei = icmp ugt i64 %i.dn, %i.eh
  br i1 %i.ei, label %bb.an, label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, !prof !5

bb.ai:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !21968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21968
  store ptr %i.dx, ptr %i.m, align 8, !noalias !21977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !21977
  store ptr %i.m, ptr %i.k, align 8, !noalias !21977
  %.sroa.42.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs7_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i29.i.i, align 8, !noalias !21977
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @60, ptr noundef nonnull %i.k)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i unwind label %bb.aj, !noalias !21973

bb.aj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i, %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %.val6.i30.i.i = load ptr, ptr %i.m, align 8, !noalias !21977, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val6.i30.i.i) #32
          to label %common.resume unwind label %bb.al, !noalias !21973

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21977
  %i.ek = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB6_6Status3newNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(i8 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.ak unwind label %bb.aj, !noalias !21973

bb.ak:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i
  %.val.i32.i.i = load ptr, ptr %i.m, align 8, !noalias !21977, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i32.i.i), !noalias !21973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !21968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !21968
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.al:                                            ; preds = %bb.aj
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21973
  unreachable

bb.am:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !21968
  br label %bb.ah

bb.an:                                            ; preds = %bb.ah
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.dn, i64 noundef %i.eh, i64 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #29, !noalias !21972
  unreachable

bb.ao:                                            ; preds = %bb.w
  unreachable

.loopexit103.i:                                   ; preds = %bb.u
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp.i, %.loopexit103.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit103.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.ah) #32
          to label %common.resume unwind label %bb.aq, !noalias !21980

bb.aq:                                            ; preds = %bb.ap
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21980
  unreachable

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ah
  %i.en = load ptr, ptr %i.aq, align 8, !alias.scope !21963, !noalias !21964, !nonnull !4, !noundef !4
  %i.eo = sub nuw i64 %i.eh, %i.dn
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.dn
  %i.eq = call noundef align 8 ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec6encode15finish_encoding(i8 noundef range(i8 0, 3) %i.dk, i64 noundef range(i64 0, 2) %i.dl, i64 %i.dm, ptr noalias noundef nonnull %i.ep, i64 noundef %i.eo), !noalias !21972 ; 2 uses
  %.not28.i = icmp eq ptr %i.eq, null
  br i1 %.not28.i, label %bb.ar, label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.ar:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.er = load i64, ptr %i.ay, align 8, !alias.scope !21918, !noalias !21920, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.er, %.val31.i
  br i1 %.not29.i, label %bb.as, label %bb.at

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.ab, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.ak, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i
  %.sroa.26.1 = phi i64 [ %.sroa.669.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ undef, %bb.ab ], [ undef, %bb.ak ], [ undef, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ undef, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.12.1 = phi ptr [ %.sroa.064.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ null, %bb.ab ], [ null, %bb.ak ], [ null, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ null, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ %.sroa.19, %bb.ab ], [ %.sroa.19, %bb.ak ], [ %.sroa.19, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.19, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.772.0.sink.i = phi ptr [ %.sroa.772.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ %i.dz, %bb.ab ], [ %i.ek, %bb.ak ], [ %i.ef, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.eq, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  store ptr %.sroa.772.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !21915, !noalias !21930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !21937
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.bk

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !21937
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !21981)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !21983
  %i.es = load ptr, ptr %i.an, align 8, !alias.scope !21984, !noalias !21929, !noundef !4
  %.not.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i, label %.loopexit102.i, label %bb.b

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !21937
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.er), !noalias !21915
  call void @llvm.experimental.noalias.scope.decl(metadata !21985)
  %i.et = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !alias.scope !21985, !noalias !21988, !noundef !4 ; 2 uses
  %i.ev = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %.not.i35.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i35.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ex = lshr i64 %i.ev, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21990
  %i.ey = load ptr, ptr %i.ag, align 8, !alias.scope !21985, !noalias !21988, !nonnull !4, !noundef !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !21985, !noalias !21988, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !21985, !noalias !21988, !noundef !4
  %i.fd = sub nsw i64 0, %i.ex
  %i.fe = getelementptr inbounds i8, ptr %i.ey, i64 %i.fd
  %i.ff = add i64 %i.fa, %i.ex
  %i.fg = add i64 %i.fc, %i.ex                    ; 2 uses
  %i.fh = icmp sgt i64 %i.fg, -1
  call void @llvm.assume(i1 %i.fh)
  store i64 %i.fg, ptr %i.j, align 8, !noalias !21990
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fe, ptr %i.fi, align 8, !noalias !21990
  %i.fj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ff, ptr %i.fj, align 8, !noalias !21990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21990
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !21991
  call void @llvm.experimental.noalias.scope.decl(metadata !21992)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21990
  store i64 %i.ex, ptr %i.h, align 8, !noalias !21995
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !21992, !noalias !21990, !noundef !4 ; 4 uses
  %.not.i.i36.i = icmp ugt i64 %i.ex, %i.fl
  br i1 %.not.i.i36.i, label %bb.av, label %bb.ay, !prof !5

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21995
  store i64 %i.fl, ptr %i.g, align 8, !noalias !21995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21995
  store ptr %i.h, ptr %i.f, align 8, !noalias !21995
  %.sroa.42.0..sroa_idx.i.i37.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i37.i, align 8, !noalias !21995
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.fm, align 8, !noalias !21995
  %.sroa.46.0..sroa_idx.i.i38.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i38.i, align 8, !noalias !21995
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i40.i unwind label %bb.ax, !noalias !21991

.noexc.i40.i:                                     ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.fn = load ptr, ptr %i.ag, align 8, !alias.scope !21985, !noalias !21988, !nonnull !4, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !21985, !noalias !21988, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i

bb.ax:                                            ; preds = %bb.av
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !21996)
  call void @llvm.experimental.noalias.scope.decl(metadata !21999)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !22002, !noalias !21990, !noundef !4
  %i.ft = load ptr, ptr %i.i, align 8, !alias.scope !22002, !noalias !21990, !nonnull !4, !align !665, !noundef !4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !22003, !nonnull !4, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !22002, !noalias !21990, !noundef !4
  invoke void %i.fv(ptr noundef %i.fs, ptr noundef %i.fx, i64 noundef %i.fl)
          to label %common.resume unwind label %bb.az, !noalias !21991, !inline_history !1663

bb.ay:                                            ; preds = %bb.au
  %i.fy = sub nuw i64 %i.fl, %i.ex
  %i.fz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !21992, !noalias !21990, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21990
  %.sroa.064.0.copyload65.i = load ptr, ptr %i.i, align 8, !noalias !22004
  %.sroa.772.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.772.0.copyload74.i = load ptr, ptr %.sroa.772.0..sroa_idx73.i, align 8, !noalias !22004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21990
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i

bb.az:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !21991
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i: ; preds = %bb.ay, %bb.aw
  %.sroa.772.0.i = phi ptr [ %i.eu, %bb.aw ], [ %.sroa.772.0.copyload74.i, %bb.ay ]
  %.sroa.669.0.i = phi i64 [ %i.fp, %bb.aw ], [ %i.fy, %bb.ay ]
  %.sroa.566.0.i = phi ptr [ %i.fn, %bb.aw ], [ %i.gb, %bb.ay ]
  %.sroa.064.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.aw ], [ %.sroa.064.0.copyload65.i, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !21937
  store ptr %.sroa.566.0.i, ptr %.sroa.19, align 8, !alias.scope !21915, !noalias !21930
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

.thread114:                                       ; preds = %bb.s
  store ptr %.sroa.8.0.copyload51.i, ptr %.sroa.19, align 8, !alias.scope !21915, !noalias !21930
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.bq

bb.ba:                                            ; preds = %bb.s
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !21918, !noalias !21920, !align !665, !noundef !4 ; 2 uses
  %i.gd = icmp eq ptr %.val.i, null
  br i1 %i.gd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i unwind label %bb.bc, !noalias !21915

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i: ; preds = %bb.bb
  %.pre.i = load i64, ptr %i.ay, align 8, !alias.scope !21918, !noalias !21920
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.ge = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !21918, !noalias !21920
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.ba
  %i.gf = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.di, %bb.ba ]
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !21918, !noalias !21920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !21937
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.gf), !noalias !21915
  call void @llvm.experimental.noalias.scope.decl(metadata !22005)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !22005, !noalias !22008, !noundef !4 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i42.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i42.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gk = lshr i64 %i.gi, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22010
  %i.gl = load ptr, ptr %i.af, align 8, !alias.scope !22005, !noalias !22008, !nonnull !4, !noundef !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !22005, !noalias !22008, !noundef !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !22005, !noalias !22008, !noundef !4
  %i.gq = sub nsw i64 0, %i.gk
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %i.gq
  %i.gs = add i64 %i.gn, %i.gk
  %i.gt = add i64 %i.gp, %i.gk                    ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  call void @llvm.assume(i1 %i.gu)
  store i64 %i.gt, ptr %i.e, align 8, !noalias !22010
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gr, ptr %i.gv, align 8, !noalias !22010
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gs, ptr %i.gw, align 8, !noalias !22010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22010
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !22011
  call void @llvm.experimental.noalias.scope.decl(metadata !22012)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22010
  store i64 %i.gk, ptr %i.c, align 8, !noalias !22015
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !22012, !noalias !22010, !noundef !4 ; 4 uses
  %.not.i.i43.i = icmp ugt i64 %i.gk, %i.gy
  br i1 %.not.i.i43.i, label %bb.be, label %bb.bh, !prof !5

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22015
  store i64 %i.gy, ptr %i.b, align 8, !noalias !22015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22015
  store ptr %i.c, ptr %i.a, align 8, !noalias !22015
  %.sroa.42.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i44.i, align 8, !noalias !22015
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gz, align 8, !noalias !22015
  %.sroa.46.0..sroa_idx.i.i45.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i45.i, align 8, !noalias !22015
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i47.i unwind label %bb.bg, !noalias !22011

.noexc.i47.i:                                     ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ha = load ptr, ptr %i.af, align 8, !alias.scope !22005, !noalias !22008, !nonnull !4, !noundef !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !22005, !noalias !22008, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bg:                                            ; preds = %bb.be
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22016)
  call void @llvm.experimental.noalias.scope.decl(metadata !22019)
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !22022, !noalias !22010, !noundef !4
  %i.hg = load ptr, ptr %i.d, align 8, !alias.scope !22022, !noalias !22010, !nonnull !4, !align !665, !noundef !4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !22023, !nonnull !4, !noundef !4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !22022, !noalias !22010, !noundef !4
  invoke void %i.hi(ptr noundef %i.hf, ptr noundef %i.hk, i64 noundef %i.gy)
          to label %common.resume unwind label %bb.bi, !noalias !22011, !inline_history !1663

bb.bh:                                            ; preds = %bb.bd
  %i.hl = sub nuw i64 %i.gy, %i.gk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !22012, !noalias !22010, !noundef !4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22010
  %.sroa.079.0.copyload80.i = load ptr, ptr %i.d, align 8, !noalias !22024
  %.sroa.787.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.787.0.copyload89.i = load ptr, ptr %.sroa.787.0..sroa_idx88.i, align 8, !noalias !22024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22010
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bi:                                            ; preds = %bb.bg
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22011
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i: ; preds = %bb.bh, %bb.bf
  %.sroa.787.0.i = phi ptr [ %i.gh, %bb.bf ], [ %.sroa.787.0.copyload89.i, %bb.bh ]
  %.sroa.684.0.i = phi i64 [ %i.hc, %bb.bf ], [ %i.hl, %bb.bh ]
  %.sroa.581.0.i = phi ptr [ %i.ha, %bb.bf ], [ %i.ho, %bb.bh ] ; 2 uses
  %.sroa.079.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bf ], [ %.sroa.079.0.copyload80.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !21937
  store ptr %.sroa.581.0.i, ptr %.sroa.19, align 8, !alias.scope !21915, !noalias !21930
  store ptr %.sroa.787.0.i, ptr %.sroa.30, align 8, !alias.scope !21915, !noalias !21930
  br label %bb.bk

bb.bj:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.bz

bb.bk:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108 = phi ptr [ %.sroa.581.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.684.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.079.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.053.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.hq = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hq, label %bb.bq, label %bb.br

bb.bl:                                            ; preds = %.loopexit102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am)
  %i.hr = load i64, ptr %i.aj, align 8, !range !3841, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.hr, -2
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bo, %bb.bp, %bb.bl
  %.sroa.017.0 = phi i64 [ -3, %bb.bl ], [ -2, %bb.bo ], [ %i.hr, %bb.bp ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bl ], [ %.sroa.563.0.copyload, %bb.bo ], [ %.sroa.563.0.copyload, %bb.bp ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bn

bb.bq:                                            ; preds = %.thread114, %.thread110, %bb.bk
  %i.ht = phi ptr [ %i.au, %.thread110 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, %bb.bk ], [ %.sroa.8.0.copyload51.i, %.thread114 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ht) ]
  store ptr %i.ht, ptr %i.al, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.hv = load i8, ptr %i.hu, align 8, !range !3, !noundef !4
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %bb.bk
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bq
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.hx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.bw unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ht, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.by, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bs
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ht) #32
          to label %common.resume unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  %i.hz = load i64, ptr %i.ak, align 8, !range !1319, !noundef !4 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, -1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  br i1 %i.ia, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ic, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ht)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 %i.hz, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ic, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ht)
  br label %bb.bu

bb.bz:                                            ; preds = %bb.bn, %bb.br, %bb.bu, %bb.bj, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.ca:                                            ; preds = %bb.bv
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.19 = alloca ptr, align 8                 ; 9 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22028)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.val30.i = load i64, ptr %i.aa, align 8, !alias.scope !22028, !noalias !22030, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val31.i = load i64, ptr %i.af, align 8, !alias.scope !22028, !noalias !22030, !noundef !4
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !22028, !noalias !22030, !align !665, !noundef !4 ; 3 uses
  store ptr null, ptr %i.ae, align 8, !alias.scope !22028, !noalias !22030
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.preheader.i, label %.thread110

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !22035
  %i.ah = load ptr, ptr %i.z, align 8, !alias.scope !22038, !noalias !22039, !noundef !4
  %.not.i104.i = icmp eq ptr %i.ah, null
  br i1 %.not.i104.i, label %.loopexit97.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.8.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br label %bb.b

.thread110:                                       ; preds = %bb.a
  store ptr %i.ag, ptr %.sroa.19, align 8, !alias.scope !22025, !noalias !22040
  br label %bb.at

bb.b:                                             ; preds = %bb.v, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !22043
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !22044
  %i.al = load i64, ptr %i.p, align 8, !range !902, !noalias !22043, !noundef !4
  %i.am = icmp eq i64 %i.al, -3
  br i1 %i.am, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22043
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false), !noalias !22043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22043
  %i.an = load i64, ptr %i.q, align 8, !noalias !22045 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.an, -2
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.z, align 8, !alias.scope !22046, !noalias !22039
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(176) %i.q) #32
          to label %common.resume unwind label %bb.k, !noalias !22044

bb.d:                                             ; preds = %bb.c
  %.val6.i.i = load ptr, ptr %i.z, align 8, !alias.scope !22046, !noalias !22039, !noundef !4 ; 4 uses
  %.val7.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !22046, !noalias !22039 ; 6 uses
  %i.ao = icmp eq ptr %.val6.i.i, null
  br i1 %i.ao, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.ap = load ptr, ptr %.val7.i.i, align 8, !invariant.load !4, !noalias !22044 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.ap(ptr noundef nonnull %.val6.i.i)
          to label %bb.g unwind label %bb.i, !noalias !22044

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !993, !invariant.load !4, !noalias !22044 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !1318, !invariant.load !4, !noalias !22044
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.ar, i64 noundef range(i64 1, 536870913) %i.au) #30, !noalias !22044
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i

bb.i:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !993, !invariant.load !4, !noalias !22044 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !1318, !invariant.load !4, !noalias !22044
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.ax, i64 noundef range(i64 1, 536870913) %i.ba) #30, !noalias !22044
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i: ; preds = %bb.h, %bb.g, %bb.d
  store ptr null, ptr %i.z, align 8, !alias.scope !22046, !noalias !22039
  br label %.loopexit97.i

bb.k:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22044
  unreachable

common.resume:                                    ; preds = %bb.ay, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, %bb.p, %bb.aa, %bb.af, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.fk, %bb.aj ], [ %i.dx, %bb.aa ], [ %i.av, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i ], [ %i.cf, %bb.p ], [ %i.el, %bb.af ], [ %i.gf, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload49.i = load ptr, ptr %.sroa.8.0..sroa_idx48.i, align 8, !noalias !22045 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx50.i, i64 160, i1 false), !noalias !22045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22043
  switch i64 %i.an, label %bb.t [
    i64 -3, label %.loopexit.i
    i64 -1, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.bc = load i64, ptr %i.ak, align 8, !alias.scope !22028, !noalias !22030, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.am, label %bb.l

.loopexit97.i:                                    ; preds = %bb.v, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22043
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !22028, !noalias !22030, !noundef !4 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.ao, label %bb.l

bb.l:                                             ; preds = %.loopexit97.i, %.loopexit.i
  %i.bh = phi i64 [ %i.bc, %.loopexit.i ], [ %i.bf, %.loopexit97.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !22047
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.bh), !noalias !22025
  call void @llvm.experimental.noalias.scope.decl(metadata !22048)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !22048, !noalias !22051, !noundef !4 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %.not.i32.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i32.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = lshr i64 %i.bk, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !22053
  %i.bn = load ptr, ptr %i.u, align 8, !alias.scope !22048, !noalias !22051, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !22048, !noalias !22051, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !22048, !noalias !22051, !noundef !4
  %i.bs = sub nsw i64 0, %i.bm
  %i.bt = getelementptr inbounds i8, ptr %i.bn, i64 %i.bs
  %i.bu = add i64 %i.bp, %i.bm
  %i.bv = add i64 %i.br, %i.bm                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, -1
  call void @llvm.assume(i1 %i.bw)
  store i64 %i.bv, ptr %i.o, align 8, !noalias !22053
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bt, ptr %i.bx, align 8, !noalias !22053
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.bu, ptr %i.by, align 8, !noalias !22053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !22053
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !22054
  call void @llvm.experimental.noalias.scope.decl(metadata !22055)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !22053
  store i64 %i.bm, ptr %i.m, align 8, !noalias !22058
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !22055, !noalias !22053, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.bm, %i.ca
  br i1 %.not.i.i.i, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !22058
  store i64 %i.ca, ptr %i.l, align 8, !noalias !22058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !22058
  store ptr %i.m, ptr %i.k, align 8, !noalias !22058
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !22058
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.cb, align 8, !noalias !22058
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !22058
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i.i unwind label %bb.p, !noalias !22054

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr %i.u, align 8, !alias.scope !22048, !noalias !22051, !nonnull !4, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !22048, !noalias !22051, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22059)
  call void @llvm.experimental.noalias.scope.decl(metadata !22062)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !22065, !noalias !22053, !noundef !4
  %i.ci = load ptr, ptr %i.n, align 8, !alias.scope !22065, !noalias !22053, !nonnull !4, !align !665, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !22066, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !22065, !noalias !22053, !noundef !4
  invoke void %i.ck(ptr noundef %i.ch, ptr noundef %i.cm, i64 noundef %i.ca)
          to label %common.resume unwind label %bb.r, !noalias !22054, !inline_history !1663

bb.q:                                             ; preds = %bb.m
  %i.cn = sub nuw i64 %i.ca, %i.bm
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !22055, !noalias !22053, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !22053
  %.sroa.051.0.copyload52.i = load ptr, ptr %i.n, align 8, !noalias !22067
  %.sroa.7.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.7.0.copyload58.i = load ptr, ptr %.sroa.7.0..sroa_idx57.i, align 8, !noalias !22067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !22053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !22053
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22054
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.7.0.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.7.0.copyload58.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.ce, %bb.o ], [ %i.cn, %bb.q ]
  %.sroa.5.0.i = phi ptr [ %i.cc, %bb.o ], [ %i.cq, %bb.q ] ; 2 uses
  %.sroa.051.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.o ], [ %.sroa.051.0.copyload52.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22047
  store ptr %.sroa.5.0.i, ptr %.sroa.19, align 8, !alias.scope !22025, !noalias !22040
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !22025, !noalias !22040
  br label %bb.an

bb.s:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload49.i) ]
  %i.cs = load i64, ptr %i.ak, align 8, !alias.scope !22028, !noalias !22030, !noundef !4 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.thread114, label %bb.ad

bb.t:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !22047
  store i64 %i.an, ptr %i.t, align 8, !noalias !22047
  store ptr %.sroa.8.0.copyload49.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !22047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, i64 160, i1 false), !noalias !22047
  %i.cu = load i8, ptr %i.ab, align 8, !range !1960, !alias.scope !22028, !noalias !22030, !noundef !4
  %i.cv = load i64, ptr %1, align 8, !range !802, !alias.scope !22028, !noalias !22030, !noundef !4
  %i.cw = load i64, ptr %i.aj, align 8, !alias.scope !22028, !noalias !22030
  %i.cx = call fastcc noundef align 8 ptr @_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.aa, ptr noalias noundef align 8 dereferenceable(32) %i.ac, ptr noalias noundef align 8 dereferenceable(32) %i.ad, i8 noundef %i.cu, i64 noundef %i.cv, i64 %i.cw, i64 noundef %.val30.i, ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.t) ; 2 uses
  %.not28.i = icmp eq ptr %i.cx, null
  br i1 %.not28.i, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cy = load i64, ptr %i.ak, align 8, !alias.scope !22028, !noalias !22030, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.cy, %.val31.i
  br i1 %.not29.i, label %bb.v, label %bb.w

.loopexit:                                        ; preds = %bb.t, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i
  %.sroa.26.1 = phi i64 [ %.sroa.667.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ undef, %bb.t ]
  %.sroa.12.1 = phi ptr [ %.sroa.062.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ null, %bb.t ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ %.sroa.19, %bb.t ]
  %.sroa.770.0.sink.i = phi ptr [ %.sroa.770.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ %i.cx, %bb.t ]
  store ptr %.sroa.770.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !22025, !noalias !22040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !22047
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.an

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !22047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !22068)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !22070
  %i.cz = load ptr, ptr %i.z, align 8, !alias.scope !22071, !noalias !22039, !noundef !4
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %.loopexit97.i, label %bb.b

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !22047
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.cy), !noalias !22025
  call void @llvm.experimental.noalias.scope.decl(metadata !22072)
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !22072, !noalias !22075, !noundef !4 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.dd = and i64 %i.dc, 1
  %.not.i33.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i33.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = lshr i64 %i.dc, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !22077
  %i.df = load ptr, ptr %i.s, align 8, !alias.scope !22072, !noalias !22075, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !22072, !noalias !22075, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !22072, !noalias !22075, !noundef !4
  %i.dk = sub nsw i64 0, %i.de
  %i.dl = getelementptr inbounds i8, ptr %i.df, i64 %i.dk
  %i.dm = add i64 %i.dh, %i.de
  %i.dn = add i64 %i.dj, %i.de                    ; 2 uses
  %i.do = icmp sgt i64 %i.dn, -1
  call void @llvm.assume(i1 %i.do)
  store i64 %i.dn, ptr %i.j, align 8, !noalias !22077
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.dl, ptr %i.dp, align 8, !noalias !22077
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.dm, ptr %i.dq, align 8, !noalias !22077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !22077
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !22078
  call void @llvm.experimental.noalias.scope.decl(metadata !22079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22077
  store i64 %i.de, ptr %i.h, align 8, !noalias !22082
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !22079, !noalias !22077, !noundef !4 ; 4 uses
  %.not.i.i34.i = icmp ugt i64 %i.de, %i.ds
  br i1 %.not.i.i34.i, label %bb.y, label %bb.ab, !prof !5

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22082
  store i64 %i.ds, ptr %i.g, align 8, !noalias !22082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22082
  store ptr %i.h, ptr %i.f, align 8, !noalias !22082
  %.sroa.42.0..sroa_idx.i.i35.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i35.i, align 8, !noalias !22082
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.dt, align 8, !noalias !22082
  %.sroa.46.0..sroa_idx.i.i36.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i36.i, align 8, !noalias !22082
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i38.i unwind label %bb.aa, !noalias !22078

.noexc.i38.i:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %i.s, align 8, !alias.scope !22072, !noalias !22075, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !22072, !noalias !22075, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i

bb.aa:                                            ; preds = %bb.y
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22083)
  call void @llvm.experimental.noalias.scope.decl(metadata !22086)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !22089, !noalias !22077, !noundef !4
  %i.ea = load ptr, ptr %i.i, align 8, !alias.scope !22089, !noalias !22077, !nonnull !4, !align !665, !noundef !4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !22090, !nonnull !4, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !22089, !noalias !22077, !noundef !4
  invoke void %i.ec(ptr noundef %i.dz, ptr noundef %i.ee, i64 noundef %i.ds)
          to label %common.resume unwind label %bb.ac, !noalias !22078, !inline_history !1663

bb.ab:                                            ; preds = %bb.x
  %i.ef = sub nuw i64 %i.ds, %i.de
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !22079, !noalias !22077, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22077
  %.sroa.062.0.copyload63.i = load ptr, ptr %i.i, align 8, !noalias !22091
  %.sroa.770.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.770.0.copyload72.i = load ptr, ptr %.sroa.770.0..sroa_idx71.i, align 8, !noalias !22091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !22077
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i

bb.ac:                                            ; preds = %bb.aa
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22078
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i: ; preds = %bb.ab, %bb.z
  %.sroa.770.0.i = phi ptr [ %i.db, %bb.z ], [ %.sroa.770.0.copyload72.i, %bb.ab ]
  %.sroa.667.0.i = phi i64 [ %i.dw, %bb.z ], [ %i.ef, %bb.ab ]
  %.sroa.564.0.i = phi ptr [ %i.du, %bb.z ], [ %i.ei, %bb.ab ]
  %.sroa.062.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.z ], [ %.sroa.062.0.copyload63.i, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !22047
  store ptr %.sroa.564.0.i, ptr %.sroa.19, align 8, !alias.scope !22025, !noalias !22040
  br label %.loopexit

.thread114:                                       ; preds = %bb.s
  store ptr %.sroa.8.0.copyload49.i, ptr %.sroa.19, align 8, !alias.scope !22025, !noalias !22040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.at

bb.ad:                                            ; preds = %bb.s
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !22028, !noalias !22030, !align !665, !noundef !4 ; 2 uses
  %i.ek = icmp eq ptr %.val.i, null
  br i1 %i.ek, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i unwind label %bb.af, !noalias !22025

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i: ; preds = %bb.ae
  %.pre.i = load i64, ptr %i.ak, align 8, !alias.scope !22028, !noalias !22030
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.el = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload49.i, ptr %i.ae, align 8, !alias.scope !22028, !noalias !22030
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.ad
  %i.em = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.cs, %bb.ad ]
  store ptr %.sroa.8.0.copyload49.i, ptr %i.ae, align 8, !alias.scope !22028, !noalias !22030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !22047
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.em), !noalias !22025
  call void @llvm.experimental.noalias.scope.decl(metadata !22092)
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !22092, !noalias !22095, !noundef !4 ; 2 uses
  %i.ep = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.eq = and i64 %i.ep, 1
  %.not.i40.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i40.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.er = lshr i64 %i.ep, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22097
  %i.es = load ptr, ptr %i.r, align 8, !alias.scope !22092, !noalias !22095, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !22092, !noalias !22095, !noundef !4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !22092, !noalias !22095, !noundef !4
  %i.ex = sub nsw i64 0, %i.er
  %i.ey = getelementptr inbounds i8, ptr %i.es, i64 %i.ex
  %i.ez = add i64 %i.eu, %i.er
  %i.fa = add i64 %i.ew, %i.er                    ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, -1
  call void @llvm.assume(i1 %i.fb)
  store i64 %i.fa, ptr %i.e, align 8, !noalias !22097
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ey, ptr %i.fc, align 8, !noalias !22097
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ez, ptr %i.fd, align 8, !noalias !22097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22097
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !22098
  call void @llvm.experimental.noalias.scope.decl(metadata !22099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22097
  store i64 %i.er, ptr %i.c, align 8, !noalias !22102
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !22099, !noalias !22097, !noundef !4 ; 4 uses
  %.not.i.i41.i = icmp ugt i64 %i.er, %i.ff
  br i1 %.not.i.i41.i, label %bb.ah, label %bb.ak, !prof !5

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22102
  store i64 %i.ff, ptr %i.b, align 8, !noalias !22102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22102
  store ptr %i.c, ptr %i.a, align 8, !noalias !22102
  %.sroa.42.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i42.i, align 8, !noalias !22102
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.fg, align 8, !noalias !22102
  %.sroa.46.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i43.i, align 8, !noalias !22102
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i45.i unwind label %bb.aj, !noalias !22098

.noexc.i45.i:                                     ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.fh = load ptr, ptr %i.r, align 8, !alias.scope !22092, !noalias !22095, !nonnull !4, !noundef !4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !22092, !noalias !22095, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i

bb.aj:                                            ; preds = %bb.ah
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22103)
  call void @llvm.experimental.noalias.scope.decl(metadata !22106)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !22109, !noalias !22097, !noundef !4
  %i.fn = load ptr, ptr %i.d, align 8, !alias.scope !22109, !noalias !22097, !nonnull !4, !align !665, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !22110, !nonnull !4, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !22109, !noalias !22097, !noundef !4
  invoke void %i.fp(ptr noundef %i.fm, ptr noundef %i.fr, i64 noundef %i.ff)
          to label %common.resume unwind label %bb.al, !noalias !22098, !inline_history !1663

bb.ak:                                            ; preds = %bb.ag
  %i.fs = sub nuw i64 %i.ff, %i.er
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !22099, !noalias !22097, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22097
  %.sroa.077.0.copyload78.i = load ptr, ptr %i.d, align 8, !noalias !22111
  %.sroa.785.0..sroa_idx86.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.785.0.copyload87.i = load ptr, ptr %.sroa.785.0..sroa_idx86.i, align 8, !noalias !22111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22097
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i

bb.al:                                            ; preds = %bb.aj
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22098
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i: ; preds = %bb.ak, %bb.ai
  %.sroa.785.0.i = phi ptr [ %i.eo, %bb.ai ], [ %.sroa.785.0.copyload87.i, %bb.ak ]
  %.sroa.682.0.i = phi i64 [ %i.fj, %bb.ai ], [ %i.fs, %bb.ak ]
  %.sroa.579.0.i = phi ptr [ %i.fh, %bb.ai ], [ %i.fv, %bb.ak ] ; 2 uses
  %.sroa.077.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.ai ], [ %.sroa.077.0.copyload78.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !22047
  store ptr %.sroa.579.0.i, ptr %.sroa.19, align 8, !alias.scope !22025, !noalias !22040
  store ptr %.sroa.785.0.i, ptr %.sroa.30, align 8, !alias.scope !22025, !noalias !22040
  br label %bb.an

bb.am:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.bc

bb.an:                                            ; preds = %.loopexit, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108 = phi ptr [ %.sroa.579.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %.loopexit ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.682.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %.loopexit ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.077.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.051.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.fx = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.fx, label %bb.at, label %bb.au

bb.ao:                                            ; preds = %.loopexit97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
  %i.fy = load i64, ptr %i.v, align 8, !range !3841, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.fy, -2
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.fz = icmp eq i64 %i.fy, -1
  br i1 %i.fz, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ar, %bb.as, %bb.ao
  %.sroa.017.0 = phi i64 [ -3, %bb.ao ], [ -2, %bb.ar ], [ %i.fy, %bb.as ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.ao ], [ %.sroa.563.0.copyload, %bb.ar ], [ %.sroa.563.0.copyload, %bb.as ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.bc

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.aq

bb.as:                                            ; preds = %bb.ap
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.aq

bb.at:                                            ; preds = %.thread114, %.thread110, %bb.an
  %i.ga = phi ptr [ %i.ag, %.thread110 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, %bb.an ], [ %.sroa.8.0.copyload49.i, %.thread114 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  store ptr %i.ga, ptr %i.x, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.gc = load i8, ptr %i.gb, align 8, !range !3, !noundef !4
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.an
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.ge, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.az unwind label %bb.ay

bb.aw:                                            ; preds = %bb.at
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ga, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bb, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bc

bb.ay:                                            ; preds = %bb.av
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ga) #32
          to label %common.resume unwind label %bb.bd

bb.az:                                            ; preds = %bb.av
  %i.gg = load i64, ptr %i.w, align 8, !range !1319, !noundef !4 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, -1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  br i1 %i.gh, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gj, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.gg, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gj, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ga)
  br label %bb.ax

bb.bc:                                            ; preds = %bb.aq, %bb.au, %bb.ax, %bb.am, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.bd:                                            ; preds = %bb.ay
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(312) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.19 = alloca ptr, align 8                 ; 9 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22115)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 5 uses
  %.val30.i = load i64, ptr %i.aa, align 8, !alias.scope !22115, !noalias !22117, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val31.i = load i64, ptr %i.af, align 8, !alias.scope !22115, !noalias !22117, !noundef !4
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !22115, !noalias !22117, !align !665, !noundef !4 ; 3 uses
  store ptr null, ptr %i.ae, align 8, !alias.scope !22115, !noalias !22117
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.preheader.i, label %.thread110

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !22122
  %i.ah = load i64, ptr %i.z, align 8, !range !902, !alias.scope !22125, !noalias !22126, !noundef !4
  %.not.i104.i = icmp eq i64 %i.ah, -3
  br i1 %.not.i104.i, label %.loopexit97.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  br label %bb.b

.thread110:                                       ; preds = %bb.a
  store ptr %i.ag, ptr %.sroa.19, align 8, !alias.scope !22112, !noalias !22127
  br label %bb.ap

bb.b:                                             ; preds = %bb.r, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !22130
  call void @_RNvXs_NtCskbjA1QblxuK_12tokio_stream4onceINtB4_4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !22131
  %i.al = load i64, ptr %i.p, align 8, !range !902, !noalias !22130, !noundef !4
  %i.am = icmp eq i64 %i.al, -3
  br i1 %i.am, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22130
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false), !noalias !22130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22130
  %i.an = load i64, ptr %i.q, align 8, !noalias !22132 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.an, -2
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

.body.i.i:                                        ; preds = %bb.f, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.z, align 8, !alias.scope !22133, !noalias !22134
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(176) %i.q) #32
          to label %common.resume unwind label %bb.g, !noalias !22131

bb.d:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %i.z, align 8, !range !902, !alias.scope !22137, !noalias !22134, !noundef !4
  switch i64 %i.ap, label %bb.e [
    i64 -3, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i
    i64 -2, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i
    i64 -1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.z)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i unwind label %.body.i.i, !noalias !22131

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !22140, !noalias !22134, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i.i.i.i.i.i.i.i.i)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i unwind label %.body.i.i, !noalias !22131

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  store i64 -3, ptr %i.z, align 8, !alias.scope !22133, !noalias !22134
  br label %.loopexit97.i

bb.g:                                             ; preds = %.body.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22131
  unreachable

common.resume:                                    ; preds = %bb.au, %.body.i.i, %bb.l, %bb.w, %bb.ab, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.ez, %bb.af ], [ %i.dm, %bb.w ], [ %i.ao, %.body.i.i ], [ %i.bu, %bb.l ], [ %i.ea, %bb.ab ], [ %i.fu, %bb.au ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload49.i = load ptr, ptr %.sroa.8.0..sroa_idx48.i, align 8, !noalias !22132 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx50.i, i64 160, i1 false), !noalias !22132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22130
  switch i64 %i.an, label %bb.p [
    i64 -3, label %.loopexit.i
    i64 -1, label %bb.o
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.ar = load i64, ptr %i.ak, align 8, !alias.scope !22115, !noalias !22117, !noundef !4 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.ai, label %bb.h

.loopexit97.i:                                    ; preds = %bb.r, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22130
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !22115, !noalias !22117, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %.loopexit97.i, %.loopexit.i
  %i.aw = phi i64 [ %i.ar, %.loopexit.i ], [ %i.au, %.loopexit97.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !22153
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.aw), !noalias !22112
  call void @llvm.experimental.noalias.scope.decl(metadata !22154)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !22154, !noalias !22157, !noundef !4 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = and i64 %i.az, 1
  %.not.i32.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i32.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = lshr i64 %i.az, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !22159
  %i.bc = load ptr, ptr %i.u, align 8, !alias.scope !22154, !noalias !22157, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !22154, !noalias !22157, !noundef !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !22154, !noalias !22157, !noundef !4
  %i.bh = sub nsw i64 0, %i.bb
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %i.bh
  %i.bj = add i64 %i.be, %i.bb
  %i.bk = add i64 %i.bg, %i.bb                    ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  call void @llvm.assume(i1 %i.bl)
  store i64 %i.bk, ptr %i.o, align 8, !noalias !22159
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bi, ptr %i.bm, align 8, !noalias !22159
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.bj, ptr %i.bn, align 8, !noalias !22159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !22159
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !22160
  call void @llvm.experimental.noalias.scope.decl(metadata !22161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !22159
  store i64 %i.bb, ptr %i.m, align 8, !noalias !22164
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !22161, !noalias !22159, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.bb, %i.bp
  br i1 %.not.i.i.i, label %bb.j, label %bb.m, !prof !5

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !22164
  store i64 %i.bp, ptr %i.l, align 8, !noalias !22164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !22164
  store ptr %i.m, ptr %i.k, align 8, !noalias !22164
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !22164
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.bq, align 8, !noalias !22164
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !22164
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i.i unwind label %bb.l, !noalias !22160

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %i.u, align 8, !alias.scope !22154, !noalias !22157, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !22154, !noalias !22157, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22165)
  call void @llvm.experimental.noalias.scope.decl(metadata !22168)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !22171, !noalias !22159, !noundef !4
  %i.bx = load ptr, ptr %i.n, align 8, !alias.scope !22171, !noalias !22159, !nonnull !4, !align !665, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !22172, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !22171, !noalias !22159, !noundef !4
  invoke void %i.bz(ptr noundef %i.bw, ptr noundef %i.cb, i64 noundef %i.bp)
          to label %common.resume unwind label %bb.n, !noalias !22160, !inline_history !1663

bb.m:                                             ; preds = %bb.i
  %i.cc = sub nuw i64 %i.bp, %i.bb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !22161, !noalias !22159, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !22159
  %.sroa.051.0.copyload52.i = load ptr, ptr %i.n, align 8, !noalias !22173
  %.sroa.7.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.7.0.copyload58.i = load ptr, ptr %.sroa.7.0..sroa_idx57.i, align 8, !noalias !22173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !22159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !22159
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22160
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.m, %bb.k
  %.sroa.7.0.i = phi ptr [ %i.ay, %bb.k ], [ %.sroa.7.0.copyload58.i, %bb.m ]
  %.sroa.6.0.i = phi i64 [ %i.bt, %bb.k ], [ %i.cc, %bb.m ]
  %.sroa.5.0.i = phi ptr [ %i.br, %bb.k ], [ %i.cf, %bb.m ] ; 2 uses
  %.sroa.051.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.k ], [ %.sroa.051.0.copyload52.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22153
  store ptr %.sroa.5.0.i, ptr %.sroa.19, align 8, !alias.scope !22112, !noalias !22127
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !22112, !noalias !22127
  br label %bb.aj

bb.o:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload49.i) ]
  %i.ch = load i64, ptr %i.ak, align 8, !alias.scope !22115, !noalias !22117, !noundef !4 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.thread114, label %bb.z

bb.p:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !22153
  store i64 %i.an, ptr %i.t, align 8, !noalias !22153
  store ptr %.sroa.8.0.copyload49.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !22153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, i64 160, i1 false), !noalias !22153
  %i.cj = load i8, ptr %i.ab, align 8, !range !1960, !alias.scope !22115, !noalias !22117, !noundef !4
  %i.ck = load i64, ptr %1, align 8, !range !802, !alias.scope !22115, !noalias !22117, !noundef !4
  %i.cl = load i64, ptr %i.aj, align 8, !alias.scope !22115, !noalias !22117
  %i.cm = call fastcc noundef align 8 ptr @_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(16) %i.aa, ptr noalias noundef align 8 dereferenceable(32) %i.ac, ptr noalias noundef align 8 dereferenceable(32) %i.ad, i8 noundef %i.cj, i64 noundef %i.ck, i64 %i.cl, i64 noundef %.val30.i, ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.t) ; 2 uses
  %.not28.i = icmp eq ptr %i.cm, null
  br i1 %.not28.i, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cn = load i64, ptr %i.ak, align 8, !alias.scope !22115, !noalias !22117, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.cn, %.val31.i
  br i1 %.not29.i, label %bb.r, label %bb.s

.loopexit:                                        ; preds = %bb.p, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i
  %.sroa.26.1 = phi i64 [ %.sroa.667.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ undef, %bb.p ]
  %.sroa.12.1 = phi ptr [ %.sroa.062.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ null, %bb.p ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ %.sroa.19, %bb.p ]
  %.sroa.770.0.sink.i = phi ptr [ %.sroa.770.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i ], [ %i.cm, %bb.p ]
  store ptr %.sroa.770.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !22112, !noalias !22127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !22153
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.aj

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !22153
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !22174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !22176
  %i.co = load i64, ptr %i.z, align 8, !range !902, !alias.scope !22177, !noalias !22126, !noundef !4
  %.not.i.i = icmp eq i64 %i.co, -3
  br i1 %.not.i.i, label %.loopexit97.i, label %bb.b

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !22153
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.cn), !noalias !22112
  call void @llvm.experimental.noalias.scope.decl(metadata !22178)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !22178, !noalias !22181, !noundef !4 ; 2 uses
  %i.cr = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cs = and i64 %i.cr, 1
  %.not.i33.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i33.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = lshr i64 %i.cr, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !22183
  %i.cu = load ptr, ptr %i.s, align 8, !alias.scope !22178, !noalias !22181, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !22178, !noalias !22181, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !22178, !noalias !22181, !noundef !4
  %i.cz = sub nsw i64 0, %i.ct
  %i.da = getelementptr inbounds i8, ptr %i.cu, i64 %i.cz
  %i.db = add i64 %i.cw, %i.ct
  %i.dc = add i64 %i.cy, %i.ct                    ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  store i64 %i.dc, ptr %i.j, align 8, !noalias !22183
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.da, ptr %i.de, align 8, !noalias !22183
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.db, ptr %i.df, align 8, !noalias !22183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !22183
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !22184
  call void @llvm.experimental.noalias.scope.decl(metadata !22185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22183
  store i64 %i.ct, ptr %i.h, align 8, !noalias !22188
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !22185, !noalias !22183, !noundef !4 ; 4 uses
  %.not.i.i34.i = icmp ugt i64 %i.ct, %i.dh
  br i1 %.not.i.i34.i, label %bb.u, label %bb.x, !prof !5

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22188
  store i64 %i.dh, ptr %i.g, align 8, !noalias !22188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22188
  store ptr %i.h, ptr %i.f, align 8, !noalias !22188
  %.sroa.42.0..sroa_idx.i.i35.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i35.i, align 8, !noalias !22188
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.di, align 8, !noalias !22188
  %.sroa.46.0..sroa_idx.i.i36.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i36.i, align 8, !noalias !22188
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i38.i unwind label %bb.w, !noalias !22184

.noexc.i38.i:                                     ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.dj = load ptr, ptr %i.s, align 8, !alias.scope !22178, !noalias !22181, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !22178, !noalias !22181, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i

bb.w:                                             ; preds = %bb.u
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22189)
  call void @llvm.experimental.noalias.scope.decl(metadata !22192)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !22195, !noalias !22183, !noundef !4
  %i.dp = load ptr, ptr %i.i, align 8, !alias.scope !22195, !noalias !22183, !nonnull !4, !align !665, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !22196, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !22195, !noalias !22183, !noundef !4
  invoke void %i.dr(ptr noundef %i.do, ptr noundef %i.dt, i64 noundef %i.dh)
          to label %common.resume unwind label %bb.y, !noalias !22184, !inline_history !1663

bb.x:                                             ; preds = %bb.t
  %i.du = sub nuw i64 %i.dh, %i.ct
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !22185, !noalias !22183, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22183
  %.sroa.062.0.copyload63.i = load ptr, ptr %i.i, align 8, !noalias !22197
  %.sroa.770.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.770.0.copyload72.i = load ptr, ptr %.sroa.770.0..sroa_idx71.i, align 8, !noalias !22197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !22183
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i

bb.y:                                             ; preds = %bb.w
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22184
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit39.i: ; preds = %bb.x, %bb.v
  %.sroa.770.0.i = phi ptr [ %i.cq, %bb.v ], [ %.sroa.770.0.copyload72.i, %bb.x ]
  %.sroa.667.0.i = phi i64 [ %i.dl, %bb.v ], [ %i.du, %bb.x ]
  %.sroa.564.0.i = phi ptr [ %i.dj, %bb.v ], [ %i.dx, %bb.x ]
  %.sroa.062.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.v ], [ %.sroa.062.0.copyload63.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !22153
  store ptr %.sroa.564.0.i, ptr %.sroa.19, align 8, !alias.scope !22112, !noalias !22127
  br label %.loopexit

.thread114:                                       ; preds = %bb.o
  store ptr %.sroa.8.0.copyload49.i, ptr %.sroa.19, align 8, !alias.scope !22112, !noalias !22127
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.ap

bb.z:                                             ; preds = %bb.o
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !22115, !noalias !22117, !align !665, !noundef !4 ; 2 uses
  %i.dz = icmp eq ptr %.val.i, null
  br i1 %i.dz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i unwind label %bb.ab, !noalias !22112

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i: ; preds = %bb.aa
  %.pre.i = load i64, ptr %i.ak, align 8, !alias.scope !22115, !noalias !22117
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ea = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload49.i, ptr %i.ae, align 8, !alias.scope !22115, !noalias !22117
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.z
  %i.eb = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.ch, %bb.z ]
  store ptr %.sroa.8.0.copyload49.i, ptr %i.ae, align 8, !alias.scope !22115, !noalias !22117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !22153
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.eb), !noalias !22112
  call void @llvm.experimental.noalias.scope.decl(metadata !22198)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !22198, !noalias !22201, !noundef !4 ; 2 uses
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = and i64 %i.ee, 1
  %.not.i40.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i40.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.eg = lshr i64 %i.ee, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22203
  %i.eh = load ptr, ptr %i.r, align 8, !alias.scope !22198, !noalias !22201, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !22198, !noalias !22201, !noundef !4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !22198, !noalias !22201, !noundef !4
  %i.em = sub nsw i64 0, %i.eg
  %i.en = getelementptr inbounds i8, ptr %i.eh, i64 %i.em
  %i.eo = add i64 %i.ej, %i.eg
  %i.ep = add i64 %i.el, %i.eg                    ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  call void @llvm.assume(i1 %i.eq)
  store i64 %i.ep, ptr %i.e, align 8, !noalias !22203
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.en, ptr %i.er, align 8, !noalias !22203
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.eo, ptr %i.es, align 8, !noalias !22203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22203
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !22204
  call void @llvm.experimental.noalias.scope.decl(metadata !22205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22203
  store i64 %i.eg, ptr %i.c, align 8, !noalias !22208
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !22205, !noalias !22203, !noundef !4 ; 4 uses
  %.not.i.i41.i = icmp ugt i64 %i.eg, %i.eu
  br i1 %.not.i.i41.i, label %bb.ad, label %bb.ag, !prof !5

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22208
  store i64 %i.eu, ptr %i.b, align 8, !noalias !22208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22208
  store ptr %i.c, ptr %i.a, align 8, !noalias !22208
  %.sroa.42.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i42.i, align 8, !noalias !22208
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ev, align 8, !noalias !22208
  %.sroa.46.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i43.i, align 8, !noalias !22208
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i45.i unwind label %bb.af, !noalias !22204

.noexc.i45.i:                                     ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ew = load ptr, ptr %i.r, align 8, !alias.scope !22198, !noalias !22201, !nonnull !4, !noundef !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !22198, !noalias !22201, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i

bb.af:                                            ; preds = %bb.ad
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22209)
  call void @llvm.experimental.noalias.scope.decl(metadata !22212)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !22215, !noalias !22203, !noundef !4
  %i.fc = load ptr, ptr %i.d, align 8, !alias.scope !22215, !noalias !22203, !nonnull !4, !align !665, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !22216, !nonnull !4, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !22215, !noalias !22203, !noundef !4
  invoke void %i.fe(ptr noundef %i.fb, ptr noundef %i.fg, i64 noundef %i.eu)
          to label %common.resume unwind label %bb.ah, !noalias !22204, !inline_history !1663

bb.ag:                                            ; preds = %bb.ac
  %i.fh = sub nuw i64 %i.eu, %i.eg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !22205, !noalias !22203, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22203
  %.sroa.077.0.copyload78.i = load ptr, ptr %i.d, align 8, !noalias !22217
  %.sroa.785.0..sroa_idx86.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.785.0.copyload87.i = load ptr, ptr %.sroa.785.0..sroa_idx86.i, align 8, !noalias !22217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22203
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i

bb.ah:                                            ; preds = %bb.af
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22204
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i: ; preds = %bb.ag, %bb.ae
  %.sroa.785.0.i = phi ptr [ %i.ed, %bb.ae ], [ %.sroa.785.0.copyload87.i, %bb.ag ]
  %.sroa.682.0.i = phi i64 [ %i.ey, %bb.ae ], [ %i.fh, %bb.ag ]
  %.sroa.579.0.i = phi ptr [ %i.ew, %bb.ae ], [ %i.fk, %bb.ag ] ; 2 uses
  %.sroa.077.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.ae ], [ %.sroa.077.0.copyload78.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !22153
  store ptr %.sroa.579.0.i, ptr %.sroa.19, align 8, !alias.scope !22112, !noalias !22127
  store ptr %.sroa.785.0.i, ptr %.sroa.30, align 8, !alias.scope !22112, !noalias !22127
  br label %bb.aj

bb.ai:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.ay

bb.aj:                                            ; preds = %.loopexit, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108 = phi ptr [ %.sroa.579.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %.loopexit ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.682.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %.loopexit ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.077.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.051.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.fm = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.fm, label %bb.ap, label %bb.aq

bb.ak:                                            ; preds = %.loopexit97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
  %i.fn = load i64, ptr %i.v, align 8, !range !3841, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.fn, -2
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.fo = icmp eq i64 %i.fn, -1
  br i1 %i.fo, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.an, %bb.ao, %bb.ak
  %.sroa.017.0 = phi i64 [ -3, %bb.ak ], [ -2, %bb.an ], [ %i.fn, %bb.ao ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.ak ], [ %.sroa.563.0.copyload, %bb.an ], [ %.sroa.563.0.copyload, %bb.ao ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.ay

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.am

bb.ap:                                            ; preds = %.thread114, %.thread110, %bb.aj
  %i.fp = phi ptr [ %i.ag, %.thread110 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, %bb.aj ], [ %.sroa.8.0.copyload49.i, %.thread114 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  store ptr %i.fp, ptr %i.x, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fr = load i8, ptr %i.fq, align 8, !range !3, !noundef !4
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.aj
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.ay

bb.ar:                                            ; preds = %bb.ap
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 305
  store i8 1, ptr %i.ft, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.av unwind label %bb.au

bb.as:                                            ; preds = %bb.ap
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fp, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.ax, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ay

bb.au:                                            ; preds = %bb.ar
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.fp) #32
          to label %common.resume unwind label %bb.az

bb.av:                                            ; preds = %bb.ar
  %i.fv = load i64, ptr %i.w, align 8, !range !1319, !noundef !4 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, -1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  br i1 %i.fw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fy, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.fp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.fv, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fy, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.fp)
  br label %bb.at

bb.ay:                                            ; preds = %bb.am, %bb.aq, %bb.at, %bb.ai, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.az:                                            ; preds = %bb.au
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(176) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [40 x i8], align 8               ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 11 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.ai = alloca [96 x i8], align 8               ; 4 uses
  %i.aj = alloca [96 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22218)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %.val29.i = load i64, ptr %i.an, align 8, !alias.scope !22218, !noalias !22221, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val30.i = load i64, ptr %i.as, align 8, !alias.scope !22218, !noalias !22221, !noundef !4
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !22218, !noalias !22221, !align !665, !noundef !4 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !alias.scope !22218, !noalias !22221
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %.thread105

.preheader.i:                                     ; preds = %bb.a
  %.sroa.7.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.10.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx118.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.762.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.965.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.762.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.965.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.11.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.as, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !22227
  %i.ay = load i64, ptr %i.am, align 8, !range !811, !alias.scope !22230, !noalias !22231, !noundef !4
  %.not.i.i = icmp eq i64 %i.ay, 2
  br i1 %.not.i.i, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !22227
  call void @_RNvXs_NtCskbjA1QblxuK_12tokio_stream4onceINtB4_4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !22232
  %i.az = load i64, ptr %i.ad, align 8, !range !811, !noalias !22227, !noundef !4
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !22227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !22227
  %i.bb = load i64, ptr %i.ae, align 8, !range !802, !noalias !22227, !noundef !4
  %.not4.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not4.i.i, label %bb.e, label %bb.l

.body.i.i:                                        ; preds = %bb.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.am, align 8, !alias.scope !22230, !noalias !22233
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %i.ae) #32
          to label %common.resume unwind label %bb.j, !noalias !22232

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !22236)
  %i.bd = load i64, ptr %i.am, align 8, !range !811, !alias.scope !22239, !noalias !22233, !noundef !4 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2
  br i1 %i.be, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !22240), !noalias !22243
  call void @llvm.experimental.noalias.scope.decl(metadata !22244), !noalias !22243
  call void @llvm.experimental.noalias.scope.decl(metadata !22247), !noalias !22243
  call void @llvm.experimental.noalias.scope.decl(metadata !22250), !noalias !22243
  call void @llvm.experimental.noalias.scope.decl(metadata !22253), !noalias !22243
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !22256), !noalias !22243
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !22259, !noalias !22233, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !22260), !noalias !22243
  call void @llvm.experimental.noalias.scope.decl(metadata !22263), !noalias !22243
  call void @llvm.experimental.noalias.scope.decl(metadata !22266), !noalias !22243
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !22269, !noalias !22233, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !22270, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !22269, !noalias !22233, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !22269, !noalias !22233, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2B_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2B_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !22578, !noalias !22566, !noundef !4
  invoke void %i.hi(ptr noundef %i.hf, ptr noundef %i.hk, i64 noundef %i.gy)
          to label %common.resume unwind label %bb.bk, !noalias !22567, !inline_history !1663

bb.bj:                                            ; preds = %bb.bf
  %i.hl = sub nuw i64 %i.gy, %i.gk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !22568, !noalias !22566, !noundef !4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22566
  %.sroa.085.0.copyload86.i = load ptr, ptr %i.d, align 8, !noalias !22580
  %.sroa.793.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.793.0.copyload95.i = load ptr, ptr %.sroa.793.0..sroa_idx94.i, align 8, !noalias !22580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22566
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bk:                                            ; preds = %bb.bi
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22567
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i: ; preds = %bb.bj, %bb.bh
  %.sroa.793.0.i = phi ptr [ %i.gh, %bb.bh ], [ %.sroa.793.0.copyload95.i, %bb.bj ]
  %.sroa.690.0.i = phi i64 [ %i.hc, %bb.bh ], [ %i.hl, %bb.bj ]
  %.sroa.587.0.i = phi ptr [ %i.ha, %bb.bh ], [ %i.ho, %bb.bj ]
  %.sroa.085.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bh ], [ %.sroa.085.0.copyload86.i, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !22489
  br label %bb.bl

_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2C_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2C_6marker4SendEL_EEEB3C_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.m
  store i64 3, ptr %0, align 8
  br label %bb.bz

bb.bl:                                            ; preds = %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i
  %.sroa.30.0.ph.ph = phi ptr [ %.sroa.778.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.754.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.793.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.675.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.690.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.19.0.ph.ph = phi ptr [ %.sroa.572.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.587.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.070.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.048.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.085.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %i.hq = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hq, label %.thread105, label %bb.br

bb.bm:                                            ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.hr = load i64, ptr %i.ai, align 8, !range !3841, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.hr, -2
  br i1 %.not, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bp, %bb.bq, %bb.bm
  %.sroa.017.0 = phi i64 [ -3, %bb.bm ], [ -2, %bb.bp ], [ %i.hr, %bb.bq ]
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
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bo

.thread105:                                       ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.an, %bb.ae, %bb.v, %bb.a, %bb.bl
  %.sroa.19.0.ph.ph110 = phi ptr [ %.sroa.19.0.ph.ph, %bb.bl ], [ %i.ej, %bb.an ], [ %i.ee, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.dy, %bb.ae ], [ %i.at, %bb.a ], [ %.sroa.9.0.copyload115.i, %bb.v ], [ %i.er, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0.ph.ph110) ]
  store ptr %.sroa.19.0.ph.ph110, ptr %i.ak, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.hu = load i8, ptr %i.ht, align 8, !range !3, !noundef !4
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.bs, label %bb.bt

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

bb.bs:                                            ; preds = %.thread105
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.hw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.bw unwind label %bb.bv

bb.bt:                                            ; preds = %.thread105
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0.ph.ph110, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.by, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bs
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110) #32
          to label %common.resume unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  %i.hy = load i64, ptr %i.aj, align 8, !range !1319, !noundef !4 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, -1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  br i1 %i.hz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 %i.hy, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  br label %bb.bu

bb.bz:                                            ; preds = %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2C_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2C_6marker4SendEL_EEEB3C_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.bx, %bb.bo, %bb.br, %bb.bu
  ret void

bb.ca:                                            ; preds = %bb.bv
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(416) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [280 x i8], align 8               ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [280 x i8], align 8               ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [280 x i8], align 8              ; 6 uses
  %i.ae = alloca [280 x i8], align 8              ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [280 x i8], align 8              ; 9 uses
  %i.ai = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.9.i = alloca [264 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.aj = alloca [96 x i8], align 8               ; 4 uses
  %i.ak = alloca [96 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.19 = alloca ptr, align 8                 ; 12 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 400
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22584)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 5 uses
  %.val30.i = load i64, ptr %i.ao, align 8, !alias.scope !22584, !noalias !22586, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.val31.i = load i64, ptr %i.at, align 8, !alias.scope !22584, !noalias !22586, !noundef !4
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !22584, !noalias !22586, !align !665, !noundef !4 ; 3 uses
  store ptr null, ptr %i.as, align 8, !alias.scope !22584, !noalias !22586
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %.thread110

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !22591
  %i.av = load i64, ptr %i.an, align 8, !range !3841, !alias.scope !22594, !noalias !22595, !noundef !4
  %.not.i131.i = icmp eq i64 %i.av, -2
  br i1 %.not.i131.i, label %.loopexit102.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %.sroa.8.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  br label %bb.b

.thread110:                                       ; preds = %bb.a
  store ptr %i.au, ptr %.sroa.19, align 8, !alias.scope !22581, !noalias !22596
  br label %bb.bq

bb.b:                                             ; preds = %bb.as, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22597)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !22599
  call void @_RNvXs_NtCskbjA1QblxuK_12tokio_stream4onceINtB4_4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !22600
  %i.bd = load i64, ptr %i.ad, align 8, !range !3841, !noalias !22599, !noundef !4
  %i.be = icmp eq i64 %i.bd, -2
  br i1 %i.be, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !22599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !22599
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ae, ptr noundef nonnull align 8 dereferenceable(280) %i.ad, i64 280, i1 false), !noalias !22599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !22599
  %i.bf = load i64, ptr %i.ae, align 8, !noalias !22601 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.bf, -1
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

.body.i.i:                                        ; preds = %bb.j, %bb.g
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %i.bl, %bb.j ], [ %i.bj, %bb.g ]
  store i64 -2, ptr %i.an, align 8, !alias.scope !22602, !noalias !22603
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(280) %i.ae) #32
          to label %common.resume unwind label %bb.k, !noalias !22600

bb.d:                                             ; preds = %bb.c
  %i.bg = load i64, ptr %i.an, align 8, !range !3841, !alias.scope !22606, !noalias !22603, !noundef !4
  switch i64 %i.bg, label %bb.e [
    i64 -2, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread185.i
    i64 -1, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread185.i
    i64 2, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %i.ax, align 8, !range !868, !alias.scope !22609, !noalias !22603, !noundef !4
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !22626

bb.g:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsekDO8Mha3LU_12arrow_flight3gen16FlightDescriptorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(64) %i.ay) #32
          to label %.body.i.i unwind label %bb.h, !noalias !22626

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22626
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsekDO8Mha3LU_12arrow_flight3gen16FlightDescriptorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(64) %i.ay)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread185.i unwind label %bb.j, !noalias !22600

bb.i:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !22627, !noalias !22603, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i.i.i.i.i.i.i.i.i)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread185.i unwind label %bb.j, !noalias !22600

bb.j:                                             ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread185.i: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i, %bb.d, %bb.d
  store i64 -2, ptr %i.an, align 8, !alias.scope !22602, !noalias !22603
  br label %.loopexit102.i

bb.k:                                             ; preds = %.body.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22600
  unreachable

common.resume:                                    ; preds = %bb.bv, %.body.i.i, %bb.p, %bb.aa, %bb.af, %bb.aj, %bb.ap, %bb.ax, %bb.bc, %bb.bg
  %common.resume.op = phi { ptr, i32 } [ %i.gy, %bb.bg ], [ %i.fl, %bb.ax ], [ %eh.lpad-body6.i.i, %.body.i.i ], [ %i.cq, %bb.p ], [ %i.dt, %bb.aa ], [ %i.fz, %bb.bc ], [ %i.ee, %bb.aj ], [ %lpad.phi.i, %bb.ap ], [ %i.dz, %bb.af ], [ %i.ht, %bb.bv ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload51.i = load ptr, ptr %.sroa.8.0..sroa_idx50.i, align 8, !noalias !22601 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.0..sroa_idx52.i, i64 264, i1 false), !noalias !22601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !22599
  switch i64 %i.bf, label %bb.t [
    i64 -2, label %.loopexit.i
    i64 2, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.bn = load i64, ptr %i.ba, align 8, !alias.scope !22584, !noalias !22586, !noundef !4 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.bj, label %bb.l

.loopexit102.i:                                   ; preds = %bb.as, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread185.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !22599
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !22584, !noalias !22586, !noundef !4 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.bl, label %bb.l

bb.l:                                             ; preds = %.loopexit102.i, %.loopexit.i
  %i.bs = phi i64 [ %i.bn, %.loopexit.i ], [ %i.bq, %.loopexit102.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !22628
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.bs), !noalias !22581
  call void @llvm.experimental.noalias.scope.decl(metadata !22629)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !22629, !noalias !22632, !noundef !4 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bw = and i64 %i.bv, 1
  %.not.i32.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i32.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = lshr i64 %i.bv, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !22634
  %i.by = load ptr, ptr %i.ai, align 8, !alias.scope !22629, !noalias !22632, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !22629, !noalias !22632, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !22629, !noalias !22632, !noundef !4
  %i.cd = sub nsw i64 0, %i.bx
  %i.ce = getelementptr inbounds i8, ptr %i.by, i64 %i.cd
  %i.cf = add i64 %i.ca, %i.bx
  %i.cg = add i64 %i.cc, %i.bx                    ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  call void @llvm.assume(i1 %i.ch)
  store i64 %i.cg, ptr %i.ac, align 8, !noalias !22634
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ce, ptr %i.ci, align 8, !noalias !22634
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.cf, ptr %i.cj, align 8, !noalias !22634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !22634
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac), !noalias !22635
  call void @llvm.experimental.noalias.scope.decl(metadata !22636)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !22634
  store i64 %i.bx, ptr %i.aa, align 8, !noalias !22639
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !22636, !noalias !22634, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.bx, %i.cl
  br i1 %.not.i.i.i, label %bb.n, label %bb.q, !prof !5

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !22639
  store i64 %i.cl, ptr %i.z, align 8, !noalias !22639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !22639
  store ptr %i.aa, ptr %i.y, align 8, !noalias !22639
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !22639
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.cm, align 8, !noalias !22639
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !22639
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i.i unwind label %bb.p, !noalias !22635

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %i.ai, align 8, !alias.scope !22629, !noalias !22632, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !22629, !noalias !22632, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22640)
  call void @llvm.experimental.noalias.scope.decl(metadata !22643)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !22646, !noalias !22634, !noundef !4
  %i.ct = load ptr, ptr %i.ab, align 8, !alias.scope !22646, !noalias !22634, !nonnull !4, !align !665, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !22647, !nonnull !4, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !22646, !noalias !22634, !noundef !4
  invoke void %i.cv(ptr noundef %i.cs, ptr noundef %i.cx, i64 noundef %i.cl)
          to label %common.resume unwind label %bb.r, !noalias !22635, !inline_history !1663

bb.q:                                             ; preds = %bb.m
  %i.cy = sub nuw i64 %i.cl, %i.bx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !22636, !noalias !22634, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !22634
  %.sroa.053.0.copyload54.i = load ptr, ptr %i.ab, align 8, !noalias !22648
  %.sroa.7.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.7.0.copyload60.i = load ptr, ptr %.sroa.7.0..sroa_idx59.i, align 8, !noalias !22648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !22634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !22634
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.r:                                             ; preds = %bb.p
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22635
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.7.0.i = phi ptr [ %i.bu, %bb.o ], [ %.sroa.7.0.copyload60.i, %bb.q ]
  %.sroa.6.0.i = phi i64 [ %i.cp, %bb.o ], [ %i.cy, %bb.q ]
  %.sroa.5.0.i = phi ptr [ %i.cn, %bb.o ], [ %i.db, %bb.q ] ; 2 uses
  %.sroa.053.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.o ], [ %.sroa.053.0.copyload54.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !22628
  store ptr %.sroa.5.0.i, ptr %.sroa.19, align 8, !alias.scope !22581, !noalias !22596
  store ptr %.sroa.7.0.i, ptr %.sroa.30, align 8, !alias.scope !22581, !noalias !22596
  br label %bb.bk

bb.s:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload51.i) ]
  %i.dd = load i64, ptr %i.ba, align 8, !alias.scope !22584, !noalias !22586, !noundef !4 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.thread114, label %bb.ba

bb.t:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !22628
  store i64 %i.bf, ptr %i.ah, align 8, !noalias !22628
  store ptr %.sroa.8.0.copyload51.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !22628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.i, i64 264, i1 false), !noalias !22628
  %i.df = load i8, ptr %i.ap, align 8, !range !1960, !alias.scope !22584, !noalias !22586, !noundef !4 ; 3 uses
  %i.dg = load i64, ptr %1, align 8, !range !802, !alias.scope !22584, !noalias !22586, !noundef !4
  %i.dh = load i64, ptr %i.az, align 8, !alias.scope !22584, !noalias !22586
  call void @llvm.experimental.noalias.scope.decl(metadata !22649)
  call void @llvm.experimental.noalias.scope.decl(metadata !22652)
  %i.di = load i64, ptr %i.ba, align 8, !alias.scope !22654, !noalias !22655, !noundef !4 ; 6 uses
  %i.dj = load i64, ptr %i.bb, align 8, !alias.scope !22654, !noalias !22655, !noundef !4
  %i.dk = sub i64 %i.dj, %i.di
  %i.dl = icmp ugt i64 %i.dk, 4
  br i1 %i.dl, label %.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = invoke noundef zeroext i1 @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef 5, i1 noundef zeroext true)
          to label %bb.v unwind label %.loopexit103.i, !noalias !22658 ; 0 uses

bb.v:                                             ; preds = %bb.u
  %.pre.i.i = load i64, ptr %i.bb, align 8, !alias.scope !22654, !noalias !22655
  %.pre43.i.i = load i64, ptr %i.ba, align 8, !alias.scope !22654, !noalias !22655 ; 2 uses
  %.pre44.i.i = sub i64 %.pre.i.i, %.pre43.i.i    ; 2 uses
  %i.dn = icmp ult i64 %.pre44.i.i, 5
  br i1 %i.dn, label %bb.w, label %.thread.i.i, !prof !17897

.thread.i.i:                                      ; preds = %bb.v, %bb.t
  %i.do = phi i64 [ %.pre43.i.i, %bb.v ], [ %i.di, %bb.t ]
  %i.dp = add i64 %i.do, 5
  store i64 %i.dp, ptr %i.ba, align 8, !alias.scope !22654, !noalias !22655
  %.not.i33.i = icmp eq i8 %i.df, 2
  br i1 %.not.i33.i, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !22659
  store i64 5, ptr %i.t, align 8, !noalias !22659
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.pre44.i.i, ptr %i.dq, align 8, !noalias !22659
  invoke void @_RNvCsuxFxh2mtOX_5bytes13panic_advance(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t) #29
          to label %bb.ao unwind label %.loopexit.split-lp.i, !noalias !22658

bb.x:                                             ; preds = %.thread.i.i
  store i64 0, ptr %i.bc, align 8, !alias.scope !22660, !noalias !22661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !22659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.x, ptr noundef nonnull align 8 dereferenceable(280) %i.ah, i64 280, i1 false), !noalias !22662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !22659
  store ptr %i.ar, ptr %i.w, align 8, !noalias !22659
  %i.dr = call noundef align 8 ptr @_RNvXs3_NtCsk1F0U0dGulz_11tonic_prost5codecINtB5_12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoENtNtCsbYyEjVLvvus_5tonic5codec7Encoder6encodeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w), !noalias !22663 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !22659
  %.not22.i.i = icmp eq ptr %i.dr, null
  br i1 %.not22.i.i, label %bb.ad, label %bb.z

bb.y:                                             ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !22659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.v, ptr noundef nonnull align 8 dereferenceable(280) %i.ah, i64 280, i1 false), !noalias !22662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !22659
  store ptr %i.aq, ptr %i.u, align 8, !noalias !22659
  %i.ds = call noundef align 8 ptr @_RNvXs3_NtCsk1F0U0dGulz_11tonic_prost5codecINtB5_12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoENtNtCsbYyEjVLvvus_5tonic5codec7Encoder6encodeCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(280) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u), !noalias !22664 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !22659
  %.not21.i.i = icmp eq ptr %i.ds, null
  br i1 %.not21.i.i, label %bb.am, label %bb.ai

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !22659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !22659
  store ptr %i.dr, ptr %i.s, align 8, !noalias !22665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !22665
  store ptr %i.s, ptr %i.q, align 8, !noalias !22665
  %.sroa.42.0..sroa_idx.i.i34.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs7_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i34.i, align 8, !noalias !22665
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @60, ptr noundef nonnull %i.q)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.aa, !noalias !22663

bb.aa:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %bb.z
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %.val6.i.i.i = load ptr, ptr %i.s, align 8, !noalias !22665, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val6.i.i.i) #32
          to label %common.resume unwind label %bb.ac, !noalias !22663

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !22665
  %i.du = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB6_6Status3newNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(i8 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.ab unwind label %bb.aa, !noalias !22663

bb.ab:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %.val.i.i.i = load ptr, ptr %i.s, align 8, !noalias !22665, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i.i.i), !noalias !22663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !22659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !22659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !22659
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.ac:                                            ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22663
  unreachable

bb.ad:                                            ; preds = %bb.x
  %i.dw = trunc nuw i8 %i.df to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !22659
  %i.dx = load i64, ptr %i.bc, align 8, !alias.scope !22660, !noalias !22661, !noundef !4
  %i.dy = call noundef ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec11compression8compress(i64 noundef %.val30.i, i1 noundef zeroext %i.dw, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.dx), !noalias !22663 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.dy, null
  br i1 %.not23.i.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !22659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !22659
  store ptr %i.dy, ptr %i.p, align 8, !noalias !22659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !22659
  store ptr %i.p, ptr %i.n, align 8, !noalias !22659
  %.sroa.42.0..sroa_idx.i24.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i24.i.i, align 8, !noalias !22659
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @61, ptr noundef nonnull %i.n)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i unwind label %bb.af, !noalias !22663

bb.af:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i, %bb.ae
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #32
          to label %common.resume unwind label %bb.ag, !noalias !22663

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !22659
  %i.ea = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB6_6Status3newNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(i8 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.af, !noalias !22663

_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i25.i.i
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !22663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !22659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !22659
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22663
  unreachable

bb.ah:                                            ; preds = %bb.am, %bb.ad
  %i.ec = load i64, ptr %i.ba, align 8, !alias.scope !22654, !noalias !22655, !noundef !4 ; 4 uses
  %i.ed = icmp ugt i64 %i.di, %i.ec
  br i1 %i.ed, label %bb.an, label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, !prof !5

bb.ai:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !22659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !22659
  store ptr %i.ds, ptr %i.m, align 8, !noalias !22668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !22668
  store ptr %i.m, ptr %i.k, align 8, !noalias !22668
  %.sroa.42.0..sroa_idx.i29.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs7_NtCsbYyEjVLvvus_5tonic6statusNtB5_6StatusNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i29.i.i, align 8, !noalias !22668
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @60, ptr noundef nonnull %i.k)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i unwind label %bb.aj, !noalias !22664

bb.aj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i, %bb.ai
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %.val6.i30.i.i = load ptr, ptr %i.m, align 8, !noalias !22668, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val6.i30.i.i) #32
          to label %common.resume unwind label %bb.al, !noalias !22664

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !22668
  %i.ef = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB6_6Status3newNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(i8 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.ak unwind label %bb.aj, !noalias !22664

bb.ak:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgsNUVCRJO2f_13influxdb3_lib.exit.i31.i.i
  %.val.i32.i.i = load ptr, ptr %i.m, align 8, !noalias !22668, !nonnull !4, !noundef !4
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i32.i.i), !noalias !22664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !22659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !22659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22659
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.al:                                            ; preds = %bb.aj
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22664
  unreachable

bb.am:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !22659
  br label %bb.ah

bb.an:                                            ; preds = %bb.ah
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.di, i64 noundef %i.ec, i64 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #29, !noalias !22663
  unreachable

bb.ao:                                            ; preds = %bb.w
  unreachable

.loopexit103.i:                                   ; preds = %bb.u
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp.i:                             ; preds = %bb.w
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp.i, %.loopexit103.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit103.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(280) %i.ah) #32
          to label %common.resume unwind label %bb.aq, !noalias !22671

bb.aq:                                            ; preds = %bb.ap
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22671
  unreachable

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ah
  %i.ei = load ptr, ptr %i.aq, align 8, !alias.scope !22654, !noalias !22655, !nonnull !4, !noundef !4
  %i.ej = sub nuw i64 %i.ec, %i.di
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.di
  %i.el = call noundef align 8 ptr @_RNvNtNtCsbYyEjVLvvus_5tonic5codec6encode15finish_encoding(i8 noundef range(i8 0, 3) %i.df, i64 noundef range(i64 0, 2) %i.dg, i64 %i.dh, ptr noalias noundef nonnull %i.ek, i64 noundef %i.ej), !noalias !22663 ; 2 uses
  %.not28.i = icmp eq ptr %i.el, null
  br i1 %.not28.i, label %bb.ar, label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.ar:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.em = load i64, ptr %i.ba, align 8, !alias.scope !22584, !noalias !22586, !noundef !4 ; 2 uses
  %.not29.i = icmp ult i64 %i.em, %.val31.i
  br i1 %.not29.i, label %bb.as, label %bb.at

_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.ab, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.ak, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i
  %.sroa.26.1 = phi i64 [ %.sroa.669.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ undef, %bb.ab ], [ undef, %bb.ak ], [ undef, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ undef, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.12.1 = phi ptr [ %.sroa.064.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ null, %bb.ab ], [ null, %bb.ak ], [ null, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ null, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.30, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ %.sroa.19, %bb.ab ], [ %.sroa.19, %bb.ak ], [ %.sroa.19, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %.sroa.19, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sroa.772.0.sink.i = phi ptr [ %.sroa.772.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i ], [ %i.du, %bb.ab ], [ %i.ef, %bb.ak ], [ %i.ea, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.el, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  store ptr %.sroa.772.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !22581, !noalias !22596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !22628
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre = load ptr, ptr %.sroa.19, align 8
  br label %bb.bk

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !22628
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !22672)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !22674
  %i.en = load i64, ptr %i.an, align 8, !range !3841, !alias.scope !22675, !noalias !22595, !noundef !4
  %.not.i.i = icmp eq i64 %i.en, -2
  br i1 %.not.i.i, label %.loopexit102.i, label %bb.b

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !22628
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.em), !noalias !22581
  call void @llvm.experimental.noalias.scope.decl(metadata !22676)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !22676, !noalias !22679, !noundef !4 ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.er = and i64 %i.eq, 1
  %.not.i35.i = icmp eq i64 %i.er, 0
  br i1 %.not.i35.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.es = lshr i64 %i.eq, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !22681
  %i.et = load ptr, ptr %i.ag, align 8, !alias.scope !22676, !noalias !22679, !nonnull !4, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !22676, !noalias !22679, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !22676, !noalias !22679, !noundef !4
  %i.ey = sub nsw i64 0, %i.es
  %i.ez = getelementptr inbounds i8, ptr %i.et, i64 %i.ey
  %i.fa = add i64 %i.ev, %i.es
  %i.fb = add i64 %i.ex, %i.es                    ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, -1
  call void @llvm.assume(i1 %i.fc)
  store i64 %i.fb, ptr %i.j, align 8, !noalias !22681
  %i.fd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ez, ptr %i.fd, align 8, !noalias !22681
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.fa, ptr %i.fe, align 8, !noalias !22681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !22681
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !22682
  call void @llvm.experimental.noalias.scope.decl(metadata !22683)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22681
  store i64 %i.es, ptr %i.h, align 8, !noalias !22686
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !alias.scope !22683, !noalias !22681, !noundef !4 ; 4 uses
  %.not.i.i36.i = icmp ugt i64 %i.es, %i.fg
  br i1 %.not.i.i36.i, label %bb.av, label %bb.ay, !prof !5

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22686
  store i64 %i.fg, ptr %i.g, align 8, !noalias !22686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22686
  store ptr %i.h, ptr %i.f, align 8, !noalias !22686
  %.sroa.42.0..sroa_idx.i.i37.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i37.i, align 8, !noalias !22686
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.fh, align 8, !noalias !22686
  %.sroa.46.0..sroa_idx.i.i38.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i38.i, align 8, !noalias !22686
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i40.i unwind label %bb.ax, !noalias !22682

.noexc.i40.i:                                     ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.fi = load ptr, ptr %i.ag, align 8, !alias.scope !22676, !noalias !22679, !nonnull !4, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !22676, !noalias !22679, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i

bb.ax:                                            ; preds = %bb.av
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22687)
  call void @llvm.experimental.noalias.scope.decl(metadata !22690)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !22693, !noalias !22681, !noundef !4
  %i.fo = load ptr, ptr %i.i, align 8, !alias.scope !22693, !noalias !22681, !nonnull !4, !align !665, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !22694, !nonnull !4, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !22693, !noalias !22681, !noundef !4
  invoke void %i.fq(ptr noundef %i.fn, ptr noundef %i.fs, i64 noundef %i.fg)
          to label %common.resume unwind label %bb.az, !noalias !22682, !inline_history !1663

bb.ay:                                            ; preds = %bb.au
  %i.ft = sub nuw i64 %i.fg, %i.es
  %i.fu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !22683, !noalias !22681, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22681
  %.sroa.064.0.copyload65.i = load ptr, ptr %i.i, align 8, !noalias !22695
  %.sroa.772.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.772.0.copyload74.i = load ptr, ptr %.sroa.772.0..sroa_idx73.i, align 8, !noalias !22695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !22681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !22681
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i

bb.az:                                            ; preds = %bb.ax
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22682
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit41.i: ; preds = %bb.ay, %bb.aw
  %.sroa.772.0.i = phi ptr [ %i.ep, %bb.aw ], [ %.sroa.772.0.copyload74.i, %bb.ay ]
  %.sroa.669.0.i = phi i64 [ %i.fk, %bb.aw ], [ %i.ft, %bb.ay ]
  %.sroa.566.0.i = phi ptr [ %i.fi, %bb.aw ], [ %i.fw, %bb.ay ]
  %.sroa.064.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.aw ], [ %.sroa.064.0.copyload65.i, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !22628
  store ptr %.sroa.566.0.i, ptr %.sroa.19, align 8, !alias.scope !22581, !noalias !22596
  br label %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

.thread114:                                       ; preds = %bb.s
  store ptr %.sroa.8.0.copyload51.i, ptr %.sroa.19, align 8, !alias.scope !22581, !noalias !22596
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %bb.bq

bb.ba:                                            ; preds = %bb.s
  %.val.i = load ptr, ptr %i.as, align 8, !alias.scope !22584, !noalias !22586, !align !665, !noundef !4 ; 2 uses
  %i.fy = icmp eq ptr %.val.i, null
  br i1 %i.fy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i unwind label %bb.bc, !noalias !22581

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i: ; preds = %bb.bb
  %.pre.i = load i64, ptr %i.ba, align 8, !alias.scope !22584, !noalias !22586
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.fz = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !22584, !noalias !22586
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.ba
  %i.ga = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.dd, %bb.ba ]
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !22584, !noalias !22586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !22628
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.ga), !noalias !22581
  call void @llvm.experimental.noalias.scope.decl(metadata !22696)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !22696, !noalias !22699, !noundef !4 ; 2 uses
  %i.gd = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.ge = and i64 %i.gd, 1
  %.not.i42.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i42.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gf = lshr i64 %i.gd, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22701
  %i.gg = load ptr, ptr %i.af, align 8, !alias.scope !22696, !noalias !22699, !nonnull !4, !noundef !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !22696, !noalias !22699, !noundef !4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !22696, !noalias !22699, !noundef !4
  %i.gl = sub nsw i64 0, %i.gf
  %i.gm = getelementptr inbounds i8, ptr %i.gg, i64 %i.gl
  %i.gn = add i64 %i.gi, %i.gf
  %i.go = add i64 %i.gk, %i.gf                    ; 2 uses
  %i.gp = icmp sgt i64 %i.go, -1
  call void @llvm.assume(i1 %i.gp)
  store i64 %i.go, ptr %i.e, align 8, !noalias !22701
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gm, ptr %i.gq, align 8, !noalias !22701
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gn, ptr %i.gr, align 8, !noalias !22701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22701
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !22702
  call void @llvm.experimental.noalias.scope.decl(metadata !22703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22701
  store i64 %i.gf, ptr %i.c, align 8, !noalias !22706
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !22703, !noalias !22701, !noundef !4 ; 4 uses
  %.not.i.i43.i = icmp ugt i64 %i.gf, %i.gt
  br i1 %.not.i.i43.i, label %bb.be, label %bb.bh, !prof !5

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22706
  store i64 %i.gt, ptr %i.b, align 8, !noalias !22706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22706
  store ptr %i.c, ptr %i.a, align 8, !noalias !22706
  %.sroa.42.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i44.i, align 8, !noalias !22706
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gu, align 8, !noalias !22706
  %.sroa.46.0..sroa_idx.i.i45.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i45.i, align 8, !noalias !22706
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i47.i unwind label %bb.bg, !noalias !22702

.noexc.i47.i:                                     ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gv = load ptr, ptr %i.af, align 8, !alias.scope !22696, !noalias !22699, !nonnull !4, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !22696, !noalias !22699, !noundef !4
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bg:                                            ; preds = %bb.be
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22707)
  call void @llvm.experimental.noalias.scope.decl(metadata !22710)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !22713, !noalias !22701, !noundef !4
  %i.hb = load ptr, ptr %i.d, align 8, !alias.scope !22713, !noalias !22701, !nonnull !4, !align !665, !noundef !4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !22714, !nonnull !4, !noundef !4
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !22713, !noalias !22701, !noundef !4
  invoke void %i.hd(ptr noundef %i.ha, ptr noundef %i.hf, i64 noundef %i.gt)
          to label %common.resume unwind label %bb.bi, !noalias !22702, !inline_history !1663

bb.bh:                                            ; preds = %bb.bd
  %i.hg = sub nuw i64 %i.gt, %i.gf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !alias.scope !22703, !noalias !22701, !noundef !4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22701
  %.sroa.079.0.copyload80.i = load ptr, ptr %i.d, align 8, !noalias !22715
  %.sroa.787.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.787.0.copyload89.i = load ptr, ptr %.sroa.787.0..sroa_idx88.i, align 8, !noalias !22715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22701
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bi:                                            ; preds = %bb.bg
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22702
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i: ; preds = %bb.bh, %bb.bf
  %.sroa.787.0.i = phi ptr [ %i.gc, %bb.bf ], [ %.sroa.787.0.copyload89.i, %bb.bh ]
  %.sroa.684.0.i = phi i64 [ %i.gx, %bb.bf ], [ %i.hg, %bb.bh ]
  %.sroa.581.0.i = phi ptr [ %i.gv, %bb.bf ], [ %i.hj, %bb.bh ] ; 2 uses
  %.sroa.079.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bf ], [ %.sroa.079.0.copyload80.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !22628
  store ptr %.sroa.581.0.i, ptr %.sroa.19, align 8, !alias.scope !22581, !noalias !22596
  store ptr %.sroa.787.0.i, ptr %.sroa.30, align 8, !alias.scope !22581, !noalias !22596
  br label %bb.bk

bb.bj:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.bz

bb.bk:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108 = phi ptr [ %.sroa.581.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.684.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.079.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.053.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.hl = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hl, label %bb.bq, label %bb.br

bb.bl:                                            ; preds = %.loopexit102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am)
  %i.hm = load i64, ptr %i.aj, align 8, !range !3841, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.hm, -2
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hn = icmp eq i64 %i.hm, -1
  br i1 %i.hn, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bo, %bb.bp, %bb.bl
  %.sroa.017.0 = phi i64 [ -3, %bb.bl ], [ -2, %bb.bo ], [ %i.hm, %bb.bp ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bl ], [ %.sroa.563.0.copyload, %bb.bo ], [ %.sroa.563.0.copyload, %bb.bp ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bn

bb.bq:                                            ; preds = %.thread114, %.thread110, %bb.bk
  %i.ho = phi ptr [ %i.au, %.thread110 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, %bb.bk ], [ %.sroa.8.0.copyload51.i, %.thread114 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ho) ]
  store ptr %i.ho, ptr %i.al, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.hq = load i8, ptr %i.hp, align 8, !range !3, !noundef !4
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %bb.bk
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload108, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bq
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 1, ptr %i.hs, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.bw unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ho, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.by, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bs
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ho) #32
          to label %common.resume unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  %i.hu = load i64, ptr %i.ak, align 8, !range !1319, !noundef !4 ; 2 uses
  %i.hv = icmp eq i64 %i.hu, -1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8            ; 2 uses
  br i1 %i.hv, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hx, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 %i.hu, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hx, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ho)
  br label %bb.bu

bb.bz:                                            ; preds = %bb.bn, %bb.br, %bb.bu, %bb.bj, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.ca:                                            ; preds = %bb.bv
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2E_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2E_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [40 x i8], align 8               ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 11 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.ai = alloca [96 x i8], align 8               ; 4 uses
  %i.aj = alloca [96 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22716)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.val29.i = load i64, ptr %i.an, align 8, !alias.scope !22716, !noalias !22719, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val30.i = load i64, ptr %i.as, align 8, !alias.scope !22716, !noalias !22719, !noundef !4
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !22716, !noalias !22719, !align !665, !noundef !4 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !alias.scope !22716, !noalias !22719
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %.thread105

.preheader.i:                                     ; preds = %bb.a
  %.sroa.7.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.10.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx118.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.762.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.965.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.762.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.965.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.11.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.au, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22722)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !22725
  %i.ay = load ptr, ptr %i.am, align 8, !alias.scope !22728, !noalias !22729, !noundef !4
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !22725
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !22730
  %i.az = load i64, ptr %i.ad, align 8, !range !811, !noalias !22725, !noundef !4
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !22725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !22725
  %i.bb = load i64, ptr %i.ae, align 8, !range !802, !noalias !22725, !noundef !4
  %.not4.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not4.i.i, label %bb.e, label %bb.n

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i: ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.am, align 8, !alias.scope !22728, !noalias !22729
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %i.ae) #32
          to label %common.resume unwind label %bb.l, !noalias !22730

bb.e:                                             ; preds = %bb.d
  %.val6.i.i = load ptr, ptr %i.am, align 8, !alias.scope !22728, !noalias !22729, !noundef !4 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val7.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !22728, !noalias !22729 ; 6 uses
  %i.bd = icmp eq ptr %.val6.i.i, null
  br i1 %i.bd, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.be = load ptr, ptr %.val7.i.i, align 8, !invariant.load !4, !noalias !22730 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.be(ptr noundef nonnull %.val6.i.i)
          to label %bb.h unwind label %bb.j, !noalias !22730

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !993, !invariant.load !4, !noalias !22730 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !1318, !invariant.load !4, !noalias !22730
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bg, i64 noundef range(i64 1, 536870913) %i.bj) #30, !noalias !22730
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.j:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !993, !invariant.load !4, !noalias !22730 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, label %bb.k
end_hunk_1
