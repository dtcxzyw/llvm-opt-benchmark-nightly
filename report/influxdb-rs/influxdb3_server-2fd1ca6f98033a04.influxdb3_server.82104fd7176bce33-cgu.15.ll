Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.15?download=true
inline.NumInlined: 4229
inline.NumDeleted: 1931
begin_hunk_0_@_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE13push_back_mutCsbakdBCgU4AF_16influxdb3_server:bb.a
  %.sroa.03.0 = sub nuw i64 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.03.0 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret ptr %i.n

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE4growCs1LivM9IBWqb_12object_store(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %._crit_edge unwind label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8
  %.pre6 = load i64, ptr %0, align 8, !range !43
  br label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10330)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !10333, !noundef !4
  %i.r = load ptr, ptr %1, align 8, !alias.scope !10333, !nonnull !4, !align !119, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !10333, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !10333, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !10333, !noundef !4
  invoke void %i.t(ptr noundef %i.q, ptr noundef %i.v, i64 noundef %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.e, !inline_history !2564

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE4iterCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %.val = load i64, ptr %1, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.c, align 8
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsbakdBCgU4AF_16influxdb3_server(i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1), !noalias !10334 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = icmp eq i64 %i.f, %i.e
  br i1 %i.h, label %_RINvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE12slice_rangesNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsbakdBCgU4AF_16influxdb3_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %i.e, %.val2                     ; 2 uses
  %.not.i = icmp ult i64 %i.i, %.val
  %i.j = select i1 %.not.i, i64 0, i64 %.val
  %.sroa.04.0.i = sub nuw i64 %i.i, %i.j          ; 4 uses
  %i.k = sub i64 %.val, %.sroa.04.0.i             ; 2 uses
  %.not11.i = icmp ult i64 %i.k, %i.g
  br i1 %.not11.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %i.g, %i.k
  br label %_RINvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE12slice_rangesNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsbakdBCgU4AF_16influxdb3_server.exit

bb.d:                                             ; preds = %bb.b
  %i.m = add i64 %.sroa.04.0.i, %i.g
  br label %_RINvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE12slice_rangesNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsbakdBCgU4AF_16influxdb3_server.exit

_RINvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE12slice_rangesNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0 = phi i64 [ %.sroa.04.0.i, %bb.d ], [ %.sroa.04.0.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.m, %bb.d ], [ %.val, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0 = phi i64 [ 0, %bb.d ], [ %i.l, %bb.c ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.5.0
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.11.0
  store ptr %i.p, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.u, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9pop_frontCsbakdBCgU4AF_16influxdb3_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = load i64, ptr %1, align 8, !range !43, !noundef !4 ; 3 uses
  %.not = icmp ult i64 %i.f, %i.g
  %i.h = select i1 %.not, i64 0, i64 %i.g
  %.sroa.0.0 = sub nuw i64 %i.f, %i.h
  store i64 %.sroa.0.0, ptr %i.d, align 8
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7boundedINtB5_6PermitNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16QueuedInvocationE4sendCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 128
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4listINtB2_2TxNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16QueuedInvocationE4pushCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %1)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 256
  invoke void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.b)
          to label %_RNvMs6_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanINtB5_2TxNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16QueuedInvocationNtNtB7_7bounded9SemaphoreE4sendCsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded6PermitNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16QueuedInvocationEECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %0) #28
          to label %bb.d unwind label %bb.c

_RNvMs6_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanINtB5_2TxNtNtCsh4GC5dvIChH_27influxdb3_processing_engine9scheduler16QueuedInvocationNtNtB7_7bounded9SemaphoreE4sendCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.noexc
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7boundedINtB5_6PermitNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events20CatalogUpdateMessageE4sendCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 128
  invoke void @_RNvMNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4listINtB2_2TxNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events20CatalogUpdateMessageE4pushCsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 256
  invoke void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio4sync4task12atomic_wakerNtB5_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.b)
          to label %_RNvMs6_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events20CatalogUpdateMessageNtNtB7_7bounded9SemaphoreE4sendCsbakdBCgU4AF_16influxdb3_server.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded6PermitNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events20CatalogUpdateMessageEECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %0) #28
          to label %bb.d unwind label %bb.c

_RNvMs6_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanINtB5_2TxNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36events20CatalogUpdateMessageNtNtB7_7bounded9SemaphoreE4sendCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.noexc
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvMs_NtCs8rTCm43AEA0_12tokio_rustls6commonINtB4_6StreamNtNtNtNtCseCDlJsl44RV_5tokio3net3tcp6stream9TcpStreamNtNtNtCs62AB4KIMLyv_6rustls6server11server_conn16ServerConnectionE7read_ioCsbakdBCgU4AF_16influxdb3_server(ptr %.0.val, ptr %.8.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [192 x i8], align 8               ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [192 x i8], align 8               ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [192 x i8], align 8               ; 7 uses
  %i.j = alloca [192 x i8], align 8               ; 7 uses
  %i.k = alloca [192 x i8], align 8               ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [192 x i8], align 8               ; 7 uses
  %i.p = alloca [192 x i8], align 8               ; 12 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [192 x i8], align 8               ; 7 uses
  %i.s = alloca [192 x i8], align 8               ; 7 uses
  %i.t = alloca [192 x i8], align 8               ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.6108.i = alloca [24 x i8], align 8       ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 16 uses
  %i.aa = alloca [32 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 17 uses
  %i.ae = alloca [32 x i8], align 8               ; 12 uses
  %.sroa.714.sroa.9.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.18.i = alloca [24 x i8], align 8         ; 11 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 10 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 12 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store ptr %.0.val, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %0, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.8.val, i64 72
  %i.ap = tail call noundef zeroext i1 @_RNvMNtCs62AB4KIMLyv_6rustls6vecbufNtB2_14ChunkVecBuffer7is_full(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao)
  br i1 %i.ap, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val, i64 824
  %i.ar = getelementptr inbounds nuw i8, ptr %.8.val, i64 1064
  %i.as = call { i64, ptr } @_RNvMNtNtCs62AB4KIMLyv_6rustls4msgs8deframerNtB2_15MessageDeframer4read(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) @52, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ar) ; 4 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %i.av = trunc nuw i64 %i.at to i1
  %i.aw = icmp ne ptr %i.au, null
  %or.cond.not.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.not.i, label %_RNvMs6_NtCs62AB4KIMLyv_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ax = tail call noundef nonnull ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 40, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 30)
  %i.ay = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.ax, 1
  br label %_RNvMs6_NtCs62AB4KIMLyv_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCsbakdBCgU4AF_16influxdb3_server.exit

