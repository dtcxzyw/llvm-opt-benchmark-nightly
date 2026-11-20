Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.06?download=true
inline.NumInlined: 2081
inline.NumDeleted: 730
begin_hunk_0_@_RINvNtCs6ePPILGZvJ2_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0ECs92BnbMq7p8c_15influxdb3_write:bb.a
bb.o:                                             ; preds = %bb.p, %bb.n
  %exitcond.not = icmp eq i64 %i.h, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.p:                                             ; preds = %bb.b
  %i.as = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 8)
  br i1 %i.as, label %.loopexit, label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs6ePPILGZvJ2_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int64TypeENCNvXs4_BW_BT_NtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0ECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2152 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i64, ptr %i.c, align 8, !noundef !10 ; 5 uses
  %i.d = lshr i64 %.val, 3                        ; 6 uses
  %.sroa.0.0.i = tail call noundef range(i64 0, 432345564227567614) i64 @llvm.umin.i64(i64 range(i64 -1, 4611686018427387904) %i.d, i64 10) ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val120 = load ptr, ptr %i.f, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.o, %bb.a
  %i.g = icmp ugt i64 %.val, 87
  br i1 %i.g, label %bb.c, label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.015.0124 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.o ] ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.015.0124, 1       ; 2 uses
  %i.i = tail call noundef zeroext i1 @_RNvYINtNtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %.sroa.015.0124)
  %i.j = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !nonnull !10, !align !18, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !10, !nonnull !10 ; 2 uses
  br i1 %i.i, label %bb.p, label %bb.l

bb.c:                                             ; preds = %._crit_edge
  %i.n = icmp ugt i64 %.val, 167
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = add nsw i64 %i.d, -20
  store i64 %i.o, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.p = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !10, !align !18, !noundef !10
  %i.s = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @4, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = add nsw i64 %i.d, -10
  %.sroa.0.0.i122 = call noundef range(i64 -11, 4611686018427387904) i64 @llvm.umax.i64(i64 range(i64 -11, 4611686018427387894) %i.t, i64 range(i64 -1, 4611686018427387904) %.sroa.0.0.i) ; 2 uses
  %i.u = icmp ult i64 %.sroa.0.0.i122, %i.d
  br i1 %i.u, label %.lr.ph127, label %.loopexit

.lr.ph127:                                        ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val116 = load ptr, ptr %i.w, align 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph127, %bb.j
  %.sroa.068.0125 = phi i64 [ %.sroa.0.0.i122, %.lr.ph127 ], [ %i.x, %bb.j ] ; 3 uses
  %i.x = add nsw i64 %.sroa.068.0125, 1           ; 2 uses
  %i.y = call noundef zeroext i1 @_RNvYINtNtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int64TypeENtB7_5Array7is_nullCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %.sroa.068.0125)
  %i.z = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.aa = load ptr, ptr %i.v, align 8, !nonnull !10, !align !18, !noundef !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !10, !nonnull !10 ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.g

