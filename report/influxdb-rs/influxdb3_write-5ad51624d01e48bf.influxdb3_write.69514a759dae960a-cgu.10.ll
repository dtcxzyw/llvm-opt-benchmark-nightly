Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.10?download=true
inline.NumInlined: 2536
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRxECs92BnbMq7p8c_15influxdb3_write:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvMs1_NtCs92BnbMq7p8c_15influxdb3_write11table_indexNtBb_14CoreTableIndex24update_from_object_store0s_00Bd_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNCNCNvMs1_NtCs92BnbMq7p8c_15influxdb3_write11table_indexNtBb_14CoreTableIndex24update_from_object_store0s_010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11
  tail call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 1
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvMs1_NtCs92BnbMq7p8c_15influxdb3_write11table_indexNtBb_14CoreTableIndex24update_from_object_store0s_010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !11
  store i64 2, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !11, !nonnull !11
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner00B8_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11
  tail call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !11
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !11, !nonnull !11
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log00Cs92BnbMq7p8c_15influxdb3_write(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11
  tail call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !11
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !11, !nonnull !11
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog16write_checkpoint0s_0Cs92BnbMq7p8c_15influxdb3_write(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog16write_checkpoint010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11
  tail call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 2
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog16write_checkpoint010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !11
  store i64 3, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !11, !nonnull !11
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl14write_lp_inner0B6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.6.i.i.i.i.sroa.0.i = alloca [15 x i8], align 1 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [72 x i8], align 8                ; 16 uses
  %i.t = alloca [72 x i8], align 8                ; 7 uses
  %i.u = alloca [48 x i8], align 8                ; 6 uses
  %i.v = alloca [128 x i8], align 8               ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.5126.i.i.i.sroa.0.i = alloca [15 x i8], align 1 ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [16 x i8], align 16              ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [80 x i8], align 8               ; 14 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [16 x i8], align 16              ; 5 uses
  %i.aj = alloca [8 x i8], align 8                ; 5 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [80 x i8], align 8               ; 14 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.6103.i.i.i.sroa.0.i = alloca [15 x i8], align 1 ; 6 uses
  %.sroa.999.i.i.i.sroa.0.i = alloca [15 x i8], align 1 ; 7 uses
  %i.ao = alloca [1 x i8], align 1                ; 9 uses
  %i.ap = alloca [80 x i8], align 8               ; 15 uses
  %i.aq = alloca [8 x i8], align 8                ; 5 uses
  %i.ar = alloca [80 x i8], align 8               ; 15 uses
  %i.as = alloca [1680 x i8], align 8             ; 9 uses
  %i.at = alloca [32 x i8], align 8               ; 9 uses
  %i.au = alloca [24 x i8], align 16              ; 10 uses
  %.sroa.9171.i.i.sroa.0.i = alloca [15 x i8], align 1 ; 7 uses
  %i.av = alloca [16 x i8], align 1               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 12 uses
  %i.ax = alloca [80 x i8], align 8               ; 15 uses
  %i.ay = alloca [40 x i8], align 8               ; 5 uses
  %i.az = alloca [120 x i8], align 8              ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [72 x i8], align 8               ; 10 uses
  %i.bd = alloca [24 x i8], align 8               ; 5 uses
  %i.be = alloca [72 x i8], align 8               ; 10 uses
  %i.bf = alloca [24 x i8], align 8               ; 5 uses
  %i.bg = alloca [24 x i8], align 8               ; 14 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [16 x i8], align 8               ; 6 uses
  %i.bj = alloca [32 x i8], align 8               ; 8 uses
  %i.bk = alloca [24 x i8], align 8               ; 8 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [16 x i8], align 8               ; 6 uses
  %i.bn = alloca [32 x i8], align 8               ; 9 uses
  %i.bo = alloca [88 x i8], align 8               ; 15 uses
  %i.bp = alloca [12 x i8], align 4               ; 5 uses
  %i.bq = alloca [128 x i8], align 8              ; 2 uses
  %i.br = alloca [128 x i8], align 8              ; 8 uses
  %i.bs = alloca [184 x i8], align 8              ; 10 uses
  %.sroa.0187 = alloca [3912 x i8], align 16      ; 8 uses
  %i.bt = alloca [16 x i8], align 8               ; 6 uses
  %i.bu = alloca [16 x i8], align 8               ; 6 uses
  %i.bv = alloca [16 x i8], align 8               ; 6 uses
  %i.bw = alloca [32 x i8], align 8               ; 8 uses
  %i.bx = alloca [24 x i8], align 8               ; 8 uses
  %i.by = alloca [16 x i8], align 8               ; 6 uses
  %i.bz = alloca [16 x i8], align 8               ; 6 uses
  %i.ca = alloca [16 x i8], align 8               ; 6 uses
  %i.cb = alloca [32 x i8], align 8               ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 275 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !range !28, !noundef !11
  switch i8 %i.cd, label %default.unreachable526 [
    i8 0, label %.noexc66
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ad
    i8 4, label %bb.b
    i8 5, label %bb.c
  ]

default.unreachable526:                           ; preds = %bb.eb, %bb.ds, %bb.bl, %bb.bi, %bb.be, %bb.bb, %bb.as, %bb.al, %bb.ad, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  br label %bb.ny

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  br label %bb.oj

.noexc66:                                         ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 274
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 273
  store i8 0, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i8 0, ptr %i.cg, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !11, !align !20, !noundef !11
  store ptr %i.cj, ptr %i.ch, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.0.0.copyload = load ptr, ptr %i.ck, align 16, !nonnull !11, !noundef !11
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 16, !nonnull !11, !noundef !11
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cl, ptr noundef nonnull align 16 dereferenceable(12) %.sroa.15.0..sroa_idx, i64 12, i1 false)
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 252
  store i8 1, ptr %i.ce, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  store ptr %.sroa.0.0.copyload, ptr %i.cm, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %.sroa.12.0.copyload, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %.sroa.13.0.copyload, ptr %i.co, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %.sroa.14.0.copyload, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.cr = load <4 x i8>, ptr %.sroa.16.0..sroa_idx, align 4
  %i.cs = shufflevector <4 x i8> %i.cr, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  store <4 x i8> %i.cs, ptr %i.cq, align 4
  %i.ct = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.ct, -2
  %switch = icmp ult i64 %.off, 4
  br i1 %switch, label %.thread437, label %bb.d

bb.d:                                             ; preds = %.noexc66
  %i.cu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.cv = icmp ult i8 %i.cu, 3
  br i1 %i.cv, label %bb.g, label %bb.e, !prof !47

bb.e:                                             ; preds = %bb.d
  %i.cw = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner010___CALLSITE)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i107 = phi i8 [ %i.cu, %bb.d ], [ %i.cw, %bb.e ] ; 2 uses
  %i.cy = icmp eq i8 %.sroa.0.0.i107, 0
  br i1 %i.cy, label %.thread437, label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %i.da = load ptr, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11
  %i.db = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.da, i8 noundef %.sroa.0.0.i107)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %i.db, label %bb.v, label %.thread437

.thread437:                                       ; preds = %.noexc66, %bb.g, %bb.j
  %i.dc = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not492 = icmp eq i8 %i.dc, 0
  br i1 %.not492, label %bb.k, label %bb.y

bb.k:                                             ; preds = %.thread437
  %i.dd = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.de = icmp ult i64 %i.dd, 6
  tail call void @llvm.assume(i1 %i.de)
  %i.df = icmp samesign ugt i64 %i.dd, 3
  br i1 %i.df, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.dg = load ptr, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.dh = getelementptr i8, ptr %i.dg, i64 32
  %.val84 = load ptr, ptr %i.dh, align 8, !nonnull !11, !noundef !11
  %i.di = getelementptr i8, ptr %i.dg, i64 40
  %.val85 = load i64, ptr %i.di, align 8, !noundef !11
  store i64 4, ptr %i.bx, align 8, !alias.scope !1895
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %.val84, ptr %.sroa.6176.0..sroa_idx, align 8, !alias.scope !1895
  %.sroa.8177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %.val85, ptr %.sroa.8177.0..sroa_idx, align 8, !alias.scope !1895
  %i.dj = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.dl = extractvalue { ptr, ptr } %i.dj, 0      ; 2 uses
  %i.dm = extractvalue { ptr, ptr } %i.dj, 1      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !invariant.load !11, !nonnull !11
  %i.dp = invoke noundef zeroext i1 %i.do(ptr noundef %i.dl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  br i1 %i.dp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.dr = load ptr, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner010___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr %i.cm, ptr %i.bt, align 8
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @_RNvXs8_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB5_12DatabaseNameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr @55, ptr %i.bu, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bt, ptr %i.dt, align 8
  store ptr %i.bu, ptr %i.bv, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @15, ptr %i.du, align 8
  store i64 1, ptr %i.bw, align 8, !alias.scope !1896, !noalias !1897
  %.sroa.4.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx.i110, align 8, !alias.scope !1896, !noalias !1897
  %.sroa.5.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i111, align 8, !alias.scope !1896, !noalias !1897
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %i.ds, ptr %i.dv, align 8, !alias.scope !1896, !noalias !1897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dg, ptr noundef nonnull %i.dl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bw)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
end_hunk_0
begin_hunk_1_@_RNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl14write_lp_inner0B6_:bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 4375
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 3984
  store ptr %.val31.i, ptr %i.fb, align 16, !noalias !1898
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 3992
  store i64 %.val32.i, ptr %i.fc, align 8, !noalias !1898
  store i8 1, ptr %i.ep, align 4, !noalias !1898
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 4168
  %.val.i = load ptr, ptr %i.fd, align 8, !noalias !1898, !nonnull !11, !noundef !11
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  store i8 0, ptr %i.fa, align 1, !noalias !1898
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(120) %i.eq, i64 120, i1 false), !noalias !1898
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3840
  store ptr %i.fe, ptr %.sroa.8.0..sroa_idx.i, align 16, !noalias !1898
  %.sroa.1074.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3968 ; 2 uses
  store i8 0, ptr %.sroa.1074.0..sroa_idx.i, align 16, !noalias !1898
  br label %bb.am

bb.ag:                                            ; preds = %.body.i
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 4372
  %i.fg = load i8, ptr %i.ff, align 4, !range !17, !noalias !1898, !noundef !11
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.li, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit63.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit63.i: ; preds = %bb.lj, %bb.li, %bb.ki, %bb.ag
  %i.fi = phi ptr [ %i.agi, %bb.ki ], [ %i.fr, %bb.li ], [ %i.fr, %bb.ag ], [ %i.fr, %bb.lj ] ; 2 uses
  %i.fj = phi ptr [ %i.agj, %bb.ki ], [ %i.fs, %bb.li ], [ %i.fs, %bb.ag ], [ %i.fs, %bb.lj ] ; 2 uses
  %.pn24.i = phi { ptr, i32 } [ %i.ahl, %bb.ki ], [ %eh.lpad-body.i, %bb.li ], [ %eh.lpad-body.i, %bb.ag ], [ %eh.lpad-body.i, %bb.lj ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 4372
  store i8 0, ptr %i.fk, align 4, !noalias !1898
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4000
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 4168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !1902, !noalias !1898, !nonnull !11, !noundef !11
  %i.fo = atomicrmw sub ptr %i.fn, i64 1 release, align 8, !noalias !1903
  %i.fp = icmp eq i64 %i.fo, 1
  br i1 %i.fp, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit63.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogE9drop_slowCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.kv, !noalias !1899

bb.ai:                                            ; preds = %bb.ad
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #31
          to label %.noexc115 unwind label %bb.ac

.noexc115:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ad
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #31
          to label %.noexc116 unwind label %bb.ac

.noexc116:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aq, %bb.ap
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ao, %bb.ak
  %i.fr = phi ptr [ %i.em, %bb.ak ], [ %i.fz, %bb.ao ] ; 3 uses
  %i.fs = phi ptr [ %i.el, %bb.ak ], [ %i.ga, %bb.ao ] ; 4 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fq, %bb.ak ], [ %.pn2.i.i, %bb.ao ] ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog6commit0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 16 %i.fs) #33
          to label %bb.ag unwind label %bb.kv, !noalias !1899

bb.al:                                            ; preds = %bb.ad
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 3968 ; 22 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 16, !range !29, !noalias !1904
  switch i8 %.pre.i, label %default.unreachable526 [
    i8 0, label %._crit_edge
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.as
  ]

._crit_edge:                                      ; preds = %bb.al
  %.phi.trans.insert498 = getelementptr inbounds nuw i8, ptr %1, i64 3840
  %.pre499 = load ptr, ptr %.phi.trans.insert498, align 16, !noalias !1904
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge, %.thread215.i
  %i.ft = phi ptr [ %i.en, %.thread215.i ], [ %i.em, %._crit_edge ] ; 2 uses
  %i.fu = phi ptr [ %i.eo, %.thread215.i ], [ %i.el, %._crit_edge ] ; 3 uses
  %i.fv = phi ptr [ %i.fe, %.thread215.i ], [ %.pre499, %._crit_edge ] ; 2 uses
  %i.fw = phi ptr [ %.sroa.1074.0..sroa_idx.i, %.thread215.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1904
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 3848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.az, ptr noundef nonnull align 8 dereferenceable(120) %i.fx, i64 120, i1 false), !noalias !1904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1904
  invoke void @_RNvMs0_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v311transactionNtB5_26DatabaseCatalogTransaction8finalize(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.az)
          to label %.thread.i.i unwind label %bb.an, !noalias !1905

bb.an:                                            ; preds = %bb.am
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1904
  br label %bb.ao

.thread.i.i:                                      ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.fu, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false), !noalias !1904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1904
  %.sroa.77.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  store ptr %i.fv, ptr %.sroa.77.0..sroa_idx.i.i, align 8, !noalias !1904
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !1904
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9171.i.i.sroa.0.i)
  br label %bb.av

bb.ao:                                            ; preds = %bb.ka, %.body.i.i, %bb.an
  %i.fz = phi ptr [ %i.agi, %bb.ka ], [ %i.gd, %.body.i.i ], [ %i.ft, %bb.an ]
  %i.ga = phi ptr [ %i.agj, %bb.ka ], [ %i.ge, %.body.i.i ], [ %i.fu, %bb.an ]
  %i.gb = phi ptr [ %i.agk, %bb.ka ], [ %i.gf, %.body.i.i ], [ %i.fw, %bb.an ]
  %.pn2.i.i = phi { ptr, i32 } [ %i.agm, %bb.ka ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.fy, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1904
  store i8 2, ptr %i.gb, align 16, !noalias !1904
  br label %.body.i

bb.ap:                                            ; preds = %bb.al
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #31
          to label %.noexc35.i unwind label %bb.ak, !noalias !1899

.noexc35.i:                                       ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.al
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #31
          to label %.noexc36.i unwind label %bb.ak, !noalias !1899

.noexc36.i:                                       ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.az, %bb.ay
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.ar
  %i.gd = phi ptr [ %i.em, %bb.ar ], [ %i.afw, %.body.i.i.i ]
  %i.ge = phi ptr [ %i.el, %bb.ar ], [ %i.afx, %.body.i.i.i ] ; 2 uses
  %i.gf = phi ptr [ %.phi.trans.insert.i, %bb.ar ], [ %i.afy, %.body.i.i.i ]
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.gc, %bb.ar ], [ %.pn56.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog18commit_transaction0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 16 %i.ge) #33
          to label %bb.ao unwind label %bb.kb, !noalias !1905

bb.as:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1904
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 20 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !33, !noalias !1906
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9171.i.i.sroa.0.i)
  switch i8 %.pre.i.i, label %default.unreachable526 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.ay
    i8 2, label %bb.az
    i8 3, label %bb.bb
    i8 4, label %bb.cz
    i8 5, label %bb.ds
    i8 6, label %bb.at
    i8 7, label %bb.au
  ]

._crit_edge.i:                                    ; preds = %bb.as
  %.phi.trans.insert197.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.pre198.i = load ptr, ptr %.phi.trans.insert197.i, align 8, !noalias !1906
  br label %bb.av

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1906
  br label %bb.iw

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1906
  br label %bb.jl

bb.av:                                            ; preds = %._crit_edge.i, %.thread.i.i
  %i.gg = phi ptr [ %i.ft, %.thread.i.i ], [ %i.em, %._crit_edge.i ] ; 2 uses
  %i.gh = phi ptr [ %i.fu, %.thread.i.i ], [ %i.el, %._crit_edge.i ] ; 3 uses
  %i.gi = phi ptr [ %i.fw, %.thread.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ] ; 2 uses
  %i.gj = phi ptr [ %i.fv, %.thread.i.i ], [ %.pre198.i, %._crit_edge.i ] ; 2 uses
  %i.gk = phi ptr [ %.sroa.9.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 649
  store i8 0, ptr %i.gl, align 1, !noalias !1906
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 0, ptr %i.gm, align 2, !noalias !1906
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr %i.gj, ptr %i.gn, align 16, !noalias !1906
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.go, ptr noundef nonnull align 16 dereferenceable(32) %i.gh, i64 32, i1 false), !noalias !1906
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.sroa.16.0.copyload.i.i.i = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i, align 16, !noalias !1906 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 520
  store i64 %.sroa.16.0.copyload.i.i.i, ptr %i.gp, align 8, !noalias !1906
  %i.gq = getelementptr i8, ptr %1, i64 544
  %.val64.i.i.i = load i64, ptr %i.gq, align 16, !noalias !1906, !noundef !11
  %i.gr = icmp eq i64 %.val64.i.i.i, 0
  %3 = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.16.0.copyload.i.i.i, i64 0
  br i1 %i.gr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit99.i.i.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.av
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 1848 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  store ptr %i.gs, ptr %i.gt, align 16, !noalias !1906
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 16, !noalias !1906
  br label %.thread.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit99.i.i.i: ; preds = %bb.cx, %bb.av
  %i.gu = phi ptr [ %i.gg, %bb.av ], [ %i.ol, %bb.cx ] ; 4 uses
  %i.gv = phi ptr [ %i.gh, %bb.av ], [ %i.om, %bb.cx ] ; 3 uses
  %.sroa.12232.i.i.i.sroa.0.3 = phi i56 [ undef, %bb.av ], [ %.sroa.12232.i.i.i.sroa.0.2, %bb.cx ]
  %i.gw = phi ptr [ %i.gi, %bb.av ], [ %i.on, %bb.cx ] ; 4 uses
  %.sroa.24.sroa.7.i.i.sroa.16.3.i = phi i32 [ undef, %bb.av ], [ %.sroa.24.sroa.7.i.i.sroa.16.2.i, %bb.cx ]
  %.sroa.24.sroa.7.i.i.sroa.15.3.i = phi i32 [ undef, %bb.av ], [ %.sroa.24.sroa.7.i.i.sroa.15.2.i, %bb.cx ]
  %.sroa.24.sroa.7.i.i.sroa.14.3.i = phi i64 [ undef, %bb.av ], [ %.sroa.24.sroa.7.i.i.sroa.14.2.i, %bb.cx ]
  %.sroa.24.sroa.7.i.i.sroa.11.3.i = phi ptr [ undef, %bb.av ], [ %.sroa.24.sroa.7.i.i.sroa.11.2.i, %bb.cx ]
  %.sroa.24.sroa.7.i.i.sroa.0.3.i = phi i64 [ undef, %bb.av ], [ %.sroa.24.sroa.7.i.i.sroa.0.2.i, %bb.cx ]
  %i.gx = phi ptr [ %i.gk, %bb.av ], [ %i.oo, %bb.cx ] ; 3 uses
  %.sroa.17234.0.i.i.i = phi i64 [ 0, %bb.av ], [ %.sroa.17234.1.i.i.i, %bb.cx ]
  %.sroa.0230.0.i.i.i = phi i8 [ -1, %bb.av ], [ %.sroa.0230.1.i.i.i, %bb.cx ] ; 2 uses
  %4 = phi <2 x i64> [ %3, %bb.av ], [ %5, %bb.cx ]
  %i.gy = phi <2 x i64> [ undef, %bb.av ], [ %i.op, %bb.cx ]
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gz)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i unwind label %bb.aw, !noalias !1907

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit99.i.i.i
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gz)
          to label %.body.i.i.i unwind label %bb.ax, !noalias !1907

bb.ax:                                            ; preds = %bb.aw
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1907
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit99.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gz)
          to label %bb.jy unwind label %bb.jx, !noalias !1907

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i: ; preds = %bb.ju, %bb.cw, %.body83.i.i.i
  %i.hc = phi ptr [ %i.afo, %bb.ju ], [ %i.og, %bb.cw ], [ %i.hi, %.body83.i.i.i ]
  %i.hd = phi ptr [ %i.afp, %bb.ju ], [ %i.oh, %bb.cw ], [ %i.hj, %.body83.i.i.i ]
  %i.he = phi ptr [ %i.afq, %bb.ju ], [ %i.oi, %bb.cw ], [ %i.hk, %.body83.i.i.i ]
  %i.hf = phi ptr [ %i.afr, %bb.ju ], [ %i.oj, %bb.cw ], [ %i.hl, %.body83.i.i.i ]
  %.pn54.i.i.i = phi { ptr, i32 } [ %i.afs, %bb.ju ], [ %.pn51.pn.i.i.i, %bb.cw ], [ %eh.lpad-body84.i.i.i, %.body83.i.i.i ]
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 528
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record11RecordBatchECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.hg) #33
          to label %.body.i.i.i unwind label %bb.cv, !noalias !1907

bb.ay:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #31
          to label %.noexc.i.i unwind label %bb.ar, !noalias !1905

.noexc.i.i:                                       ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #31
          to label %.noexc4.i.i unwind label %bb.ar, !noalias !1905

.noexc4.i.i:                                      ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.bd, %bb.bc
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body83.i.i.i

.body83.i.i.i:                                    ; preds = %.body14.i.i.i.i, %bb.ba
  %i.hi = phi ptr [ %i.em, %bb.ba ], [ %i.lj, %.body14.i.i.i.i ]
  %i.hj = phi ptr [ %i.el, %bb.ba ], [ %i.lk, %.body14.i.i.i.i ]
  %i.hk = phi ptr [ %.phi.trans.insert.i, %bb.ba ], [ %i.ll, %.body14.i.i.i.i ]
  %i.hl = phi ptr [ %.phi.trans.insert.i.i, %bb.ba ], [ %i.lm, %.body14.i.i.i.i ]
  %i.hm = phi ptr [ %i.hn, %bb.ba ], [ %i.lo, %.body14.i.i.i.i ]
  %eh.lpad-body84.i.i.i = phi { ptr, i32 } [ %i.hh, %bb.ba ], [ %.pn.i.i.i.i, %.body14.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs8_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtBJ_5MutexNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberE4lock0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.hm) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i unwind label %bb.cv, !noalias !1907