bb.d:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 819
  store i8 1, ptr %i.az, align 1, !alias.scope !10337
  %i.ba = insertvalue { i64, ptr } %i.as, ptr null, 1
  br label %_RNvMs6_NtCs62AB4KIMLyv_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCsbakdBCgU4AF_16influxdb3_server.exit

_RNvMs6_NtCs62AB4KIMLyv_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.merged.i = phi { i64, ptr } [ %i.ay, %bb.c ], [ %i.ba, %bb.d ], [ %i.as, %bb.b ] ; 2 uses
  %i.bb = extractvalue { i64, ptr } %.merged.i, 0 ; 2 uses
  %i.bc = extractvalue { i64, ptr } %.merged.i, 1 ; 5 uses
  store i64 %i.bb, ptr %i.al, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = trunc nuw i64 %i.bb to i1
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs6_NtCs62AB4KIMLyv_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCsbakdBCgU4AF_16influxdb3_server.exit
  %i.bf = call fastcc noundef i8 @_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind(ptr %i.bc)
  %i.bg = icmp eq i8 %i.bf, 13
  br i1 %i.bg, label %bb.ed, label %bb.ee

bb.f:                                             ; preds = %_RNvMs6_NtCs62AB4KIMLyv_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6server11server_conn20ServerConnectionDataE8read_tlsCsbakdBCgU4AF_16influxdb3_server.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.bh = getelementptr inbounds nuw i8, ptr %.8.val, i64 1064 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10340)
  call void @llvm.experimental.noalias.scope.decl(metadata !10343)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.714.sroa.9.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %.8.val, i64 1032 ; 14 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.bi, align 8, !alias.scope !10343, !noalias !10345 ; 2 uses
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 1040 ; 6 uses
  %.sroa.63.0.copyload.i = load ptr, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !10343, !noalias !10345 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 1048 ; 6 uses
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !10343, !noalias !10345 ; 4 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 1056
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !10343, !noalias !10345
  store i8 15, ptr %i.bi, align 8, !alias.scope !10343, !noalias !10345
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 1033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10347
  store i8 %.sroa.0.0.copyload.i, ptr %i.ai, align 8, !noalias !10347
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i, i64 7, i1 false), !noalias !10345
  %.sroa.63.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.63.0.copyload.i, ptr %.sroa.63.0..sroa_idx4.i, align 8, !noalias !10347
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx6.i, align 8, !noalias !10347
  %.sroa.8.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 %.sroa.8.0.copyload.i, ptr %.sroa.8.0..sroa_idx8.i, align 8, !noalias !10347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !10347
  invoke fastcc void @_RNvXsh_NtCs62AB4KIMLyv_6rustls5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.dj unwind label %bb.di, !noalias !10340

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !10347
  invoke void @_RNvMs_NtNtCs62AB4KIMLyv_6rustls4msgs8deframerNtB4_17DeframerVecBuffer6borrow(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !noalias !10340

.preheader.i:                                     ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.8.val, i64 824
  %i.bk = getelementptr inbounds nuw i8, ptr %.8.val, i64 808 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.val, i64 810
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 34
  %i.bp = getelementptr inbounds nuw i8, ptr %.8.val, i64 813
  %.sroa.18.8..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 11 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.br = getelementptr inbounds nuw i8, ptr %.8.val, i64 815
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 822 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %.sroa.4.0..sroa_idx.i.i58.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i57.i = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.cb = getelementptr inbounds nuw i8, ptr %.8.val, i64 65 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.8.val, i64 817 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.8.val, i64 912
  %i.ce = getelementptr inbounds nuw i8, ptr %.8.val, i64 812
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %.sroa.4.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  br label %bb.i

.loopexit.i:                                      ; preds = %bb.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread114.i

.loopexit.split-lp.i:                             ; preds = %bb.cx, %bb.h
  %.sroa.10.1.ph.ph.i = phi ptr [ %.sroa.10.2.i, %bb.cx ], [ %.sroa.7.0.copyload.i, %bb.h ]
  %.sroa.0.1.ph.ph.i = phi ptr [ %.sroa.0.2.i, %bb.cx ], [ %.sroa.63.0.copyload.i, %bb.h ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread114.i

bb.i:                                             ; preds = %bb.ci, %.preheader.i
  %.sroa.10.2.i = phi ptr [ %i.gu, %bb.ci ], [ %.sroa.7.0.copyload.i, %.preheader.i ] ; 31 uses
  %.sroa.0.2.i = phi ptr [ %i.gv, %bb.ci ], [ %.sroa.63.0.copyload.i, %.preheader.i ] ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !10348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10351
  %i.cl = load i16, ptr %i.bk, align 8, !range !10354, !alias.scope !10355, !noalias !10356, !noundef !4
  %i.cm = load i16, ptr %i.bl, align 2, !alias.scope !10355, !noalias !10356
  invoke void @_RNvMNtNtCs62AB4KIMLyv_6rustls4msgs8deframerNtB2_15MessageDeframer3pop(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val, i16 noundef %i.cl, i16 %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !10340

.noexc.i:                                         ; preds = %bb.i
  %i.cn = load i64, ptr %i.z, align 8, !range !45, !noalias !10351, !noundef !4 ; 2 uses
  switch i64 %i.cn, label %bb.k [
    i64 -2, label %bb.j
    i64 -1, label %bb.cx
  ]

bb.j:                                             ; preds = %.noexc.i
  %i.co = load i8, ptr %.sroa.18.8..sroa_idx105.i, align 8, !range !4043, !noalias !10351, !noundef !4
  switch i8 %i.co, label %bb.q [
    i8 2, label %bb.r
    i8 5, label %bb.s
    i8 16, label %bb.t
  ]

bb.k:                                             ; preds = %.noexc.i
  %i.cp = load i8, ptr %i.bm, align 8, !range !1111, !noalias !10351, !noundef !4
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = load i8, ptr %i.bn, align 1, !range !1111, !noalias !10351, !noundef !4
  %i.cs = load i8, ptr %i.bo, align 2, !range !1111, !noalias !10351, !noundef !4
  %i.ct = trunc nuw i8 %i.cs to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !10351
  br i1 %i.cq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  br i1 %i.ct, label %bb.o, label %bb.am

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState17send_close_notify(ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val)
          to label %bb.l unwind label %bb.n, !noalias !10357

bb.n:                                             ; preds = %bb.m
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message12PlainMessageECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(32) %i.y) #28
          to label %.thread114.i unwind label %bb.p, !noalias !10357

bb.o:                                             ; preds = %bb.l
  store i64 0, ptr %.8.val, align 8, !alias.scope !10355, !noalias !10356
  br label %bb.am

bb.p:                                             ; preds = %bb.af, %bb.n
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !10357
  unreachable

bb.q:                                             ; preds = %bb.j
  %.sroa.1097.8.copyload100.i = load i64, ptr %.sroa.18.8..sroa_idx105.i, align 8, !noalias !10358
  %.sroa.18.8..sroa_idx104.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.8..sroa_idx104.i, i64 24, i1 false), !noalias !10358
  br label %bb.ag

bb.r:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.8..sroa_idx105.i, i64 32, i1 false), !noalias !10351
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 820
  %i.cx = load i8, ptr %i.cw, align 4, !range !1111, !alias.scope !10355, !noalias !10356, !noundef !4
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.w, label %bb.x

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.8..sroa_idx105.i, i64 32, i1 false), !noalias !10351
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !invariant.load !4, !noalias !10359, !nonnull !4
  invoke void %i.da(ptr noundef nonnull %.sroa.0.2.i)
          to label %bb.ab unwind label %bb.af, !noalias !10357