.loopexit:                                        ; preds = %bb.p, %bb.l, %bb.m, %bb.n, %bb.j, %bb.i, %bb.h, %bb.g, %bb.k, %bb.d, %bb.e, %._crit_edge
  %.sroa.0.0 = phi i1 [ false, %._crit_edge ], [ true, %bb.k ], [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ true, %bb.g ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.p ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2)
  br i1 %i.ad, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int64TypeENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0Cs92BnbMq7p8c_15influxdb3_write(ptr nonnull %2, ptr nonnull %3, ptr %.val116, i64 %.val, i64 noundef %.sroa.068.0125, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.ae, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.ag = load ptr, ptr %i.v, align 8, !nonnull !10, !align !18, !noundef !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !10, !nonnull !10
  %i.aj = call noundef zeroext i1 %i.ai(ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2)
  br i1 %i.aj, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %exitcond137.not = icmp eq i64 %i.x, %i.d
  br i1 %exitcond137.not, label %.loopexit, label %bb.f

bb.k:                                             ; preds = %bb.f
  %i.ak = call noundef zeroext i1 %i.ac(ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 8)
  br i1 %i.ak, label %.loopexit, label %bb.j

bb.l:                                             ; preds = %bb.b
  %i.al = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2)
  br i1 %i.al, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = tail call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int64TypeENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt0Cs92BnbMq7p8c_15influxdb3_write(ptr nonnull %2, ptr nonnull %3, ptr %.val120, i64 %.val, i64 noundef %.sroa.015.0124, ptr noalias noundef align 8 dereferenceable(24) %1)
  br i1 %i.am, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.ao = load ptr, ptr %i.e, align 8, !nonnull !10, !align !18, !noundef !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !invariant.load !10, !nonnull !10
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2)
  br i1 %i.ar, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %exitcond.not = icmp eq i64 %i.h, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.p:                                             ; preds = %bb.b
  %i.as = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 8)
  br i1 %i.as, label %.loopexit, label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtCs7q2UDKzmthI_9iox_query16chunk_statistics23create_chunk_statisticsNtB2_14NoColumnRangesECs92BnbMq7p8c_15influxdb3_write(i64 noundef range(i64 0, 2) %0, i64 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias noundef nonnull readonly captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2166 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [272 x i8], align 16              ; 20 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.l, i1 noundef zeroext false, i64 noundef 16, i64 noundef 272)
  %i.m = load i64, ptr %i.c, align 8, !range !40, !noundef !10
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !74, !noundef !10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !10, !noundef !10
  %i.t = icmp ule i64 %i.l, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.p, ptr %i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.w = invoke { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %bb.d unwind label %.thread    ; 2 uses

.thread:                                          ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.y = extractvalue { i64, i64 } %i.w, 0
  %i.z = extractvalue { i64, i64 } %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false)
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.y, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.z, ptr %.sroa.534.0..sroa_idx, align 8
  %i.aa = trunc nuw i64 %0 to i1                  ; 3 uses
  %. = select i1 %i.aa, i64 %1, i64 undef
  %.121 = select i1 %i.aa, i64 0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %2, ptr %i.g, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.ab, align 8
  %5 = load i64, ptr %3, align 8, !range !40
  %6 = trunc nuw i64 %5 to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.sroa.475.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.580.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.685.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.790.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.9100.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %8 = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %.sroa.445.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.550.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.655.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.sroa.760.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %.sroa.9.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %9 = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %10 = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.sroa.4186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  br label %bb.e

bb.e:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common5stats16ColumnStatisticsE8push_mutCs92BnbMq7p8c_15influxdb3_write.exit, %bb.d
  %.sroa.4.1 = phi i64 [ %., %bb.d ], [ %.sroa.4.2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common5stats16ColumnStatisticsE8push_mutCs92BnbMq7p8c_15influxdb3_write.exit ] ; 4 uses
  %.sroa.03.1 = phi i64 [ %.121, %bb.d ], [ %.sroa.03.2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common5stats16ColumnStatisticsE8push_mutCs92BnbMq7p8c_15influxdb3_write.exit ] ; 4 uses
  %i.ah = invoke { i8, ptr } @_RNvXsd_CsjGL2vCcvtUM_6schemaNtB5_10SchemaIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z, %bb.r, %.body122, %bb.s, %bb.o
  %.sroa.028.2 = phi i1 [ true, %bb.o ], [ false, %bb.s ], [ false, %bb.r ], [ false, %.body122 ], [ true, %bb.z ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.o ], [ %i.ar, %bb.s ], [ %i.ar, %bb.r ], [ %i.ar, %.body122 ], [ %i.bi, %bb.z ], [ %lpad.loopexit.split-lp198, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs7q2UDKzmthI_9iox_query14pruning_oracle10BucketInfoEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query14pruning_oracle35BucketPartitionPruningOracleBuilderECs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.t

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query14pruning_oracle35BucketPartitionPruningOracleBuilderECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %.body
  br i1 %.sroa.028.2, label %bb.ae, label %bb.ad

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.h
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.e
  %i.ai = extractvalue { i8, ptr } %i.ah, 0       ; 2 uses
  switch i8 %i.ai, label %bb.ab [
    i8 -1, label %bb.g
    i8 7, label %bb.u
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !10
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs_NtCs7q2UDKzmthI_9iox_query14pruning_oracleNtB4_35BucketPartitionPruningOracleBuilder5build(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.g, %bb.q
  %i.am = phi ptr [ %i.av, %bb.q ], [ null, %bb.g ] ; 4 uses
  store ptr %i.am, ptr %i.e, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.726.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.03.1, ptr %i.ao, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.4.1, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 2, ptr %.sroa.524.0..sroa_idx, align 8
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2167
  %i.ap = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3129) 72, i64 noundef 8) #33, !noalias !2167 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query14pruning_oracle35BucketPartitionPruningOracleBuilderECs92BnbMq7p8c_15influxdb3_write.exit130, !prof !75

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #32
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCslWccy9wMl4f_17datafusion_common5stats10StatisticsEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #31
          to label %.body122 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2168
  %i.av = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 3129) 64, i64 noundef 8) #33, !noalias !2168 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.n, label %bb.q, !prof !75

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #32
          to label %.noexc125 unwind label %bb.o