bb.bb:                                            ; preds = %bb.as
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 10 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 16, !range !29, !noalias !1908
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 11 uses
  switch i8 %.pre.i.i.i, label %default.unreachable526 [
    i8 0, label %..thread.i.i_crit_edge.i.i
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.be
  ]

..thread.i.i_crit_edge.i.i:                       ; preds = %bb.bb
  %.pre8.i.i = load ptr, ptr %i.hn, align 16, !noalias !1908
  br label %.thread.i.i.i.i

.body14.i.i.i.i:                                  ; preds = %.body.i.i.i.i
  store i8 2, ptr %i.ln, align 8, !noalias !1908
  br label %.body83.i.i.i

.thread.i.i.i.i:                                  ; preds = %..thread.i.i_crit_edge.i.i, %.thread.i.i.i
  %i.ho = phi ptr [ %i.gg, %.thread.i.i.i ], [ %i.em, %..thread.i.i_crit_edge.i.i ]
  %i.hp = phi ptr [ %i.gh, %.thread.i.i.i ], [ %i.el, %..thread.i.i_crit_edge.i.i ]
  %i.hq = phi ptr [ %i.gi, %.thread.i.i.i ], [ %.phi.trans.insert.i, %..thread.i.i_crit_edge.i.i ]
  %i.hr = phi ptr [ %i.gk, %.thread.i.i.i ], [ %.phi.trans.insert.i.i, %..thread.i.i_crit_edge.i.i ]
  %i.hs = phi ptr [ %i.gs, %.thread.i.i.i ], [ %.pre8.i.i, %..thread.i.i_crit_edge.i.i ] ; 2 uses
  %i.ht = phi ptr [ %.sroa.8.0..sroa_idx.i.i.i, %.thread.i.i.i ], [ %.phi.trans.insert.i.i.i, %..thread.i.i_crit_edge.i.i ]
  %i.hu = phi ptr [ %i.gt, %.thread.i.i.i ], [ %i.hn, %..thread.i.i_crit_edge.i.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  store ptr %i.hs, ptr %i.hv, align 8, !noalias !1908
  %.sroa.819.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  store i8 0, ptr %.sroa.819.0..sroa_idx.i.i.i.i, align 8, !noalias !1908
  br label %.thread.i.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #31
          to label %.noexc.i.i.i unwind label %bb.ba, !noalias !1907

.noexc.i.i.i:                                     ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bb
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #31
          to label %.noexc85.i.i.i unwind label %bb.ba, !noalias !1907

.noexc85.i.i.i:                                   ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bb
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 8 uses
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !29, !noalias !1909
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 9 uses
  switch i8 %.pre.i.i.i.i, label %default.unreachable526 [
    i8 0, label %..thread.i.i_crit_edge.i.i.i
    i8 1, label %bb.bg
    i8 2, label %bb.bh
    i8 3, label %bb.bi
  ]

..thread.i.i_crit_edge.i.i.i:                     ; preds = %bb.be
  %.pre304.i.i.i = load ptr, ptr %i.hw, align 8, !noalias !1909
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %..thread.i.i_crit_edge.i.i.i, %.thread.i.i.i.i
  %i.hx = phi ptr [ %i.ho, %.thread.i.i.i.i ], [ %i.em, %..thread.i.i_crit_edge.i.i.i ]
  %i.hy = phi ptr [ %i.hp, %.thread.i.i.i.i ], [ %i.el, %..thread.i.i_crit_edge.i.i.i ]
  %i.hz = phi ptr [ %i.hq, %.thread.i.i.i.i ], [ %.phi.trans.insert.i, %..thread.i.i_crit_edge.i.i.i ]
  %i.ia = phi ptr [ %i.hr, %.thread.i.i.i.i ], [ %.phi.trans.insert.i.i, %..thread.i.i_crit_edge.i.i.i ]
  %i.ib = phi ptr [ %i.ht, %.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %..thread.i.i_crit_edge.i.i.i ]
  %i.ic = phi ptr [ %i.hu, %.thread.i.i.i.i ], [ %i.hn, %..thread.i.i_crit_edge.i.i.i ]
  %i.id = phi ptr [ %i.hs, %.thread.i.i.i.i ], [ %.pre304.i.i.i, %..thread.i.i_crit_edge.i.i.i ] ; 2 uses
  %i.ie = phi ptr [ %.sroa.819.0..sroa_idx.i.i.i.i, %.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %..thread.i.i_crit_edge.i.i.i ]
  %i.if = phi ptr [ %i.hv, %.thread.i.i.i.i ], [ %i.hw, %..thread.i.i_crit_edge.i.i.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  store ptr %i.id, ptr %i.ig, align 16, !noalias !1909
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 16, !noalias !1909
  br label %.thread.i.i.i.i.i.i

bb.bf:                                            ; preds = %.body.i.i.i.i.i
  store i8 2, ptr %i.le, align 8, !noalias !1909
  br label %.body.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #31
          to label %.noexc.i.i.i.i unwind label %bb.ce, !noalias !1910

.noexc.i.i.i.i:                                   ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.be
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #31
          to label %.noexc8.i.i.i.i unwind label %bb.ce, !noalias !1910

.noexc8.i.i.i.i:                                  ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.be
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 6 uses
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 16, !range !26, !noalias !1911
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 7 uses
  switch i8 %.pre.i.i.i.i.i, label %default.unreachable526 [
    i8 0, label %..thread.i.i_crit_edge.i.i.i.i
    i8 1, label %bb.bj
    i8 2, label %bb.bk
    i8 3, label %bb.bl
    i8 4, label %bb.br
  ]

..thread.i.i_crit_edge.i.i.i.i:                   ; preds = %bb.bi
  %.pre23.i.i.i.i = load ptr, ptr %i.ih, align 16, !noalias !1911
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %..thread.i.i_crit_edge.i.i.i.i, %.thread.i.i.i.i.i
  %i.ii = phi ptr [ %i.hx, %.thread.i.i.i.i.i ], [ %i.em, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.ij = phi ptr [ %i.hy, %.thread.i.i.i.i.i ], [ %i.el, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.ik = phi ptr [ %i.hz, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.il = phi ptr [ %i.ia, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i.i, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.im = phi ptr [ %i.ib, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.in = phi ptr [ %i.ic, %.thread.i.i.i.i.i ], [ %i.hn, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.io = phi ptr [ %i.ie, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.ip = phi ptr [ %i.if, %.thread.i.i.i.i.i ], [ %i.hw, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.iq = phi ptr [ %i.id, %.thread.i.i.i.i.i ], [ %.pre23.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.ir = phi ptr [ %.sroa.8.0..sroa_idx.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.is = phi ptr [ %i.ig, %.thread.i.i.i.i.i ], [ %i.ih, %..thread.i.i_crit_edge.i.i.i.i ]
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 680
  store ptr %i.iq, ptr %i.it, align 8, !noalias !1911
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i8 0, ptr %i.iu, align 8, !noalias !1911
  br label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #31
          to label %.noexc.i.i.i.i.i unwind label %bb.cc, !noalias !1912

.noexc.i.i.i.i.i:                                 ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bi
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #31
          to label %.noexc7.i.i.i.i.i unwind label %bb.cc, !noalias !1912
end_hunk_1
begin_hunk_2_@_RNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl14write_lp_inner0B6_:bb.a
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.val69.i.i.i = load i64, ptr %i.lt, align 8, !noalias !1907, !noundef !11 ; 2 uses
  %.val70.i.i.i = load i64, ptr %i.lu, align 8, !noalias !1906, !noundef !11
  %.not302.i.i.i = icmp eq i64 %.val69.i.i.i, %.val70.i.i.i
  br i1 %.not302.i.i.i, label %bb.ci, label %bb.cx

bb.ci:                                            ; preds = %bb.ch
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 4 uses
  %i.lw = add i64 %.val69.i.i.i, 1
  store i64 %i.lw, ptr %i.lv, align 8, !noalias !1906
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 5 uses
  %i.ly = load ptr, ptr %i.lx, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 160 ; 5 uses
  %i.ma = load atomic i64, ptr %i.lz monotonic, align 8, !noalias !1907 ; 4 uses
  %i.mb = and i64 %i.ma, 8
  %i.mc = icmp ne i64 %i.mb, 0
  %i.md = icmp ugt i64 %i.ma, -17
  %or.cond.i.i.i.i.i.i = or i1 %i.md, %i.mc
  br i1 %or.cond.i.i.i.i.i.i, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i.i, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i.i, !prof !48

_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i.i: ; preds = %bb.ci
  %i.me = add nuw i64 %i.ma, 16
  %i.mf = cmpxchg weak ptr %i.lz, i64 %i.ma, i64 %i.me acquire monotonic, align 8, !noalias !1907
  %i.mg = extractvalue { i64, i1 } %i.mf, 1
  br i1 %i.mg, label %bb.ck, label %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i.i, !prof !49

_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i.i: ; preds = %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i.i, %bb.ci
  %i.mh = invoke noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.lz, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.ck unwind label %bb.cj, !noalias !1907 ; 0 uses

bb.cj:                                            ; preds = %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i.i
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ck:                                            ; preds = %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.i.i, %_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ly, i64 1840
  %i.mk = load i16, ptr %i.mj, align 8, !noalias !1907, !noundef !11 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ly, i64 1842
  %i.mm = load i16, ptr %i.ml, align 2, !noalias !1907, !noundef !11 ; 2 uses
  %i.mn = atomicrmw sub ptr %i.lz, i64 16 release, align 8, !noalias !1907
  %i.mo = and i64 %i.mn, -14
  %i.mp = icmp eq i64 %i.mo, 18
  br i1 %i.mp, label %bb.cl, label %bb.cn, !prof !14

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.lz)
          to label %bb.cn unwind label %bb.cm, !noalias !1907

bb.cm:                                            ; preds = %bb.cl
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cn:                                            ; preds = %bb.cl, %bb.ck
  %i.mr = getelementptr i8, ptr %1, i64 536
  %.val61.i.i.i = load ptr, ptr %i.mr, align 8, !noalias !1906, !nonnull !11, !noundef !11 ; 3 uses
  %i.ms = getelementptr i8, ptr %1, i64 544
  %.val62.i.i.i = load i64, ptr %i.ms, align 16, !noalias !1906, !noundef !11 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %.idx.i.i.i.i = mul nuw nsw i64 %.val62.i.i.i, 48
  %i.mu = getelementptr inbounds nuw i8, ptr %.val61.i.i.i, i64 %.idx.i.i.i.i
  %i.mv = icmp eq i64 %.val62.i.i.i, 0
  br i1 %i.mv, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cn, %.backedge.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.mw, %.backedge.i.i.i.i ], [ %.val61.i.i.i, %bb.cn ] ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 48 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 46
  %i.my = load i16, ptr %i.mx, align 2, !noalias !1915, !noundef !11
  %i.mz = and i16 %i.my, 1
  %i.na = icmp eq i16 %i.mz, 0
  br i1 %i.na, label %bb.co, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %bb.co, %.lr.ph.i.i.i.i
  %i.nb = icmp eq ptr %i.mw, %i.mu
  br i1 %i.nb, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

bb.co:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 44
  %i.nd = load i16, ptr %i.nc, align 4, !noalias !1915, !noundef !11 ; 4 uses
  %i.ne = icmp ule i16 %i.nd, %i.mk
  %i.nf = and i16 %i.nd, 32767
  %i.ng = icmp ule i16 %i.nf, %i.mm
  %i.nh = icmp slt i16 %i.nd, 0
  %.sroa.02.0.in.i.i.i.i = select i1 %i.nh, i1 %i.ng, i1 %i.ne
  br i1 %.sroa.02.0.in.i.i.i.i, label %.backedge.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i8 57, ptr %i.mt, align 8, !alias.scope !1914, !noalias !1906
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 666
  store i16 %i.nd, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 2, !alias.scope !1914, !noalias !1906
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 668
  store i16 %i.mk, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !alias.scope !1914, !noalias !1906
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 670
  store i16 %i.mm, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 2, !alias.scope !1914, !noalias !1906
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 649
  store i8 1, ptr %i.ni, align 1, !noalias !1906
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.nj, ptr noundef nonnull align 8 dereferenceable(80) %i.mt, i64 80, i1 false), !noalias !1906
  %i.nk = load ptr, ptr %i.lx, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.nl = invoke noundef i64 @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB5_7Catalog15sequence_number(ptr noundef nonnull align 8 %i.nk)
          to label %bb.cs unwind label %bb.cr, !noalias !1907

bb.cq:                                            ; preds = %bb.dl, %bb.dg, %bb.dd, %bb.cy, %bb.cr
  %i.nm = phi ptr [ %i.jv, %bb.cr ], [ %i.os, %bb.dg ], [ %i.os, %bb.dl ], [ %i.os, %bb.cy ], [ %i.os, %bb.dd ]
  %i.nn = phi ptr [ %i.jw, %bb.cr ], [ %i.ot, %bb.dg ], [ %i.ot, %bb.dl ], [ %i.ot, %bb.cy ], [ %i.ot, %bb.dd ]
  %i.no = phi ptr [ %i.jx, %bb.cr ], [ %i.ou, %bb.dg ], [ %i.ou, %bb.dl ], [ %i.ou, %bb.cy ], [ %i.ou, %bb.dd ]
  %i.np = phi ptr [ %i.jy, %bb.cr ], [ %i.ov, %bb.dg ], [ %i.ov, %bb.dl ], [ %i.ov, %bb.cy ], [ %i.ov, %bb.dd ]
  %.pn48.pn.i.i.i = phi { ptr, i32 } [ %i.nr, %bb.cr ], [ %i.pe, %bb.dg ], [ %i.pp, %bb.dl ], [ %i.or, %bb.cy ], [ %i.pa, %bb.dd ]
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.nq) #33
          to label %bb.dp unwind label %bb.cv, !noalias !1907

bb.cr:                                            ; preds = %bb.cp
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cs:                                            ; preds = %bb.cp
  store i64 %i.nl, ptr %i.ka, align 16, !noalias !1906
  %i.ns = load ptr, ptr %i.lx, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.nt = load i64, ptr %i.lv, align 8, !noalias !1906, !noundef !11
  %.sroa.8150.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2816
  store i64 %i.nt, ptr %.sroa.8150.0..sroa_idx.i.i.i, align 16, !noalias !1906
  %.sroa.10152.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2864
  store ptr %i.ns, ptr %.sroa.10152.0..sroa_idx.i.i.i, align 16, !noalias !1906
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2874
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i.i, align 2, !noalias !1906
  br label %bb.cz

.loopexit.i.i.i:                                  ; preds = %.backedge.i.i.i.i, %bb.cn
  store i8 -1, ptr %i.mt, align 8, !alias.scope !1914, !noalias !1906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1906
  %i.nu = load ptr, ptr %i.lx, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 1896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.nv, i64 16, i1 false), !noalias !1907
  %.val75.i.i.i = load i64, ptr %i.lv, align 8, !noalias !1906, !noundef !11
  invoke void @_RNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply18serialize_log_file(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aw, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.av, i64 noundef %.val75.i.i.i, ptr noundef nonnull align 8 %.val61.i.i.i, i64 noundef %.val62.i.i.i)
          to label %.thread329.i.i.i unwind label %bb.ct, !noalias !1907

bb.ct:                                            ; preds = %.loopexit.i.i.i
  %i.nw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1906
  br label %bb.cu

.thread329.i.i.i:                                 ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1906
  %i.nx = load ptr, ptr %i.lx, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 40 ; 2 uses
  %i.nz = load i64, ptr %i.lv, align 8, !noalias !1906, !noundef !11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ka, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !noalias !1906
  %.sroa.12165.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 912
  store i64 %i.nz, ptr %.sroa.12165.0..sroa_idx.i.i.i, align 16, !noalias !1906
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 952
  store ptr %i.ny, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.16.0..sroa_idx167.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 961 ; 2 uses
  store i8 0, ptr %.sroa.16.0..sroa_idx167.i.i.i, align 1, !noalias !1906
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5126.i.i.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6103.i.i.i.sroa.0.i)
  br label %bb.dt

bb.cu:                                            ; preds = %bb.js, %bb.jp, %bb.jk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i, %bb.ht, %.body113.i.i.i, %bb.ct
  %i.ob = phi ptr [ %i.jv, %bb.ct ], [ %i.qa, %.body113.i.i.i ], [ %i.adk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i ], [ %i.ui, %bb.ht ], [ %i.aez, %bb.js ], [ %i.aez, %bb.jk ], [ %i.aez, %bb.jp ]
  %i.oc = phi ptr [ %i.jw, %bb.ct ], [ %i.qb, %.body113.i.i.i ], [ %i.adl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i ], [ %i.uj, %bb.ht ], [ %i.afa, %bb.js ], [ %i.afa, %bb.jk ], [ %i.afa, %bb.jp ]
  %i.od = phi ptr [ %i.jx, %bb.ct ], [ %i.qc, %.body113.i.i.i ], [ %i.adm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i ], [ %i.uk, %bb.ht ], [ %i.afb, %bb.js ], [ %i.afb, %bb.jk ], [ %i.afb, %bb.jp ]
  %i.oe = phi ptr [ %i.jy, %bb.ct ], [ %i.qd, %.body113.i.i.i ], [ %i.adn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i ], [ %i.ul, %bb.ht ], [ %i.afc, %bb.js ], [ %i.afc, %bb.jk ], [ %i.afc, %bb.jp ]
  %.pn40.pn.i.i.i = phi { ptr, i32 } [ %i.nw, %bb.ct ], [ %eh.lpad-body114.i.i.i, %.body113.i.i.i ], [ %.pn32.pn.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i ], [ %i.abr, %bb.ht ], [ %i.afl, %bb.js ], [ %i.aey, %bb.jk ], [ %i.afh, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1906
  br label %bb.cw

bb.cv:                                            ; preds = %bb.jk, %bb.jj, %bb.iv, %bb.ir, %.body162, %.body113.i.i.i, %bb.cy, %bb.cw, %bb.cq, %.body83.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1907
  unreachable

bb.cw:                                            ; preds = %bb.dp, %bb.cu, %bb.cm, %bb.cj
  %i.og = phi ptr [ %i.pt, %bb.dp ], [ %i.ob, %bb.cu ], [ %i.jv, %bb.cj ], [ %i.jv, %bb.cm ]
  %i.oh = phi ptr [ %i.pu, %bb.dp ], [ %i.oc, %bb.cu ], [ %i.jw, %bb.cj ], [ %i.jw, %bb.cm ]
  %i.oi = phi ptr [ %i.pv, %bb.dp ], [ %i.od, %bb.cu ], [ %i.jx, %bb.cj ], [ %i.jx, %bb.cm ]
  %i.oj = phi ptr [ %i.pw, %bb.dp ], [ %i.oe, %bb.cu ], [ %i.jy, %bb.cj ], [ %i.jy, %bb.cm ]
  %.pn51.pn.i.i.i = phi { ptr, i32 } [ %.pn51.i.i.i, %bb.dp ], [ %.pn40.pn.i.i.i, %bb.cu ], [ %i.mi, %bb.cj ], [ %i.mq, %bb.cm ]
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke void @_RNvXsd_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtB5_10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ok)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i unwind label %bb.cv, !noalias !1907

bb.cx:                                            ; preds = %bb.iu, %bb.dn, %bb.ch
  %i.ol = phi ptr [ %i.adu, %bb.iu ], [ %i.os, %bb.dn ], [ %i.jv, %bb.ch ] ; 2 uses
  %i.om = phi ptr [ %i.adv, %bb.iu ], [ %i.ot, %bb.dn ], [ %i.jw, %bb.ch ] ; 2 uses
  %.sroa.12232.i.i.i.sroa.0.2 = phi i56 [ %.sroa.12232.i.i.i.sroa.0.1, %bb.iu ], [ %.sroa.12232.i.i.i.sroa.0.11, %bb.dn ], [ undef, %bb.ch ]
  %i.on = phi ptr [ %i.adw, %bb.iu ], [ %i.ou, %bb.dn ], [ %i.jx, %bb.ch ] ; 2 uses
  %.sroa.24.sroa.7.i.i.sroa.16.2.i = phi i32 [ %.sroa.24.sroa.7.i.i.sroa.16.1.i, %bb.iu ], [ %.sroa.24.sroa.7.i.i.sroa.16.12.i, %bb.dn ], [ undef, %bb.ch ]
  %.sroa.24.sroa.7.i.i.sroa.15.2.i = phi i32 [ %.sroa.24.sroa.7.i.i.sroa.15.1.i, %bb.iu ], [ %.sroa.24.sroa.7.i.i.sroa.15.12.i, %bb.dn ], [ undef, %bb.ch ]
  %.sroa.24.sroa.7.i.i.sroa.14.2.i = phi i64 [ %.sroa.24.sroa.7.i.i.sroa.14.1.i, %bb.iu ], [ %.sroa.24.sroa.7.i.i.sroa.14.12.i, %bb.dn ], [ undef, %bb.ch ]
  %.sroa.24.sroa.7.i.i.sroa.11.2.i = phi ptr [ %.sroa.24.sroa.7.i.i.sroa.11.1.i, %bb.iu ], [ %.sroa.24.sroa.7.i.i.sroa.11.12.i, %bb.dn ], [ undef, %bb.ch ]
  %.sroa.24.sroa.7.i.i.sroa.0.2.i = phi i64 [ %.sroa.24.sroa.7.i.i.sroa.0.1.i, %bb.iu ], [ %.sroa.24.sroa.7.i.i.sroa.0.12.i, %bb.dn ], [ undef, %bb.ch ]
  %i.oo = phi ptr [ %i.adx, %bb.iu ], [ %i.ov, %bb.dn ], [ %i.jy, %bb.ch ] ; 2 uses
  %.sroa.17234.1.i.i.i = phi i64 [ %.sroa.17234.4.i.i.i, %bb.iu ], [ %.sroa.17234.2.i.i.i, %bb.dn ], [ 1, %bb.ch ]
  %.sroa.0230.1.i.i.i = phi i8 [ %.sroa.0230.4.i.i.i, %bb.iu ], [ %.sroa.0230.2.i.i.i, %bb.dn ], [ -1, %bb.ch ]
  %5 = phi <2 x i64> [ %11, %bb.iu ], [ %8, %bb.dn ], [ undef, %bb.ch ]
  %i.op = phi <2 x i64> [ %i.ady, %bb.iu ], [ %i.pl, %bb.dn ], [ undef, %bb.ch ]
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke void @_RNvXsd_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtB5_10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.oq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit99.i.i.i unwind label %bb.ju, !noalias !1907

bb.cy:                                            ; preds = %bb.cz
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1906
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog13catch_up_from0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 16 %i.ow) #33
          to label %bb.cq unwind label %bb.cv, !noalias !1907

bb.cz:                                            ; preds = %bb.cs, %bb.as
  %i.os = phi ptr [ %i.em, %bb.as ], [ %i.jv, %bb.cs ] ; 7 uses
  %i.ot = phi ptr [ %i.el, %bb.as ], [ %i.jw, %bb.cs ] ; 6 uses
  %i.ou = phi ptr [ %.phi.trans.insert.i, %bb.as ], [ %i.jx, %bb.cs ] ; 7 uses
  %i.ov = phi ptr [ %.phi.trans.insert.i.i, %bb.as ], [ %i.jy, %bb.cs ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !1906
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 3 uses
  invoke fastcc void @_RNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB7_7Catalog13catch_up_from0Cs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.ax, ptr noundef nonnull align 16 %i.ow, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.da unwind label %bb.cy, !noalias !1907

bb.da:                                            ; preds = %bb.cz
  %i.ox = load i8, ptr %i.ax, align 8, !range !50, !noalias !1906, !noundef !11 ; 3 uses
  %i.oy = icmp eq i8 %i.ox, -2
  br i1 %i.oy, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1906
  br label %.thread26.i.i

bb.dc:                                            ; preds = %bb.da
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %.sroa.3.sroa.0.i.i.i.sroa.0.0.copyload = load i56, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1, !noalias !1906
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.3.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %6 = load <2 x i64>, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.3.sroa.5.i.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.3.sroa.5.i.i.sroa.6.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %.sroa.3.sroa.5.i.i.sroa.6.0.copyload.i = load ptr, ptr %.sroa.3.sroa.5.i.i.sroa.6.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3.sroa.5.i.i.sroa.7.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.oz = load <2 x i64>, ptr %.sroa.3.sroa.5.i.i.sroa.7.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3.sroa.5.i.i.sroa.9.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %.sroa.3.sroa.5.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.3.sroa.5.i.i.sroa.9.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3.sroa.5.i.i.sroa.10.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %.sroa.3.sroa.5.i.i.sroa.10.0.copyload.i = load i32, ptr %.sroa.3.sroa.5.i.i.sroa.10.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3.sroa.5.i.i.sroa.11.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 76
  %.sroa.3.sroa.5.i.i.sroa.11.0.copyload.i = load i32, ptr %.sroa.3.sroa.5.i.i.sroa.11.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 4, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1906
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog13catch_up_from0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 16 %i.ow)
          to label %bb.de unwind label %bb.dd, !noalias !1907

bb.dd:                                            ; preds = %bb.dc
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.de:                                            ; preds = %bb.dc
  %.not.i.i.i.i = icmp eq i8 %i.ox, -1
  br i1 %.not.i.i.i.i, label %bb.df, label %bb.dk

bb.df:                                            ; preds = %bb.de
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.pd = invoke noundef i64 @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB5_7Catalog15sequence_number(ptr noundef nonnull align 8 %i.pc)
          to label %bb.dh unwind label %bb.dg, !noalias !1907

bb.dg:                                            ; preds = %bb.df
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.dh:                                            ; preds = %bb.df
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.val68.i.i.i = load i64, ptr %i.pf, align 16, !noalias !1906, !noundef !11
  %.not303.i.i.i = icmp eq i64 %i.pd, %.val68.i.i.i
  br i1 %.not303.i.i.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 649
  store i8 0, ptr %i.pg, align 1, !noalias !1906
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 744
  %.sroa.0261.0.copyload.i.i.i = load i8, ptr %i.ph, align 8, !noalias !1906
  %.sroa.4262.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 745
  %.sroa.12232.i.i.i.sroa.0.0.copyload432 = load i56, ptr %.sroa.4262.0..sroa_idx.i.i.i, align 1, !noalias !1906
  %.sroa.5263.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 752
  %.sroa.5263.0.copyload.i.i.i = load i64, ptr %.sroa.5263.0..sroa_idx.i.i.i, align 16, !noalias !1906
  %.sroa.6264.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 760
  %7 = load <2 x i64>, ptr %.sroa.6264.0..sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.8266.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  %.sroa.24.sroa.7.i.i.sroa.0.0.copyload106.i = load i64, ptr %.sroa.8266.0..sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.24.sroa.7.i.i.sroa.11.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 784
  %.sroa.24.sroa.7.i.i.sroa.11.0.copyload111.i = load ptr, ptr %.sroa.24.sroa.7.i.i.sroa.11.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i, align 16, !noalias !1906
  %.sroa.24.sroa.7.i.i.sroa.12.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.pi = load <2 x i64>, ptr %.sroa.24.sroa.7.i.i.sroa.12.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.24.sroa.7.i.i.sroa.14.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 808
  %.sroa.24.sroa.7.i.i.sroa.14.0.copyload126.i = load i64, ptr %.sroa.24.sroa.7.i.i.sroa.14.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.24.sroa.7.i.i.sroa.15.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 816
  %.sroa.24.sroa.7.i.i.sroa.15.0.copyload131.i = load i32, ptr %.sroa.24.sroa.7.i.i.sroa.15.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i, align 16, !noalias !1906
  %.sroa.24.sroa.7.i.i.sroa.16.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 820
  %.sroa.24.sroa.7.i.i.sroa.16.0.copyload136.i = load i32, ptr %.sroa.24.sroa.7.i.i.sroa.16.0..sroa.8266.0..sroa_idx.i.i.sroa_idx.i, align 4, !noalias !1906
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.pj = load ptr, ptr %i.pb, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.pk = invoke noundef i64 @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB5_7Catalog15sequence_number(ptr noundef nonnull align 8 %i.pj)
          to label %bb.dm unwind label %bb.dl, !noalias !1907

bb.dk:                                            ; preds = %bb.de, %bb.dm, %bb.di
  %.sroa.12232.i.i.i.sroa.0.11 = phi i56 [ %.sroa.12232.i.i.i.sroa.0.0.copyload432, %bb.di ], [ undef, %bb.dm ], [ %.sroa.3.sroa.0.i.i.i.sroa.0.0.copyload, %bb.de ]
  %.sroa.24.sroa.7.i.i.sroa.16.12.i = phi i32 [ %.sroa.24.sroa.7.i.i.sroa.16.0.copyload136.i, %bb.di ], [ undef, %bb.dm ], [ %.sroa.3.sroa.5.i.i.sroa.11.0.copyload.i, %bb.de ]
  %.sroa.24.sroa.7.i.i.sroa.15.12.i = phi i32 [ %.sroa.24.sroa.7.i.i.sroa.15.0.copyload131.i, %bb.di ], [ undef, %bb.dm ], [ %.sroa.3.sroa.5.i.i.sroa.10.0.copyload.i, %bb.de ]
  %.sroa.24.sroa.7.i.i.sroa.14.12.i = phi i64 [ %.sroa.24.sroa.7.i.i.sroa.14.0.copyload126.i, %bb.di ], [ undef, %bb.dm ], [ %.sroa.3.sroa.5.i.i.sroa.9.0.copyload.i, %bb.de ]
  %.sroa.24.sroa.7.i.i.sroa.11.12.i = phi ptr [ %.sroa.24.sroa.7.i.i.sroa.11.0.copyload111.i, %bb.di ], [ undef, %bb.dm ], [ %.sroa.3.sroa.5.i.i.sroa.6.0.copyload.i, %bb.de ]
  %.sroa.24.sroa.7.i.i.sroa.0.12.i = phi i64 [ %.sroa.24.sroa.7.i.i.sroa.0.0.copyload106.i, %bb.di ], [ undef, %bb.dm ], [ %.sroa.3.sroa.5.i.i.sroa.0.0.copyload.i, %bb.de ]
  %.sroa.17234.2.i.i.i = phi i64 [ %.sroa.5263.0.copyload.i.i.i, %bb.di ], [ 1, %bb.dm ], [ %.sroa.3.sroa.2.0.copyload.i.i.i, %bb.de ]
  %.sroa.0230.2.i.i.i = phi i8 [ %.sroa.0261.0.copyload.i.i.i, %bb.di ], [ -1, %bb.dm ], [ %i.ox, %bb.de ]
  %8 = phi <2 x i64> [ %7, %bb.di ], [ undef, %bb.dm ], [ %6, %bb.de ]
  %i.pl = phi <2 x i64> [ %i.pi, %bb.di ], [ undef, %bb.dm ], [ %i.oz, %bb.de ]
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 649 ; 2 uses
  %i.pn = load i8, ptr %i.pm, align 1, !range !17, !noalias !1906, !noundef !11
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %bb.do, label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.dm:                                            ; preds = %bb.dj
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val82.i.i.i = load ptr, ptr %i.pq, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.pr = getelementptr inbounds nuw i8, ptr %.val82.i.i.i, i64 40
  store i64 %i.pk, ptr %i.pr, align 8, !noalias !1907
  br label %bb.dk

bb.dn:                                            ; preds = %bb.do, %bb.dk
  store i8 0, ptr %i.pm, align 1, !noalias !1906
  br label %bb.cx

bb.do:                                            ; preds = %bb.dk
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 744
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ps)
          to label %bb.dn unwind label %bb.dq, !noalias !1907

bb.dp:                                            ; preds = %bb.dq, %bb.cq
  %i.pt = phi ptr [ %i.os, %bb.dq ], [ %i.nm, %bb.cq ]
  %i.pu = phi ptr [ %i.ot, %bb.dq ], [ %i.nn, %bb.cq ]
  %i.pv = phi ptr [ %i.ou, %bb.dq ], [ %i.no, %bb.cq ]
  %i.pw = phi ptr [ %i.ov, %bb.dq ], [ %i.np, %bb.cq ]
  %.pn51.i.i.i = phi { ptr, i32 } [ %i.py, %bb.dq ], [ %.pn48.pn.i.i.i, %bb.cq ]
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 649
  store i8 0, ptr %i.px, align 1, !noalias !1906
  br label %bb.cw

bb.dq:                                            ; preds = %bb.do
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dr:                                            ; preds = %bb.dz, %bb.dy
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %.body113.i.i.i

.body113.i.i.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i, %bb.dr
  %i.qa = phi ptr [ %i.em, %bb.dr ], [ %i.ri, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  %i.qb = phi ptr [ %i.el, %bb.dr ], [ %i.rj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  %i.qc = phi ptr [ %.phi.trans.insert.i, %bb.dr ], [ %i.rk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  %i.qd = phi ptr [ %.phi.trans.insert.i.i, %bb.dr ], [ %i.rl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  %i.qe = phi ptr [ %i.qf, %bb.dr ], [ %i.rn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  %eh.lpad-body114.i.i.i = phi { ptr, i32 } [ %i.pz, %bb.dr ], [ %.pn27.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog11persist_log0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.qe) #33
          to label %bb.cu unwind label %bb.cv, !noalias !1907

bb.ds:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1906
  %.phi.trans.insert305.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 961 ; 5 uses
  %.pre306.i.i.i = load i8, ptr %.phi.trans.insert305.i.i.i, align 1, !range !29, !noalias !1916
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5126.i.i.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6103.i.i.i.sroa.0.i)
  switch i8 %.pre306.i.i.i, label %default.unreachable526 [
    i8 0, label %._crit_edge.i.i
    i8 1, label %bb.dy
    i8 2, label %bb.dz
    i8 3, label %bb.eb
  ]

._crit_edge.i.i:                                  ; preds = %bb.ds
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %1, i64 952
  %.pre10.i.i = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !noalias !1916
  %.phi.trans.insert11.i.i = getelementptr inbounds nuw i8, ptr %1, i64 912
  %.pre12.i.i = load i64, ptr %.phi.trans.insert11.i.i, align 16, !noalias !1916
  br label %bb.dt

bb.dt:                                            ; preds = %._crit_edge.i.i, %.thread329.i.i.i
  %i.qg = phi ptr [ %i.jv, %.thread329.i.i.i ], [ %i.em, %._crit_edge.i.i ] ; 3 uses
  %i.qh = phi ptr [ %i.jw, %.thread329.i.i.i ], [ %i.el, %._crit_edge.i.i ] ; 3 uses
  %i.qi = phi ptr [ %i.jx, %.thread329.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i.i ] ; 3 uses
  %i.qj = phi ptr [ %i.jy, %.thread329.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.qk = phi i64 [ %i.nz, %.thread329.i.i.i ], [ %.pre12.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.ql = phi ptr [ %i.ny, %.thread329.i.i.i ], [ %.pre10.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.qm = phi ptr [ %.sroa.16.0..sroa_idx167.i.i.i, %.thread329.i.i.i ], [ %.phi.trans.insert305.i.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.qn = phi ptr [ %i.oa, %.thread329.i.i.i ], [ %i.qf, %._crit_edge.i.i ] ; 4 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 920
  store i64 %i.qk, ptr %i.qp, align 8, !noalias !1916
  store i8 1, ptr %i.qo, align 16, !noalias !1916
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.qn, align 8, !noalias !1916 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 664
  %.sroa.9.0.copyload.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !1916 ; 5 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 672
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 16, !noalias !1916 ; 5 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 680
  %.sroa.11.0.copyload.i.i.i.i = load ptr, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !1916 ; 5 uses
  %.val38.i.i.i.i = load ptr, ptr %i.ql, align 8, !noalias !1917, !nonnull !11, !noundef !11
  %i.qq = getelementptr i8, ptr %i.ql, i64 8
  %.val39.i.i.i.i = load i64, ptr %i.qq, align 8, !noalias !1917, !noundef !11
  %i.qr = getelementptr inbounds nuw i8, ptr %.val38.i.i.i.i, i64 16
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 3 uses
  invoke void @_RNvMs_NtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB4_15CatalogFilePath3log(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.qs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qr, i64 noundef %.val39.i.i.i.i, i64 noundef %i.qk)
          to label %bb.dv unwind label %bb.du, !noalias !1917

bb.du:                                            ; preds = %bb.dt
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.qu = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %.thread143.i.i.i.i unwind label %bb.dx, !noalias !1917 ; 2 uses

bb.dw:                                            ; preds = %bb.hl, %bb.dx
  %i.qv = phi ptr [ %i.abc, %bb.hl ], [ %i.qg, %bb.dx ]
  %i.qw = phi ptr [ %i.abd, %bb.hl ], [ %i.qh, %bb.dx ]
  %i.qx = phi ptr [ %i.abe, %bb.hl ], [ %i.qi, %bb.dx ]
  %i.qy = phi ptr [ %i.abf, %bb.hl ], [ %i.qj, %bb.dx ]
  %i.qz = phi ptr [ %i.abg, %bb.hl ], [ %i.qm, %bb.dx ]
  %i.ra = phi ptr [ %i.abh, %bb.hl ], [ %i.qn, %bb.dx ]
  %.sroa.11.0.i.i.i.i = phi ptr [ %.sroa.11.1148.i.i.i.i, %bb.hl ], [ %.sroa.11.0.copyload.i.i.i.i, %bb.dx ]
  %.sroa.10.0.i.i.i.i = phi i64 [ %.sroa.10.1157.i.i.i.i, %bb.hl ], [ %.sroa.10.0.copyload.i.i.i.i, %bb.dx ]
  %.sroa.9.0.i.i.i.i = phi ptr [ %.sroa.9.1166.i.i.i.i, %bb.hl ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.dx ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.1175.i.i.i.i, %bb.hl ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.dx ]
  %.pn23.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn23.pn.i.i.i.i, %bb.hl ], [ %i.rc, %bb.dx ]
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 928
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v315CatalogFilePathECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.rb) #33
          to label %.body55.i.i.i.i unwind label %bb.hp, !noalias !1917

bb.dx:                                            ; preds = %bb.dv
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

.thread143.i.i.i.i:                               ; preds = %bb.dv
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.re = extractvalue { i64, i32 } %i.qu, 0
  %i.rf = extractvalue { i64, i32 } %i.qu, 1
  store i64 %i.re, ptr %i.rd, align 16, !noalias !1916
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i32 %i.rf, ptr %i.rg, align 8, !noalias !1916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1916
  store i8 0, ptr %i.qo, align 16, !noalias !1916
  %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 832
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.087.sroa.8.0..sroa_idx.i.i.i.i, align 16, !noalias !1916
  %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 840
  store ptr %.sroa.9.0.copyload.i.i.i.i, ptr %.sroa.087.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !1916
  %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 848
  store i64 %.sroa.10.0.copyload.i.i.i.i, ptr %.sroa.087.sroa.10.0..sroa_idx.i.i.i.i, align 16, !noalias !1916
  %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 856
  store ptr %.sroa.11.0.copyload.i.i.i.i, ptr %.sroa.087.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !1916
  %.sroa.888.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 888
  store ptr %i.ql, ptr %.sroa.888.0..sroa_idx.i.i.i.i, align 8, !noalias !1916
  %.sroa.989.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 896
  store ptr %i.qs, ptr %.sroa.989.0..sroa_idx.i.i.i.i, align 16, !noalias !1916
  %.sroa.1191.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 905 ; 2 uses
  store i8 0, ptr %.sroa.1191.0..sroa_idx.i.i.i.i, align 1, !noalias !1916
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.999.i.i.i.sroa.0.i)
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.sroa.0.i)
  br label %bb.ed

.body55.i.i.i.i:                                  ; preds = %bb.hn, %bb.hk, %bb.hf, %bb.dw, %bb.du
  %i.ri = phi ptr [ %i.ui, %bb.hn ], [ %i.qv, %bb.dw ], [ %i.qg, %bb.du ], [ %i.ui, %bb.hk ], [ %i.ui, %bb.hf ]
  %i.rj = phi ptr [ %i.uj, %bb.hn ], [ %i.qw, %bb.dw ], [ %i.qh, %bb.du ], [ %i.uj, %bb.hk ], [ %i.uj, %bb.hf ]
  %i.rk = phi ptr [ %i.uk, %bb.hn ], [ %i.qx, %bb.dw ], [ %i.qi, %bb.du ], [ %i.uk, %bb.hk ], [ %i.uk, %bb.hf ]
  %i.rl = phi ptr [ %i.ul, %bb.hn ], [ %i.qy, %bb.dw ], [ %i.qj, %bb.du ], [ %i.ul, %bb.hk ], [ %i.ul, %bb.hf ]
  %i.rm = phi ptr [ %i.um, %bb.hn ], [ %i.qz, %bb.dw ], [ %i.qm, %bb.du ], [ %i.um, %bb.hk ], [ %i.um, %bb.hf ]
  %i.rn = phi ptr [ %i.un, %bb.hn ], [ %i.ra, %bb.dw ], [ %i.qn, %bb.du ], [ %i.un, %bb.hk ], [ %i.un, %bb.hf ]
  %.sroa.11.2.i.i.i.i = phi ptr [ %.sroa.11.1153.i.i.i.i, %bb.hn ], [ %.sroa.11.0.i.i.i.i, %bb.dw ], [ %.sroa.11.0.copyload.i.i.i.i, %bb.du ], [ %.sroa.11.1153.i.i.i.i, %bb.hk ], [ %.sroa.11.1153.i.i.i.i, %bb.hf ]
  %.sroa.10.2.i.i.i.i = phi i64 [ %.sroa.10.1162.i.i.i.i, %bb.hn ], [ %.sroa.10.0.i.i.i.i, %bb.dw ], [ %.sroa.10.0.copyload.i.i.i.i, %bb.du ], [ %.sroa.10.1162.i.i.i.i, %bb.hk ], [ %.sroa.10.1162.i.i.i.i, %bb.hf ]
  %.sroa.9.2.i.i.i.i = phi ptr [ %.sroa.9.1171.i.i.i.i, %bb.hn ], [ %.sroa.9.0.i.i.i.i, %bb.dw ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.du ], [ %.sroa.9.1171.i.i.i.i, %bb.hk ], [ %.sroa.9.1171.i.i.i.i, %bb.hf ]
  %.sroa.0.2.i.i.i.i = phi ptr [ %.sroa.0.1180.i.i.i.i, %bb.hn ], [ %.sroa.0.0.i.i.i.i, %bb.dw ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.du ], [ %.sroa.0.1180.i.i.i.i, %bb.hk ], [ %.sroa.0.1180.i.i.i.i, %bb.hf ] ; 2 uses
  %.pn27.i.i.i.i = phi { ptr, i32 } [ %i.abj, %bb.hn ], [ %.pn23.pn.pn.i.i.i.i, %bb.dw ], [ %i.qt, %bb.du ], [ %i.abb, %bb.hk ], [ %i.aaf, %bb.hf ]
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  %i.rp = load i8, ptr %i.ro, align 16, !range !17, !noalias !1916, !noundef !11
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.hq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i

bb.dy:                                            ; preds = %bb.ds
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31
          to label %.noexc111.i.i.i unwind label %bb.dr, !noalias !1907

.noexc111.i.i.i:                                  ; preds = %bb.dy
  unreachable

bb.dz:                                            ; preds = %bb.ds
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31
          to label %.noexc112.i.i.i unwind label %bb.dr, !noalias !1907

.noexc112.i.i.i:                                  ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.eq, %bb.ep
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i102.i.i.i

end_hunk_2
begin_hunk_3_@_RNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl14write_lp_inner0B6_:bb.a
  %.sroa.12117.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.aai, ptr %.sroa.12117.0..sroa_idx.i.i.i.i, align 8, !noalias !1916
  invoke fastcc void @_RNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB6_18ObjectStoreCatalog11persist_log00Cs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.an)
          to label %bb.hj unwind label %bb.hi, !noalias !1917

bb.hi:                                            ; preds = %bb.hh
  %i.aba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1916
  br label %bb.hl

bb.hj:                                            ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1916
  br label %bb.he

bb.hk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit.i61.invoke.i.i.i.i
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %.body55.i.i.i.i

bb.hl:                                            ; preds = %bb.hi, %bb.hd, %bb.gq, %bb.go, %bb.gl, %bb.gi, %.body.i102.i.i.i
  %i.abc = phi ptr [ %i.ui, %bb.hd ], [ %i.ui, %bb.hi ], [ %i.ui, %bb.gl ], [ %i.ui, %bb.go ], [ %i.ui, %bb.gq ], [ %i.rs, %.body.i102.i.i.i ], [ %i.ui, %bb.gi ]
  %i.abd = phi ptr [ %i.uj, %bb.hd ], [ %i.uj, %bb.hi ], [ %i.uj, %bb.gl ], [ %i.uj, %bb.go ], [ %i.uj, %bb.gq ], [ %i.rt, %.body.i102.i.i.i ], [ %i.uj, %bb.gi ]
  %i.abe = phi ptr [ %i.uk, %bb.hd ], [ %i.uk, %bb.hi ], [ %i.uk, %bb.gl ], [ %i.uk, %bb.go ], [ %i.uk, %bb.gq ], [ %i.ru, %.body.i102.i.i.i ], [ %i.uk, %bb.gi ]
  %i.abf = phi ptr [ %i.ul, %bb.hd ], [ %i.ul, %bb.hi ], [ %i.ul, %bb.gl ], [ %i.ul, %bb.go ], [ %i.ul, %bb.gq ], [ %i.rv, %.body.i102.i.i.i ], [ %i.ul, %bb.gi ]
  %i.abg = phi ptr [ %i.um, %bb.hd ], [ %i.um, %bb.hi ], [ %i.um, %bb.gl ], [ %i.um, %bb.go ], [ %i.um, %bb.gq ], [ %i.rw, %.body.i102.i.i.i ], [ %i.um, %bb.gi ]
  %i.abh = phi ptr [ %i.un, %bb.hd ], [ %i.un, %bb.hi ], [ %i.un, %bb.gl ], [ %i.un, %bb.go ], [ %i.un, %bb.gq ], [ %i.rx, %.body.i102.i.i.i ], [ %i.un, %bb.gi ]
  %.sroa.0.1175.i.i.i.i = phi ptr [ %.sroa.0.1180.i.i.i.i, %bb.hd ], [ %.sroa.0.1180.i.i.i.i, %bb.hi ], [ %.sroa.0.1180.i.i.i.i, %bb.gl ], [ %.sroa.0.1180.i.i.i.i, %bb.go ], [ %.sroa.0.1180.i.i.i.i, %bb.gq ], [ %.sroa.0.1177.i.i.i.i, %.body.i102.i.i.i ], [ %.sroa.0.1180.i.i.i.i, %bb.gi ]
  %.sroa.9.1166.i.i.i.i = phi ptr [ %.sroa.9.1171.i.i.i.i, %bb.hd ], [ %.sroa.9.1171.i.i.i.i, %bb.hi ], [ %.sroa.9.1171.i.i.i.i, %bb.gl ], [ %.sroa.9.1171.i.i.i.i, %bb.go ], [ %.sroa.9.1171.i.i.i.i, %bb.gq ], [ %.sroa.9.1168.i.i.i.i, %.body.i102.i.i.i ], [ %.sroa.9.1171.i.i.i.i, %bb.gi ]
  %.sroa.10.1157.i.i.i.i = phi i64 [ %.sroa.10.1162.i.i.i.i, %bb.hd ], [ %.sroa.10.1162.i.i.i.i, %bb.hi ], [ %.sroa.10.1162.i.i.i.i, %bb.gl ], [ %.sroa.10.1162.i.i.i.i, %bb.go ], [ %.sroa.10.1162.i.i.i.i, %bb.gq ], [ %.sroa.10.1159.i.i.i.i, %.body.i102.i.i.i ], [ %.sroa.10.1162.i.i.i.i, %bb.gi ]
  %.sroa.11.1148.i.i.i.i = phi ptr [ %.sroa.11.1153.i.i.i.i, %bb.hd ], [ %.sroa.11.1153.i.i.i.i, %bb.hi ], [ %.sroa.11.1153.i.i.i.i, %bb.gl ], [ %.sroa.11.1153.i.i.i.i, %bb.go ], [ %.sroa.11.1153.i.i.i.i, %bb.gq ], [ %.sroa.11.1150.i.i.i.i, %.body.i102.i.i.i ], [ %.sroa.11.1153.i.i.i.i, %bb.gi ]
  %.pn23.pn.i.i.i.i = phi { ptr, i32 } [ %.pn7.pn.pn.pn.pn.pn.pn.i.i.i.i, %bb.hd ], [ %i.aba, %bb.hi ], [ %i.yi, %bb.gl ], [ %i.yp, %bb.go ], [ %i.yr, %bb.gq ], [ %eh.lpad-body.i.i.i.i, %.body.i102.i.i.i ], [ %i.yf, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1916
  br label %bb.dw

bb.hm:                                            ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5126.i.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6103.i.i.i.sroa.0.i, i64 15, i1 false), !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1916
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abi)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit.i61.invoke.i.i.i.i unwind label %bb.hn, !noalias !1917

bb.hn:                                            ; preds = %bb.hm
  %i.abj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abi)
          to label %.body55.i.i.i.i unwind label %bb.ho, !noalias !1917

bb.ho:                                            ; preds = %bb.hn
  %i.abk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1917
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit.i61.invoke.i.i.i.i: ; preds = %bb.hm, %bb.he
  %.sroa.5126.i.i.i.sroa.12.1.i = phi i32 [ undef, %bb.he ], [ %.sroa.6.i.i.i.i.sroa.12.1.i, %bb.hm ] ; 2 uses
  %.sroa.5126.i.i.i.sroa.11.1.i = phi i32 [ undef, %bb.he ], [ %.sroa.6.i.i.i.i.sroa.11.1.i, %bb.hm ] ; 2 uses
  %.sroa.5126.i.i.i.sroa.10.1.i = phi i64 [ undef, %bb.he ], [ %.sroa.6.i.i.i.i.sroa.10.1.i, %bb.hm ] ; 2 uses
  %.sroa.5126.i.i.i.sroa.7.1.i = phi ptr [ undef, %bb.he ], [ %.sroa.6.i.i.i.i.sroa.7.1.i, %bb.hm ] ; 2 uses
  %.sroa.5126.i.i.i.sroa.6.1.i = phi i64 [ undef, %bb.he ], [ %.sroa.6.i.i.i.i.sroa.6.1.i, %bb.hm ] ; 2 uses
  %i.abl = phi ptr [ %i.aae, %bb.he ], [ %i.abi, %bb.hm ]
  %i.abm = phi <2 x i64> [ undef, %bb.he ], [ %i.xx, %bb.hm ] ; 2 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abl)
          to label %bb.hs unwind label %bb.hk, !noalias !1917

bb.hp:                                            ; preds = %bb.hq, %.body.i102.i.i.i, %bb.dw
  %i.abn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1917
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i: ; preds = %bb.hq, %.body55.i.i.i.i
  store i8 0, ptr %i.ro, align 16, !noalias !1916
  store i8 2, ptr %i.rm, align 1, !noalias !1916
  br label %.body113.i.i.i

bb.hq:                                            ; preds = %.body55.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2.i.i.i.i) ]
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i.i.i, i64 32
  %i.abp = load ptr, ptr %i.abo, align 8, !noalias !1934, !nonnull !11, !noundef !11
  invoke void %i.abp(ptr noundef %.sroa.11.2.i.i.i.i, ptr noundef %.sroa.9.2.i.i.i.i, i64 noundef %.sroa.10.2.i.i.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i unwind label %bb.hp, !noalias !1917, !inline_history !1

bb.hr:                                            ; preds = %bb.gg, %.thread.i108.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.999.i.i.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1916
  store i8 3, ptr %i.um, align 1, !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5126.i.i.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6103.i.i.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1906
  br label %.thread26.i.i

bb.hs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECs92BnbMq7p8c_15influxdb3_write.exit.i61.invoke.i.i.i.i
  %i.abq = getelementptr inbounds nuw i8, ptr %1, i64 960
  store i8 0, ptr %i.abq, align 16, !noalias !1916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9171.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5126.i.i.i.sroa.0.i, i64 15, i1 false), !noalias !1906
  store i8 1, ptr %i.um, align 1, !noalias !1916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5126.i.i.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6103.i.i.i.sroa.0.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtBG_18ObjectStoreCatalog11persist_log0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.un)
          to label %bb.hu unwind label %bb.ht, !noalias !1907

bb.ht:                                            ; preds = %bb.hs
  %i.abr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.hu:                                            ; preds = %bb.hs
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  br i1 %.not.i50.i.i.i.i, label %bb.hv, label %bb.it

bb.hv:                                            ; preds = %bb.hu
  %i.abt = getelementptr inbounds nuw i8, ptr %1, i64 584
  store i8 %.sroa.4.085.i.i.i.i.i, ptr %i.abt, align 8, !alias.scope !1936, !noalias !1937
  store i64 -1, ptr %i.abs, align 16, !alias.scope !1936, !noalias !1937
  %i.abu = trunc nuw i8 %.sroa.4.085.i.i.i.i.i to i1
  br i1 %i.abu, label %bb.is, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1906
  %i.abv = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.abw = load ptr, ptr %i.abv, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 160 ; 8 uses
  %i.aby = cmpxchg weak ptr %i.abx, i64 0, i64 8 acquire monotonic, align 8, !noalias !1907
  %i.abz = extractvalue { i64, i1 } %i.aby, 1
  br i1 %i.abz, label %bb.hz, label %bb.hx, !prof !16

bb.hx:                                            ; preds = %bb.hw
  %i.aca = invoke noundef zeroext i1 @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.abx, i64 undef, i32 noundef -1)
          to label %bb.hz unwind label %bb.hy, !noalias !1907 ; 0 uses