bb.t:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.8..sroa_idx105.i, i64 32, i1 false), !noalias !10351
  call void @llvm.experimental.noalias.scope.decl(metadata !10360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10363
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i16 4, ptr %i.db, align 8, !noalias !10363
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !10363
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !10363
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store i8 4, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 2, !noalias !10363
  %i.dc = load i8, ptr %i.cb, align 1, !range !222, !alias.scope !10366, !noalias !10367, !noundef !4
  %i.dd = icmp eq i8 %i.dc, 2
  invoke void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.t, i1 noundef zeroext %i.dd)
          to label %_RINvMNtCs62AB4KIMLyv_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.u, !noalias !10368

bb.u:                                             ; preds = %bb.t
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs62AB4KIMLyv_6rustls5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.w) #28
          to label %.thread114.i unwind label %bb.v, !noalias !10369

bb.v:                                             ; preds = %bb.u
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !10369
  unreachable

_RINvMNtCs62AB4KIMLyv_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.t
  store i8 1, ptr %i.cc, align 1, !alias.scope !10366, !noalias !10367
  %.sroa.1097.8.copyload.i = load i64, ptr %.sroa.18.8..sroa_idx105.i, align 8, !noalias !10358
  %.sroa.18.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.8..sroa_idx.i, i64 24, i1 false), !noalias !10358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10351
  br label %bb.ag

bb.w:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.val, i64 704
  store i8 16, ptr %i.dg, align 8, !alias.scope !10355, !noalias !10356
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6108.i)
  %.sroa.0106.0.copyload107.i = load i64, ptr %.sroa.18.8..sroa_idx105.i, align 8, !noalias !10351
  %.sroa.6108.0..sroa_idx109.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6108.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6108.0..sroa_idx109.i, i64 24, i1 false), !noalias !10351
  br label %bb.aa

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6108.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !10370)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10373
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  store i16 4, ptr %i.dh, align 8, !noalias !10373
  store i64 -9223372036854775808, ptr %i.s, align 8, !noalias !10373
  %.sroa.4.0..sroa_idx.i7.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx.i7.i.i, align 8, !noalias !10373
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i8 16, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i8.i.i, align 2, !noalias !10373
  %i.di = load i8, ptr %i.cb, align 1, !range !222, !alias.scope !10376, !noalias !10377, !noundef !4
  %i.dj = icmp eq i8 %i.di, 2
  invoke void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.s, i1 noundef zeroext %i.dj)
          to label %_RINvMNtCs62AB4KIMLyv_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECsbakdBCgU4AF_16influxdb3_server.exit8.i.i unwind label %bb.y, !noalias !10378

