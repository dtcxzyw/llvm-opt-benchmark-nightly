Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_wal-9f29743fcec34734.influxdb3_wal.133a475b88203f45-cgu.00?download=true
inline.NumInlined: 873
inline.NumDeleted: 305
begin_hunk_0_@_RNCNvXs7_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB7_14WalObjectStoreNtB9_3Wal9write_ops0B9_:bb.a
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body38.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit40.i: ; preds = %bb.bb, %bb.ba, %bb.az
  switch i64 %i.de, label %bb.bj [
    i64 -2, label %bb.be
    i64 -1, label %bb.bg
  ]

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit40.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1052
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 22, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc41.i unwind label %bb.bh, !noalias !1034

.noexc41.i:                                       ; preds = %bb.be
  %i.dr = load i64, ptr %i.a, align 8, !range !10, !noalias !1052, !noundef !6
  %i.ds = trunc nuw i64 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !28, !noalias !1052, !noundef !6 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ds, label %bb.bf, label %bb.bi, !prof !22

bb.bf:                                            ; preds = %.noexc41.i
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !1052
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.du, i64 %i.dw) #22
          to label %.noexc42.i unwind label %bb.bh, !noalias !1034

.noexc42.i:                                       ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit40.i
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf, %bb.be
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body38.i

bb.bi:                                            ; preds = %.noexc41.i
  %i.dy = load ptr, ptr %i.dv, align 8, !noalias !1052, !nonnull !6, !noundef !6 ; 2 uses
  %i.dz = icmp samesign ugt i64 %i.du, 21
  call void @llvm.assume(i1 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.dy, ptr noundef nonnull align 1 dereferenceable(22) @43, i64 22, i1 false), !noalias !1053
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit40.i
  %.sroa.1058.1.i = phi i64 [ undef, %bb.bg ], [ 22, %bb.bi ], [ %.sroa.4.sroa.2.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit40.i ]
  %.sroa.857.1.i = phi ptr [ undef, %bb.bg ], [ %i.dy, %bb.bi ], [ %.sroa.4.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit40.i ]
  %.sroa.556.1.i = phi i64 [ undef, %bb.bg ], [ %i.du, %bb.bi ], [ %i.de, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit40.i ]
  %.sroa.055.1.i = phi i64 [ -1, %bb.bg ], [ -9223372036854775789, %bb.bi ], [ -9223372036854775789, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit40.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 65
  store i8 0, ptr %i.ea, align 1, !noalias !1033
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 66
  store i8 0, ptr %i.eb, align 2, !noalias !1033
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 67
  store i8 0, ptr %i.ec, align 1, !noalias !1033
  br label %bb.bq

bb.bk:                                            ; preds = %.body38.i
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_(ptr noalias noundef align 8 dereferenceable(8) %i.ed) #25
          to label %.body32.i unwind label %bb.aq, !noalias !1034

bb.bl:                                            ; preds = %bb.bm, %.body32.i
  store i8 0, ptr %i.cp, align 2, !noalias !1033
  br label %bb.k

bb.bm:                                            ; preds = %.body32.i
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_(ptr noalias noundef align 8 dereferenceable(8) %i.ee) #25
          to label %bb.bl unwind label %bb.aq, !noalias !1034

bb.bn:                                            ; preds = %bb.bo, %bb.k
  store i8 0, ptr %i.am, align 1, !noalias !1033
  store i8 2, ptr %i.ak, align 8, !noalias !1033
  br label %.body

bb.bo:                                            ; preds = %bb.k
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpEEB19_(ptr noalias noundef align 8 dereferenceable(24) %i.ef) #25
          to label %bb.bn unwind label %bb.aq, !noalias !1034

common.ret:                                       ; preds = %bb.bs, %bb.bp
  %storemerge = phi i8 [ 1, %bb.bs ], [ 3, %bb.bp ]
  store i8 %storemerge, ptr %i.f, align 8
  ret void

bb.bp:                                            ; preds = %bb.q, %bb.au
  %i.eg = phi ptr [ %i.aq, %bb.q ], [ %i.db, %bb.au ]
  %.sink.i.ph = phi i8 [ 3, %bb.q ], [ 4, %bb.au ]
  store i8 %.sink.i.ph, ptr %i.eg, align 8, !noalias !1033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.bq:                                            ; preds = %bb.bj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit.i
  %i.eh = phi ptr [ %i.db, %bb.bj ], [ %i.aq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit.i ]
  %i.ei = phi ptr [ %i.dc, %bb.bj ], [ %i.ar, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit.i ]
  %.sroa.1058.0.i = phi i64 [ %.sroa.1058.1.i, %bb.bj ], [ %.sroa.10.sroa.9.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit.i ]
  %.sroa.857.0.i = phi ptr [ %.sroa.857.1.i, %bb.bj ], [ %.sroa.10.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit.i ]
  %.sroa.556.0.i = phi i64 [ %.sroa.556.1.i, %bb.bj ], [ %.sroa.10.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit.i ]
  %.sroa.055.0.i = phi i64 [ %.sroa.055.1.i, %bb.bj ], [ %i.bw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1s_.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.i, i64 40, i1 false)
  store i8 1, ptr %i.eh, align 8, !noalias !1033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtBG_14WalObjectStore9write_ops0EBI_(ptr noundef nonnull align 8 %i.ei)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.bs:                                            ; preds = %bb.bq
  store i64 %.sroa.055.0.i, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.556.0.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.857.0.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.1058.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, i64 40, i1 false)
  br label %common.ret