bb.hy:                                            ; preds = %bb.hx
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i

bb.hz:                                            ; preds = %bb.hx, %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1906
  %i.acc = getelementptr i8, ptr %1, i64 536
  %.val.i.i.i = load ptr, ptr %i.acc, align 8, !noalias !1906, !nonnull !11, !noundef !11
  %i.acd = getelementptr i8, ptr %1, i64 544
  %.val58.i.i.i = load i64, ptr %i.acd, align 16, !noalias !1906, !noundef !11
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abw, i64 168
  %i.acf = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.acg = load i64, ptr %i.acf, align 8, !noalias !1906, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1906
  store i64 -1, ptr %i.as, align 8, !alias.scope !1938, !noalias !1906
  invoke void @_RNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply13apply_records(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.at, ptr noundef nonnull align 8 %.val.i.i.i, i64 noundef %.val58.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.ace, i64 noundef %i.acg, ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.as)
          to label %bb.ib unwind label %bb.ia, !noalias !1907

bb.ia:                                            ; preds = %bb.hz
  %i.ach = landingpad { ptr, i32 }
          cleanup
  br label %.body162

bb.ib:                                            ; preds = %bb.hz
  call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  %i.aci = load i64, ptr %i.at, align 8, !range !52, !alias.scope !1940, !noalias !1941, !noundef !11
  %.not.i159 = icmp eq i64 %i.aci, -1
  br i1 %.not.i159, label %bb.ig, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.at, i64 32, i1 false), !noalias !1941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1943
  store ptr %i.c, ptr %i.a, align 8, !noalias !1943
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsa_NtCs844E4pPEVZX_17influxdb3_catalog6formatNtB5_11FormatErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1943
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @50, ptr noundef nonnull %i.a)
          to label %_RNCNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB9_7Catalog18commit_transaction00Cs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.id, !noalias !1944