.noexc125:                                        ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs7q2UDKzmthI_9iox_query14pruning_oracle10BucketInfoEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

.body122:                                         ; preds = %bb.k
  %i.az = icmp eq ptr %i.am, null
  br i1 %i.az, label %.body, label %bb.r

bb.r:                                             ; preds = %.body122
  %i.ba = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !2169
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.s, label %.body

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs7q2UDKzmthI_9iox_query14pruning_oracle28BucketPartitionPruningOracleE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body unwind label %bb.t

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query14pruning_oracle35BucketPartitionPruningOracleBuilderECs92BnbMq7p8c_15influxdb3_write.exit130: ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCscdodAO9FK5_5alloc4sync3ArceENtNtCs7q2UDKzmthI_9iox_query14pruning_oracle10BucketInfoEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bc = insertvalue { ptr, ptr } poison, ptr %i.ap, 0
  %i.bd = insertvalue { ptr, ptr } %i.bc, ptr %i.am, 1
  ret { ptr, ptr } %i.bd

bb.t:                                             ; preds = %bb.s, %.body, %bb.ae
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.u:                                             ; preds = %bb.f
  br i1 %6, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sroa.655.1 = phi i64 [ 0, %bb.v ], [ %i.ad, %bb.u ]
  %.sroa.072.1 = phi i128 [ 2, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.sroa.580.1 = phi i64 [ 0, %bb.v ], [ 1, %bb.u ] ; 2 uses
  %.sroa.685.1 = phi i64 [ 0, %bb.v ], [ %i.af, %bb.u ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store i128 %.sroa.072.1, ptr %i.f, align 16
  store i128 40, ptr %.sroa.475.0..sroa_idx78, align 16
  store i64 %.sroa.580.1, ptr %.sroa.580.0..sroa_idx83, align 16
  store i64 %.sroa.685.1, ptr %.sroa.685.0..sroa_idx88, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.790.0..sroa_idx93, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.9100.0..sroa_idx102, ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @11, i64 144), i64 16, i1 false)
  store i128 %.sroa.072.1, ptr %8, align 16
  store i128 40, ptr %.sroa.445.0..sroa_idx48, align 16
  store i64 %.sroa.580.1, ptr %.sroa.550.0..sroa_idx53, align 16
  store i64 %.sroa.655.1, ptr %.sroa.655.0..sroa_idx58, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.760.0..sroa_idx63, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.9.0..sroa_idx71, ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @11, i64 64), i64 16, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread174, %bb.w
  %.sroa.4.2 = phi i64 [ %.sroa.4.1, %bb.w ], [ %.sroa.4.3, %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread174 ]
  %.sroa.03.2 = phi i64 [ %.sroa.03.1, %bb.w ], [ %.sroa.03.3, %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread174 ]
  store i128 2, ptr %9, align 16
  store i64 2, ptr %10, align 16
  %i.bf = load i64, ptr %i.v, align 8, !alias.scope !2170, !noundef !10 ; 3 uses
  %i.bg = load i64, ptr %i.i, align 8, !range !12, !alias.scope !2170, !noundef !10
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.y, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common5stats16ColumnStatisticsE8push_mutCs92BnbMq7p8c_15influxdb3_write.exit

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCslWccy9wMl4f_17datafusion_common5stats16ColumnStatisticsE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common5stats16ColumnStatisticsE8push_mutCs92BnbMq7p8c_15influxdb3_write.exit unwind label %bb.z, !noalias !2171

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslWccy9wMl4f_17datafusion_common5stats16ColumnStatisticsECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.f) #31
          to label %.body unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCslWccy9wMl4f_17datafusion_common5stats16ColumnStatisticsE8push_mutCs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.x, %bb.y
  %i.bk = load ptr, ptr %i.u, align 8, !alias.scope !2170, !nonnull !10, !noundef !10
  %i.bl = getelementptr inbounds nuw [272 x i8], ptr %i.bk, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %i.bl, ptr noundef nonnull align 16 dereferenceable(272) %i.f, i64 272, i1 false)
  %i.bm = add i64 %i.bf, 1
  store i64 %i.bm, ptr %i.v, align 8, !alias.scope !2170
  br label %bb.e

