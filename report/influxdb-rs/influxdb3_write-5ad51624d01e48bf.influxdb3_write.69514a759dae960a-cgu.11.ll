Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_write-5ad51624d01e48bf.influxdb3_write.69514a759dae960a-cgu.11?download=true
inline.NumInlined: 2339
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs5_NtCsj9JzdWj4GcM_12arrow_schema5errorNtB5_10ArrowErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a

bb.u:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @643, i64 noundef 24)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.a, align 8
  %i.bg = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @645, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @644)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.aj, %bb.i ], [ %i.ak, %bb.j ], [ %i.am, %bb.k ], [ %i.ao, %bb.l ], [ %i.aq, %bb.m ], [ %i.as, %bb.n ], [ %i.au, %bb.o ], [ %i.aw, %bb.p ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bc, %bb.s ], [ %i.bd, %bb.t ], [ %i.be, %bb.u ], [ %i.bg, %bb.v ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs5_NtNtCs7q2UDKzmthI_9iox_query8frontend5reorgNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #3 !guid !6002 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !226, !noundef !187 ; 2 uses
  %i.b = add nsw i64 %i.a, -5
  %i.c = icmp samesign ugt i64 %i.a, 4
  %i.d = select i1 %i.c, i64 %i.b, i64 2
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.0 = phi ptr [ @647, %bb.c ], [ @542, %bb.d ], [ @649, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %0, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_Cs92BnbMq7p8c_15influxdb3_writeNtB5_9YearMonthNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !6003 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !187, !noundef !187
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !187, !align !188, !noundef !187
  %i.g = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @650, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs6_NtCs1LivM9IBWqb_12object_store4pathNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #16 !guid !6004 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !208, !noundef !187 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.f
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.f
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.c
  %.sroa.7.0 = phi ptr [ undef, %bb.a ], [ @652, %bb.c ], [ @612, %bb.d ], [ undef, %bb.a ], [ @654, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.a ], [ %i.h, %bb.e ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsaNmiEuYuYZf_9sqlparser6parserNtB5_11ParserErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !guid !6005 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !213, !noundef !187
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @655, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @419)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.a, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @656, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @419)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @657, i64 noundef 22)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCseCDlJsl44RV_5tokio4sync5watchINtB5_6SenderINtNtCs4NRVxsYgnAr_4core6option6OptionNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionEENtNtNtBW_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !guid !6006 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !187, !noundef !187 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.f = atomicrmw or ptr %i.e, i64 1 release, align 8 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_RNvMNtNtNtCseCDlJsl44RV_5tokio4sync5watch10big_notifyNtB2_9BigNotify14notify_waiters(ptr noundef nonnull align 8 %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_Cs92BnbMq7p8c_15influxdb3_writeNtB5_9YearMonthNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 !guid !6019 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = icmp eq i64 %2, 7
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i8, ptr %i.e, align 1, !noundef !187
  %.not = icmp eq i8 %i.f, 45
  br i1 %.not, label %.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.c, align 8, !range !198, !noundef !187
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !229, !noundef !187 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.m, label %bb.n, !prof !185

.preheader.i:                                     ; preds = %bb.b
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !6020
  %cond.i = icmp eq i8 %.pr.i, 43                 ; 2 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i82 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 4 uses
  %3 = load i8, ptr %.sroa.0.0.i82, align 1, !alias.scope !6020, !noundef !187
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, -48                        ; 2 uses
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %.lr.ph.i, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %7 = trunc nuw nsw i32 %5 to i16
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82, i64 1
  %i.l = load i8, ptr %8, align 1, !alias.scope !6020, !noundef !187
  %i.m = zext i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  %i.o = icmp ult i32 %i.n, 10
  br i1 %i.o, label %bb.d, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = mul nuw nsw i16 %7, 10
  %9 = trunc nuw nsw i32 %i.n to i16
  %10 = add nuw nsw i16 %i.p, %9
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82, i64 2
  %11 = load i8, ptr %i.q, align 1, !alias.scope !6020, !noundef !187
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -48                      ; 2 uses
  %14 = icmp ult i32 %13, 10
  br i1 %14, label %15, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread

15:                                               ; preds = %bb.d
  %16 = mul nuw i16 %10, 10
  %17 = trunc nuw nsw i32 %13 to i16
  %18 = add nuw nsw i16 %16, %17                  ; 2 uses
  br i1 %cond.i, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82, i64 3
  %20 = load i8, ptr %19, align 1, !alias.scope !6020, !noundef !187
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, -48                      ; 2 uses
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %24, label %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread

24:                                               ; preds = %.lr.ph.i.3
  %25 = mul i16 %18, 10
  %26 = trunc nuw nsw i32 %22 to i16
  %27 = add i16 %25, %26
  br label %.loopexit.i

_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread: ; preds = %.lr.ph.i.3, %bb.d, %.lr.ph.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6021
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6021
  %i.r = load i64, ptr %i.b, align 8, !range !198, !noalias !6021, !noundef !187
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !229, !noalias !6021, !noundef !187 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.s, label %bb.e, label %_RNCNvXs7_Cs92BnbMq7p8c_15influxdb3_writeNtB7_9YearMonthNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str0B7_.exit, !prof !185

bb.e:                                             ; preds = %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread
  %i.w = load i64, ptr %i.v, align 8, !noalias !6021
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.w) #37, !noalias !6021
  unreachable

