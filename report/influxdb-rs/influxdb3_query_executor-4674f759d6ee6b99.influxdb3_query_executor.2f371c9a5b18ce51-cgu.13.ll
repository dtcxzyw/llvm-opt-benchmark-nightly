Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.13?download=true
inline.NumInlined: 3754
inline.NumDeleted: 1026
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsz_NtNtCsaNmiEuYuYZf_9sqlparser3ast3dclNtB5_18AlterRoleOperationNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val9 = load ptr, ptr %i.ff, align 8, !nonnull !13, !noundef !13
  %i.fg = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val9, ptr noundef nonnull %.val11, i64 noundef %.val10)
  br label %_RNvXs_NtCsaNmiEuYuYZf_9sqlparser3astNtB4_5IdentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsp_NtNtCsaNmiEuYuYZf_9sqlparser3ast3dclNtB5_11ResetConfigNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread34: ; preds = %bb.v, %_RNvXsp_NtNtCsaNmiEuYuYZf_9sqlparser3ast3dclNtB5_11ResetConfigNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fi = load i64, ptr %i.fh, align 8, !range !42, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.fi, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fk = load i64, ptr %i.fj, align 8, !range !42, !noundef !13 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, -1
  %brmerge68 = or i1 %.not, %i.fl
  %i.fm = and i64 %i.fi, %i.fk
  %.mux69 = icmp eq i64 %i.fm, -1
  br i1 %brmerge68, label %_RNvXs_NtCsaNmiEuYuYZf_9sqlparser3astNtB4_5IdentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.af

bb.af:                                            ; preds = %_RNvXsp_NtNtCsaNmiEuYuYZf_9sqlparser3ast3dclNtB5_11ResetConfigNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread34
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6 = load i64, ptr %i.fn, align 8, !noundef !13 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val8 = load i64, ptr %i.fo, align 8, !noundef !13
  %i.fp = icmp eq i64 %.val6, %.val8
  br i1 %i.fp, label %bb.ag, label %_RNvXs_NtCsaNmiEuYuYZf_9sqlparser3astNtB4_5IdentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val7 = load ptr, ptr %i.fq, align 8, !nonnull !13, !noundef !13
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.fr, align 8, !nonnull !13, !noundef !13
  %i.fs = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val, ptr noundef nonnull %.val7, i64 noundef %.val6)
  br label %_RNvXs_NtCsaNmiEuYuYZf_9sqlparser3astNtB4_5IdentNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsz_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast7helpers17stmt_data_loadingNtB5_18FileStagingCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.a, align 8, !noundef !13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !13
  %i.c = icmp eq i64 %.val3, %.val5
  br i1 %i.c, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.d, align 8, !nonnull !13, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !13, !noundef !13
  %i.f = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsaNmiEuYuYZf_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %.val, ptr noundef nonnull %.val4, i64 noundef %.val3)
  br i1 %i.f, label %bb.b, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !range !42, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.h, -1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !range !42, !noundef !13 ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  %brmerge = or i1 %.not, %i.k
  %i.l = and i64 %i.h, %i.j
  %.mux = icmp eq i64 %i.l, -1
  br i1 %brmerge, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.c

_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.b, %bb.a, %bb.c, %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.v, %bb.d ], [ %.mux, %bb.b ], [ false, %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !13 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !noundef !13
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !13, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !13, !noundef !13
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.u, ptr nonnull %i.s, i64 %i.n)
  %i.v = icmp eq i32 %bcmp, 0
  br label %_RNvXs3Z_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_10ObjectNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7fnekraeopg_15datafusion_expr9async_udf14AsyncScalarUDFNtNtB6_3udf13ScalarUDFImpl11is_nullableCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias readonly align 8 captures(none) %0, ptr noalias nonnull readonly align 16 captures(none) %1, i64 range(i64 0, 82351536043346213) %2, ptr nofree nonnull readnone captures(none) %3, ptr noalias readonly align 8 captures(none) %4) unnamed_addr #12 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYNtNtCs7fnekraeopg_15datafusion_expr9async_udf14AsyncScalarUDFNtNtB6_3udf13ScalarUDFImpl13documentationCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7fnekraeopg_15datafusion_expr9async_udf14AsyncScalarUDFNtNtB6_3udf13ScalarUDFImpl14short_circuitsCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7fnekraeopg_15datafusion_expr9async_udf14AsyncScalarUDFNtNtB6_3udf13ScalarUDFImpl19with_updated_configCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias readonly align 8 captures(none) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCs7fnekraeopg_15datafusion_expr9async_udf14AsyncScalarUDFNtNtB6_3udf13ScalarUDFImpl21propagate_constraintsCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 32)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias readonly align 16 captures(none) %2, ptr noalias nonnull readonly align 8 captures(none) %3, i64 range(i64 0, 1152921504606846976) %4) unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCs7fnekraeopg_15datafusion_expr9async_udf14AsyncScalarUDFNtNtB6_3udf13ScalarUDFImpl22preserves_lex_orderingCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias nonnull readonly align 16 captures(none) %2, i64 range(i64 0, 64051194700380388) %3) unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs7fnekraeopg_15datafusion_expr9async_udf14AsyncScalarUDFNtNtB6_3udf13ScalarUDFImpl7aliasesCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr inttoptr (i64 8 to ptr), i64 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7fnekraeopg_15datafusion_expr9async_udf14AsyncScalarUDFNtNtB6_3udf13ScalarUDFImpl8simplifyCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 32)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr nofree nonnull readnone captures(none) %3, ptr noalias readonly align 8 captures(none) %4) unnamed_addr #2 {