bb.ab:                                            ; preds = %bb.f
  %11 = icmp ne i8 %i.ai, 6
  call void @llvm.assume(i1 %11)
  %i.bn = load i64, ptr @_RNvNtNtCs7q2UDKzmthI_9iox_query10statistics19aggregate_per_chunk21NULL_COLUMN_INDICATOR, align 8, !range !15, !noundef !10
  %i.bo = icmp eq i64 %i.bn, 2
  br i1 %i.bo, label %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread, label %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread174

_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread: ; preds = %bb.ab
  br i1 %i.aa, label %bb.ac, label %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread174

bb.ac:                                            ; preds = %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread
  br label %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread174

_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread174: ; preds = %bb.ac, %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread, %bb.ab
  %.sroa.4.3 = phi i64 [ %.sroa.4.1, %bb.ac ], [ %.sroa.4.1, %bb.ab ], [ 1, %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread ]
  %.sroa.03.3 = phi i64 [ %.sroa.03.1, %bb.ac ], [ %.sroa.03.1, %bb.ab ], [ 1, %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread ]
  %i.bp = phi i64 [ %1, %bb.ac ], [ undef, %bb.ab ], [ undef, %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread ]
  %i.bq = phi i64 [ 0, %bb.ac ], [ 2, %bb.ab ], [ 2, %_RNvXsa_NtCslWccy9wMl4f_17datafusion_common5statsINtB5_9PrecisionjENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs92BnbMq7p8c_15influxdb3_write.exit.thread ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4186.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @11, i64 16), i64 64, i1 false)
  store i64 %i.bq, ptr %i.ag, align 16
  store i64 %i.bp, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.f, ptr noundef nonnull align 16 dereferenceable(80) getelementptr inbounds nuw (i8, ptr @11, i64 80), i64 80, i1 false)
  store i128 2, ptr %8, align 16
  br label %bb.x

bb.ad:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query14pruning_oracle35BucketPartitionPruningOracleBuilderECs92BnbMq7p8c_15influxdb3_write.exit, %bb.ae
  %.pn.pn170 = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query14pruning_oracle35BucketPartitionPruningOracleBuilderECs92BnbMq7p8c_15influxdb3_write.exit ], [ %.pn.pn171, %bb.ae ]
  resume { ptr, i32 } %.pn.pn170