bb.id:                                            ; preds = %bb.ic
  %i.acj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #33
          to label %.body162 unwind label %bb.ie, !noalias !1944

bb.ie:                                            ; preds = %bb.id
  %i.ack = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1944
  unreachable

_RNCNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB9_7Catalog18commit_transaction00Cs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1943
  %.sroa.4.i158.sroa.3.7.copyload = load i64, ptr %i.b, align 8, !noalias !1945 ; 2 uses
  %.sroa.4.i158.sroa.6.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %9 = load <2 x i64>, ptr %.sroa.4.i158.sroa.6.7..sroa_idx, align 8, !noalias !1945 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.io unwind label %bb.if

.body162:                                         ; preds = %bb.if, %bb.id, %bb.ia
  %.pn14.i.i.i = phi { ptr, i32 } [ %i.ach, %bb.ia ], [ %i.acl, %bb.if ], [ %i.acj, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1906
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(1680) %i.as) #33
          to label %bb.ih unwind label %bb.cv, !noalias !1907

bb.if:                                            ; preds = %_RNCNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB9_7Catalog18commit_transaction00Cs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %.body162

bb.ig:                                            ; preds = %bb.ib
  %i.acm = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.14404.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.14404.8.copyload = load i64, ptr %.sroa.14404.8..sroa_idx, align 8, !alias.scope !1946, !noalias !1907
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 650 ; 2 uses
  %i.aco = load <2 x i64>, ptr %i.acm, align 8, !alias.scope !1946, !noalias !1907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1906
  store i8 1, ptr %i.acn, align 2, !noalias !1906
  store <2 x i64> %i.aco, ptr %i.au, align 16, !noalias !1906
  %.sroa.5260.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %.sroa.14404.8.copyload, ptr %.sroa.5260.0..sroa_idx.i.i.i, align 16, !noalias !1906
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(1680) %i.as)
          to label %bb.ij unwind label %bb.ii, !noalias !1907

bb.ih:                                            ; preds = %bb.ii, %.body162
  %.pn29.i.i.i = phi { ptr, i32 } [ %i.acr, %bb.ii ], [ %.pn14.i.i.i, %.body162 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1906
  %i.acp = cmpxchg ptr %i.abx, i64 8, i64 0 release monotonic, align 8, !noalias !1907
  %i.acq = extractvalue { i64, i1 } %i.acp, 1
  br i1 %i.acq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i, label %bb.ir, !prof !16

bb.ii:                                            ; preds = %bb.io, %bb.ig
  %i.acr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1906
  %i.acs = cmpxchg ptr %i.abx, i64 8, i64 0 release monotonic, align 8, !noalias !1907
  %i.act = extractvalue { i64, i1 } %i.acs, 1
  br i1 %i.act, label %bb.im, label %bb.ik, !prof !16

bb.ik:                                            ; preds = %bb.ij
  invoke void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.abx, i1 noundef zeroext false)
          to label %bb.im unwind label %bb.il, !noalias !1907

bb.il:                                            ; preds = %bb.iq, %bb.ik
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i

bb.im:                                            ; preds = %bb.ik, %bb.ij
  %i.acv = load i64, ptr %i.acf, align 8, !noalias !1906, !noundef !11
  %i.acw = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val81.i.i.i = load ptr, ptr %i.acw, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.acx = getelementptr inbounds nuw i8, ptr %.val81.i.i.i, i64 40
  store i64 %i.acv, ptr %i.acx, align 8, !noalias !1907
  %i.acy = load ptr, ptr %i.abv, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  store i8 0, ptr %i.acn, align 2, !noalias !1906
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.un, ptr noundef nonnull align 16 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !1906
  %.sroa.8198.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 680
  store ptr %i.acy, ptr %.sroa.8198.0..sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.9199.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 688
  store ptr @123, ptr %.sroa.9199.0..sroa_idx.i.i.i, align 16, !noalias !1906
  %.sroa.10200.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 696
  store i64 35, ptr %.sroa.10200.0..sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.12202.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 760
  store i8 0, ptr %.sroa.12202.0..sroa_idx.i.i.i, align 8, !noalias !1906
  br label %bb.iw

bb.in:                                            ; preds = %bb.jg, %bb.ja, %bb.iv
  %.pn24.pn.i.i.i = phi { ptr, i32 } [ %.pn22.i.i.i, %bb.jg ], [ %i.adz, %bb.iv ], [ %i.aei, %bb.ja ] ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 650
  %i.ada = load i8, ptr %i.acz, align 2, !range !17, !noalias !1906, !noundef !11
  %i.adb = trunc nuw i8 %i.ada to i1
  br i1 %i.adb, label %bb.jj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i

bb.io:                                            ; preds = %_RNCNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB9_7Catalog18commit_transaction00Cs92BnbMq7p8c_15influxdb3_write.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1906
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply14RestorePreloadECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(1680) %i.as)
          to label %bb.ip unwind label %bb.ii, !noalias !1907

bb.ip:                                            ; preds = %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1906
  %i.adc = cmpxchg ptr %i.abx, i64 8, i64 0 release monotonic, align 8, !noalias !1907
  %i.add = extractvalue { i64, i1 } %i.adc, 1
  br i1 %i.add, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i, label %bb.iq, !prof !16

bb.iq:                                            ; preds = %bb.ip
  invoke void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.abx, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i unwind label %bb.il, !noalias !1907

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i: ; preds = %bb.jb, %bb.iq, %bb.ip
  %i.ade = phi ptr [ %i.ui, %bb.iq ], [ %i.ui, %bb.ip ], [ %i.aea, %bb.jb ]
  %i.adf = phi ptr [ %i.uj, %bb.iq ], [ %i.uj, %bb.ip ], [ %i.aeb, %bb.jb ]
  %.sroa.12232.i.i.i.sroa.0.6 = phi i56 [ undef, %bb.iq ], [ undef, %bb.ip ], [ %.sroa.3205.sroa.0.i.i.i.sroa.0.0.copyload, %bb.jb ]
  %i.adg = phi ptr [ %i.uk, %bb.iq ], [ %i.uk, %bb.ip ], [ %i.aec, %bb.jb ]
  %.sroa.24.sroa.7.i.i.sroa.16.7.i = phi i32 [ undef, %bb.iq ], [ undef, %bb.ip ], [ %.sroa.3205.sroa.5.i.i.sroa.11.0.copyload.i, %bb.jb ]
  %.sroa.24.sroa.7.i.i.sroa.15.7.i = phi i32 [ undef, %bb.iq ], [ undef, %bb.ip ], [ %.sroa.3205.sroa.5.i.i.sroa.10.0.copyload.i, %bb.jb ]
  %.sroa.24.sroa.7.i.i.sroa.14.7.i = phi i64 [ undef, %bb.iq ], [ undef, %bb.ip ], [ %.sroa.3205.sroa.5.i.i.sroa.9.0.copyload.i, %bb.jb ]
  %.sroa.24.sroa.7.i.i.sroa.11.7.i = phi ptr [ undef, %bb.iq ], [ undef, %bb.ip ], [ %.sroa.3205.sroa.5.i.i.sroa.6.0.copyload.i, %bb.jb ]
  %.sroa.24.sroa.7.i.i.sroa.0.7.i = phi i64 [ undef, %bb.iq ], [ undef, %bb.ip ], [ %.sroa.3205.sroa.5.i.i.sroa.0.0.copyload.i, %bb.jb ]
  %i.adh = phi ptr [ %i.ul, %bb.iq ], [ %i.ul, %bb.ip ], [ %i.aed, %bb.jb ]
  %.sroa.17234.3.i.i.i = phi i64 [ %.sroa.4.i158.sroa.3.7.copyload, %bb.iq ], [ %.sroa.4.i158.sroa.3.7.copyload, %bb.ip ], [ %.sroa.3205.sroa.2.0.copyload.i.i.i, %bb.jb ]
  %.sroa.0230.3.i.i.i = phi i8 [ 7, %bb.iq ], [ 7, %bb.ip ], [ %i.aef, %bb.jb ]
  %10 = phi <2 x i64> [ %9, %bb.iq ], [ %9, %bb.ip ], [ %12, %bb.jb ]
  %i.adi = phi <2 x i64> [ undef, %bb.iq ], [ undef, %bb.ip ], [ %i.aeh, %bb.jb ]
  %i.adj = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 0, ptr %i.adj, align 2, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1906
  br label %bb.iu

bb.ir:                                            ; preds = %bb.ih
  invoke void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.abx, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i unwind label %bb.cv, !noalias !1907

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i: ; preds = %bb.jj, %bb.ir, %bb.in, %bb.il, %bb.ih, %bb.hy
  %i.adk = phi ptr [ %i.aea, %bb.in ], [ %i.aea, %bb.jj ], [ %i.ui, %bb.il ], [ %i.ui, %bb.hy ], [ %i.ui, %bb.ir ], [ %i.ui, %bb.ih ]
  %i.adl = phi ptr [ %i.aeb, %bb.in ], [ %i.aeb, %bb.jj ], [ %i.uj, %bb.il ], [ %i.uj, %bb.hy ], [ %i.uj, %bb.ir ], [ %i.uj, %bb.ih ]
  %i.adm = phi ptr [ %i.aec, %bb.in ], [ %i.aec, %bb.jj ], [ %i.uk, %bb.il ], [ %i.uk, %bb.hy ], [ %i.uk, %bb.ir ], [ %i.uk, %bb.ih ]
  %i.adn = phi ptr [ %i.aed, %bb.in ], [ %i.aed, %bb.jj ], [ %i.ul, %bb.il ], [ %i.ul, %bb.hy ], [ %i.ul, %bb.ir ], [ %i.ul, %bb.ih ]
  %.pn32.pn.i.i.i = phi { ptr, i32 } [ %.pn24.pn.i.i.i, %bb.in ], [ %.pn24.pn.i.i.i, %bb.jj ], [ %i.acu, %bb.il ], [ %i.acb, %bb.hy ], [ %.pn29.i.i.i, %bb.ir ], [ %.pn29.i.i.i, %bb.ih ]
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 0, ptr %i.ado, align 2, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1906
  br label %bb.cu

bb.is:                                            ; preds = %bb.hv
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.adq = load ptr, ptr %i.adp, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.adr = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.ads = load i64, ptr %i.adr, align 8, !noalias !1906, !noundef !11
  %.sroa.8220.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2640
  store i64 %i.ads, ptr %.sroa.8220.0..sroa_idx.i.i.i, align 16, !noalias !1906
  %.sroa.10222.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2688
  store ptr %i.adq, ptr %.sroa.10222.0..sroa_idx.i.i.i, align 16, !noalias !1906
  %.sroa.12224.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2698
  store i8 0, ptr %.sroa.12224.0..sroa_idx.i.i.i, align 2, !noalias !1906
  br label %bb.jl

bb.it:                                            ; preds = %bb.hu
  store i64 %.sroa.03.087.i.i.i.i.i, ptr %i.abs, align 16, !alias.scope !1947, !noalias !1906
  %.sroa.3173.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  store i8 %.sroa.4.085.i.i.i.i.i, ptr %.sroa.3173.0..sroa_idx.i.i.i, align 8, !alias.scope !1947, !noalias !1906
  %.sroa.5174.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5174.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9171.i.i.sroa.0.i, i64 15, i1 false), !noalias !1906
  %.sroa.9171.i.i.sroa.6.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 600
  store i64 %.sroa.5126.i.i.i.sroa.6.1.i, ptr %.sroa.9171.i.i.sroa.6.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.9171.i.i.sroa.7.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 608
  store ptr %.sroa.5126.i.i.i.sroa.7.1.i, ptr %.sroa.9171.i.i.sroa.7.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i, align 16, !noalias !1906
  %.sroa.9171.i.i.sroa.8.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 616
  store <2 x i64> %i.abm, ptr %.sroa.9171.i.i.sroa.8.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.9171.i.i.sroa.10.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i64 %.sroa.5126.i.i.i.sroa.10.1.i, ptr %.sroa.9171.i.i.sroa.10.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.9171.i.i.sroa.11.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  store i32 %.sroa.5126.i.i.i.sroa.11.1.i, ptr %.sroa.9171.i.i.sroa.11.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i, align 16, !noalias !1906
  %.sroa.9171.i.i.sroa.12.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 644
  store i32 %.sroa.5126.i.i.i.sroa.12.1.i, ptr %.sroa.9171.i.i.sroa.12.0..sroa.5174.0..sroa_idx.i.i.sroa_idx.i, align 4, !noalias !1906
  %i.adt = load <2 x i64>, ptr %.sroa.3173.0..sroa_idx.i.i.i, align 8, !noalias !1906
  br label %bb.iu