_RNCNvXs7_Cs92BnbMq7p8c_15influxdb3_writeNtB7_9YearMonthNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str0B7_.exit: ; preds = %_RNvMsz_NtCs4NRVxsYgnAr_4core3numt16from_ascii_radix.exit.thread
  %i.x = load ptr, ptr %i.v, align 8, !noalias !6021, !nonnull !187, !noundef !187 ; 2 uses
  %i.y = icmp samesign ugt i64 %i.u, 6
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6021
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.x, ptr noundef nonnull readonly align 1 dereferenceable(7) %1, i64 7, i1 false), !noalias !6022
  %i.z = ptrtoint ptr %i.x to i64
  store i64 %i.u, ptr %0, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.566.sroa.4.0..sroa.566.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.566.sroa.4.0..sroa.566.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

.loopexit.i:                                      ; preds = %24, %15
  %.lcssa125 = phi i16 [ %27, %24 ], [ %18, %15 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !6023, !noundef !187 ; 2 uses
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %.lr.ph.preheader.i, label %bb.g

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %cond.i87 = icmp eq i8 %i.ab, 43                ; 2 uses
  %.sroa.0.0.idx.i89 = zext i1 %cond.i87 to i64
  %.sroa.0.0.i90 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.0.0.idx.i89 ; 2 uses
  %i.ad = load i8, ptr %.sroa.0.0.i90, align 1, !alias.scope !6024, !noundef !187
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 9
  br i1 %i.ag, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.preheader.i
  %i.ah = trunc nuw nsw i32 %i.af to i8           ; 2 uses
  br i1 %cond.i87, label %bb.i, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i90, i64 1
  %.pre = load i8, ptr %i.ai, align 1, !alias.scope !6024
  %i.aj = zext i8 %.pre to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 9
  br i1 %i.al, label %.loopexit, label %.loopexit117

bb.g:                                             ; preds = %.loopexit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 7, i64 noundef 5, i64 noundef 7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @658) #37
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i96, %.lr.ph.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6025
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6025
  %i.am = load i64, ptr %i.a, align 8, !range !198, !noalias !6025, !noundef !187
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !229, !noalias !6025, !noundef !187 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.an, label %bb.h, label %_RNCNvXs7_Cs92BnbMq7p8c_15influxdb3_writeNtB7_9YearMonthNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_strs_0B7_.exit, !prof !185

bb.h:                                             ; preds = %.loopexit
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !6025
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #37, !noalias !6025
  unreachable

_RNCNvXs7_Cs92BnbMq7p8c_15influxdb3_writeNtB7_9YearMonthNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_strs_0B7_.exit: ; preds = %.loopexit
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !6025, !nonnull !187, !noundef !187 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 6
  tail call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6025
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(7) %1, i64 7, i1 false), !noalias !6026
  %i.au = ptrtoint ptr %i.as to i64
  store i64 %i.ap, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.sroa.4.0..sroa.575.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.575.sroa.4.0..sroa.575.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

.loopexit117:                                     ; preds = %.lr.ph.i96
  %i.av = mul nuw nsw i8 %i.ah, 10
  %i.aw = trunc nuw nsw i32 %i.ak to i8
  %i.ax = add nuw nsw i8 %i.av, %i.aw
  br label %bb.i