bb.bt:                                            ; preds = %bb.bv, %.body
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bu:                                            ; preds = %bb.bv, %bb.b
  store i8 2, ptr %i.f, align 8
  resume { ptr, i32 } %.pn

bb.bv:                                            ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpEEB19_(ptr noalias noundef align 8 dereferenceable(24) %1) #25
          to label %bb.bu unwind label %bb.bt
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB2_14WalObjectStore28load_existing_wal_file_paths(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 2) %2, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %5
  store ptr %4, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB2g_6filter6FilterINtNtNtB2k_5slice4iter4IterB10_ENCNvMNtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB43_14WalObjectStore28load_existing_wal_file_paths0EEE9from_iterB45_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB5_9WalBuffer9add_no_op(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !11, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !6
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !nonnull !6
  call void %i.m(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %i.k)
  %i.n = call noundef i64 @_RNvMs2_Csk0FzFVI8urx_8iox_timeNtB5_4Time15timestamp_nanos(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a)
  store i64 1, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB5_9WalBuffer21write_ops_unconfirmed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(120) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 16 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 16               ; 5 uses
  %i.g = alloca [104 x i8], align 8               ; 12 uses
  %.sroa.7 = alloca [96 x i8], align 8            ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i8, ptr %i.i, align 8, !range !12, !noundef !6
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load i64, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load i64, ptr %i.n, align 8, !noundef !6
  %.not = icmp ult i64 %i.m, %i.o
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775785, ptr %0, align 8
  br label %bb.as

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.r = load i64, ptr %2, align 8, !range !7, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !6 ; 3 uses
  %i.u = icmp ult i64 %i.t, 88686269585142076
  tail call void @llvm.assume(i1 %i.u)
  %.idx = mul nuw nsw i64 %i.t, 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.q, ptr %i.h, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.q, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.r, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.v, ptr %.sroa.6.0..sroa_idx, align 8
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.lr.ph

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.lr.ph: ; preds = %bb.d
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.6.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.an = insertelement <2 x ptr> poison, ptr %i.af, i64 0
  %i.ao = insertelement <2 x ptr> %i.an, ptr %i.ag, i64 1
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit

bb.e:                                             ; preds = %bb.b
  store i64 -9223372036854775790, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.as

bb.f:                                             ; preds = %.body, %.body.thread38
  %.pn = phi { ptr, i32 } [ %eh.lpad-body3541, %.body.thread38 ], [ %i.gd, %.body ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %common.resume unwind label %bb.ar

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.lr.ph, %bb.h
  %i.ap = phi ptr [ %i.v, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.lr.ph ], [ %i.at, %bb.h ]
  %i.aq = phi ptr [ %i.q, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.lr.ph ], [ %i.as, %bb.h ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104 ; 2 uses
  store ptr %i.ar, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !1119, !noalias !1120
  %.sroa.0.0.copyload = load i64, ptr %i.aq, align 8, !noalias !1119 ; 3 uses
  %.not15 = icmp eq i64 %.sroa.0.0.copyload, -2
  br i1 %.not15, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.thread, label %3

3:                                                ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.0..sroa_idx, i64 96, i1 false)
  %4 = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %4, label %bb.h, label %bb.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.thread: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit, %bb.h, %bb.d
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpEEB19_.exit, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.thread
  ret void

bb.h:                                             ; preds = %bb.ao, %3
  %i.as = phi ptr [ %.pre59, %bb.ao ], [ %i.ar, %3 ] ; 2 uses
  %i.at = phi ptr [ %.pre, %bb.ao ], [ %i.ap, %3 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBX_.exit

bb.i:                                             ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.0.copyload, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.58.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7, i64 96, i1 false)
  %i.av = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6
  %i.az = load i64, ptr %i.y, align 8, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ay, ptr %i.d, align 8, !noalias !1122
  store i64 %i.az, ptr %i.aa, align 8, !noalias !1122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1123
  invoke void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !1124

.noexc.i:                                         ; preds = %bb.j
  invoke void @_RINvXs12_NtCscdodAO9FK5_5alloc4syncINtB7_3ArceENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.m unwind label %.loopexit.split-lp.i, !noalias !1124

.loopexit.i:                                      ; preds = %bb.p
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i:                             ; preds = %.noexc.i, %bb.j
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %i.ba = load ptr, ptr %i.d, align 8, !alias.scope !1127, !noalias !1122, !nonnull !6, !noundef !6
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !1128
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.l, label %bb.ap

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.ap unwind label %bb.u, !noalias !1124

bb.m:                                             ; preds = %.noexc.i
  %.val.i.i = load i64, ptr %i.ac, align 8, !noalias !1123, !noundef !6 ; 2 uses
  %.val1.i.i = load i64, ptr %i.ad, align 8, !noalias !1123, !noundef !6
  %i.bd = zext i64 %.val.i.i to i128
  %i.be = zext i64 %.val1.i.i to i128
  %i.bf = mul nuw i128 %i.be, %i.bd               ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64                 ; 2 uses
  %i.bj = call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 %.val.i.i) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1123
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.bk = lshr i64 %i.bj, 57
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  %i.bm = load i64, ptr %i.ae, align 8, !alias.scope !1131, !noalias !1132, !noundef !6 ; 2 uses
  %i.bn = load ptr, ptr %i.z, align 8, !alias.scope !1131, !noalias !1132, !nonnull !6, !noundef !6 ; 2 uses
  %i.bo = insertelement <16 x i8> poison, i8 %i.bl, i64 0
  %i.bp = shufflevector <16 x i8> %i.bo, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.cg, %bb.r ]
  %.pn.i.i.i = phi i64 [ %i.bj, %bb.m ], [ %i.ch, %bb.r ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.bm   ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.bq, align 1, !noalias !1133 ; 2 uses
  %i.br = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.bp
  %i.bs = bitcast <16 x i1> %i.br to i16
  br label %bb.o

bb.o:                                             ; preds = %.noexc12.i, %bb.n
  %.sroa.05.0.i.i.i = phi i16 [ %i.bs, %bb.n ], [ %i.cc, %.noexc12.i ] ; 4 uses
  %.not.i.not.i.i = icmp eq i16 %.sroa.05.0.i.i.i, 0
  br i1 %.not.i.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i.i.i, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.01.0.i.i.i, %i.bu
  %i.bw = and i64 %i.bv, %i.bm
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [120 x i8], ptr %i.bn, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -120
  %i.ca = invoke noundef zeroext i1 @_RNvXCsc96bKABWO34_9hashbrownINtNtCscdodAO9FK5_5alloc4sync3ArceEINtB2_10EquivalentBq_E10equivalentCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bz)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !1124