bb.y:                                             ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs62AB4KIMLyv_6rustls5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x) #28
          to label %.thread114.i unwind label %bb.z, !noalias !10379

bb.z:                                             ; preds = %bb.y
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !10379
  unreachable

_RINvMNtCs62AB4KIMLyv_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECsbakdBCgU4AF_16influxdb3_server.exit8.i.i: ; preds = %bb.x
  store i8 1, ptr %i.cc, align 1, !alias.scope !10376, !noalias !10377
  %.sroa.0106.0.copyload.i = load i64, ptr %.sroa.18.8..sroa_idx105.i, align 8, !noalias !10351
  %.sroa.6108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6108.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6108.0..sroa_idx.i, i64 24, i1 false), !noalias !10351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10373
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvMNtCs62AB4KIMLyv_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECsbakdBCgU4AF_16influxdb3_server.exit8.i.i, %bb.w
  %.sroa.0106.0.i = phi i64 [ %.sroa.0106.0.copyload107.i, %bb.w ], [ %.sroa.0106.0.copyload.i, %_RINvMNtCs62AB4KIMLyv_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECsbakdBCgU4AF_16influxdb3_server.exit8.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6108.i, i64 24, i1 false), !noalias !10358
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6108.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10351
  br label %bb.ag

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.8..sroa_idx105.i, i64 32, i1 false), !noalias !10351
  call void @llvm.experimental.noalias.scope.decl(metadata !10380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10383
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  store i16 4, ptr %i.dm, align 8, !noalias !10383
  store i64 -9223372036854775808, ptr %i.r, align 8, !noalias !10383
  %.sroa.4.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx.i9.i.i, align 8, !noalias !10383
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  store i8 2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i11.i.i, align 2, !noalias !10383
  %i.dn = load i8, ptr %i.cb, align 1, !range !222, !alias.scope !10386, !noalias !10387, !noundef !4
  %i.do = icmp eq i8 %i.dn, 2
  invoke void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.r, i1 noundef zeroext %i.do)
          to label %bb.ae unwind label %bb.ac, !noalias !10388

bb.ac:                                            ; preds = %bb.ab
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs62AB4KIMLyv_6rustls5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u) #28
          to label %.thread114.i unwind label %bb.ad, !noalias !10389

bb.ad:                                            ; preds = %bb.ac
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !10389
  unreachable

bb.ae:                                            ; preds = %bb.ab
  store i8 1, ptr %i.cc, align 1, !alias.scope !10386, !noalias !10387
  %.sroa.1097.8.copyload98.i = load i64, ptr %.sroa.18.8..sroa_idx105.i, align 8, !noalias !10358
  %.sroa.18.8..sroa_idx102.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.8..sroa_idx102.i, i64 24, i1 false), !noalias !10358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10351
  br label %bb.ag

bb.af:                                            ; preds = %bb.s
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs62AB4KIMLyv_6rustls5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(32) %i.v) #28
          to label %.thread114.i unwind label %bb.p, !noalias !10357

bb.ag:                                            ; preds = %bb.ae, %bb.aa, %_RINvMNtCs62AB4KIMLyv_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECsbakdBCgU4AF_16influxdb3_server.exit.i.i, %bb.q
  %.sroa.1097.0.ph.i = phi i64 [ %.sroa.1097.8.copyload.i, %_RINvMNtCs62AB4KIMLyv_6rustls12common_stateNtB3_11CommonState16send_fatal_alertNtNtB5_5error5ErrorECsbakdBCgU4AF_16influxdb3_server.exit.i.i ], [ %.sroa.1097.8.copyload98.i, %bb.ae ], [ %.sroa.0106.0.i, %bb.aa ], [ %.sroa.1097.8.copyload100.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.714.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, i64 24, i1 false), !noalias !10347
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.714.sroa.9.i, i64 24, i1 false), !noalias !10390
  store i64 %.sroa.1097.0.ph.i, ptr %i.ak, align 8, !alias.scope !10340, !noalias !10390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !10347
  %i.ds = load ptr, ptr %.sroa.10.2.i, align 8, !invariant.load !4, !noalias !10340 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void %i.ds(ptr noundef nonnull %.sroa.0.2.i)
          to label %bb.ai unwind label %bb.ak, !noalias !10340

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !43, !invariant.load !4, !noalias !10340 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE19process_new_packetsCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !range !44, !invariant.load !4, !noalias !10340
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i, i64 noundef range(i64 1, 0) %i.du, i64 noundef range(i64 1, 536870913) %i.dx) #30, !noalias !10340
  br label %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE19process_new_packetsCsbakdBCgU4AF_16influxdb3_server.exit

bb.ak:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !43, !invariant.load !4, !noalias !10340 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %common.resume, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !44, !invariant.load !4, !noalias !10340
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i, i64 noundef range(i64 1, 0) %i.ea, i64 noundef range(i64 1, 536870913) %i.ed) #30, !noalias !10340
  br label %common.resume