bb.iu:                                            ; preds = %bb.jq, %bb.it, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i
  %i.adu = phi ptr [ %i.ui, %bb.it ], [ %i.ade, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %i.aez, %bb.jq ]
  %i.adv = phi ptr [ %i.uj, %bb.it ], [ %i.adf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %i.afa, %bb.jq ]
  %.sroa.12232.i.i.i.sroa.0.1 = phi i56 [ undef, %bb.it ], [ %.sroa.12232.i.i.i.sroa.0.6, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %.sroa.3227.sroa.0.i.i.i.sroa.0.0.copyload, %bb.jq ]
  %i.adw = phi ptr [ %i.uk, %bb.it ], [ %i.adg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %i.afb, %bb.jq ]
  %.sroa.24.sroa.7.i.i.sroa.16.1.i = phi i32 [ %.sroa.5126.i.i.i.sroa.12.1.i, %bb.it ], [ %.sroa.24.sroa.7.i.i.sroa.16.7.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %.sroa.3227.sroa.5.i.i.sroa.11.0.copyload.i, %bb.jq ]
  %.sroa.24.sroa.7.i.i.sroa.15.1.i = phi i32 [ %.sroa.5126.i.i.i.sroa.11.1.i, %bb.it ], [ %.sroa.24.sroa.7.i.i.sroa.15.7.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %.sroa.3227.sroa.5.i.i.sroa.10.0.copyload.i, %bb.jq ]
  %.sroa.24.sroa.7.i.i.sroa.14.1.i = phi i64 [ %.sroa.5126.i.i.i.sroa.10.1.i, %bb.it ], [ %.sroa.24.sroa.7.i.i.sroa.14.7.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %.sroa.3227.sroa.5.i.i.sroa.9.0.copyload.i, %bb.jq ]
  %.sroa.24.sroa.7.i.i.sroa.11.1.i = phi ptr [ %.sroa.5126.i.i.i.sroa.7.1.i, %bb.it ], [ %.sroa.24.sroa.7.i.i.sroa.11.7.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %.sroa.3227.sroa.5.i.i.sroa.6.0.copyload.i, %bb.jq ]
  %.sroa.24.sroa.7.i.i.sroa.0.1.i = phi i64 [ %.sroa.5126.i.i.i.sroa.6.1.i, %bb.it ], [ %.sroa.24.sroa.7.i.i.sroa.0.7.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %.sroa.3227.sroa.5.i.i.sroa.0.0.copyload.i, %bb.jq ]
  %i.adx = phi ptr [ %i.ul, %bb.it ], [ %i.adh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %i.afc, %bb.jq ]
  %.sroa.17234.4.i.i.i = phi i64 [ %.sroa.03.087.i.i.i.i.i, %bb.it ], [ %.sroa.17234.3.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %.sroa.3227.sroa.2.0.copyload.i.i.i, %bb.jq ]
  %.sroa.0230.4.i.i.i = phi i8 [ 1, %bb.it ], [ %.sroa.0230.3.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %i.afe, %bb.jq ]
  %11 = phi <2 x i64> [ %i.adt, %bb.it ], [ %10, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %13, %bb.jq ]
  %i.ady = phi <2 x i64> [ %i.abm, %bb.it ], [ %i.adi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i ], [ %i.afg, %bb.jq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1906
  br label %bb.cx

bb.iv:                                            ; preds = %bb.iw
  %i.adz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1906
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog9broadcast0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.aee) #33
          to label %bb.in unwind label %bb.cv, !noalias !1907

bb.iw:                                            ; preds = %bb.im, %bb.at
  %i.aea = phi ptr [ %i.ui, %bb.im ], [ %i.em, %bb.at ] ; 5 uses
  %i.aeb = phi ptr [ %i.uj, %bb.im ], [ %i.el, %bb.at ] ; 4 uses
  %i.aec = phi ptr [ %i.uk, %bb.im ], [ %.phi.trans.insert.i, %bb.at ] ; 5 uses
  %i.aed = phi ptr [ %i.ul, %bb.im ], [ %.phi.trans.insert.i.i, %bb.at ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1906
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke fastcc void @_RNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB7_7Catalog9broadcast0Cs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.ar, ptr noundef nonnull align 8 %i.aee, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ix unwind label %bb.iv, !noalias !1907

bb.ix:                                            ; preds = %bb.iw
  %i.aef = load i8, ptr %i.ar, align 8, !range !50, !noalias !1906, !noundef !11 ; 3 uses
  %i.aeg = icmp eq i8 %i.aef, -2
  br i1 %i.aeg, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1906
  br label %.thread26.i.i

bb.iz:                                            ; preds = %bb.ix
  %.sroa.3205.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.sroa.3205.sroa.0.i.i.i.sroa.0.0.copyload = load i56, ptr %.sroa.3205.0..sroa_idx.i.i.i, align 1, !noalias !1906
  %.sroa.3205.sroa.2.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.3205.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.3205.sroa.2.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.3205.sroa.3.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %12 = load <2 x i64>, ptr %.sroa.3205.sroa.3.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.3205.sroa.5.i.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.3205.sroa.5.i.i.sroa.6.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.sroa.3205.sroa.5.i.i.sroa.6.0.copyload.i = load ptr, ptr %.sroa.3205.sroa.5.i.i.sroa.6.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3205.sroa.5.i.i.sroa.7.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.aeh = load <2 x i64>, ptr %.sroa.3205.sroa.5.i.i.sroa.7.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3205.sroa.5.i.i.sroa.9.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %.sroa.3205.sroa.5.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.3205.sroa.5.i.i.sroa.9.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3205.sroa.5.i.i.sroa.10.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %.sroa.3205.sroa.5.i.i.sroa.10.0.copyload.i = load i32, ptr %.sroa.3205.sroa.5.i.i.sroa.10.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3205.sroa.5.i.i.sroa.11.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  %.sroa.3205.sroa.5.i.i.sroa.11.0.copyload.i = load i32, ptr %.sroa.3205.sroa.5.i.i.sroa.11.0..sroa.3205.sroa.5.0..sroa.3205.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 4, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1906
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog9broadcast0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %i.aee)
          to label %bb.jb unwind label %bb.ja, !noalias !1907

bb.ja:                                            ; preds = %bb.iz
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.jb:                                            ; preds = %bb.iz
  %.not.i123.i.i.i = icmp eq i8 %i.aef, -1
  br i1 %.not.i123.i.i.i, label %bb.jc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit120.i.i.i

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1906
  %i.aej = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.aek = load ptr, ptr %i.aej, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.ael = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.aem = load i64, ptr %i.ael, align 8, !noalias !1906, !noundef !11
  %i.aen = invoke noundef ptr @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB5_7Catalog27maybe_background_checkpoint(ptr noundef nonnull align 8 %i.aek, i64 noundef %i.aem)
          to label %bb.je unwind label %bb.jd, !noalias !1907 ; 2 uses

bb.jd:                                            ; preds = %bb.jc
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.je:                                            ; preds = %bb.jc
  store ptr %i.aen, ptr %i.aq, align 8, !noalias !1906
  %i.aep = icmp eq ptr %i.aen, null
  br i1 %i.aep, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEENtNtNtB1a_3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i unwind label %bb.jh, !noalias !1907

bb.jg:                                            ; preds = %bb.jh, %bb.jd
  %.pn22.i.i.i = phi { ptr, i32 } [ %i.aeq, %bb.jh ], [ %i.aeo, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1906
  br label %bb.in

bb.jh:                                            ; preds = %bb.jf
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i: ; preds = %bb.jf, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1906
  %i.aer = load i64, ptr %i.ael, align 8, !noalias !1906, !noundef !11
  %i.aes = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 0, ptr %i.aes, align 2, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1906
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i
  %i.aet = phi ptr [ %i.aez, %bb.jt ], [ %i.aea, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ] ; 4 uses
  %i.aeu = phi ptr [ %i.afa, %bb.jt ], [ %i.aeb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ] ; 4 uses
  %i.aev = phi ptr [ %i.afb, %bb.jt ], [ %i.aec, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ] ; 4 uses
  %i.aew = phi ptr [ %i.afc, %bb.jt ], [ %i.aed, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ] ; 4 uses
  %.sroa.22.5.i.i.i = phi i64 [ undef, %bb.jt ], [ %i.aer, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ]
  %.sroa.17234.5.i.i.i = phi i64 [ 1, %bb.jt ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1906
  %i.aex = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke void @_RNvXsd_NtNtCseCDlJsl44RV_5tokio4sync5mutexINtB5_10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aex)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit127.i.i.i unwind label %bb.ju, !noalias !1907

bb.jj:                                            ; preds = %bb.in
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events12CatalogEventEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.au) #33
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6gU0GsN6MoR_8lock_api6rwlock16RwLockWriteGuardNtNtCsgIGNhOnZR2a_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v35inner12InnerCatalogEECs92BnbMq7p8c_15influxdb3_write.exit122.i.i.i unwind label %bb.cv, !noalias !1907

bb.jk:                                            ; preds = %bb.jl
  %i.aey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1906
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog13catch_up_from0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 16 %i.afd) #33
          to label %bb.cu unwind label %bb.cv, !noalias !1907

bb.jl:                                            ; preds = %bb.is, %bb.au
  %i.aez = phi ptr [ %i.ui, %bb.is ], [ %i.em, %bb.au ] ; 6 uses
  %i.afa = phi ptr [ %i.uj, %bb.is ], [ %i.el, %bb.au ] ; 5 uses
  %i.afb = phi ptr [ %i.uk, %bb.is ], [ %.phi.trans.insert.i, %bb.au ] ; 6 uses
  %i.afc = phi ptr [ %i.ul, %bb.is ], [ %.phi.trans.insert.i.i, %bb.au ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1906
  %i.afd = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke fastcc void @_RNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB7_7Catalog13catch_up_from0Cs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.ap, ptr noundef nonnull align 16 %i.afd, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jm unwind label %bb.jk, !noalias !1907

bb.jm:                                            ; preds = %bb.jl
  %i.afe = load i8, ptr %i.ap, align 8, !range !50, !noalias !1906, !noundef !11 ; 3 uses
  %i.aff = icmp eq i8 %i.afe, -2
  br i1 %i.aff, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1906
  br label %.thread26.i.i

bb.jo:                                            ; preds = %bb.jm
  %.sroa.3227.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %.sroa.3227.sroa.0.i.i.i.sroa.0.0.copyload = load i56, ptr %.sroa.3227.0..sroa_idx.i.i.i, align 1, !noalias !1906
  %.sroa.3227.sroa.2.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.3227.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.3227.sroa.2.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.3227.sroa.3.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %13 = load <2 x i64>, ptr %.sroa.3227.sroa.3.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.3227.sroa.5.i.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1906
  %.sroa.3227.sroa.5.i.i.sroa.6.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.3227.sroa.5.i.i.sroa.6.0.copyload.i = load ptr, ptr %.sroa.3227.sroa.5.i.i.sroa.6.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3227.sroa.5.i.i.sroa.7.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.afg = load <2 x i64>, ptr %.sroa.3227.sroa.5.i.i.sroa.7.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3227.sroa.5.i.i.sroa.9.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %.sroa.3227.sroa.5.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.3227.sroa.5.i.i.sroa.9.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3227.sroa.5.i.i.sroa.10.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %.sroa.3227.sroa.5.i.i.sroa.10.0.copyload.i = load i32, ptr %.sroa.3227.sroa.5.i.i.sroa.10.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 8, !noalias !1906
  %.sroa.3227.sroa.5.i.i.sroa.11.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 76
  %.sroa.3227.sroa.5.i.i.sroa.11.0.copyload.i = load i32, ptr %.sroa.3227.sroa.5.i.i.sroa.11.0..sroa.3227.sroa.5.0..sroa.3227.0..sroa_idx.sroa_idx.i.i.sroa_idx.i, align 4, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1906
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog13catch_up_from0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 16 %i.afd)
          to label %bb.jq unwind label %bb.jp, !noalias !1907

bb.jp:                                            ; preds = %bb.jo
  %i.afh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.jq:                                            ; preds = %bb.jo
  %.not.i128.i.i.i = icmp eq i8 %i.afe, -1
  br i1 %.not.i128.i.i.i, label %bb.jr, label %bb.iu

bb.jr:                                            ; preds = %bb.jq
  %i.afi = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.afj = load ptr, ptr %i.afi, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.afk = invoke noundef i64 @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB5_7Catalog15sequence_number(ptr noundef nonnull align 8 %i.afj)
          to label %bb.jt unwind label %bb.js, !noalias !1907

bb.js:                                            ; preds = %bb.jr
  %i.afl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.jt:                                            ; preds = %bb.jr
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val80.i.i.i = load ptr, ptr %i.afm, align 16, !noalias !1906, !nonnull !11, !align !20, !noundef !11
  %i.afn = getelementptr inbounds nuw i8, ptr %.val80.i.i.i, i64 40
  store i64 %i.afk, ptr %i.afn, align 8, !noalias !1907
  br label %bb.ji

bb.ju:                                            ; preds = %bb.ji, %bb.cx
  %i.afo = phi ptr [ %i.aet, %bb.ji ], [ %i.ol, %bb.cx ]
  %i.afp = phi ptr [ %i.aeu, %bb.ji ], [ %i.om, %bb.cx ]
  %i.afq = phi ptr [ %i.aev, %bb.ji ], [ %i.on, %bb.cx ]
  %i.afr = phi ptr [ %i.aew, %bb.ji ], [ %i.oo, %bb.cx ]
  %i.afs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit127.i.i.i: ; preds = %bb.ji
  %i.aft = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aft)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i131.i.i.i unwind label %bb.jv, !noalias !1907

bb.jv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit127.i.i.i
  %i.afu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aft)
          to label %.body.i.i.i unwind label %bb.jw, !noalias !1907

bb.jw:                                            ; preds = %bb.jv
  %i.afv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1907
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i131.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit127.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aft)
          to label %.thread.i unwind label %bb.jx, !noalias !1907

.thread.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i131.i.i.i
  store i8 1, ptr %i.aew, align 8, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9171.i.i.sroa.0.i)
  %14 = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.22.5.i.i.i, i64 0
  br label %bb.jz

.body.i.i.i:                                      ; preds = %bb.jx, %bb.jv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i, %bb.aw
  %i.afw = phi ptr [ %i.hc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ], [ %i.gu, %bb.aw ], [ %i.aga, %bb.jx ], [ %i.aet, %bb.jv ]
  %i.afx = phi ptr [ %i.hd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ], [ %i.gv, %bb.aw ], [ %i.agb, %bb.jx ], [ %i.aeu, %bb.jv ]
  %i.afy = phi ptr [ %i.he, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ], [ %i.gw, %bb.aw ], [ %i.agc, %bb.jx ], [ %i.aev, %bb.jv ]
  %i.afz = phi ptr [ %i.hf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ], [ %i.gx, %bb.aw ], [ %i.agd, %bb.jx ], [ %i.aew, %bb.jv ]
  %.pn56.i.i.i = phi { ptr, i32 } [ %.pn54.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync5mutex10MutexGuardNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog21CatalogSequenceNumberEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i ], [ %i.ha, %bb.aw ], [ %i.age, %bb.jx ], [ %i.afu, %bb.jv ]
  store i8 2, ptr %i.afz, align 8, !noalias !1906
  br label %.body.i.i

bb.jx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i131.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i
  %i.aga = phi ptr [ %i.aet, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i131.i.i.i ], [ %i.gu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  %i.agb = phi ptr [ %i.aeu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i131.i.i.i ], [ %i.gv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  %i.agc = phi ptr [ %i.aev, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i131.i.i.i ], [ %i.gw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  %i.agd = phi ptr [ %i.aew, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i131.i.i.i ], [ %i.gx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i ]
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.thread26.i.i:                                    ; preds = %bb.jn, %bb.iy, %bb.hr, %bb.db, %bb.cg
  %i.agf = phi ptr [ %i.jv, %bb.cg ], [ %i.os, %bb.db ], [ %i.ui, %bb.hr ], [ %i.aea, %bb.iy ], [ %i.aez, %bb.jn ]
  %i.agg = phi ptr [ %i.jx, %bb.cg ], [ %i.ou, %bb.db ], [ %i.uk, %bb.hr ], [ %i.aec, %bb.iy ], [ %i.afb, %bb.jn ]
  %.ph.i.i = phi ptr [ %i.jy, %bb.cg ], [ %i.ov, %bb.db ], [ %i.ul, %bb.hr ], [ %i.aed, %bb.iy ], [ %i.afc, %bb.jn ]
  %.sink.i.ph.i.i = phi i8 [ 3, %bb.cg ], [ 4, %bb.db ], [ 5, %bb.hr ], [ 6, %bb.iy ], [ 7, %bb.jn ]
  store i8 %.sink.i.ph.i.i, ptr %.ph.i.i, align 8, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9171.i.i.sroa.0.i)
  br label %bb.lp

bb.jy:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format6record6RecordEECs92BnbMq7p8c_15influxdb3_write.exit.i.i.i.i
  %i.agh = icmp eq i8 %.sroa.0230.0.i.i.i, -2
  store i8 1, ptr %i.gx, align 8, !noalias !1906
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9171.i.i.sroa.0.i)
  br i1 %i.agh, label %bb.lp, label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %.thread.i
  %i.agi = phi ptr [ %i.gu, %bb.jy ], [ %i.aet, %.thread.i ] ; 9 uses
  %i.agj = phi ptr [ %i.gv, %bb.jy ], [ %i.aeu, %.thread.i ] ; 10 uses
  %.sroa.13.i.sroa.0.0 = phi i56 [ %.sroa.12232.i.i.i.sroa.0.3, %bb.jy ], [ undef, %.thread.i ]
  %i.agk = phi ptr [ %i.gw, %bb.jy ], [ %i.aev, %.thread.i ] ; 2 uses
  %.sroa.0230.6.i.i173.i = phi i8 [ %.sroa.0230.0.i.i.i, %bb.jy ], [ -1, %.thread.i ] ; 2 uses
  %.sroa.17234.6.i.i172.i = phi i64 [ %.sroa.17234.0.i.i.i, %bb.jy ], [ %.sroa.17234.5.i.i.i, %.thread.i ] ; 2 uses
  %.sroa.24.sroa.7.i.i.sroa.0.4169.i = phi i64 [ %.sroa.24.sroa.7.i.i.sroa.0.3.i, %bb.jy ], [ undef, %.thread.i ]
  %.sroa.24.sroa.7.i.i.sroa.11.4168.i = phi ptr [ %.sroa.24.sroa.7.i.i.sroa.11.3.i, %bb.jy ], [ undef, %.thread.i ]
  %.sroa.24.sroa.7.i.i.sroa.14.4165.i = phi i64 [ %.sroa.24.sroa.7.i.i.sroa.14.3.i, %bb.jy ], [ undef, %.thread.i ]
  %.sroa.24.sroa.7.i.i.sroa.15.4164.i = phi i32 [ %.sroa.24.sroa.7.i.i.sroa.15.3.i, %bb.jy ], [ undef, %.thread.i ]
  %.sroa.24.sroa.7.i.i.sroa.16.4163.i = phi i32 [ %.sroa.24.sroa.7.i.i.sroa.16.3.i, %bb.jy ], [ undef, %.thread.i ]
  %15 = phi <2 x i64> [ %4, %bb.jy ], [ %14, %.thread.i ] ; 2 uses
  %i.agl = phi <2 x i64> [ %i.gy, %bb.jy ], [ undef, %.thread.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog18commit_transaction0ECs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 16 %i.agj)
          to label %bb.kc unwind label %bb.ka, !noalias !1905

bb.ka:                                            ; preds = %bb.jz
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.kb:                                            ; preds = %.body.i.i
  %i.agn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1905
  unreachable

bb.kc:                                            ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1904
  store i8 1, ptr %i.agk, align 16, !noalias !1904
  %.not.i.i.not = icmp eq i8 %.sroa.0230.6.i.i173.i, -1 ; 2 uses
  br i1 %.not.i.i.not, label %bb.kd, label %bb.kx

bb.kd:                                            ; preds = %bb.kc
  %16 = trunc nuw i64 %.sroa.17234.6.i.i172.i to i1
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 4372 ; 3 uses
  br i1 %16, label %bb.ke, label %.thread216.i

.thread216.i:                                     ; preds = %bb.kd
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 4368
  %i.agq = load i32, ptr %i.agp, align 16, !noalias !1898, !noundef !11
  store i8 0, ptr %i.ago, align 4, !noalias !1898
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 3984
  %i.ags = load ptr, ptr %i.agr, align 16, !noalias !1898, !nonnull !11, !noundef !11
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 3992
  %i.agu = load i64, ptr %i.agt, align 8, !noalias !1898, !noundef !11
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 4374
  store i8 0, ptr %i.agv, align 2, !noalias !1898
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 4120
  %.sroa.0100.0.copyload.i = load i64, ptr %i.agw, align 8, !noalias !1898
  %.sroa.4101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4128
  %.sroa.4101.sroa.0.0.copyload.i = load i8, ptr %.sroa.4101.0..sroa_idx.i, align 16, !noalias !1898
  %.sroa.4101.sroa.4.0..sroa.4101.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4129
  %.sroa.893.sroa.3.i.sroa.0.0.copyload428 = load i56, ptr %.sroa.4101.sroa.4.0..sroa.4101.0..sroa_idx.sroa_idx.i, align 1, !noalias !1898
  %.sroa.4101.sroa.5.0..sroa.4101.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4136
  %.sroa.4101.sroa.5.0.copyload.i = load i64, ptr %.sroa.4101.sroa.5.0..sroa.4101.0..sroa_idx.sroa_idx.i, align 8, !noalias !1898
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.agy = load i64, ptr %i.agx, align 16, !noalias !1898, !noundef !11
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 4373
  store i8 0, ptr %i.agz, align 1, !noalias !1898
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4144
  %18 = load <2 x i64>, ptr %17, align 16, !noalias !1898
  %.sroa.5151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4160
  %.sroa.5151.0.copyload.i = load i64, ptr %.sroa.5151.0..sroa_idx.i, align 16, !noalias !1898
  %19 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.aha = insertelement <2 x i64> %19, i64 %i.agu, i64 0
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.ke:                                            ; preds = %bb.kd
  %.pre201.i = load i8, ptr %i.ago, align 4, !range !17, !noalias !1898
  %i.ahb = trunc nuw i8 %.pre201.i to i1
  br i1 %i.ahb, label %bb.kg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.kh, %bb.kg, %bb.ke, %.thread216.i
  %.sroa.893.sroa.3.i.sroa.0.1 = phi i56 [ undef, %bb.kh ], [ undef, %bb.kg ], [ undef, %bb.ke ], [ %.sroa.893.sroa.3.i.sroa.0.0.copyload428, %.thread216.i ]
  %.sroa.893.sroa.7.0238.i = phi i64 [ undef, %bb.kh ], [ undef, %bb.kg ], [ undef, %bb.ke ], [ %.sroa.5151.0.copyload.i, %.thread216.i ]
  %.sroa.893.sroa.4.0235.i = phi i64 [ undef, %bb.kh ], [ undef, %bb.kg ], [ undef, %bb.ke ], [ %.sroa.4101.sroa.5.0.copyload.i, %.thread216.i ]
  %.sroa.894.0234.i = phi ptr [ undef, %bb.kh ], [ undef, %bb.kg ], [ undef, %bb.ke ], [ %i.ags, %.thread216.i ]
  %.sroa.1197.0231.i = phi i64 [ undef, %bb.kh ], [ undef, %bb.kg ], [ undef, %bb.ke ], [ %i.agy, %.thread216.i ]
  %.sroa.1298.0230.i = phi i32 [ undef, %bb.kh ], [ undef, %bb.kg ], [ undef, %bb.ke ], [ %i.agq, %.thread216.i ]
  %.sroa.492.sroa.4.sroa.0.0229.i = phi i64 [ -1, %bb.kh ], [ -1, %bb.kg ], [ -1, %bb.ke ], [ %.sroa.0100.0.copyload.i, %.thread216.i ]
  %.sroa.893.sroa.0.0228.i = phi i8 [ undef, %bb.kh ], [ undef, %bb.kg ], [ undef, %bb.ke ], [ %.sroa.4101.sroa.0.0.copyload.i, %.thread216.i ]
  %20 = phi <2 x i64> [ undef, %bb.kh ], [ undef, %bb.kg ], [ undef, %bb.ke ], [ %18, %.thread216.i ]
  %i.ahc = phi <2 x i64> [ undef, %bb.kh ], [ undef, %bb.kg ], [ undef, %bb.ke ], [ %i.aha, %.thread216.i ]
  store i8 0, ptr %i.ago, align 4, !noalias !1898
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 4168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1948)
  call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  %i.ahe = load ptr, ptr %i.ahd, align 8, !alias.scope !1950, !noalias !1898, !nonnull !11, !noundef !11
  %i.ahf = atomicrmw sub ptr %i.ahe, i64 1 release, align 8, !noalias !1951
  %i.ahg = icmp eq i64 %i.ahf, 1
  br i1 %i.ahg, label %bb.kf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit40.i