.noexc12.i:                                       ; preds = %bb.p
  %i.cb = add i16 %.sroa.05.0.i.i.i, -1
  %i.cc = and i16 %i.cb, %.sroa.05.0.i.i.i
  br i1 %i.ca, label %bb.s, label %bb.o

bb.q:                                             ; preds = %bb.o
  %i.cd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cg = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.ch = add i64 %.sroa.01.0.i.i.i, %i.cg
  br label %bb.n

bb.s:                                             ; preds = %.noexc12.i
  %i.ci = load ptr, ptr %i.d, align 8, !noalias !1122, !nonnull !6, !noundef !6
  %i.cj = load i64, ptr %i.aa, align 8, !noalias !1122, !noundef !6
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.ck = load ptr, ptr %i.d, align 8, !noalias !1122, !nonnull !6, !noundef !6
  %i.cl = load i64, ptr %i.aa, align 8, !noalias !1122, !noundef !6
  br label %bb.w

bb.u:                                             ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !1124
  unreachable

bb.v:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.s
  %.sroa.15.0 = phi i64 [ %i.bj, %bb.t ], [ %i.cj, %bb.s ] ; 5 uses
  %.sroa.12.0 = phi ptr [ %i.z, %bb.t ], [ %i.ci, %bb.s ] ; 9 uses
  %.sroa.9.0 = phi i64 [ %i.cl, %bb.t ], [ %i.bj, %bb.s ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.ck, %bb.t ], [ %i.z, %bb.s ] ; 2 uses
  %.sroa.026.0 = phi ptr [ null, %bb.t ], [ %i.by, %bb.s ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x ptr> %i.ao, ptr %i.f, align 16
  %i.cn = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.co = load i64, ptr %i.y, align 8, !noundef !6 ; 2 uses
  store ptr %i.cn, ptr %i.ah, align 16
  store i64 %i.co, ptr %i.ai, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  %.not.i = icmp eq ptr %.sroa.026.0, null
  br i1 %.not.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1135
  store ptr %.sroa.026.0, ptr %i.b, align 8, !noalias !1134
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx27, align 8, !noalias !1134
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !1134
  store ptr %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !1134
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8, !noalias !1134
  %i.cp = atomicrmw sub ptr %.sroa.12.0, i64 1 release, align 8, !noalias !1136
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map13OccupiedEntryINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1Y_.exit.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map13OccupiedEntryINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1Y_.exit.i unwind label %bb.al, !noalias !1135

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map13OccupiedEntryINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1Y_.exit.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1135
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.cr = load ptr, ptr %i.ah, align 16, !alias.scope !1140, !noalias !1141, !nonnull !6, !noundef !6
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !1142
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.z, label %bb.an

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map13OccupiedEntryINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1Y_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %bb.an unwind label %.body.thread42

.body.thread42:                                   ; preds = %bb.z
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread38

bb.aa:                                            ; preds = %bb.w
  %i.cv = load i64, ptr %i.af, align 8, !noalias !1143, !noundef !6
  %i.cw = load i32, ptr %i.ag, align 8, !noalias !1143, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1135
  store ptr %.sroa.6.0, ptr %i.a, align 8, !noalias !1135
  store i64 %.sroa.9.0, ptr %i.aj, align 8, !noalias !1135
  store i64 0, ptr %i.ak, align 8, !noalias !1135
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !1135
  store i64 0, ptr %.sroa.5.0..sroa_idx.i18, align 8, !noalias !1135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i19, ptr noundef nonnull align 8 dereferenceable(32) @47, i64 32, i1 false), !noalias !1135
  store ptr %i.cn, ptr %.sroa.7.0..sroa_idx.i20, align 8, !noalias !1135
  store i64 %i.co, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1135
  store i64 %i.cv, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !1135
  store i64 9223372036854775807, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !1135
  store i64 -9223372036854775808, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !1135
  store i32 %i.cw, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !1135
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 32
end_hunk_0
