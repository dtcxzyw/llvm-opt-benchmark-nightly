Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/jiff-40853fb6ac434a7c.jiff.3ee8fab6f2ec3df8-cgu.11?download=true
inline.NumInlined: 199
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs2_NtCs5oRRSLMQMUC_4jiff5zonedNtB5_5ZonedNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a
  %i.b = alloca [4 x i8], align 1                 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !noundef !3
  %i.e = and i32 %i.d, 268435456
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.h = load i16, ptr %i.g, align 2, !noundef !3 ; 2 uses
  %i.i = icmp ugt i16 %i.h, 255
  %i.j = shl nuw i16 %i.h, 8
  %i.k = or disjoint i16 %i.j, 1
  %.sroa.018.0 = select i1 %i.i, i16 -255, i16 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.422.2.insert.insert = phi i16 [ %.sroa.018.0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 0, ptr %i.b, align 1
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i16 %.sroa.422.2.insert.insert, ptr %.sroa.6.0..sroa_idx11, align 1
  %.sroa.613.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 84, ptr %.sroa.613.0..sroa_idx16, align 1
  %i.l = call { i64, ptr } @_RINvMs_NtNtCs5oRRSLMQMUC_4jiff3fmt8temporalNtB5_15DateTimePrinter11print_zonedINtB7_11StdFmtWriteQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEEB9_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1                 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = extractvalue { i64, ptr } %i.l, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5oRRSLMQMUC_4jiff5error5ErrorEBF_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !620
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5oRRSLMQMUC_4jiff5error5ErrorEBF_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs5oRRSLMQMUC_4jiff5error10ErrorInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5oRRSLMQMUC_4jiff5error5ErrorEBF_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5oRRSLMQMUC_4jiff5error5ErrorEBF_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5oRRSLMQMUC_4jiff5error5ErrorEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.n
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCs5oRRSLMQMUC_4jiff2tz6offsetNtB5_6OffsetNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load i32, ptr %0, align 4, !noundef !3   ; 5 uses
  %i.g = icmp slt i32 %i.f, 0
  %spec.select = select i1 %i.g, ptr @108, ptr inttoptr (i64 1 to ptr)
  %.lobit = lshr i32 %i.f, 31
  %spec.select35 = zext nneg i32 %.lobit to i64
  store ptr %spec.select, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %spec.select35, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = sdiv i32 %i.f, 3600
  %i.j = trunc i32 %i.i to i8
  %.sroa.01.0 = tail call i8 @llvm.abs.i8(i8 %i.j, i1 false)
  store i8 %.sroa.01.0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = sdiv i32 %i.f, 60
  %i.l = srem i32 %i.k, 60                        ; 2 uses
  %i.m = trunc nsw i32 %i.l to i8                 ; 2 uses
  %i.n = icmp slt i32 %i.l, 0
  %i.o = sub nsw i8 0, %i.m
  %.sroa.02.0 = select i1 %i.n, i8 %i.o, i8 %i.m
  store i8 %.sroa.02.0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = srem i32 %i.f, 60                        ; 2 uses
  %i.q = trunc nsw i32 %i.p to i8                 ; 2 uses
  %i.r = icmp slt i32 %i.p, 0
  %i.s = sub nsw i8 0, %i.q
  %.sroa.03.0 = select i1 %i.r, i8 %i.s, i8 %i.q
  store i8 %.sroa.03.0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs5oRRSLMQMUC_4jiff, ptr %.sroa.46.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.t, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.u, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.v, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  %i.w = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3, !align !17, !noundef !3
  %i.z = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noundef nonnull @109, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXs2_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr returned %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 7
  switch i64 %i.b, label %bb.b [
    i64 1, label %_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneE25increment_strong_count_inCs5oRRSLMQMUC_4jiff.exit
    i64 2, label %_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneE25increment_strong_count_inCs5oRRSLMQMUC_4jiff.exit
    i64 3, label %_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneE25increment_strong_count_inCs5oRRSLMQMUC_4jiff.exit
    i64 0, label %_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneE25increment_strong_count_inCs5oRRSLMQMUC_4jiff.exit
    i64 4, label %bb.c
    i64 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.0.val, i64 -4    ; 3 uses
  %i.d = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.c)
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.g = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneE25increment_strong_count_inCs5oRRSLMQMUC_4jiff.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.0.val, i64 -5    ; 3 uses
  %i.j = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.i)
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneE25increment_strong_count_inCs5oRRSLMQMUC_4jiff.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneE25increment_strong_count_inCs5oRRSLMQMUC_4jiff.exit: ; preds = %bb.e, %bb.c, %bb.a, %bb.a, %bb.a, %bb.a
  ret ptr %.0.val
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCs5oRRSLMQMUC_4jiff5zonedNtB5_5ZonedNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMNtNtCs5oRRSLMQMUC_4jiff3fmt8temporalNtB3_14DateTimeParser11parse_zonedReEB7_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2) @_RNvNtNtCs5oRRSLMQMUC_4jiff3fmt8temporal23DEFAULT_DATETIME_PARSER, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtCs5oRRSLMQMUC_4jiff2tz6offsetNtB5_6OffsetNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load i32, ptr %0, align 4, !noundef !3   ; 4 uses
  %i.i = icmp slt i32 %i.h, 0
  %spec.select = select i1 %i.i, ptr @108, ptr @158
  store ptr %spec.select, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = sdiv i32 %i.h, 3600
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %.sroa.010.0 = tail call i8 @llvm.abs.i8(i8 %i.l, i1 false)
  store i8 %.sroa.010.0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = sdiv i32 %i.h, 60
  %i.n = srem i32 %i.m, 60                        ; 3 uses
  %i.o = trunc nsw i32 %i.n to i8                 ; 2 uses
  %i.p = icmp slt i32 %i.n, 0
  %i.q = sub nsw i8 0, %i.o
  %.sroa.011.0 = select i1 %i.p, i8 %i.q, i8 %i.o ; 2 uses
  store i8 %.sroa.011.0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = srem i32 %i.h, 60                        ; 2 uses
  %i.s = trunc nsw i32 %i.r to i8                 ; 2 uses
  %i.t = icmp slt i32 %i.r, 0
  %i.u = sub nsw i8 0, %i.s
  %.sroa.012.0 = select i1 %i.t, i8 %i.u, i8 %i.s ; 2 uses
  store i8 %.sroa.012.0, ptr %i.d, align 1
  %i.v = icmp eq i8 %i.l, 0                       ; 2 uses
  %i.w = icmp eq i8 %.sroa.011.0, 0               ; 2 uses
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  %i.x = icmp eq i8 %.sroa.012.0, 0               ; 3 uses
  %or.cond3 = select i1 %or.cond, i1 %i.x, i1 false
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = xor i1 %i.v, true
  %or.cond5 = select i1 %.not, i1 %i.w, i1 false
  %or.cond7 = select i1 %or.cond5, i1 %i.x, i1 false
  br i1 %or.cond7, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 3)
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.y, %bb.c ], [ %i.ae, %bb.f ], [ %i.ar, %bb.h ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i1 %.sroa.0.0.in

bb.e:                                             ; preds = %bb.b
  %i.z = icmp ne i32 %i.n, 0
  %or.cond9 = select i1 %i.z, i1 %i.x, i1 false
  br i1 %or.cond9, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs5oRRSLMQMUC_4jiff, ptr %.sroa.415.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.aa, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  %i.ab = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !align !17, !noundef !3
  %i.ae = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad, ptr noundef nonnull @160, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs5oRRSLMQMUC_4jiff, ptr %.sroa.458.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.af, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.ag, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.466.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.d, ptr %i.ah, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.470.0..sroa_idx, align 8
  %i.ai = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !align !17, !noundef !3
  %i.al = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noundef nonnull @109, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs5oRRSLMQMUC_4jiff, ptr %.sroa.434.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.am, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.an, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  %i.ao = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !3, !align !17, !noundef !3
  %i.ar = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq, ptr noundef nonnull @161, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs5_NtCs5oRRSLMQMUC_4jiff3fmtQDNtB5_5WriteEL_Bw_9write_str(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !17, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !3, !nonnull !3
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtNtCs5oRRSLMQMUC_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3   ; 11 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 7                          ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !noundef !3   ; 11 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = and i64 %i.e, 7
  %.not = icmp eq i64 %i.c, %i.f
  br i1 %.not, label %bb.b, label %_RNvXsS_NtNtCsau3t54nuvpx_9jiff_core2tz5posixNtB5_8TimeZoneNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.c, label %bb.c [
    i64 1, label %_RNvXsS_NtNtCsau3t54nuvpx_9jiff_core2tz5posixNtB5_8TimeZoneNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
    i64 2, label %_RNvXsS_NtNtCsau3t54nuvpx_9jiff_core2tz5posixNtB5_8TimeZoneNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
    i64 3, label %bb.d
    i64 0, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = trunc i64 %i.b to i32
  %i.h = ashr i32 %i.g, 4                         ; 2 uses
  %i.i = add nsw i32 %i.h, 93599
  %or.cond.i = icmp ult i32 %i.i, 187199
  br i1 %or.cond.i, label %_RNvMs1_NtNtCs5oRRSLMQMUC_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit, label %bb.e, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #21
  unreachable

_RNvMs1_NtNtCs5oRRSLMQMUC_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit: ; preds = %bb.d
  %i.j = trunc i64 %i.e to i32
  %i.k = ashr i32 %i.j, 4                         ; 2 uses
  %i.l = add nsw i32 %i.k, 93599
  %or.cond.i13 = icmp ult i32 %i.l, 187199
  br i1 %or.cond.i13, label %_RNvMs1_NtNtCs5oRRSLMQMUC_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit14, label %bb.f, !prof !5

bb.f:                                             ; preds = %_RNvMs1_NtNtCs5oRRSLMQMUC_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #21
  unreachable

_RNvMs1_NtNtCs5oRRSLMQMUC_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit14: ; preds = %_RNvMs1_NtNtCs5oRRSLMQMUC_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit
  %i.m = icmp eq i32 %i.h, %i.k
  br label %_RNvXsS_NtNtCsau3t54nuvpx_9jiff_core2tz5posixNtB5_8TimeZoneNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.o = load i8, ptr %i.n, align 8, !range !18, !noundef !3 ; 3 uses
  %.not11 = icmp eq i8 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.q = load i8, ptr %i.p, align 8, !range !18, !noundef !3 ; 2 uses
  %i.r = icmp eq i8 %i.q, -1                      ; 2 uses
  br i1 %.not11, label %bb.ag, label %bb.af

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.a, i64 -4       ; 3 uses
  %i.t = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.s)
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.w = getelementptr i8, ptr %i.d, i64 -4       ; 3 uses
  %i.x = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif18MaybeNamedTimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.w)
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 248
  %i.ab = load i8, ptr %i.aa, align 8, !range !18, !noundef !3 ; 3 uses
  %.not9 = icmp eq i8 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  %i.ad = load i8, ptr %i.ac, align 8, !range !18, !noundef !3 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, -1                    ; 2 uses
  br i1 %.not9, label %bb.ao, label %bb.an

bb.i:                                             ; preds = %bb.b
  %i.af = getelementptr i8, ptr %i.a, i64 -5      ; 3 uses
  %i.ag = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.af)
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah ; 30 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = getelementptr i8, ptr %i.d, i64 -5      ; 3 uses
  %i.al = tail call noundef i64 @_RINvNtCscdodAO9FK5_5alloc4sync11data_offsetNtNtNtCsau3t54nuvpx_9jiff_core2tz5posix8TimeZoneECs5oRRSLMQMUC_4jiff(ptr noundef %i.ak)
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am ; 30 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %i.ap = load i8, ptr %i.aj, align 8, !range !661, !alias.scope !662, !noundef !3 ; 2 uses
  %i.aq = load i8, ptr %i.ao, align 8, !range !661, !alias.scope !663, !noundef !3
  %i.ar = icmp eq i8 %i.ap, %i.aq
  br i1 %i.ar, label %bb.j, label %_RNvXsS_NtNtCsau3t54nuvpx_9jiff_core2tz5posixNtB5_8TimeZoneNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  switch i8 %i.ap, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.aq, %bb.ai, %bb.ab, %bb.w, %bb.q, %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 23
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !662, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 23
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !663, !noundef !3
  %i.aw = icmp eq i8 %i.at, %i.av
  br i1 %i.aw, label %.split.i, label %_RNvXsS_NtNtCsau3t54nuvpx_9jiff_core2tz5posixNtB5_8TimeZoneNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.val4.i.i = load i64, ptr %i.ax, align 8, !alias.scope !662, !noundef !3 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.val6.i.i = load i64, ptr %i.ay, align 8, !alias.scope !663, !noundef !3
  %i.az = icmp eq i64 %.val4.i.i, %.val6.i.i
end_hunk_0