bb.kf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogE9drop_slowCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ahd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit40.i unwind label %bb.kj, !noalias !1899

bb.kg:                                            ; preds = %bb.ke
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 3984 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  %i.ahi = load ptr, ptr %i.ahh, align 16, !alias.scope !1954, !noalias !1898, !nonnull !11, !noundef !11
  %i.ahj = atomicrmw sub ptr %i.ahi, i64 1 release, align 8, !noalias !1955
  %i.ahk = icmp eq i64 %i.ahj, 1
  br i1 %i.ahk, label %bb.kh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.kh:                                            ; preds = %bb.kg
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ahh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.ki, !noalias !1899

bb.ki:                                            ; preds = %bb.ky, %bb.kh
  %i.ahl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit63.i

bb.kj:                                            ; preds = %bb.kf
  %i.ahm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %1, i64 4374
  %i.aho = load i8, ptr %i.ahn, align 2, !range !17, !noalias !1898, !noundef !11
  %i.ahp = trunc nuw i8 %i.aho to i1
  br i1 %i.ahp, label %bb.ku, label %.body43.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit40.i: ; preds = %bb.kf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.ahq = getelementptr inbounds nuw i8, ptr %1, i64 4374 ; 2 uses
  %i.ahr = load i8, ptr %i.ahq, align 2, !range !17, !noalias !1898, !noundef !11
  %i.ahs = trunc nuw i8 %i.ahr to i1
  br i1 %i.ahs, label %bb.kk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_.exit.i: ; preds = %bb.km, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit40.i
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 4373 ; 2 uses
  %i.ahu = load i8, ptr %i.aht, align 1, !range !17, !noalias !1898, !noundef !11
  %i.ahv = trunc nuw i8 %i.ahu to i1
  br i1 %i.ahv, label %bb.kp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.kk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit40.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %1, i64 4120 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahw)
          to label %bb.km unwind label %bb.kl, !noalias !1899

bb.kl:                                            ; preds = %bb.kk
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahw)
          to label %.body43.i unwind label %bb.kn, !noalias !1899

bb.km:                                            ; preds = %bb.kk
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ahw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_.exit.i unwind label %bb.ko, !noalias !1899

bb.kn:                                            ; preds = %bb.kl
  %i.ahy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1899
  unreachable

.body43.i:                                        ; preds = %bb.ku, %bb.ko, %bb.kl, %bb.kj
  %.pn20.i = phi { ptr, i32 } [ %i.ahm, %bb.kj ], [ %i.ahm, %bb.ku ], [ %i.aic, %bb.ko ], [ %i.ahx, %bb.kl ] ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 4373
  %i.aia = load i8, ptr %i.ahz, align 1, !range !17, !noalias !1898, !noundef !11
  %i.aib = trunc nuw i8 %i.aia to i1
  br i1 %i.aib, label %bb.kw, label %.body46.i

bb.ko:                                            ; preds = %bb.km
  %i.aic = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.kr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_.exit.i
  store i8 0, ptr %i.aht, align 1, !noalias !1898
  store i8 0, ptr %i.ahq, align 2, !noalias !1898
  br label %bb.lq

bb.kp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_.exit.i
  %i.aid = getelementptr inbounds nuw i8, ptr %1, i64 4144 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aid)
          to label %bb.kr unwind label %bb.kq, !noalias !1899

bb.kq:                                            ; preds = %bb.kp
  %i.aie = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aid)
          to label %.body46.i unwind label %bb.ks, !noalias !1899

bb.kr:                                            ; preds = %bb.kp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aid)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i unwind label %bb.kt, !noalias !1899

bb.ks:                                            ; preds = %bb.kq
  %i.aif = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1899
  unreachable

.body46.i:                                        ; preds = %bb.lo, %bb.lm, %bb.lf, %.body54.i, %bb.kw, %bb.kt, %bb.kq, %.body43.i
  %i.aig = phi ptr [ %i.agi, %.body43.i ], [ %i.agi, %.body54.i ], [ %i.fi, %bb.lo ], [ %i.fi, %bb.lm ], [ %i.agi, %bb.kw ], [ %i.agi, %bb.kq ], [ %i.agi, %bb.kt ], [ %i.agi, %bb.lf ]
  %i.aih = phi ptr [ %i.agj, %.body43.i ], [ %i.agj, %.body54.i ], [ %i.fj, %bb.lo ], [ %i.fj, %bb.lm ], [ %i.agj, %bb.kw ], [ %i.agj, %bb.kq ], [ %i.agj, %bb.kt ], [ %i.agj, %bb.lf ]
  %.pn29.i = phi { ptr, i32 } [ %.pn20.i, %.body43.i ], [ %.pn27.i, %.body54.i ], [ %.pn24.i, %bb.lo ], [ %.pn24.i, %bb.lm ], [ %.pn20.i, %bb.kw ], [ %i.aie, %bb.kq ], [ %i.ail, %bb.kt ], [ %i.ajg, %bb.lf ]
  %i.aii = getelementptr inbounds nuw i8, ptr %1, i64 4373
  store i8 0, ptr %i.aii, align 1, !noalias !1898
  %i.aij = getelementptr inbounds nuw i8, ptr %1, i64 4374
  store i8 0, ptr %i.aij, align 2, !noalias !1898
  %i.aik = getelementptr inbounds nuw i8, ptr %1, i64 4375
  store i8 0, ptr %i.aik, align 1, !noalias !1898
  store i8 2, ptr %i.aig, align 8, !noalias !1898
  br label %.body

bb.kt:                                            ; preds = %bb.lg, %bb.kr
  %i.ail = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i

bb.ku:                                            ; preds = %bb.kj
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 4120
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.aim) #33
          to label %.body43.i unwind label %bb.kv, !noalias !1899

bb.kv:                                            ; preds = %bb.lo, %bb.ln, %bb.ll, %bb.lj, %.body54.i, %bb.la, %bb.kw, %bb.ku, %.body.i, %bb.ah
  %i.ain = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1899
  unreachable

bb.kw:                                            ; preds = %.body43.i
  %i.aio = getelementptr inbounds nuw i8, ptr %1, i64 4144
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.aio) #33
          to label %.body46.i unwind label %bb.kv, !noalias !1899

bb.kx:                                            ; preds = %bb.kc
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 3984 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  %i.aiq = load ptr, ptr %i.aip, align 16, !alias.scope !1958, !noalias !1898, !nonnull !11, !noundef !11
  %i.air = atomicrmw sub ptr %i.aiq, i64 1 release, align 8, !noalias !1959
  %i.ais = icmp eq i64 %i.air, 1
  br i1 %i.ais, label %bb.ky, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit49.i

bb.ky:                                            ; preds = %bb.kx
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aip)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit49.i unwind label %bb.ki, !noalias !1899

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit49.i: ; preds = %bb.ky, %bb.kx
  %i.ait = getelementptr inbounds nuw i8, ptr %1, i64 4372
  store i8 0, ptr %i.ait, align 4, !noalias !1898
  %i.aiu = getelementptr inbounds nuw i8, ptr %1, i64 4168 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %i.aiv = load ptr, ptr %i.aiu, align 8, !alias.scope !1962, !noalias !1898, !nonnull !11, !noundef !11
  %i.aiw = atomicrmw sub ptr %i.aiv, i64 1 release, align 8, !noalias !1963
  %i.aix = icmp eq i64 %i.aiw, 1
  br i1 %i.aix, label %bb.kz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit51.i

bb.kz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit49.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogE9drop_slowCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aiu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit51.i unwind label %bb.la, !noalias !1899

bb.la:                                            ; preds = %bb.kz
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 4120
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.aiz) #33
          to label %.body54.i unwind label %bb.kv, !noalias !1899

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit51.i: ; preds = %bb.kz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit49.i
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 4120 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aja)
          to label %bb.lc unwind label %bb.lb, !noalias !1899

bb.lb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit51.i
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aja)
          to label %.body54.i unwind label %bb.ld, !noalias !1899

bb.lc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit51.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aja)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_.exit56.i unwind label %bb.le, !noalias !1899

bb.ld:                                            ; preds = %bb.lb
  %i.ajc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1899
  unreachable

.body54.i:                                        ; preds = %bb.le, %bb.lb, %bb.la
  %.pn27.i = phi { ptr, i32 } [ %i.aiy, %bb.la ], [ %i.aje, %bb.le ], [ %i.ajb, %bb.lb ]
  %i.ajd = getelementptr inbounds nuw i8, ptr %1, i64 4144
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.ajd) #33
          to label %.body46.i unwind label %bb.kv, !noalias !1899

bb.le:                                            ; preds = %bb.lc
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %.body54.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_.exit56.i: ; preds = %bb.lc
  %i.ajf = getelementptr inbounds nuw i8, ptr %1, i64 4144 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ajf)
          to label %bb.lg unwind label %bb.lf, !noalias !1899

bb.lf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_.exit56.i
  %i.ajg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ajf)
          to label %.body46.i unwind label %bb.lh, !noalias !1899

bb.lg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_.exit56.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ajf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i unwind label %bb.kt, !noalias !1899

bb.lh:                                            ; preds = %bb.lf
  %i.ajh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1899
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i: ; preds = %bb.lg
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 4373
  store i8 0, ptr %i.aji, align 1, !noalias !1898
  %i.ajj = getelementptr inbounds nuw i8, ptr %1, i64 4374
  store i8 0, ptr %i.ajj, align 2, !noalias !1898
  br label %bb.lq

bb.li:                                            ; preds = %bb.ag
  %i.ajk = getelementptr inbounds nuw i8, ptr %1, i64 3984 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  %i.ajl = load ptr, ptr %i.ajk, align 16, !alias.scope !1966, !noalias !1898, !nonnull !11, !noundef !11
  %i.ajm = atomicrmw sub ptr %i.ajl, i64 1 release, align 8, !noalias !1967
  %i.ajn = icmp eq i64 %i.ajm, 1
  br i1 %i.ajn, label %bb.lj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit63.i

bb.lj:                                            ; preds = %bb.li
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ajk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit63.i unwind label %bb.kv, !noalias !1899

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs92BnbMq7p8c_15influxdb3_write.exit63.i
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 4375
  %i.ajp = load i8, ptr %i.ajo, align 1, !range !17, !noalias !1898, !noundef !11
  %i.ajq = trunc nuw i8 %i.ajp to i1
  br i1 %i.ajq, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.ll, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 4374
  %i.ajs = load i8, ptr %i.ajr, align 2, !range !17, !noalias !1898, !noundef !11
  %i.ajt = trunc nuw i8 %i.ajs to i1
  br i1 %i.ajt, label %bb.ln, label %bb.lm

bb.ll:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECs92BnbMq7p8c_15influxdb3_write.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v311transaction26DatabaseCatalogTransactionECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(120) %i.fl) #33
          to label %bb.lk unwind label %bb.kv, !noalias !1899

bb.lm:                                            ; preds = %bb.ln, %bb.lk
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 4373
  %i.ajv = load i8, ptr %i.aju, align 1, !range !17, !noalias !1898, !noundef !11
  %i.ajw = trunc nuw i8 %i.ajv to i1
  br i1 %i.ajw, label %bb.lo, label %.body46.i

bb.ln:                                            ; preds = %bb.lk
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 4120
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator13QualifiedLineEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.ajx) #33
          to label %bb.lm unwind label %bb.kv, !noalias !1899

bb.lo:                                            ; preds = %bb.lm
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 4144
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.ajy) #33
          to label %.body46.i unwind label %bb.kv, !noalias !1899

common.ret:                                       ; preds = %bb.pi, %bb.ol, %bb.oa, %bb.lp
  %.sink = phi i8 [ 1, %bb.pi ], [ 5, %bb.ol ], [ 4, %bb.oa ], [ 3, %bb.lp ]
  store i8 %.sink, ptr %i.cc, align 1
  ret void