common.resume:                                    ; preds = %bb.dw, %bb.ak, %bb.al, %bb.au, %bb.bc, %bb.bq, %bb.bv, %bb.cc, %bb.cd, %.body.thread.i.i, %bb.cj, %.body79.i, %.thread114.i, %bb.dh
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body80.i, %.body79.i ], [ %i.dy, %bb.ak ], [ %i.dy, %bb.al ], [ %.pn50.i, %bb.dh ], [ %eh.lpad-body121.i, %.thread114.i ], [ %.pn.i, %bb.cj ], [ %i.ge, %bb.bv ], [ %i.eu, %bb.au ], [ %i.gn, %bb.cc ], [ %.pn755.i.i, %.body.thread.i.i ], [ %.pn35.i.i, %bb.bc ], [ %i.gc, %bb.bq ], [ %i.gn, %bb.cd ], [ %lpad.thr_comm.i, %bb.dw ]
  resume { ptr, i32 } %common.resume.op

bb.am:                                            ; preds = %bb.o, %bb.l
  store i8 %i.cr, ptr %i.bp, align 1, !alias.scope !10355, !noalias !10356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.8..sroa_idx105.i, i64 24, i1 false), !noalias !10358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.714.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, i64 24, i1 false), !noalias !10347
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !10347
  store i64 %i.cn, ptr %i.ae, align 8, !noalias !10347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.714.sroa.9.i, i64 24, i1 false), !noalias !10347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !10347
  call void @llvm.experimental.noalias.scope.decl(metadata !10391)
  call void @llvm.experimental.noalias.scope.decl(metadata !10394)
  call void @llvm.experimental.noalias.scope.decl(metadata !10396)
  call void @llvm.experimental.noalias.scope.decl(metadata !10398)
  %.val14.i.i = load i8, ptr %i.bq, align 4, !range !3518, !alias.scope !10396, !noalias !10400, !noundef !4
  %i.ee = icmp ne i8 %.val14.i.i, 0
  %i.ef = load i8, ptr %i.br, align 1, !range !1111, !alias.scope !10401, !noalias !10402
  %i.eg = trunc nuw i8 %i.ef to i1                ; 2 uses
  %or.cond.i.i = select i1 %i.ee, i1 true, i1 %i.eg
  %.val15.i.i = load i16, ptr %i.bk, align 8, !range !10354, !alias.scope !10401, !noalias !10402
  %i.eh = icmp ne i16 %.val15.i.i, 5              ; 2 uses
  %or.cond70.not.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.eh ; 2 uses
  br i1 %or.cond70.not.i.i, label %bb.an, label %bb.ao

.thread45.i.i:                                    ; preds = %bb.bx, %bb.ar, %_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.thread.i.i, %bb.an
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  %.sroa.01.1.ph.i.i = xor i1 %or.cond70.not.i.i, true
  br label %.thread41.i.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !10400
  invoke void @_RNvXs3_NtNtCs62AB4KIMLyv_6rustls4msgs7messageNtB5_7MessageINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtB5_12PlainMessageE8try_from(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.n)
          to label %bb.bd unwind label %.thread45.i.i, !noalias !10404

bb.ao:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !10405)
  %i.ei = load i64, ptr %i.bs, align 8, !alias.scope !10408, !noalias !10400
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.i.i, label %_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.thread.i.i

_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.i.i: ; preds = %bb.ao
  %i.ek = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !10408, !noalias !10400, !nonnull !4, !noundef !4
  %lhsc.i.i.i = load i8, ptr %i.ek, align 1, !noalias !10409
  %i.el = icmp eq i8 %lhsc.i.i.i, 1
  br i1 %i.el, label %bb.ap, label %_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.thread.i.i

bb.ap:                                            ; preds = %_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.i.i
  %i.em = load i8, ptr %i.bt, align 2, !alias.scope !10401, !noalias !10402, !noundef !4 ; 2 uses
  %i.en = icmp ugt i8 %i.em, 2
  br i1 %i.en, label %_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.thread.i.i, label %bb.aq

_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.thread.i.i: ; preds = %bb.ap, %_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.i.i, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !10410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10413
  store i16 4, ptr %i.ca, align 8, !noalias !10413
  store i64 -9223372036854775808, ptr %i.j, align 8, !noalias !10413
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i58.i, align 8, !noalias !10413
  store i8 1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i57.i, align 2, !noalias !10413
  %i.eo = load i8, ptr %i.cb, align 1, !range !222, !alias.scope !10415, !noalias !10416, !noundef !4
  %i.ep = icmp eq i8 %i.eo, 2
  invoke void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.j, i1 noundef zeroext %i.ep)
          to label %bb.aw unwind label %.thread45.i.i, !noalias !10417

bb.aq:                                            ; preds = %bb.ap
  %i.eq = add nuw nsw i8 %i.em, 1
  store i8 %i.eq, ptr %i.bt, align 2, !alias.scope !10401, !noalias !10402
  %i.er = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10403 ; 2 uses
  %i.es = icmp ult i64 %i.er, 6
  call void @llvm.assume(i1 %i.es)
  %i.et = icmp samesign ugt i64 %i.er, 4
  br i1 %i.et, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10403
  store ptr @59, ptr %i.q, align 8, !noalias !10403
  store i64 12, ptr %i.bu, align 8, !noalias !10403
  store ptr @59, ptr %i.bv, align 8, !noalias !10403
  store i64 12, ptr %i.bw, align 8, !noalias !10403
  store ptr @58, ptr %i.bx, align 8, !noalias !10403
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECsbakdBCgU4AF_16influxdb3_server(ptr noundef nonnull @56, ptr noundef nonnull inttoptr (i64 25 to ptr), i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.q)
          to label %bb.at unwind label %.thread45.i.i, !noalias !10404