bb.ae:                                            ; preds = %.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query14pruning_oracle35BucketPartitionPruningOracleBuilderECs92BnbMq7p8c_15influxdb3_write.exit
  %.pn.pn171 = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7q2UDKzmthI_9iox_query14pruning_oracle35BucketPartitionPruningOracleBuilderECs92BnbMq7p8c_15influxdb3_write.exit ], [ %i.x, %.thread ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslWccy9wMl4f_17datafusion_common5stats16ColumnStatisticsEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(24) %i.i) #31
          to label %bb.ad unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEENCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB2S_11TableBuffer26partitioned_record_batchess_0EIB1x_DNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB2S_5ErrorENCINvXso_B5C_IB5A_INtNtB1B_3vec3VecB4I_EB6m_EINtNtNtB4_6traits7collect12FromIteratorIB5A_B4I_B6m_EE9from_iterBQ_E0B6R_EB2W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2183 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !2185, !noalias !2186
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !2185, !noalias !2186
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2n_3map3MapINtNtNtB2r_5slice4iter4IterIBU_NtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEENCNvMNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_bufferNtB4N_11TableBuffer26partitioned_record_batchess_0EINtNtB2r_6result6ResultNtNtB2r_7convert10InfallibleNtB4N_5ErrorEEE9from_iterB4R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !76, !noundef !10
  %.not = icmp eq i64 %i.e, -2
  br i1 %.not, label %.body.thread, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2184
  %i.f = load i64, ptr %i.c, align 8, !range !76, !noundef !10
  %.not.not = icmp eq i64 %i.f, -2
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -2, ptr %0, align 8, !alias.scope !2187
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EEECs92BnbMq7p8c_15influxdb3_write.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs6ePPILGZvJ2_11arrow_array5array5ArrayEL_EEECs92BnbMq7p8c_15influxdb3_write.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

.body.thread:                                     ; preds = %bb.e, %bb.i, %.body
  %.pn10 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer12table_buffer5ErrorEEB1u_(ptr noalias noundef align 8 dereferenceable(32) %i.c) #31
          to label %.body.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENCNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply18load_restore_state0s_0ENtNtCs1LivM9IBWqb_12object_store4path4PathINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB2g_11FormatErrorENCINvXso_B4a_IB48_INtNtB1A_3vec3VecB3r_EB4U_EINtNtNtB4_6traits7collect12FromIteratorIB48_B3r_B4U_EE9from_iterBQ_E0B5w_ECs92BnbMq7p8c_15influxdb3_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2199 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2200
  store ptr %1, ptr %i.a, align 8, !alias.scope !2201, !noalias !2202
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !2201, !noalias !2202
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx7, align 8, !alias.scope !2201, !noalias !2202
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB20_3map3MapINtNtNtB24_5slice4iter4IterNtNtB6_6string6StringENCNCNvNtNtCs844E4pPEVZX_17influxdb3_catalog6format5apply18load_restore_state0s_0EINtNtB24_6result6ResultNtNtB24_7convert10InfallibleNtB41_11FormatErrorEEE9from_iterCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !77, !noundef !10
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %.body.thread, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2200
  %i.f = load i64, ptr %i.c, align 8, !range !77, !noundef !10
  %.not.not = icmp eq i64 %i.f, -1
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !2203
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECs92BnbMq7p8c_15influxdb3_write.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1LivM9IBWqb_12object_store4path4PathEECs92BnbMq7p8c_15influxdb3_write.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

.body.thread:                                     ; preds = %bb.e, %bb.i, %.body
  %.pn11 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn11

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog6format11FormatErrorEECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(32) %i.c) #31
          to label %.body.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs7fnekraeopg_15datafusion_expr4expr4SortENCINvNtB1X_13expr_rewriter15normalize_sortsB1T_INtB1b_3VecB1T_EE0EB1T_INtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorENCINvXso_B3O_IB3M_B3o_B4y_EINtNtNtB4_6traits7collect12FromIteratorIB3M_B1T_B4y_EE9from_iterBQ_E0B3o_ECs92BnbMq7p8c_15influxdb3_write(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2215 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !2217, !noalias !2218
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !2217, !noalias !2218
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4SortEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2p_3map3MapINtNtB6_9into_iter8IntoIterBX_ENCINvNtB11_13expr_rewriter15normalize_sortsBX_BN_E0EINtNtB2t_6result6ResultNtNtB2t_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEEE9from_iterCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !78, !noundef !10
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2216
  %i.f = load i64, ptr %i.c, align 8, !range !78, !noundef !10
  %.not.not = icmp eq i64 %i.f, -1
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -1, ptr %0, align 8, !alias.scope !2219
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4SortEECs92BnbMq7p8c_15influxdb3_write.exit
end_hunk_0