bb.i:                                             ; preds = %.loopexit117, %bb.f
  %.lcssa = phi i8 [ %i.ah, %bb.f ], [ %i.ax, %.loopexit117 ] ; 3 uses
  %i.ay = add nsw i8 %.lcssa, -1
  %spec.select.i101 = icmp ult i8 %i.ay, 12
  br i1 %spec.select.i101, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 -1, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.lcssa, ptr %.sroa.439.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.lcssa125, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.lcssa, ptr %i.ba, align 2
  store i64 -2, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RNCNvXs7_Cs92BnbMq7p8c_15influxdb3_writeNtB7_9YearMonthNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_strs_0B7_.exit, %bb.j, %_RNCNvXs7_Cs92BnbMq7p8c_15influxdb3_writeNtB7_9YearMonthNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str0B7_.exit, %bb.o, %bb.k
  ret void

bb.m:                                             ; preds = %bb.c
  %i.bb = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.bb) #37
  unreachable

bb.n:                                             ; preds = %bb.c
  %i.bc = load ptr, ptr %i.k, align 8, !nonnull !187, !noundef !187 ; 2 uses
  %i.bd = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not81 = icmp eq i64 %2, 0
  br i1 %.not81, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.n
  store i64 %i.j, ptr %0, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.549.0..sroa_idx, align 8
  br label %bb.l

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs7_NtCsaIKnL9StOw_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %0) unnamed_addr #1 !guid !6027 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !187, !nonnull !187
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs7_NtCsaIKnL9StOw_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %0) unnamed_addr #1 !guid !6028 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !187, !nonnull !187
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs7_NtCsaIKnL9StOw_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReNtNtNtCs7q2UDKzmthI_9iox_query8frontend5reorg5ErrorEENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %0) unnamed_addr #1 !guid !6029 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !187, !nonnull !187
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs7_NtCsaIKnL9StOw_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12DisplayErrorReEENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %0) unnamed_addr #1 !guid !6030 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !187, !nonnull !187
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs7_NtCsaIKnL9StOw_6anyhow5errorINtB5_9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5error5Error6sourceCs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %0) unnamed_addr #1 !guid !6031 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !187, !nonnull !187
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs7_NtCsaIKnL9StOw_6anyhow5errorINtB5_9ErrorImplNtNtCs92BnbMq7p8c_15influxdb3_write5paths9PathErrorENtNtCs4NRVxsYgnAr_4core5error5Error6sourceBR_(ptr noundef nonnull align 8 %0) unnamed_addr #1 !guid !6032 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsaIKnL9StOw_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !187, !nonnull !187
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCs92BnbMq7p8c_15influxdb3_write(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #6 !guid !6037 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !201, !noundef !187
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_RNvXs6_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap3endCs92BnbMq7p8c_15influxdb3_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6038)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !227, !alias.scope !6038, !noundef !187
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %_RNvXs6_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap3endCs92BnbMq7p8c_15influxdb3_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !6038, !nonnull !187, !align !188, !noundef !187 ; 5 uses
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !6038 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6039)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !6039, !noalias !6038, !noundef !187
  %i.j = add i64 %i.i, -1                         ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !6039, !noalias !6038
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load i8, ptr %i.k, align 8, !range !201, !alias.scope !6039, !noalias !6038, !noundef !187
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !6040
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !6039, !noalias !6038, !nonnull !187, !noundef !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !6039, !noalias !6038, !noundef !187
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.06.01.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ 0, %bb.d ]
  %i.r = add nuw i64 %.sroa.06.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef range(i64 0, -9223372036854775808) %i.q), !noalias !6040
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.j
  br i1 %exitcond.not.i.i, label %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i, label %.lr.ph.i.i

_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i: ; preds = %.lr.ph.i.i, %bb.d, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !6040
  br label %_RNvXs6_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap3endCs92BnbMq7p8c_15influxdb3_write.exit

_RNvXs6_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap3endCs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %_RINvXse_NtCsdLkRf3gRIi6_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs92BnbMq7p8c_15influxdb3_write.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtB5_9BufWriterQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #1 !guid !6041 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !201, !noundef !187
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtB4_9BufWriterQINtNtCscdodAO9FK5_5alloc3vec3VechEE9flush_bufCs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef align 8 dereferenceable(40) %0) ; 2 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs92BnbMq7p8c_15influxdb3_write(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs92BnbMq7p8c_15influxdb3_write.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCsaIKnL9StOw_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5error9RecvErrorEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6042 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCsaIKnL9StOw_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCsaIKnL9StOw_6anyhow5errorINtB5_9ErrorImplINtB5_12ContextErrorReNtNtCslWccy9wMl4f_17datafusion_common5error15DataFusionErrorEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs92BnbMq7p8c_15influxdb3_write(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !6043 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCsaIKnL9StOw_6anyhow3fmtNtNtB4_5error9ErrorImpl5debug(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
end_hunk_0