bb.as:                                            ; preds = %bb.at, %bb.aq
  store ptr %.sroa.0.2.i, ptr %i.by, align 8, !alias.scope !10391, !noalias !10418
  store ptr %.sroa.10.2.i, ptr %i.bz, align 8, !alias.scope !10391, !noalias !10418
  store i8 -1, ptr %i.ad, align 8, !alias.scope !10391, !noalias !10418
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs62AB4KIMLyv_6rustls12common_state5StateNtNtNtB1f_6server11server_conn20ServerConnectionDataEEL_EECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10403
  br label %bb.as

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs62AB4KIMLyv_6rustls12common_state5StateNtNtNtB1f_6server11server_conn20ServerConnectionDataEEL_EECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %bb.az, %bb.ay, %bb.as
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message12PlainMessageECsbakdBCgU4AF_16influxdb3_server.exit.i.i unwind label %bb.au, !noalias !10419

bb.au:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs62AB4KIMLyv_6rustls12common_state5StateNtNtNtB1f_6server11server_conn20ServerConnectionDataEEL_EECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %common.resume unwind label %bb.av, !noalias !10419

bb.av:                                            ; preds = %bb.au
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !10419
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message12PlainMessageECsbakdBCgU4AF_16influxdb3_server.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs62AB4KIMLyv_6rustls12common_state5StateNtNtNtB1f_6server11server_conn20ServerConnectionDataEEL_EECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae), !noalias !10340
  br label %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.aw:                                            ; preds = %_RNvNtCs62AB4KIMLyv_6rustls4conn12is_valid_ccs.exit.thread.i.i
  store i8 1, ptr %i.cc, align 1, !alias.scope !10415, !noalias !10416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10413
  store i8 8, ptr %i.ad, align 8, !alias.scope !10391, !noalias !10418
  store i8 20, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !10391, !noalias !10418
  %i.ew = load ptr, ptr %.sroa.10.2.i, align 8, !invariant.load !4, !alias.scope !10398, !noalias !10420 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void %i.ew(ptr noundef nonnull %.sroa.0.2.i)
          to label %bb.ay unwind label %bb.ba, !noalias !10417

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !range !43, !invariant.load !4, !alias.scope !10398, !noalias !10420 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs62AB4KIMLyv_6rustls12common_state5StateNtNtNtB1f_6server11server_conn20ServerConnectionDataEEL_EECsbakdBCgU4AF_16influxdb3_server.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !range !44, !invariant.load !4, !alias.scope !10398, !noalias !10420
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i, i64 noundef range(i64 1, 0) %i.ey, i64 noundef range(i64 1, 536870913) %i.fb) #30, !noalias !10417
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs62AB4KIMLyv_6rustls12common_state5StateNtNtNtB1f_6server11server_conn20ServerConnectionDataEEL_EECsbakdBCgU4AF_16influxdb3_server.exit.i.i

bb.ba:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !range !43, !invariant.load !4, !alias.scope !10398, !noalias !10420 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %.body.thread.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !range !44, !invariant.load !4, !alias.scope !10398, !noalias !10420
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i, i64 noundef range(i64 1, 0) %i.fe, i64 noundef range(i64 1, 536870913) %i.fh) #30, !noalias !10417
  br label %.body.thread.i.i

bb.bc:                                            ; preds = %.thread41.i.i
  br i1 %.sroa.01.036.i.i, label %.body.thread.i.i, label %common.resume

bb.bd:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10403
  %i.fi = load i64, ptr %i.o, align 8, !range !3933, !noalias !10403, !noundef !4
  %i.fj = icmp eq i64 %i.fi, -1
  br i1 %i.fj, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 32, i1 false), !noalias !10403
  call void @llvm.experimental.noalias.scope.decl(metadata !10421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10424
  store i16 4, ptr %i.ck, align 8, !noalias !10424
  store i64 -9223372036854775808, ptr %i.i, align 8, !noalias !10424
  store i8 1, ptr %.sroa.4.0..sroa_idx.i16.i.i, align 8, !noalias !10424
  store i8 16, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i17.i.i, align 2, !noalias !10424
  %i.fk = load i8, ptr %i.cb, align 1, !range !222, !alias.scope !10427, !noalias !10428, !noundef !4
  %i.fl = icmp eq i8 %i.fk, 2
  invoke void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.i, i1 noundef zeroext %i.fl)
          to label %bb.cg unwind label %bb.bf, !noalias !10429

bb.bf:                                            ; preds = %bb.be
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs62AB4KIMLyv_6rustls5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #28
          to label %.thread41.i.i unwind label %bb.bg, !noalias !10430

bb.bg:                                            ; preds = %bb.bf
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !10430
  unreachable