bb.a:
  store i64 -2, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtQNtNtCscdodAO9FK5_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs43kcu4yvms7_24influxdb3_query_executor.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !12235
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed4Lift28linear_lift_list_from_memoryCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.g = load i64, ptr %i.c, align 8, !range !38, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !39, !noundef !13 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !13, !noundef !13
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.j, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.p, align 8
  %.not21.i = icmp eq i64 %i.f, 0
  br i1 %.not21.i, label %.loopexit9, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc6, %.lr.ph.i
  %.sroa.016.020.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %.noexc6 ] ; 2 uses
  %i.q = add nuw i64 %.sroa.016.020.i, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12236
  invoke void @_RNvMse_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typedINtB5_8WasmListNtNtCscdodAO9FK5_5alloc6string6StringE14get_from_storeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %.sroa.016.020.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !range !141, !noalias !12236, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.r, -2
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !40

bb.e:                                             ; preds = %.noexc
  %.sroa.610.0.copyload.i = load ptr, ptr %.sroa.610.0..sroa_idx.i, align 8, !noalias !12236 ; 3 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12236
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.g

bb.f:                                             ; preds = %.noexc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #37
          to label %.noexc5 unwind label %.loopexit.split-lp

.noexc5:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12241
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !12245, !noalias !12249
  store ptr %.sroa.610.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !12245, !noalias !12249
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !12245, !noalias !12249
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecNtNtB8_6string6StringEINtB4_10SpecExtendBS_INtNtCs4NRVxsYgnAr_4core6option8IntoIterBS_EE11spec_extendCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12241
  %exitcond.not.i = icmp eq i64 %i.q, %i.f
  br i1 %exitcond.not.i, label %.loopexit9, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %common.resume unwind label %bb.m

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.610.0.copyload.i) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.610.0.copyload.i, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.j ], [ %lpad.phi, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.l

.loopexit9:                                       ; preds = %.noexc6, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %.loopexit9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs43kcu4yvms7_24influxdb3_query_executor.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsetuUZXazHC0_22influxdb3_internal_api14query_executor18QueryExecutorErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1_NtCsetuUZXazHC0_22influxdb3_internal_api14query_executorNtB5_18QueryExecutorErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher10write_i128Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i128 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12250
  store i128 %1, ptr %i.a, align 16, !noalias !12250
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12250
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher10write_u128Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i128 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 %1, ptr %i.a, align 16
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_isizeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12253
  store i64 %1, ptr %i.a, align 8, !noalias !12253
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12253
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_usizeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher19write_length_prefixCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12256
  store i64 %1, ptr %i.a, align 8, !noalias !12256
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12256
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher8write_i8Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i8 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12259
  store i8 %1, ptr %i.a, align 1, !noalias !12259
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12259
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher8write_u8Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i8 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_i16Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i16 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12262
  store i16 %1, ptr %i.a, align 2, !noalias !12262
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12262
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_i32Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12265
  store i32 %1, ptr %i.a, align 4, !noalias !12265
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12265
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_i64Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12268
  store i64 %1, ptr %i.a, align 8, !noalias !12268
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12268
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_u16Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i16 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %1, ptr %i.a, align 2
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_u32Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher9write_u64Cs43kcu4yvms7_24influxdb3_query_executor(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed4Lift28linear_lift_list_from_memoryCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.g = load i64, ptr %i.c, align 8, !range !38, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !39, !noundef !13 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !13, !noundef !13
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.j, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.p, align 8
  %.not21.i = icmp eq i64 %i.f, 0
  br i1 %.not21.i, label %.loopexit9, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc6, %.lr.ph.i
  %.sroa.016.020.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %.noexc6 ] ; 2 uses
  %i.q = add nuw i64 %.sroa.016.020.i, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12271
  invoke void @_RNvMse_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typedINtB5_8WasmListNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeE14get_from_storeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %.sroa.016.020.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !range !141, !noalias !12271, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.r, -2
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !40

bb.e:                                             ; preds = %.noexc
  %.sroa.610.0.copyload.i = load ptr, ptr %.sroa.610.0..sroa_idx.i, align 8, !noalias !12271 ; 3 uses
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12271
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.g

bb.f:                                             ; preds = %.noexc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #37
          to label %.noexc5 unwind label %.loopexit.split-lp

.noexc5:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12276
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !12280, !noalias !12284
  store ptr %.sroa.610.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !12280, !noalias !12284
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !12280, !noalias !12284
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeEINtB4_10SpecExtendBS_INtNtCs4NRVxsYgnAr_4core6option8IntoIterBS_EE11spec_extendCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12276
  %exitcond.not.i = icmp eq i64 %i.q, %i.f
  br i1 %exitcond.not.i, label %.loopexit9, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %common.resume unwind label %bb.m

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.610.0.copyload.i) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.610.0.copyload.i, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.j ], [ %lpad.phi, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.l

.loopexit9:                                       ; preds = %.noexc6, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %.loopexit9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeEECs43kcu4yvms7_24influxdb3_query_executor.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYTINtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9resources3any11ResourceAnyENtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types15DataFusionErrorEENtNtNtB1h_4func5typed13ComponentType13flatten_countCs43kcu4yvms7_24influxdb3_query_executor() unnamed_addr #12 {
bb.a:
  ret i64 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeNtBH_15DataFusionErrorEENtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed13ComponentType13flatten_countCs43kcu4yvms7_24influxdb3_query_executor() unnamed_addr #12 {
bb.a:
  ret i64 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed13ComponentType13flatten_countCs43kcu4yvms7_24influxdb3_query_executor() unnamed_addr #12 {
bb.a:
  ret i64 2
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB7_3vec3VechEENtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed4Lift28linear_lift_list_from_memoryCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(104) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [32 x i8], align 8          ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.g = load i64, ptr %i.c, align 8, !range !38, !noundef !13
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !39, !noundef !13 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !13, !noundef !13
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.j, ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.p, align 8
  %.not19.i = icmp eq i64 %i.f, 0
  br i1 %.not19.i, label %.loopexit9, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.noexc6, %.lr.ph.i
  %.sroa.014.018.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %.noexc6 ] ; 2 uses
  %i.q = add nuw i64 %.sroa.014.018.i, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12285
  invoke void @_RNvMse_NtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typedINtB5_8WasmListTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1n_3vec3VechEEE14get_from_storeCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %.sroa.014.018.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !range !141, !noalias !12285, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.r, -2
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !40