bb.lp:                                            ; preds = %.thread26.i.i, %bb.jy
  %i.ajz = phi ptr [ %i.agf, %.thread26.i.i ], [ %i.gu, %bb.jy ]
  %i.aka = phi ptr [ %i.agg, %.thread26.i.i ], [ %i.gw, %bb.jy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1904
  store i8 3, ptr %i.aka, align 16, !noalias !1904
  store i8 3, ptr %i.ajz, align 8, !noalias !1898
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.lq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i
  %.sroa.893.sroa.3.i.sroa.0.0 = phi i56 [ %.sroa.893.sroa.3.i.sroa.0.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.13.i.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %.sroa.893.sroa.0.1.i = phi i8 [ %.sroa.893.sroa.0.0228.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.0230.6.i.i173.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %.sroa.1399.0.i = phi i32 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.24.sroa.7.i.i.sroa.16.4163.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %.sroa.1298.1.i = phi i32 [ %.sroa.1298.0230.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.24.sroa.7.i.i.sroa.15.4164.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %.sroa.1197.1.i = phi i64 [ %.sroa.1197.0231.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.24.sroa.7.i.i.sroa.14.4165.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %.sroa.894.1.i = phi ptr [ %.sroa.894.0234.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.24.sroa.7.i.i.sroa.11.4168.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %.sroa.893.sroa.4.1.i = phi i64 [ %.sroa.893.sroa.4.0235.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.17234.6.i.i172.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %.sroa.893.sroa.7.1.i = phi i64 [ %.sroa.893.sroa.7.0238.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %.sroa.24.sroa.7.i.i.sroa.0.4169.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %.sroa.492.sroa.0.0.insert.insert.i = phi i64 [ %.sroa.492.sroa.4.sroa.0.0229.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ 3, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 3 uses
  %21 = phi <2 x i64> [ %20, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %15, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %i.akb = phi <2 x i64> [ %i.ahc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit.i ], [ %i.agl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit61.i ] ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %1, i64 4375
  store i8 0, ptr %i.akc, align 1, !noalias !1898
  store i8 1, ptr %i.agi, align 8, !noalias !1898
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs2_NtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validatorINtBJ_14WriteValidatorNtBJ_11LinesParsedE22commit_catalog_changes0EBN_(ptr noundef nonnull align 16 %i.agj)
          to label %bb.ls unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

bb.ls:                                            ; preds = %bb.lq
  br i1 %.not.i.i.not, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v311transaction6PromptINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtB29_23CatalogChangesCommittedEENtB2b_5ErrorENtNtNtB7_3ops9try_trait3Try6branchB2d_.exit, label %bb.nu

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v311transaction6PromptINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtB29_23CatalogChangesCommittedEENtB2b_5ErrorENtNtNtB7_3ops9try_trait3Try6branchB2d_.exit: ; preds = %bb.ls
  %i.ake = icmp eq i64 %.sroa.492.sroa.0.0.insert.insert.i, -1
  br i1 %i.ake, label %.noexc, label %bb.lt

bb.lt:                                            ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v311transaction6PromptINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtB29_23CatalogChangesCommittedEENtB2b_5ErrorENtNtNtB7_3ops9try_trait3Try6branchB2d_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store i64 %.sroa.492.sroa.0.0.insert.insert.i, ptr %i.bo, align 8
  %.sroa.3.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.sroa.893.sroa.0.1.i, ptr %.sroa.3.0..sroa_idx5, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  store i56 %.sroa.893.sroa.3.i.sroa.0.0, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx5.sroa_idx, align 1
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %.sroa.893.sroa.4.1.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx5.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store <2 x i64> %21, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx5.sroa_idx, align 8
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i64 %.sroa.893.sroa.7.1.i, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx5.sroa_idx, align 8
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store ptr %.sroa.894.1.i, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx5.sroa_idx, align 8
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store <2 x i64> %i.akb, ptr %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx5.sroa_idx, align 8
  %.sroa.3.sroa.10.0..sroa.3.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store i64 %.sroa.1197.1.i, ptr %.sroa.3.sroa.10.0..sroa.3.0..sroa_idx5.sroa_idx, align 8
  %.sroa.3.sroa.11.0..sroa.3.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store i32 %.sroa.1298.1.i, ptr %.sroa.3.sroa.11.0..sroa.3.0..sroa_idx5.sroa_idx, align 8
  %.sroa.3.sroa.12.0..sroa.3.0..sroa_idx5.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 84
  store i32 %.sroa.1399.0.i, ptr %.sroa.3.sroa.12.0..sroa.3.0..sroa_idx5.sroa_idx, align 4
  %i.akf = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.akg = load ptr, ptr %i.akf, align 16, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.akh = load i64, ptr %i.akg, align 8, !noundef !11
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  %i.akj = load i32, ptr %i.aki, align 8, !range !1968, !noundef !11
  invoke void @_RNvMs4_NtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validatorINtB5_14WriteValidatorNtB5_23CatalogChangesCommittedE23convert_lines_to_buffer(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.bo, i64 noundef %i.akh, i32 noundef %i.akj)
          to label %bb.lv unwind label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.akk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.nw

bb.lv:                                            ; preds = %bb.lt
  %i.akl = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  store i8 1, ptr %i.akl, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.akm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.akn = load i64, ptr %i.akm, align 16, !noundef !11
  %.not = icmp eq i64 %i.akn, 0
  br i1 %.not, label %.thread527, label %bb.lw

.thread527:                                       ; preds = %bb.lv
  %i.ako = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.os

bb.lw:                                            ; preds = %bb.lv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.akp = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 4641) 104, i64 noundef range(i64 8, 17) 8) #34 ; 3 uses
  %i.akq = icmp eq ptr %i.akp, null
  br i1 %i.akq, label %bb.lx, label %bb.mb, !prof !14

bb.lx:                                            ; preds = %bb.lw
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #31
          to label %.noexc117 unwind label %bb.ma

.noexc117:                                        ; preds = %bb.lx
  unreachable

bb.ly:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146
  %i.akr = getelementptr inbounds nuw i8, ptr %1, i64 273
  store i8 0, ptr %i.akr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %.phi.trans.insert500 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.pre501 = load i64, ptr %.phi.trans.insert500, align 16 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.akt = icmp eq i64 %.pre501, 0
  br i1 %i.akt, label %bb.os, label %bb.ot

bb.lz:                                            ; preds = %bb.pn, %.body138, %bb.ma
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %bb.pn ], [ %.pn33.pn, %.body138 ], [ %i.akv, %bb.ma ]
  %i.aku = getelementptr inbounds nuw i8, ptr %1, i64 273
  store i8 0, ptr %i.aku, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.oy

bb.ma:                                            ; preds = %bb.lx
  %i.akv = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.mb:                                            ; preds = %bb.lw
  store i8 0, ptr %i.akl, align 16
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.akp, ptr noundef nonnull align 8 dereferenceable(104) %i.akw, i64 104, i1 false)
  store i64 1, ptr %i.bg, align 8, !alias.scope !1969, !noalias !1970
  %i.akx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.akp, ptr %i.akx, align 8, !alias.scope !1969, !noalias !1970
  %i.aky = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 1, ptr %i.aky, align 8, !alias.scope !1969, !noalias !1970
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 273 ; 3 uses
  store i8 1, ptr %i.akz, align 1
  %i.ala = getelementptr inbounds nuw i8, ptr %1, i64 270
  %i.alb = load i8, ptr %i.ala, align 2, !range !17, !noundef !11
  %i.alc = trunc nuw i8 %i.alb to i1
  %i.ald = load ptr, ptr %i.akf, align 16, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 88
  %.val94 = load ptr, ptr %i.ale, align 8, !nonnull !11, !noundef !11
  %i.alf = getelementptr i8, ptr %i.ald, i64 96
  %.val95 = load ptr, ptr %i.alf, align 8, !nonnull !11, !align !20, !noundef !11 ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.val95, i64 16
  %i.alh = load i64, ptr %i.alg, align 8, !range !21, !invariant.load !11
  %i.ali = add nsw i64 %i.alh, -1
  %i.alj = and i64 %i.ali, -16
  %i.alk = getelementptr inbounds nuw i8, ptr %.val94, i64 %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 16 ; 2 uses
  br i1 %i.alc, label %bb.mf, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store i8 0, ptr %i.akz, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.alm = getelementptr inbounds nuw i8, ptr %.val95, i64 40
  %i.aln = load ptr, ptr %i.alm, align 8, !invariant.load !11, !nonnull !11
  %i.alo = invoke { ptr, ptr } %i.aln(ptr noundef nonnull %i.all, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bd)
          to label %bb.me unwind label %bb.md     ; 2 uses

bb.md:                                            ; preds = %bb.mc
  %i.alp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %.body138

bb.me:                                            ; preds = %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.alq = extractvalue { ptr, ptr } %i.alo, 0
  %i.alr = extractvalue { ptr, ptr } %i.alo, 1
  %i.als = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %i.alq, ptr %i.als, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.alr, ptr %i.alt, align 16
  br label %bb.oj

bb.mf:                                            ; preds = %bb.mb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i8 0, ptr %i.akz, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.alu = getelementptr inbounds nuw i8, ptr %.val95, i64 32
  %i.alv = load ptr, ptr %i.alu, align 8, !invariant.load !11, !nonnull !11
  %i.alw = invoke { ptr, ptr } %i.alv(ptr noundef nonnull %i.all, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bf)
          to label %bb.mh unwind label %bb.mg     ; 2 uses

bb.mg:                                            ; preds = %bb.mf
  %i.alx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %.body138

bb.mh:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.aly = extractvalue { ptr, ptr } %i.alw, 0
  %i.alz = extractvalue { ptr, ptr } %i.alw, 1
  %i.ama = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %i.aly, ptr %i.ama, align 8
  %i.amb = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.alz, ptr %i.amb, align 16
  br label %bb.ny

.noexc:                                           ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v311transaction6PromptINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtB29_23CatalogChangesCommittedEENtB2b_5ErrorENtNtNtB7_3ops9try_trait3Try6branchB2d_.exit
  %i.amc = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off494 = add i64 %i.amc, -2
  %switch495 = icmp ult i64 %.off494, 4
  br i1 %switch495, label %.thread468, label %bb.mi

bb.mi:                                            ; preds = %.noexc
  %i.amd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.ame = icmp ult i8 %i.amd, 3
  br i1 %i.ame, label %bb.ml, label %bb.mj, !prof !47

bb.mj:                                            ; preds = %bb.mi
  %i.amf = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_10___CALLSITE)
          to label %bb.ml unwind label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.amg = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

bb.ml:                                            ; preds = %bb.mj, %bb.mi
  %.sroa.0.0.i118 = phi i8 [ %i.amd, %bb.mi ], [ %i.amf, %bb.mj ] ; 2 uses
  %i.amh = icmp eq i8 %.sroa.0.0.i118, 0
  br i1 %i.amh, label %.thread468, label %bb.mn

bb.mm:                                            ; preds = %bb.mn
  %i.ami = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

bb.mn:                                            ; preds = %bb.ml
  %i.amj = load ptr, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_10___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11
  %i.amk = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.amj, i8 noundef %.sroa.0.0.i118)
          to label %bb.mo unwind label %bb.mm

bb.mo:                                            ; preds = %bb.mn
  br i1 %i.amk, label %bb.nb, label %.thread468

.thread468:                                       ; preds = %.noexc, %bb.ml, %bb.mo
  %i.aml = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not493 = icmp eq i8 %i.aml, 0
  br i1 %.not493, label %bb.mp, label %bb.na

bb.mp:                                            ; preds = %.thread468
  %i.amm = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.amn = icmp ult i64 %i.amm, 6
  call void @llvm.assume(i1 %i.amn)
  %i.amo = icmp samesign ugt i64 %i.amm, 3
  br i1 %i.amo, label %bb.mq, label %bb.na

end_hunk_3
begin_hunk_4_@_RNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl14write_lp_inner0B6_:bb.a
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %.val82, ptr %.sroa.6281.0..sroa_idx, align 8, !alias.scope !1971
  %.sroa.8282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 %.val83, ptr %.sroa.8282.0..sroa_idx, align 8, !alias.scope !1971
  %i.ams = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.ms unwind label %bb.mr     ; 2 uses

bb.mr:                                            ; preds = %bb.mq
  %i.amt = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.ms:                                            ; preds = %bb.mq
  %i.amu = extractvalue { ptr, ptr } %i.ams, 0    ; 2 uses
  %i.amv = extractvalue { ptr, ptr } %i.ams, 1    ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 24
  %i.amx = load ptr, ptr %i.amw, align 8, !invariant.load !11, !nonnull !11
  %i.amy = invoke noundef zeroext i1 %i.amx(ptr noundef %i.amu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %bb.mu unwind label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %bb.mz

bb.mu:                                            ; preds = %bb.ms
  br i1 %i.amy, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.na

bb.mw:                                            ; preds = %bb.mu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.ana = load ptr, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_10___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr @58, ptr %i.bh, align 8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr inttoptr (i64 81 to ptr), ptr %i.anc, align 8
  store ptr %i.bh, ptr %i.bi, align 8
  %i.and = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @15, ptr %i.and, align 8
  store i64 1, ptr %i.bj, align 8, !alias.scope !1972, !noalias !1973
  %.sroa.4.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i123, align 8, !alias.scope !1972, !noalias !1973
  %.sroa.5.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i124, align 8, !alias.scope !1972, !noalias !1973
  %i.ane = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.anb, ptr %i.ane, align 8, !alias.scope !1972, !noalias !1973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.amp, ptr noundef nonnull %i.amu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.amv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj)
          to label %bb.my unwind label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.anf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.mz

bb.my:                                            ; preds = %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.mv

bb.mz:                                            ; preds = %bb.mt, %bb.mx, %bb.mr
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.anf, %bb.mx ], [ %i.amz, %bb.mt ], [ %i.amt, %bb.mr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.nw

bb.na:                                            ; preds = %bb.mv, %bb.mp, %.thread468, %_RNCNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_0B8_.exit
  %i.ang = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i8 0, ptr %i.ang, align 16
  br label %bb.y

bb.nb:                                            ; preds = %bb.mo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.anh = load ptr, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_10___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr @58, ptr %i.bl, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr inttoptr (i64 81 to ptr), ptr %i.anj, align 8
  store ptr %i.bl, ptr %i.bm, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @15, ptr %i.ank, align 8
  store i64 1, ptr %i.bn, align 8
  %.sroa.6274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bm, ptr %.sroa.6274.0..sroa_idx, align 8
  %.sroa.7275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 1, ptr %.sroa.7275.0..sroa_idx, align 8
  %.sroa.8276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.ani, ptr %.sroa.8276.0..sroa_idx, align 8
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.anh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn)
          to label %.noexc128 unwind label %bb.nf

.noexc128:                                        ; preds = %bb.nb
  %i.anl = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1974
  %i.anm = icmp eq i8 %i.anl, 0
  br i1 %i.anm, label %bb.nc, label %_RNCNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_0B8_.exit

bb.nc:                                            ; preds = %.noexc128
  %i.ann = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1974 ; 2 uses
  %i.ano = icmp ult i64 %i.ann, 6
  call void @llvm.assume(i1 %i.ano)
  %i.anp = icmp samesign ugt i64 %i.ann, 3
  br i1 %i.anp, label %bb.nd, label %_RNCNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_0B8_.exit

bb.nd:                                            ; preds = %bb.nc
  %i.anq = load ptr, ptr @_RNvNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_10___CALLSITE, align 8, !noalias !1974, !nonnull !11, !align !20, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1974
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 32
  %i.ans = load ptr, ptr %i.anr, align 8, !nonnull !11, !noundef !11
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anq, i64 40
  %i.anu = load i64, ptr %i.ant, align 8, !noundef !11
  store i64 4, ptr %i.d, align 8, !noalias !1974
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ans, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1974
  %.sroa.5.0..sroa_idx.i127 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.anu, ptr %.sroa.5.0..sroa_idx.i127, align 8, !noalias !1974
  %i.anv = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc129 unwind label %bb.nf ; 2 uses

.noexc129:                                        ; preds = %bb.nd
  %i.anw = extractvalue { ptr, ptr } %i.anv, 0    ; 2 uses
  %i.anx = extractvalue { ptr, ptr } %i.anv, 1    ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 24
  %i.anz = load ptr, ptr %i.any, align 8, !invariant.load !11, !nonnull !11
  %i.aoa = invoke noundef zeroext i1 %i.anz(ptr noundef %i.anw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %.noexc130 unwind label %bb.nf, !inline_history !1876

.noexc130:                                        ; preds = %.noexc129
  br i1 %i.aoa, label %bb.ne, label %.noexc131

bb.ne:                                            ; preds = %.noexc130
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.anq, ptr noundef nonnull %i.anw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.anx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn)
          to label %.noexc131 unwind label %bb.nf

.noexc131:                                        ; preds = %bb.ne, %.noexc130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1974
  br label %_RNCNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_0B8_.exit

bb.nf:                                            ; preds = %bb.ne, %.noexc129, %bb.nd, %bb.nb
  %i.aob = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.nw

_RNCNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB6_15WriteBufferImpl14write_lp_inner0s_0B8_.exit: ; preds = %.noexc131, %bb.nc, %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %bb.na

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread: ; preds = %bb.y, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit
  %.val101 = phi i64 [ 9, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ], [ %.val101.pre, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.aoc = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val100 = load ptr, ptr %i.aoc, align 16, !nonnull !11, !noundef !11 ; 2 uses
  %i.aod = atomicrmw add ptr %.val100, i64 1 monotonic, align 8
  %i.aoe = icmp slt i64 %i.aod, 0
  br i1 %i.aoe, label %bb.ng, label %bb.nj

bb.ng:                                            ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread
  call void @llvm.trap()
  unreachable

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.y
  %i.aof = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val98 = load ptr, ptr %i.aof, align 16, !nonnull !11, !noundef !11 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.val98, i64 16 ; 2 uses
  %i.aoh = load i64, ptr %i.aog, align 1
  %i.aoi = xor i64 %i.aoh, 7020674649187838303
  %i.aoj = getelementptr i8, ptr %i.aog, i64 8
  %i.aok = load i8, ptr %i.aoj, align 1
  %i.aol = zext i8 %i.aok to i64
  %i.aom = xor i64 %i.aol, 108
  %i.aon = or i64 %i.aoi, %i.aom
  %i.aoo = icmp ne i64 %i.aon, 0
  %i.aop = zext i1 %i.aoo to i32
  %i.aoq = icmp eq i32 %i.aop, 0
  br i1 %i.aoq, label %bb.nh, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread

bb.nh:                                            ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit, %bb.nv
  %i.aor = phi ptr [ %.pre503, %bb.nv ], [ %.val98, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.13308.sroa.0.0 = phi i56 [ %.sroa.13308.sroa.0.2, %bb.nv ], [ undef, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.0298.sroa.9.sroa.0.0 = phi i64 [ %i.aqn, %bb.nv ], [ 22, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.28.0 = phi i32 [ %.sroa.28.2, %bb.nv ], [ undef, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.27.0 = phi i32 [ %.sroa.27.2, %bb.nv ], [ undef, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.26.0 = phi i64 [ %.sroa.26.2, %bb.nv ], [ undef, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.14311.0 = phi i64 [ %.sroa.14311.2, %bb.nv ], [ undef, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.11302.0 = phi i8 [ %.sroa.11302.2, %bb.nv ], [ undef, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  %22 = phi <2 x i64> [ %29, %bb.nv ], [ undef, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  %i.aos = phi <4 x i64> [ %i.aqk, %bb.nv ], [ undef, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  %i.aot = atomicrmw sub ptr %i.aor, i64 1 release, align 8, !noalias !1978
  %i.aou = icmp eq i64 %i.aot, 1
  br i1 %i.aou, label %bb.ni, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit

bb.ni:                                            ; preds = %bb.nh
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 160
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aov)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.pl

bb.nj:                                            ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread
  %i.aow = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aox = load ptr, ptr %i.aow, align 16, !nonnull !11, !align !20, !noundef !11
  %i.aoy = getelementptr i8, ptr %i.aox, i64 56
  %.val104 = load ptr, ptr %i.aoy, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.aoz = atomicrmw add ptr %.val104, i64 1 monotonic, align 8
  %i.apa = icmp slt i64 %i.aoz, 0
  br i1 %i.apa, label %bb.nk, label %_RNvXsf_NtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB5_15WriteBufferImplNtB7_8Bufferer7catalog.exit

bb.nk:                                            ; preds = %bb.nj
  call void @llvm.trap()
  unreachable

bb.nl:                                            ; preds = %_RNvXsf_NtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB5_15WriteBufferImplNtB7_8Bufferer7catalog.exit
  %i.apb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0187)
  br label %bb.nw

_RNvXsf_NtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB5_15WriteBufferImplNtB7_8Bufferer7catalog.exit: ; preds = %bb.nj
  invoke void @_RNvMs1_NtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validatorINtB5_14WriteValidatorNtB5_11InitializedE10initialize(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.br, ptr noundef nonnull %.val100, i64 noundef %.val101, ptr noundef nonnull %.val104)
          to label %bb.nm unwind label %bb.nl

bb.nm:                                            ; preds = %_RNvXsf_NtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB5_15WriteBufferImplNtB7_8Bufferer7catalog.exit
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 4384 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  %i.apd = load i64, ptr %i.br, align 8, !range !22, !alias.scope !1980, !noalias !1979, !noundef !11
  %i.ape = icmp eq i64 %i.apd, -1
  br i1 %i.ape, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11InitializedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit.thread, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11InitializedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11InitializedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit.thread: ; preds = %bb.nm
  %i.apf = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.apg = getelementptr inbounds nuw i8, ptr %1, i64 4392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.apg, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.apf, i64 88, i1 false), !alias.scope !1981
  store i64 -1, ptr %i.apc, align 16, !alias.scope !1979, !noalias !1980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.ns

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11InitializedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit: ; preds = %bb.nm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.apc, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.br, i64 128, i1 false), !alias.scope !1981
  %.pr = load i64, ptr %i.apc, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %i.aph = icmp eq i64 %.pr, -1
  br i1 %i.aph, label %bb.ns, label %bb.nn

bb.nn:                                            ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11InitializedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bq, ptr noundef nonnull align 16 dereferenceable(128) %i.apc, i64 128, i1 false)
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.apj = load ptr, ptr %i.api, align 16, !nonnull !11, !noundef !11
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.apl = load i64, ptr %i.apk, align 8, !noundef !11
  %i.apm = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.apn = load i8, ptr %i.apm, align 4, !range !17, !noundef !11
  %i.apo = trunc nuw i8 %i.apn to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.app = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull align 16 dereferenceable(12) %i.app, i64 12, i1 false)
  %i.apq = getelementptr inbounds nuw i8, ptr %1, i64 269
  %i.apr = load i8, ptr %i.apq, align 1, !range !26, !noundef !11
  invoke void @_RNvMs1_NtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validatorINtB5_14WriteValidatorNtB5_11InitializedE34v1_parse_lines_and_catalog_updates(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.bs, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.bq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.apj, i64 noundef %i.apl, i1 noundef zeroext %i.apo, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.bp, i8 noundef %i.apr)
          to label %bb.np unwind label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.aps = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0187)
  br label %bb.nw

bb.np:                                            ; preds = %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.apt = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  %i.apu = load i64, ptr %i.bs, align 8, !range !22, !alias.scope !1983, !noalias !1982, !noundef !11
  %i.apv = icmp eq i64 %i.apu, -1
  br i1 %i.apv, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11LinesParsedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit.thread, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11LinesParsedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11LinesParsedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit.thread: ; preds = %bb.np
  %i.apw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.apx, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.apw, i64 88, i1 false), !alias.scope !1984
  store i64 -1, ptr %i.apt, align 8, !alias.scope !1982, !noalias !1983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.nq

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11LinesParsedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit: ; preds = %bb.np
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.apt, ptr noundef nonnull readonly align 8 dereferenceable(184) %i.bs, i64 184, i1 false), !alias.scope !1984
  %.pr471 = load i64, ptr %i.apt, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.apy = icmp eq i64 %.pr471, -1
  br i1 %i.apy, label %bb.nq, label %.thread

.thread:                                          ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11LinesParsedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit
  %.sroa.0187.3720..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0187, i64 3720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.0187.3720..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %i.apt, i64 184, i1 false)
  %i.apz = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3912) %i.apz, ptr noundef nonnull align 16 dereferenceable(3912) %.sroa.0187, i64 3912, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0187)
  %.sroa.9190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4376
  store i8 0, ptr %.sroa.9190.0..sroa_idx, align 8
  %i.aqa = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.aqb = getelementptr inbounds nuw i8, ptr %1, i64 4376
  br label %bb.ae

bb.nq:                                            ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11LinesParsedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11LinesParsedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit.thread
  %i.aqc = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.0374.0.copyload = load i64, ptr %i.aqc, align 16
  %.sroa.5375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.sroa.5375.0.copyload = load i8, ptr %.sroa.5375.0..sroa_idx, align 8
  %.sroa.6376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 297
  %.sroa.6376.sroa.0.0.copyload = load i56, ptr %.sroa.6376.0..sroa_idx, align 1
  %.sroa.7377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.7377.0.copyload = load i64, ptr %.sroa.7377.0..sroa_idx, align 16
  %.sroa.8378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 312
  %23 = load <2 x i64>, ptr %.sroa.8378.0..sroa_idx, align 8
  %.sroa.10380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.aqd = load <4 x i64>, ptr %.sroa.10380.0..sroa_idx, align 8
  %.sroa.11381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.14384.0.copyload = load i64, ptr %.sroa.11381.0..sroa_idx, align 8
  %.sroa.15385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.15385.0.copyload = load i32, ptr %.sroa.15385.0..sroa_idx, align 16
  %.sroa.16386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 372
  %.sroa.16386.0.copyload = load i32, ptr %.sroa.16386.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0187)
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nu, %bb.ns, %bb.nq
  %.sroa.13308.sroa.0.1 = phi i56 [ %.sroa.6389.sroa.0.0.copyload, %bb.ns ], [ %.sroa.6376.sroa.0.0.copyload, %bb.nq ], [ %.sroa.893.sroa.3.i.sroa.0.0, %bb.nu ]
  %.sroa.0298.sroa.9.sroa.0.1.in.in = phi i64 [ %.sroa.0387.0.copyload, %bb.ns ], [ %.sroa.0374.0.copyload, %bb.nq ], [ %.sroa.492.sroa.0.0.insert.insert.i, %bb.nu ] ; 2 uses
  %.sroa.28.1 = phi i32 [ %.sroa.16399.0.copyload, %bb.ns ], [ %.sroa.16386.0.copyload, %bb.nq ], [ %.sroa.1399.0.i, %bb.nu ]
  %.sroa.27.1 = phi i32 [ %.sroa.15398.0.copyload, %bb.ns ], [ %.sroa.15385.0.copyload, %bb.nq ], [ %.sroa.1298.1.i, %bb.nu ]
  %.sroa.26.1 = phi i64 [ %.sroa.14397.0.copyload, %bb.ns ], [ %.sroa.14384.0.copyload, %bb.nq ], [ %.sroa.1197.1.i, %bb.nu ]
  %.sroa.14311.1 = phi i64 [ %.sroa.7390.0.copyload, %bb.ns ], [ %.sroa.7377.0.copyload, %bb.nq ], [ %.sroa.893.sroa.4.1.i, %bb.nu ]
  %.sroa.11302.1 = phi i8 [ %.sroa.5388.0.copyload, %bb.ns ], [ %.sroa.5375.0.copyload, %bb.nq ], [ %.sroa.893.sroa.0.1.i, %bb.nu ]
  %24 = phi <2 x i64> [ %25, %bb.ns ], [ %23, %bb.nq ], [ %21, %bb.nu ]
  %i.aqe = phi <4 x i64> [ %i.aqg, %bb.ns ], [ %i.aqd, %bb.nq ], [ %28, %bb.nu ]
  %.sroa.0298.sroa.0.1 = trunc i64 %.sroa.0298.sroa.9.sroa.0.1.in.in to i8
  %.sroa.0298.sroa.9.sroa.0.1.in = and i64 %.sroa.0298.sroa.9.sroa.0.1.in.in, -256
  br label %bb.nv

bb.ns:                                            ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11InitializedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer9validator14WriteValidatorNtBN_11InitializedENtBP_5ErrorENtNtNtB7_3ops9try_trait3Try6branchBR_.exit.thread
  %i.aqf = getelementptr inbounds nuw i8, ptr %1, i64 4392
  %.sroa.0387.0.copyload = load i64, ptr %i.aqf, align 8
  %.sroa.5388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4400
  %.sroa.5388.0.copyload = load i8, ptr %.sroa.5388.0..sroa_idx, align 16
  %.sroa.6389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4401
  %.sroa.6389.sroa.0.0.copyload = load i56, ptr %.sroa.6389.0..sroa_idx, align 1
  %.sroa.7390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4408
  %.sroa.7390.0.copyload = load i64, ptr %.sroa.7390.0..sroa_idx, align 8
  %.sroa.8391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4416
  %25 = load <2 x i64>, ptr %.sroa.8391.0..sroa_idx, align 16
  %.sroa.10393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.aqg = load <4 x i64>, ptr %.sroa.10393.0..sroa_idx, align 16
  %.sroa.11394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4464
  %.sroa.14397.0.copyload = load i64, ptr %.sroa.11394.0..sroa_idx, align 16
  %.sroa.15398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %.sroa.15398.0.copyload = load i32, ptr %.sroa.15398.0..sroa_idx, align 8
  %.sroa.16399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4476
  %.sroa.16399.0.copyload = load i32, ptr %.sroa.16399.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0187)
  br label %bb.nr

bb.nt:                                            ; preds = %bb.pr, %bb.nx, %bb.oi, %bb.pp, %bb.pn, %bb.pm, %bb.oy, %.body
  %i.aqh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.nu:                                            ; preds = %bb.ls
  %i.aqi = ptrtoint ptr %.sroa.894.1.i to i64
  %i.aqj = insertelement <4 x i64> poison, i64 %.sroa.893.sroa.7.1.i, i64 0
  %26 = insertelement <4 x i64> %i.aqj, i64 %i.aqi, i64 1
  %27 = shufflevector <2 x i64> %i.akb, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = shufflevector <4 x i64> %26, <4 x i64> %27, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.nr