bb.bh:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.p, ptr noundef nonnull align 8 dereferenceable(192) %i.o, i64 192, i1 false), !noalias !10403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10403
  %i.fo = load i64, ptr %i.p, align 8, !range !5258, !noalias !10403, !noundef !4 ; 2 uses
  %i.fp = icmp ne i64 %i.fo, -9223372036854775807
  call void @llvm.assume(i1 %i.fp)
  %i.fq = icmp eq i64 %i.fo, -9223372036854775808
  br i1 %i.fq, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10403
  invoke void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState13process_alert(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.ci)
          to label %bb.bw unwind label %bb.ce, !noalias !10417

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.k, ptr noundef nonnull align 8 dereferenceable(192) %i.p, i64 192, i1 false), !noalias !10403
  call void @llvm.experimental.noalias.scope.decl(metadata !10431)
  call void @llvm.experimental.noalias.scope.decl(metadata !10434)
  call void @llvm.experimental.noalias.scope.decl(metadata !10436)
  call void @llvm.experimental.noalias.scope.decl(metadata !10438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10403
  %or.cond.not.i.i.i = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.bk, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10440
  store ptr %.8.val, ptr %i.h, align 8, !noalias !10440
  store ptr %i.cd, ptr %i.cg, align 8, !noalias !10440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.g, ptr noundef nonnull align 8 dereferenceable(192) %i.p, i64 192, i1 false), !noalias !10403
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !invariant.load !4, !alias.scope !10442, !noalias !10443, !nonnull !4
  call void %i.fs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ad, ptr noundef nonnull %.sroa.0.2.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.g), !noalias !10340, !inline_history !10444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10440
  %i.ft = load i8, ptr %i.ad, align 8, !range !628, !alias.scope !10445, !noalias !10446, !noundef !4
  switch i8 %i.ft, label %bb.bo [
    i8 -1, label %bb.bn
    i8 0, label %bb.bp
    i8 1, label %bb.bp
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.fu = load i8, ptr %i.ce, align 4, !range !1111, !alias.scope !10447, !noalias !10448, !noundef !4
  %i.fv = load i64, ptr %i.k, align 8, !range !5258, !alias.scope !10436, !noalias !10449, !noundef !4 ; 2 uses
  %i.fw = icmp ne i64 %i.fv, -9223372036854775807
  call void @llvm.assume(i1 %i.fw)
  %i.fx = icmp sgt i64 %i.fv, -1
  %i.fy = load i8, ptr %i.cf, align 8, !range !4043, !alias.scope !10436, !noalias !10449
  %i.fz = icmp eq i8 %i.fu, %i.fy
  %or.cond10.i.i.i = select i1 %i.fx, i1 %i.fz, i1 false
  br i1 %or.cond10.i.i.i, label %bb.bl, label %.noexc.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState18send_warning_alert(ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val, i8 noundef 24, i8 undef)
          to label %bb.bm unwind label %bb.bt, !noalias !10450

bb.bm:                                            ; preds = %bb.bl
  store ptr %.sroa.0.2.i, ptr %i.by, align 8, !alias.scope !10445, !noalias !10446
  store ptr %.sroa.10.2.i, ptr %i.bz, align 8, !alias.scope !10445, !noalias !10446
  store i8 -1, ptr %i.ad, align 8, !alias.scope !10445, !noalias !10446
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message7MessageECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.k), !noalias !10340
  br label %.noexc67.i

bb.bn:                                            ; preds = %.noexc.i.i
  store i8 -1, ptr %i.ad, align 8, !alias.scope !10445, !noalias !10446
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bs, %bb.bn, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10440
  br label %.noexc67.i

bb.bp:                                            ; preds = %.noexc.i.i, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !10446
  call void @llvm.experimental.noalias.scope.decl(metadata !10451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10454
  store i16 4, ptr %i.ch, align 8, !noalias !10454
  store i64 -9223372036854775808, ptr %i.e, align 8, !noalias !10454
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !10454
  store i8 1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 2, !noalias !10454
  %i.ga = load i8, ptr %i.cb, align 1, !range !222, !alias.scope !10457, !noalias !10458, !noundef !4
  %i.gb = icmp eq i8 %i.ga, 2
  invoke void @_RNvMNtCs62AB4KIMLyv_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias noundef nonnull align 8 dereferenceable(1064) %.8.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.e, i1 noundef zeroext %i.gb)
          to label %bb.bs unwind label %bb.bq, !noalias !10459

bb.bq:                                            ; preds = %bb.bp
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs62AB4KIMLyv_6rustls5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #28
          to label %common.resume unwind label %bb.br, !noalias !10460

bb.br:                                            ; preds = %bb.bq
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !10460
  unreachable

bb.bs:                                            ; preds = %bb.bp
  store i8 1, ptr %i.cc, align 1, !alias.scope !10457, !noalias !10458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10454
  br label %bb.bo

bb.bt:                                            ; preds = %bb.bl
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs62AB4KIMLyv_6rustls12common_state5StateNtNtNtB1f_6server11server_conn20ServerConnectionDataEEL_EECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.sroa.0.2.i, ptr nonnull readonly align 8 dereferenceable(56) %.sroa.10.2.i) #28
          to label %bb.bv unwind label %bb.bu, !noalias !10461

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !10462
  unreachable

bb.bv:                                            ; preds = %bb.bt
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message7MessageECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.k) #28
          to label %common.resume unwind label %bb.bu, !noalias !10462

bb.bw:                                            ; preds = %bb.bi
  %i.gg = load i8, ptr %i.l, align 8, !range !628, !noalias !10403, !noundef !4
  %.not.i61.i = icmp eq i8 %i.gg, -1
  br i1 %.not.i61.i, label %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !10418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10403
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message7MessageECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(192) %i.p)
          to label %bb.by unwind label %.thread45.i.i, !noalias !10417

_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.thread.i: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10403
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message7MessageECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(192) %i.p), !noalias !10340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10403
  br label %bb.ci