bb.e:                                             ; preds = %.noexc
  %.sroa.69.0.copyload.i = load ptr, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !12285 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx.i, i64 32, i1 false), !noalias !12285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12285
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.g

bb.f:                                             ; preds = %.noexc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #37
          to label %.noexc5 unwind label %.loopexit.split-lp

.noexc5:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !12285
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i64 %i.r, ptr %i.a, align 8, !alias.scope !12294, !noalias !12298
  store ptr %.sroa.69.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !12294, !noalias !12298
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecTNtNtB8_6string6StringIBJ_hEEEINtB4_10SpecExtendBS_INtNtCs4NRVxsYgnAr_4core6option8IntoIterBS_EE11spec_extendCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12290
  %exitcond.not.i = icmp eq i64 %i.q, %i.f
  br i1 %exitcond.not.i, label %.loopexit9, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringIBC_hEEEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %common.resume unwind label %bb.m

bb.i:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.69.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.69.0.copyload.i, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringIBv_hEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringIBC_hEEEECs43kcu4yvms7_24influxdb3_query_executor.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtB7_3vec3VechEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.j ], [ %lpad.phi, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringIBC_hEEEECs43kcu4yvms7_24influxdb3_query_executor.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringINtNtB7_3vec3VechEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.l

.loopexit9:                                       ; preds = %.noexc6, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %.loopexit9, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringIBC_hEEEECs43kcu4yvms7_24influxdb3_query_executor.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvYTNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types9SignatureENtNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component4func5typed13ComponentType13flatten_countCs43kcu4yvms7_24influxdb3_query_executor() unnamed_addr #12 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvYmNtNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime4func5typed6WasmTy6may_gcCs43kcu4yvms7_24influxdb3_query_executor() unnamed_addr #12 personality ptr @rust_eh_personality {
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeECs43kcu4yvms7_24influxdb3_query_executor.exit:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs4NRVxsYgnAr_4core3ptr12align_offsethECs43kcu4yvms7_24influxdb3_query_executor(ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #23

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs43kcu4yvms7_24influxdb3_query_executor(i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #23

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtCs8dy3IO6wsj9_8wasmtime7runtime4func27invoke_wasm_and_catch_trapsNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplNCINvMs_NtB2_5typedINtB2k_9TypedFuncTmmmmEmE8call_rawB19_E0ECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component9componentNtB2_9Component16get_export_index(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component8instanceNtB3_8Instance12instance_preNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplRQQINtNtNtB7_5store7context15StoreContextMutB1p_EECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component8instanceNtB3_8Instance14get_typed_funcTNtNtNtB5_9resources3any11ResourceAnyETNtNtCscdodAO9FK5_5alloc6string6StringEQINtNtNtB7_5store7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplERNtNtB5_9component20ComponentExportIndexECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component8instanceNtB3_8Instance14get_typed_funcTNtNtNtB5_9resources3any11ResourceAnyETNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types9SignatureEQINtNtNtB7_5store7context15StoreContextMutNtNtB2g_5state13WasmStateImplERNtNtB5_9component20ComponentExportIndexECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component8instanceNtB3_8Instance14get_typed_funcTNtNtNtB5_9resources3any11ResourceAnyRSNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types8DataTypeETINtNtCs4NRVxsYgnAr_4core6result6ResultB24_NtB26_15DataFusionErrorEEQINtNtNtB7_5store7context15StoreContextMutNtNtB2g_5state13WasmStateImplERNtNtB5_9component20ComponentExportIndexECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component8instanceNtB3_8Instance14get_typed_funcTNtNtNtB5_9resources3any11ResourceAnyRNtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types18ScalarFunctionArgsETINtNtCs4NRVxsYgnAr_4core6result6ResultNtB25_13ColumnarValueNtB25_15DataFusionErrorEEQINtNtNtB7_5store7context15StoreContextMutNtNtB2f_5state13WasmStateImplERNtNtB5_9component20ComponentExportIndexECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component8instanceNtB3_8Instance14get_typed_funcuTINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEEQINtNtNtB7_5store7context15StoreContextMutNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host5state13WasmStateImplERNtNtB5_9component20ComponentExportIndexECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime9component8instanceNtB3_8Instance14get_typed_funcTReETINtNtCs4NRVxsYgnAr_4core6result6ResultINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtB5_9resources3any11ResourceAnyENtNtNtNtNtNtCsjU3KQFpSKkZ_24datafusion_udf_wasm_host8bindings7exports19datafusion_udf_wasm3udf5types15DataFusionErrorEEQINtNtNtB7_5store7context15StoreContextMutNtNtB3r_5state13WasmStateImplERNtNtB5_9component20ComponentExportIndexECs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs43kcu4yvms7_24influxdb3_query_executor(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11WasmValTypeEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1Q_8adapters3map3MapINtNtB32_5chain5ChainINtNtB1S_6option8IntoIterNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeEINtNtNtB1S_5array4iter8IntoIterB49_Kj1_EENCINvMsv_B4b_NtB4b_8FuncType27with_finality_and_supertypeB3p_IB50_B49_Kj0_EEs_0EECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(344)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCs3qFYL1dVk0u_16wasmtime_environ5types11WasmValTypeEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1Q_8adapters3map3MapINtNtNtB1S_5array4iter8IntoIterNtNtNtCs8dy3IO6wsj9_8wasmtime7runtime5types7ValTypeKj0_ENCINvMsv_B3W_NtB3W_8FuncType27with_finality_and_supertypeINtNtB32_5chain5ChainINtNtB1S_6option8IntoIterB3U_EIB3q_B3U_Kj1_EEB3p_Es0_0EECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error3msgNtNtCscdodAO9FK5_5alloc6string6StringECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsv_NtNtCs8dy3IO6wsj9_8wasmtime7runtime5typesNtB5_8FuncType19from_wasm_func_type(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext, i32 noundef range(i32 -1, 3), i32, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #30

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsz_CsaPYpPPxBPjS_8smallvecINtB5_8SmallVecANtNtNtCs8dy3IO6wsj9_8wasmtime7runtime13type_registry14RegisteredTypej4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(296)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query11OrderByExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