bb.nv:                                            ; preds = %bb.pk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit, %bb.nr
  %.sroa.13308.sroa.0.2 = phi i56 [ %.sroa.13308.sroa.0.1, %bb.nr ], [ %.sroa.13308.sroa.0.4, %bb.pk ], [ %.sroa.13308.sroa.0.4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.0298.sroa.9.sroa.0.2 = phi i64 [ %.sroa.0298.sroa.9.sroa.0.1.in, %bb.nr ], [ 0, %bb.pk ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.0298.sroa.0.2 = phi i8 [ %.sroa.0298.sroa.0.1, %bb.nr ], [ %.sroa.0298.sroa.0.4, %bb.pk ], [ %.sroa.0298.sroa.0.4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.28.2 = phi i32 [ %.sroa.28.1, %bb.nr ], [ undef, %bb.pk ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.27.2 = phi i32 [ %.sroa.27.1, %bb.nr ], [ undef, %bb.pk ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.26.2 = phi i64 [ %.sroa.26.1, %bb.nr ], [ %.sroa.26.4, %bb.pk ], [ %.sroa.26.4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.14311.2 = phi i64 [ %.sroa.14311.1, %bb.nr ], [ %.sroa.14311.4, %bb.pk ], [ %.sroa.14311.4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %.sroa.11302.2 = phi i8 [ %.sroa.11302.1, %bb.nr ], [ %.sroa.11302.4, %bb.pk ], [ %.sroa.11302.4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %29 = phi <2 x i64> [ %24, %bb.nr ], [ %33, %bb.pk ], [ %33, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %i.aqk = phi <4 x i64> [ %i.aqe, %bb.nr ], [ %i.asp, %bb.pk ], [ %i.asp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit ]
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i8 0, ptr %i.aql, align 16
  %i.aqm = zext i8 %.sroa.0298.sroa.0.2 to i64
  %i.aqn = or disjoint i64 %.sroa.0298.sroa.9.sroa.0.2, %i.aqm
  %.phi.trans.insert502 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.pre503 = load ptr, ptr %.phi.trans.insert502, align 16, !alias.scope !1978
  br label %bb.nh

bb.nw:                                            ; preds = %.body, %bb.lr, %bb.lu, %bb.nl, %bb.no, %bb.nf, %bb.mm, %bb.mk, %bb.mz, %bb.pp, %bb.po, %bb.pm, %.body153, %bb.ph
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn, %bb.po ], [ %i.atr, %bb.ph ], [ %eh.lpad-body154, %bb.pm ], [ %eh.lpad-body154, %.body153 ], [ %.pn33.pn.pn.pn, %bb.pp ], [ %i.aps, %bb.no ], [ %eh.lpad-body, %.body ], [ %i.akd, %bb.lr ], [ %i.aob, %bb.nf ], [ %i.akk, %bb.lu ], [ %i.amg, %bb.mk ], [ %i.ami, %bb.mm ], [ %.pn42.pn.pn, %bb.mz ], [ %i.apb, %bb.nl ]
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i8 0, ptr %i.aqo, align 16
  br label %bb.z

bb.nx:                                            ; preds = %bb.ny
  %i.aqp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %.val92 = load ptr, ptr %i.aqr, align 8
  %i.aqq = getelementptr i8, ptr %1, i64 288
  %.val93 = load ptr, ptr %i.aqq, align 16, !nonnull !11, !align !20, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.val92, ptr nonnull %.val93) #33
          to label %.body138 unwind label %bb.nt

bb.ny:                                            ; preds = %bb.b, %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aqr, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.nz unwind label %bb.nx

bb.nz:                                            ; preds = %bb.ny
  %i.aqs = load i64, ptr %i.be, align 8, !range !1985, !noundef !11 ; 3 uses
  %i.aqt = icmp eq i64 %i.aqs, -2
  br i1 %i.aqt, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %common.ret

bb.ob:                                            ; preds = %bb.nz
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.3.sroa.0412.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2413.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %30 = load <2 x i64>, ptr %.sroa.3.sroa.2413.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.4415.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.aqu = load <4 x i64>, ptr %.sroa.3.sroa.4415.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.5416.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %.sroa.3.sroa.8419.0.copyload = load i64, ptr %.sroa.3.sroa.5416.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %.val90 = load ptr, ptr %i.aqr, align 8         ; 5 uses
  %i.aqv = getelementptr i8, ptr %1, i64 288
  %.val91 = load ptr, ptr %i.aqv, align 16, !nonnull !11, !align !20, !noundef !11 ; 5 uses
  %i.aqw = load ptr, ptr %.val91, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.aqw, null
  br i1 %.not.i.i137, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val90) ]
  invoke void %i.aqw(ptr noundef nonnull %.val90)
          to label %bb.od unwind label %bb.of

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %i.aqx = getelementptr inbounds nuw i8, ptr %.val91, i64 8
  %i.aqy = load i64, ptr %i.aqx, align 8, !range !15, !invariant.load !11 ; 2 uses
  %i.aqz = icmp eq i64 %i.aqy, 0
  br i1 %i.aqz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.ara = getelementptr inbounds nuw i8, ptr %.val91, i64 16
  %i.arb = load i64, ptr %i.ara, align 8, !range !21, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val90) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val90, i64 noundef range(i64 1, 0) %i.aqy, i64 noundef range(i64 1, 536870913) %i.arb) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit

bb.of:                                            ; preds = %bb.oc
  %i.arc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %.val91, i64 8
  %i.are = load i64, ptr %i.ard, align 8, !range !15, !invariant.load !11 ; 2 uses
  %i.arf = icmp eq i64 %i.are, 0
  br i1 %i.arf, label %.body138, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.arg = getelementptr inbounds nuw i8, ptr %.val91, i64 16
  %i.arh = load i64, ptr %i.arg, align 8, !range !21, !invariant.load !11
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val90, i64 noundef range(i64 1, 0) %i.are, i64 noundef range(i64 1, 536870913) %i.arh) #34
  br label %.body138

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.oe, %bb.od
  %.not.i140 = icmp eq i64 %i.aqs, -1
  br i1 %.not.i140, label %bb.ly, label %bb.oh

bb.oh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit
  %.sroa.13308.sroa.0.3.in.in = phi i64 [ %i.aqs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit ], [ %i.arq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146 ] ; 2 uses
  %.sroa.26.3 = phi i64 [ %.sroa.3.sroa.8419.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit ], [ %.sroa.3295.sroa.8.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146 ]
  %.sroa.13308.sroa.0.3.in.in.a = phi i64 [ %.sroa.3.sroa.0412.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit ], [ %.sroa.3295.sroa.0.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146 ]
  %31 = phi <2 x i64> [ %30, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit ], [ %32, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146 ]
  %i.ari = phi <4 x i64> [ %i.aqu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit ], [ %i.ars, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146 ]
  %.sroa.11302.3 = trunc i64 %.sroa.13308.sroa.0.3.in.in to i8
  %.sroa.13308.sroa.0.3.in = lshr i64 %.sroa.13308.sroa.0.3.in.in, 8
  %.sroa.13308.sroa.0.3 = trunc nuw i64 %.sroa.13308.sroa.0.3.in to i56
  %i.arj = getelementptr inbounds nuw i8, ptr %1, i64 273
  store i8 0, ptr %i.arj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.ou

.body138:                                         ; preds = %bb.or, %bb.oq, %bb.og, %bb.of, %bb.mg, %bb.nx, %bb.md, %bb.oi
  %.pn33.pn = phi { ptr, i32 } [ %i.asa, %bb.oq ], [ %i.aqp, %bb.nx ], [ %i.arc, %bb.of ], [ %i.arn, %bb.oi ], [ %i.asa, %bb.or ], [ %i.alp, %bb.md ], [ %i.alx, %bb.mg ], [ %i.arc, %bb.og ] ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %1, i64 273
  %i.arl = load i8, ptr %i.ark, align 1, !range !17, !noundef !11
  %i.arm = trunc nuw i8 %i.arl to i1
  br i1 %i.arm, label %bb.pn, label %bb.lz

bb.oi:                                            ; preds = %bb.oj
  %i.arn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.val88 = load ptr, ptr %i.arp, align 8
  %i.aro = getelementptr i8, ptr %1, i64 288
  %.val89 = load ptr, ptr %i.aro, align 16, !nonnull !11, !align !20, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write(ptr %.val88, ptr nonnull %.val89) #33
          to label %.body138 unwind label %bb.nt

bb.oj:                                            ; preds = %bb.c, %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.arp = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  invoke void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.arp, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ok unwind label %bb.oi

bb.ok:                                            ; preds = %bb.oj
  %i.arq = load i64, ptr %i.bc, align 8, !range !1985, !noundef !11 ; 3 uses
  %i.arr = icmp eq i64 %i.arq, -2
  br i1 %i.arr, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  store i8 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %common.ret

bb.om:                                            ; preds = %bb.ok
  %.sroa.3295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.3295.sroa.0.0.copyload = load i64, ptr %.sroa.3295.0..sroa_idx, align 8
  %.sroa.3295.sroa.2.0..sroa.3295.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %32 = load <2 x i64>, ptr %.sroa.3295.sroa.2.0..sroa.3295.0..sroa_idx.sroa_idx, align 8
  %.sroa.3295.sroa.4.0..sroa.3295.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.ars = load <4 x i64>, ptr %.sroa.3295.sroa.4.0..sroa.3295.0..sroa_idx.sroa_idx, align 8
  %.sroa.3295.sroa.5.0..sroa.3295.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %.sroa.3295.sroa.8.0.copyload = load i64, ptr %.sroa.3295.sroa.5.0..sroa.3295.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.val86 = load ptr, ptr %i.arp, align 8         ; 5 uses
  %i.art = getelementptr i8, ptr %1, i64 288
  %.val87 = load ptr, ptr %i.art, align 16, !nonnull !11, !align !20, !noundef !11 ; 5 uses
  %i.aru = load ptr, ptr %.val87, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.aru, null
  br i1 %.not.i.i142, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val86) ]
  invoke void %i.aru(ptr noundef nonnull %.val86)
          to label %bb.oo unwind label %bb.oq

bb.oo:                                            ; preds = %bb.on, %bb.om
  %i.arv = getelementptr inbounds nuw i8, ptr %.val87, i64 8
  %i.arw = load i64, ptr %i.arv, align 8, !range !15, !invariant.load !11 ; 2 uses
  %i.arx = icmp eq i64 %i.arw, 0
  br i1 %i.arx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.ary = getelementptr inbounds nuw i8, ptr %.val87, i64 16
  %i.arz = load i64, ptr %i.ary, align 8, !range !21, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val86) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86, i64 noundef range(i64 1, 0) %i.arw, i64 noundef range(i64 1, 536870913) %i.arz) #34
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146

bb.oq:                                            ; preds = %bb.on
  %i.asa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %.val87, i64 8
  %i.asc = load i64, ptr %i.asb, align 8, !range !15, !invariant.load !11 ; 2 uses
  %i.asd = icmp eq i64 %i.asc, 0
  br i1 %i.asd, label %.body138, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.ase = getelementptr inbounds nuw i8, ptr %.val87, i64 16
  %i.asf = load i64, ptr %i.ase, align 8, !range !21, !invariant.load !11
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86, i64 noundef range(i64 1, 0) %i.asc, i64 noundef range(i64 1, 536870913) %i.asf) #34
  br label %.body138

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorENtNtB4_6marker4SendEL_EEECs92BnbMq7p8c_15influxdb3_write.exit146: ; preds = %bb.op, %bb.oo
  %.not.i147 = icmp eq i64 %i.arq, -1
  br i1 %.not.i147, label %bb.ly, label %bb.oh

bb.os:                                            ; preds = %.thread527, %bb.ly
  %i.asg = phi ptr [ %i.ako, %.thread527 ], [ %i.aks, %bb.ly ]
  %i.ash = getelementptr i8, ptr %1, i64 16
  %.val105 = load i64, ptr %i.ash, align 16, !noundef !11 ; 2 uses
  %i.asi = icmp ult i64 %.val105, 164703072086692426
  call void @llvm.assume(i1 %i.asi)
  %i.asj = icmp eq i64 %.val105, 0
  br i1 %i.asj, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os, %bb.ly
  %i.ask = phi ptr [ %i.asg, %bb.os ], [ %i.aks, %bb.ly ]
  %i.asl = phi i64 [ 0, %bb.os ], [ %.pre501, %bb.ly ]
  %i.asm = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.asn = load ptr, ptr %i.asm, align 16, !nonnull !11, !align !20, !noundef !11
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 104
  invoke void @_RNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer7metricsNtB2_12WriteMetrics12record_lines(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aso, i64 noundef %i.asl)
          to label %bb.pa unwind label %bb.oz

bb.ou:                                            ; preds = %bb.os, %bb.oh
  %.sroa.13308.sroa.0.4 = phi i56 [ %.sroa.13308.sroa.0.3, %bb.oh ], [ undef, %bb.os ] ; 2 uses
  %.sroa.0298.sroa.0.4 = phi i8 [ 18, %bb.oh ], [ 1, %bb.os ] ; 2 uses
  %.sroa.26.4 = phi i64 [ %.sroa.26.3, %bb.oh ], [ undef, %bb.os ] ; 2 uses
  %.sroa.14311.4 = phi i64 [ %.sroa.13308.sroa.0.3.in.in.a, %bb.oh ], [ undef, %bb.os ] ; 2 uses
  %.sroa.11302.4 = phi i8 [ %.sroa.11302.3, %bb.oh ], [ undef, %bb.os ] ; 2 uses
  %33 = phi <2 x i64> [ %31, %bb.oh ], [ undef, %bb.os ] ; 2 uses
  %i.asp = phi <4 x i64> [ %i.ari, %bb.oh ], [ undef, %bb.os ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ow unwind label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.asq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body153 unwind label %bb.ox

bb.ow:                                            ; preds = %bb.ou
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.pj

bb.ox:                                            ; preds = %bb.ov
  %i.asr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.oy:                                            ; preds = %bb.pb, %bb.pd, %bb.oz, %bb.lz
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn, %bb.lz ], [ %i.atc, %bb.pd ], [ %i.asx, %bb.pb ], [ %i.ass, %bb.oz ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %1) #33
          to label %bb.po unwind label %bb.nt

bb.oz:                                            ; preds = %bb.ot
  %i.ass = landingpad { ptr, i32 }
          cleanup
  br label %bb.oy

bb.pa:                                            ; preds = %bb.ot
  %i.ast = load ptr, ptr %i.asm, align 16, !nonnull !11, !align !20, !noundef !11
  %i.asu = getelementptr i8, ptr %1, i64 16       ; 2 uses
  %.val106 = load i64, ptr %i.asu, align 16, !noundef !11 ; 2 uses
  %i.asv = icmp ult i64 %.val106, 164703072086692426
  call void @llvm.assume(i1 %i.asv)
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ast, i64 104
  invoke void @_RNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer7metricsNtB2_12WriteMetrics21record_lines_rejected(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.asw, i64 noundef %.val106)
          to label %bb.pc unwind label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.asx = landingpad { ptr, i32 }
          cleanup
  br label %bb.oy

bb.pc:                                            ; preds = %bb.pa
  %i.asy = load ptr, ptr %i.asm, align 16, !nonnull !11, !align !20, !noundef !11
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 104
  %i.ata = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.atb = load i64, ptr %i.ata, align 8, !noundef !11
  invoke void @_RNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer7metricsNtB2_12WriteMetrics12record_bytes(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.asz, i64 noundef %i.atb)
          to label %bb.pe unwind label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.atc = landingpad { ptr, i32 }
          cleanup
  br label %bb.oy

bb.pe:                                            ; preds = %bb.pc
  %i.atd = getelementptr inbounds nuw i8, ptr %1, i64 274 ; 2 uses
  store i8 0, ptr %i.atd, align 2
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.atf = load ptr, ptr %i.ate, align 16, !nonnull !11, !noundef !11
  %i.atg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ath = load i64, ptr %i.atg, align 8, !noundef !11
  %.sroa.0364.0.copyload = load i8, ptr %1, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.4.sroa.0.0.copyload = load i56, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5365.0.copyload = load i64, ptr %.sroa.5365.0..sroa_idx, align 8
  %.sroa.6366.0.copyload = load i64, ptr %i.asu, align 16
  %i.ati = load i64, ptr %i.ask, align 16, !noundef !11
  %i.atj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.atk = load <2 x i64>, ptr %i.atj, align 16
  %i.atl = ptrtoint ptr %i.atf to i64
  %i.atm = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.atn = load i8, ptr %i.atm, align 16, !range !17, !noundef !11
  %i.ato = trunc nuw i8 %i.atn to i1
  br i1 %i.ato, label %bb.pg, label %bb.pf

bb.pf:                                            ; preds = %bb.pg, %bb.pe
  store i8 0, ptr %i.atm, align 16
  store i8 0, ptr %i.atd, align 2
  %34 = insertelement <2 x i64> poison, i64 %.sroa.6366.0.copyload, i64 0
  %35 = insertelement <2 x i64> %34, i64 %i.atl, i64 1
  %36 = insertelement <4 x i64> poison, i64 %i.ath, i64 0
  %i.atp = insertelement <4 x i64> %36, i64 %i.ati, i64 1
  %37 = shufflevector <2 x i64> %i.atk, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %38 = shufflevector <4 x i64> %i.atp, <4 x i64> %37, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.pi

bb.pg:                                            ; preds = %bb.pe
  %i.atq = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(104) %i.atq)
          to label %bb.pf unwind label %bb.ph

bb.ph:                                            ; preds = %bb.pk, %bb.pg
  %i.atr = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

bb.pi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit, %bb.pf
  %.sroa.13308.sroa.0.5 = phi i56 [ %.sroa.13308.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit ], [ %.sroa.4.sroa.0.0.copyload, %bb.pf ]
  %.sroa.28.3 = phi i32 [ %.sroa.28.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit ], [ undef, %bb.pf ]
  %.sroa.27.3 = phi i32 [ %.sroa.27.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit ], [ undef, %bb.pf ]
  %.sroa.26.5 = phi i64 [ %.sroa.26.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit ], [ undef, %bb.pf ]
  %.sroa.14311.5 = phi i64 [ %.sroa.14311.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit ], [ %.sroa.5365.0.copyload, %bb.pf ]
  %.sroa.11302.5 = phi i8 [ %.sroa.11302.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit ], [ %.sroa.0364.0.copyload, %bb.pf ]
  %.sroa.0298.sroa.0.0.insert.insert = phi i64 [ %.sroa.0298.sroa.9.sroa.0.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit ], [ 255, %bb.pf ]
  %39 = phi <2 x i64> [ %22, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit ], [ %35, %bb.pf ]
  %i.ats = phi <4 x i64> [ %i.aos, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit ], [ %38, %bb.pf ]
  store i64 %.sroa.0298.sroa.0.0.insert.insert, ptr %0, align 8
  %.sroa.11302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.11302.5, ptr %.sroa.11302.0..sroa_idx, align 8
  %.sroa.13308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.13308.sroa.0.5, ptr %.sroa.13308.0..sroa_idx, align 1
  %.sroa.14311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14311.5, ptr %.sroa.14311.0..sroa_idx, align 8
  %.sroa.15317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %39, ptr %.sroa.15317.0..sroa_idx, align 8
  %.sroa.18329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x i64> %i.ats, ptr %.sroa.18329.0..sroa_idx, align 8
  %.sroa.20335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.26.5, ptr %.sroa.20335.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sroa.27.3, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.sroa.28.3, ptr %.sroa.28.0..sroa_idx, align 4
  br label %common.ret

bb.pj:                                            ; preds = %bb.ow
  %i.att = landingpad { ptr, i32 }
          cleanup
  br label %.body153

.body153:                                         ; preds = %bb.ov, %bb.pj
  %eh.lpad-body154 = phi { ptr, i32 } [ %i.att, %bb.pj ], [ %i.asq, %bb.ov ] ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.atv = load i8, ptr %i.atu, align 16, !range !17, !noundef !11
  %i.atw = trunc nuw i8 %i.atv to i1
  br i1 %i.atw, label %bb.pm, label %bb.nw

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.ow
  %i.atx = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.aty = load i8, ptr %i.atx, align 16, !range !17, !noundef !11
  %i.atz = trunc nuw i8 %i.aty to i1
  br i1 %i.atz, label %bb.pk, label %bb.nv

bb.pk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorEECs92BnbMq7p8c_15influxdb3_write.exit
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(104) %i.aua)
          to label %bb.nv unwind label %bb.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit157: ; preds = %bb.pq, %bb.pr, %bb.pl, %bb.z
  %.pn56 = phi { ptr, i32 } [ %i.auc, %bb.pl ], [ %.pn51.pn.pn.pn, %bb.z ], [ %.pn51.pn.pn.pn, %bb.pr ], [ %.pn51.pn.pn.pn, %bb.pq ]
  %i.aub = getelementptr inbounds nuw i8, ptr %1, i64 274
  store i8 0, ptr %i.aub, align 2
  store i8 2, ptr %i.cc, align 1
  resume { ptr, i32 } %.pn56

bb.pl:                                            ; preds = %bb.ni
  %i.auc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit157

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.nh, %bb.ni
  %i.aud = getelementptr inbounds nuw i8, ptr %1, i64 274
  store i8 0, ptr %i.aud, align 2
  br label %bb.pi

bb.pm:                                            ; preds = %.body153
  %i.aue = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(104) %i.aue) #33
          to label %bb.nw unwind label %bb.nt

bb.pn:                                            ; preds = %.body138
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.bg) #33
          to label %bb.lz unwind label %bb.nt

bb.po:                                            ; preds = %bb.oy
  %i.auf = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.aug = load i8, ptr %i.auf, align 16, !range !17, !noundef !11
  %i.auh = trunc nuw i8 %i.aug to i1
  br i1 %i.auh, label %bb.pp, label %bb.nw

bb.pp:                                            ; preds = %bb.po
  %i.aui = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(104) %i.aui) #33
          to label %bb.nw unwind label %bb.nt

bb.pq:                                            ; preds = %bb.z
  %i.auj = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  %i.auk = load ptr, ptr %i.auj, align 16, !alias.scope !1989, !nonnull !11, !noundef !11
  %i.aul = atomicrmw sub ptr %i.auk, i64 1 release, align 8, !noalias !1989
  %i.aum = icmp eq i64 %i.aul, 1
  br i1 %i.aum, label %bb.pr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit157

bb.pr:                                            ; preds = %bb.pq
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.auj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECs92BnbMq7p8c_15influxdb3_write.exit157 unwind label %bb.nt
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl16get_table_chunkss1_0B6_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl16get_table_chunkss_10___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11
  tail call void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNvMNtCs92BnbMq7p8c_15influxdb3_write12write_bufferNtB4_15WriteBufferImpl16get_table_chunkss_10___CALLSITE, align 8, !nonnull !11, !align !20, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !11
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !11, !nonnull !11
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB7_9GetResult5bytes0Cs92BnbMq7p8c_15influxdb3_write(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.14153.i = alloca [32 x i8], align 8      ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.3.sroa.5.i = alloca [32 x i8], align 8   ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.5104.i = alloca [56 x i8], align 8       ; 8 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.13.i = alloca [56 x i8], align 8         ; 8 uses
  %.sroa.5.sroa.7.i = alloca [32 x i8], align 8   ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [88 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [48 x i8], align 8                ; 14 uses
  %i.s = alloca [72 x i8], align 8                ; 19 uses
  %.sroa.3.i = alloca [24 x i8], align 8          ; 7 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 6 uses
  %i.t = alloca [72 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 3 uses
  %.sroa.837.sroa.9 = alloca [32 x i8], align 8   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !range !26, !noundef !11
  switch i8 %i.x, label %default.unreachable86 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.bn
  ]

default.unreachable86:                            ; preds = %bb.bn, %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.y, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !11
  %i.ac = load i64, ptr %i.z, align 8, !noundef !11 ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.af = load i64, ptr %i.ae, align 8, !range !22, !noundef !11
  %i.ag = icmp eq i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  br i1 %i.ag, label %.thread88, label %.thread87

.thread87:                                        ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.aj = load i32, ptr %i.ai, align 8, !range !30, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %.sroa.030.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i64 %i.ac, ptr %.sroa.030.sroa.7.0..sroa_idx, align 8
end_hunk_4