bb.by:                                            ; preds = %bb.cg, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10403
  %i.gh = load ptr, ptr %.sroa.10.2.i, align 8, !invariant.load !4, !alias.scope !10398, !noalias !10420 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i22.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  invoke void %i.gh(ptr noundef nonnull %.sroa.0.2.i)
          to label %bb.ca unwind label %bb.cc, !noalias !10417

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !range !43, !invariant.load !4, !alias.scope !10398, !noalias !10420 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !range !44, !invariant.load !4, !alias.scope !10398, !noalias !10420
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i, i64 noundef range(i64 1, 0) %i.gj, i64 noundef range(i64 1, 536870913) %i.gm) #30, !noalias !10417
  br label %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.cc:                                            ; preds = %bb.bz
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !range !43, !invariant.load !4, !alias.scope !10398, !noalias !10420 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %common.resume, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.10.2.i, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !range !44, !invariant.load !4, !alias.scope !10398, !noalias !10420
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.i, i64 noundef range(i64 1, 0) %i.gp, i64 noundef range(i64 1, 536870913) %i.gs) #30, !noalias !10417
  br label %common.resume

.noexc67.i:                                       ; preds = %bb.bo, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10403
  br label %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.i

bb.ce:                                            ; preds = %bb.bi
  %lpad.thr_comm.split-lp63.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message7MessageECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(192) %i.p) #28
          to label %.thread41.i.i unwind label %bb.cf, !noalias !10417

bb.cf:                                            ; preds = %.body.thread.i.i, %.thread41.i.i, %bb.ce
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !10463
  unreachable

bb.cg:                                            ; preds = %bb.be
  store i8 1, ptr %i.cc, align 1, !alias.scope !10427, !noalias !10428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 32, i1 false), !noalias !10418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10403
  br label %bb.by

.thread41.i.i:                                    ; preds = %bb.ce, %bb.bf, %.thread45.i.i
  %.sroa.01.036.i.i = phi i1 [ false, %bb.bf ], [ %.sroa.01.1.ph.i.i, %.thread45.i.i ], [ false, %bb.ce ]
  %.pn35.i.i = phi { ptr, i32 } [ %i.fm, %bb.bf ], [ %lpad.thr_comm.i.i, %.thread45.i.i ], [ %lpad.thr_comm.split-lp63.i.i, %bb.ce ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtCs62AB4KIMLyv_6rustls12common_state5StateNtNtNtB1f_6server11server_conn20ServerConnectionDataEEL_EECsbakdBCgU4AF_16influxdb3_server(ptr nonnull %.sroa.0.2.i, ptr nonnull readonly align 8 dereferenceable(56) %.sroa.10.2.i) #28
          to label %bb.bc unwind label %bb.cf, !noalias !10464

.body.thread.i.i:                                 ; preds = %bb.bc, %bb.bb, %bb.ba
  %.pn755.i.i = phi { ptr, i32 } [ %.pn35.i.i, %bb.bc ], [ %i.fc, %bb.ba ], [ %i.fc, %bb.bb ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message12PlainMessageECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae) #28
          to label %common.resume unwind label %bb.cf, !noalias !10463

_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.i: ; preds = %.noexc67.i, %bb.cb, %bb.ca, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs62AB4KIMLyv_6rustls4msgs7message12PlainMessageECsbakdBCgU4AF_16influxdb3_server.exit.i.i
  %.pr.i = load i8, ptr %i.ad, align 8, !noalias !10347
  %.not47.i = icmp eq i8 %.pr.i, -1
  br i1 %.not47.i, label %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit._crit_edge.i, label %bb.ch

_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit._crit_edge.i: ; preds = %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.i
  %.pre.i = load ptr, ptr %i.by, align 8, !noalias !10347
  %.pre211.i = load ptr, ptr %i.bz, align 8, !noalias !10347
  br label %bb.ci

bb.ch:                                            ; preds = %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !10347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !10347
  invoke fastcc void @_RNvXsh_NtCs62AB4KIMLyv_6rustls5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %bb.cl unwind label %bb.ck, !noalias !10340

bb.ci:                                            ; preds = %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit._crit_edge.i, %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.thread.i
  %i.gu = phi ptr [ %.pre211.i, %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit._crit_edge.i ], [ %.sroa.10.2.i, %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.thread.i ]
  %i.gv = phi ptr [ %.pre.i, %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit._crit_edge.i ], [ %.sroa.0.2.i, %_RNvMsb_NtCs62AB4KIMLyv_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6server11server_conn20ServerConnectionDataE11process_msgCsbakdBCgU4AF_16influxdb3_server.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !10347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !10347
  br label %bb.i

bb.cj:                                            ; preds = %.body71.i, %bb.ck
  %.pn.i = phi { ptr, i32 } [ %i.gw, %bb.ck ], [ %eh.lpad-body72.i, %.body71.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs62AB4KIMLyv_6rustls5error5ErrorECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef align 8 dereferenceable(32) %i.ac) #28
          to label %common.resume unwind label %bb.cw, !noalias !10340

bb.ck:                                            ; preds = %bb.cu, %bb.ch
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cl:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !10347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10347
  call void @llvm.experimental.noalias.scope.decl(metadata !10465)
  %i.gx = load i8, ptr %i.bi, align 8, !range !628, !alias.scope !10468, !noalias !10345, !noundef !4
  %i.gy = icmp eq i8 %i.gx, -1
  br i1 %i.gy, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %.val.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !10468, !noalias !10345 ; 5 uses
  %.val1.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !10468, !noalias !10345, !nonnull !4, !align !119, !noundef !4 ; 5 uses
  %i.gz = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !10469 ; 2 uses
  %.not.i.i70.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i70.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.gz(ptr noundef nonnull %.val.i.i)
          to label %bb.co unwind label %bb.cq, !noalias !10469

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !range !43, !invariant.load !4, !noalias !10469 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.cu, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hd = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !range !44, !invariant.load !4, !noalias !10469
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.hb, i64 noundef range(i64 1, 536870913) %i.he) #30, !noalias !10469
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cn
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
end_hunk_0
