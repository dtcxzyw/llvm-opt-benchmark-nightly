Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_types-b69712832ae71271.influxdb3_types.6c0bac817ad119d5-cgu.1?download=true
inline.NumInlined: 95
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char:bb.a
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !106
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !112
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !113, !noalias !112, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !113, !noalias !112, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !113, !noalias !112
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !113, !noalias !112
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsb_NtCs9h7Hq22ZyhR_15influxdb3_types4httpNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call { ptr, ptr } @_RNvXs0_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !4, !nonnull !4
  %i.l = tail call { ptr, ptr } %i.k(ptr noundef %i.h) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.0 = phi ptr [ %i.n, %bb.d ], [ @54, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.m, %bb.d ], [ %0, %bb.c ], [ null, %bb.a ]
  %i.o = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NtCs9h7Hq22ZyhR_15influxdb3_types4httpNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !7, !noundef !4 ; 3 uses
  %i.f = icmp ne i64 %i.e, -9223372036854775807
  tail call void @llvm.assume(i1 %i.f)
  %i.g = xor i64 %i.e, -9223372036854775808
  %i.h = icmp slt i64 %i.e, 0
  %i.i = select i1 %i.h, i64 %i.g, i64 1
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs9h7Hq22ZyhR_15influxdb3_types, ptr %.sroa.43.0..sroa_idx, align 8
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !align !114, !noundef !4
  %i.n = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @55, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string13FromUtf8ErrorNtB6_7Display3fmtCs9h7Hq22ZyhR_15influxdb3_types, ptr %.sroa.418.0..sroa_idx, align 8
  %i.o = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !114, !noundef !4
  %i.r = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull @56, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = tail call noundef zeroext i1 @_RNvXs2_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.1.in = phi i1 [ %i.n, %bb.c ], [ %i.r, %bb.d ], [ %i.t, %bb.e ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 3, 10) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp ult i64 %1, %3
  br i1 %i.c, label %bb.c, label %bb.b

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.o, %bb.b, %bb.be, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.jq, %bb.be ], [ %.sroa.0.025, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.o ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.be, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.f = load i8, ptr %0, align 1, !alias.scope !155, !noalias !156, !noundef !4 ; 5 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 10) %1, i64 4) ; 4 uses
  %i.i = icmp samesign ult i64 %i.h, %1
  br i1 %i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

4:                                                ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i
  %5 = icmp ult i64 %i.h, %18
  br i1 %5, label %.lr.ph.1, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %4
  %6 = add nsw i64 %1, -2                         ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !alias.scope !155, !noalias !157, !noundef !4 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %8, %i.f
  br i1 %.not.i.not.i.i.1, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.1
  %i.j = icmp ult i64 %i.h, %6
  br i1 %i.j, label %.lr.ph.a, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.a:                                         ; preds = %bb.d
  %9 = add nsw i64 %1, -3                         ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !alias.scope !155, !noalias !157, !noundef !4 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %11, %i.f
  br i1 %.not.i.not.i.i.2, label %12, label %bb.f

12:                                               ; preds = %.lr.ph.a
  %13 = icmp ult i64 %i.h, %9
  br i1 %13, label %.lr.ph.3, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %12
  %14 = add nsw i64 %1, -4                        ; 3 uses
  %15 = icmp samesign ugt i64 %1, 3
  br i1 %15, label %bb.e, label %19

bb.e:                                             ; preds = %.lr.ph.3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %14
  %17 = load i8, ptr %16, align 1, !alias.scope !155, !noalias !157, !noundef !4 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %17, %i.f
  br i1 %.not.i.not.i.i.3, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit, label %bb.f

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i: ; preds = %bb.c
  %18 = add nsw i64 %1, -1                        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %18
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !155, !noalias !157, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.l, %i.f
  br i1 %.not.i.not.i.i, label %4, label %bb.f

19:                                               ; preds = %.lr.ph.3
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %14, i64 noundef range(i64 3, 10) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20, !noalias !158
  unreachable

bb.f:                                             ; preds = %bb.e, %.lr.ph.a, %.lr.ph.1, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i
  %.lcssa317 = phi i8 [ %i.l, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i ], [ %8, %.lr.ph.1 ], [ %11, %.lr.ph.a ], [ %17, %bb.e ]
  %.lcssa315 = phi i64 [ %18, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i ], [ %6, %.lr.ph.1 ], [ %9, %.lr.ph.a ], [ %14, %bb.e ] ; 6 uses
  %i.m = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.n = icmp ult i64 %3, %i.m
  br i1 %i.n, label %.lr.ph.split.us.i.i, label %bb.g

.lr.ph.split.us.i.i:                              ; preds = %bb.f
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 10) %1), !alias.scope !159, !noalias !160
  %i.o = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.o, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.p = add nsw i64 %3, -1                       ; 2 uses
  %.not28.i.i275 = icmp ugt i64 %1, %i.p
  br i1 %.not28.i.i275, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i
  %i.q = phi i64 [ %i.t, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i ], [ %i.p, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader ]
  %.pn.i276 = phi ptr [ %i.r, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.pn.i276, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 10) %1), !alias.scope !159, !noalias !160
  %i.s = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.s, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.t = add nsw i64 %i.q, -1                     ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.t
  br i1 %.not28.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.w = insertelement <16 x i8> poison, i8 %.lcssa317, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !159
  store ptr %2, ptr %i.a, align 8, !noalias !159
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.z, align 8, !noalias !159
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.aa, align 8, !noalias !159
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.ab, align 8, !noalias !159
  %i.ac = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ac, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.g
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.g ], [ %.sroa.014.2.3.i, %bb.k ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.bx, %bb.k ] ; 2 uses
  %i.ad = add i64 %.sroa.06.0.lcssa.i, %i.m
  %i.ae = icmp uge i64 %i.ad, %3
  %i.af = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.sroa.06.098.i = phi i64 [ %i.bx, %bb.k ], [ 0, %bb.g ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ag, align 1, !alias.scope !156, !noalias !161
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.lcssa315
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !156, !noalias !161
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.v
  %i.aj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.x
  %i.ak = and <16 x i1> %i.ai, %i.aj
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.am, align 1, !alias.scope !156, !noalias !161
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.lcssa315
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.an, align 1, !alias.scope !156, !noalias !161
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.v
  %i.ap = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.x
  %i.aq = and <16 x i1> %i.ao, %i.ap
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.as, align 1, !alias.scope !156, !noalias !161
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.lcssa315
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !156, !noalias !161
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.v
  %i.av = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.x
  %i.aw = and <16 x i1> %i.au, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.ay, align 1, !alias.scope !156, !noalias !161
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.lcssa315
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !156, !noalias !161
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.v
  %i.bb = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.x
  %i.bc = and <16 x i1> %i.ba, %i.bb
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %i.be = icmp eq i16 %i.al, 0
  br i1 %i.be, label %.preheader91.1.i, label %bb.l

.preheader91.1.i:                                 ; preds = %bb.l, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cc, %bb.l ] ; 3 uses
  %i.bf = icmp eq i16 %i.ar, 0
  br i1 %i.bf, label %.preheader91.2.i, label %bb.h

bb.h:                                             ; preds = %.preheader91.1.i
  %i.bg = or disjoint i64 %.sroa.06.098.i, 16
  %i.bh = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bi = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bg, i16 noundef %i.ar, i1 noundef zeroext %i.bh)
  %i.bj = zext i1 %i.bi to i8
  %i.bk = or i8 %.sroa.014.2.i, %i.bj
  br label %.preheader91.2.i

.preheader91.2.i:                                 ; preds = %bb.h, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.bk, %bb.h ] ; 3 uses
  %i.bl = icmp eq i16 %i.ax, 0
  br i1 %i.bl, label %.preheader91.3.i, label %bb.i

bb.i:                                             ; preds = %.preheader91.2.i
  %i.bm = or disjoint i64 %.sroa.06.098.i, 32
  %i.bn = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bo = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bm, i16 noundef %i.ax, i1 noundef zeroext %i.bn)
  %i.bp = zext i1 %i.bo to i8
  %i.bq = or i8 %.sroa.014.2.1.i, %i.bp
  br label %.preheader91.3.i

.preheader91.3.i:                                 ; preds = %bb.i, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.bq, %bb.i ] ; 3 uses
  %i.br = icmp eq i16 %i.bd, 0
  br i1 %i.br, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader91.3.i
  %i.bs = or disjoint i64 %.sroa.06.098.i, 48
  %i.bt = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.bu = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bs, i16 noundef %i.bd, i1 noundef zeroext %i.bt)
  %i.bv = zext i1 %i.bu to i8
  %i.bw = or i8 %.sroa.014.2.2.i, %i.bv
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.bw, %bb.j ] ; 2 uses
  %i.bx = add i64 %.sroa.06.098.i, 64             ; 3 uses
  %i.by = add i64 %i.bx, %i.ac
  %i.bz = icmp uge i64 %i.by, %3
  %i.ca = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.al, i1 noundef zeroext false)
  %i.cc = zext i1 %i.cb to i8
  br label %.preheader91.1.i

._crit_edge.i:                                    ; preds = %bb.m, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.m ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.af, %.preheader.i ], [ %i.cw, %bb.m ]
  %i.cd = sub nuw i64 %3, %i.g
  %i.ce = add i64 %i.cd, -16                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cf, align 1, !alias.scope !156, !noalias !162
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.lcssa315
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.cg, align 1, !alias.scope !156, !noalias !162
  %i.ch = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.v
  %i.ci = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.x
  %i.cj = and <16 x i1> %i.ch, %i.ci
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %bb.p

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.m
  %.sroa.06.1101.i = phi i64 [ %i.ct, %bb.m ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.cm, align 1, !alias.scope !156, !noalias !163
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.lcssa315
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.cn, align 1, !alias.scope !156, !noalias !163
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.v
  %i.cp = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.x
  %i.cq = and <16 x i1> %i.co, %i.cp
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.cy, %bb.n ] ; 2 uses
  %i.ct = add i64 %.sroa.06.1101.i, 16            ; 2 uses
  %i.cu = add i64 %i.ct, %i.m
  %i.cv = icmp uge i64 %i.cu, %3
  %i.cw = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cv, %i.cw
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i

bb.n:                                             ; preds = %.lr.ph102.i
  %i.cx = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.cr, i1 noundef zeroext false)
  %i.cy = zext i1 %i.cx to i8
  br label %bb.m

bb.o:                                             ; preds = %bb.p, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.db, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !159
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.p:                                             ; preds = %._crit_edge.i
  %i.cz = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ce, i16 noundef %i.ck, i1 noundef zeroext %.lcssa.i)
  %i.da = zext i1 %i.cz to i8
  %i.db = or i8 %.sroa.014.3.lcssa.i, %i.da
  br label %bb.o

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit: ; preds = %4, %bb.d, %12, %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.dc = load i64, ptr %i.b, align 8, !range !5, !alias.scope !164, !noalias !165, !noundef !4
  %i.dd = trunc nuw i64 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.dd, label %bb.z, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.dg = load i8, ptr %i.df, align 2, !range !166, !alias.scope !167, !noalias !168, !noundef !4
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.de, align 8, !alias.scope !164, !noalias !165 ; 12 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !167, !noalias !168, !nonnull !4, !noundef !4 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !167, !noalias !168, !noundef !4 ; 14 uses
  %.promoted26.i = load i8, ptr %i.di, align 8, !alias.scope !167, !noalias !168 ; 2 uses
  %i.dn = trunc nuw i8 %.promoted26.i to i1
  %i.do = icmp eq i64 %.promoted.i, 0
  br i1 %i.do, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.dm
  br i1 %.not.i.i.i.peel, label %bb.r, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.q
  %i.dp = icmp eq i64 %.promoted.i, %i.dm
  br i1 %i.dp, label %bb.s, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.promoted.i
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !169, !noalias !170, !noundef !4
  %i.ds = icmp sgt i8 %i.dr, -65
  br i1 %i.ds, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r, %.split.i.i.i.peel, %.lr.ph.i5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.promoted.i ; 4 uses
  %i.du = icmp samesign eq i64 %.promoted.i, %i.dm
  br i1 %i.du, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = load i8, ptr %i.dt, align 1, !noalias !171, !noundef !4 ; 5 uses
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %bb.u, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel: ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dy = and i8 %i.dv, 31
  %i.dz = zext nneg i8 %i.dy to i32               ; 3 uses
  %i.ea = add nuw nsw i64 %.promoted.i, 1
  %i.eb = icmp samesign ne i64 %i.ea, %i.dm
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = load i8, ptr %i.dx, align 1, !noalias !171, !noundef !4
  %i.ed = shl nuw nsw i32 %i.dz, 6
  %i.ee = and i8 %i.ec, 63
  %i.ef = zext nneg i8 %i.ee to i32               ; 2 uses
  %i.eg = or disjoint i32 %i.ed, %i.ef
  %i.eh = icmp samesign ugt i8 %i.dv, -33
  br i1 %i.eh, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel, label %bb.v

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.ej = add nuw nsw i64 %.promoted.i, 2
  %i.ek = icmp samesign ne i64 %i.ej, %i.dm
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = load i8, ptr %i.ei, align 1, !noalias !171, !noundef !4
  %i.em = shl nuw nsw i32 %i.ef, 6
  %i.en = and i8 %i.el, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = or disjoint i32 %i.em, %i.eo            ; 2 uses
  %i.eq = shl nuw nsw i32 %i.dz, 12
  %i.er = or disjoint i32 %i.ep, %i.eq
  %i.es = icmp samesign ugt i8 %i.dv, -17
  br i1 %i.es, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel, label %bb.v

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel
  %i.et = getelementptr inbounds nuw i8, ptr %i.dt, i64 3
  %i.eu = add nuw nsw i64 %.promoted.i, 3
  %i.ev = icmp samesign ne i64 %i.eu, %i.dm
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = load i8, ptr %i.et, align 1, !noalias !171, !noundef !4
  %i.ex = shl nuw nsw i32 %i.dz, 18
  %i.ey = and i32 %i.ex, 1835008
  %i.ez = shl nuw nsw i32 %i.ep, 6
  %i.fa = and i8 %i.ew, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb
  %i.fd = or disjoint i32 %i.fc, %i.ey
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fe = zext nneg i8 %i.dv to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.er, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel ], [ %i.fd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel ], [ %i.eg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel ], [ %i.fe, %bb.u ] ; 4 uses
  %i.ff = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.ff)
  br i1 %i.dn, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.fg, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.fh, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.fi, i64 3, i64 4
  br label %bb.aa

bb.z:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !164, !noalias !165, !noundef !4 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, -1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !164, !noalias !165, !nonnull !4, !noundef !4 ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !164, !noalias !165, !noundef !4 ; 14 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !164, !noalias !165, !nonnull !4, !noundef !4 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !164, !noalias !165, !noundef !4 ; 12 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.fv = add nsw i64 %i.ft, -1                   ; 4 uses
  br i1 %i.fl, label %bb.af, label %bb.ar

bb.aa:                                            ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.x ], [ %..i.i.peel, %bb.y ], [ 1, %bb.w ]
  %i.fw = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i = icmp ult i64 %i.fw, %i.dm
  br i1 %.not.i.i.i, label %bb.ac, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ab
  %i.fy = icmp eq i64 %i.fw, %i.dm
  br i1 %i.fy, label %bb.ad, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fw
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !169, !noalias !173, !noundef !4
  %i.gb = icmp sgt i8 %i.ga, -65
  br i1 %i.gb, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac, %.split.i.i.i, %bb.aa
  %i.gc = icmp samesign eq i64 %i.fw, %i.dm
  br i1 %i.gc, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fw
  %i.ge = load i8, ptr %i.gd, align 1, !noalias !174, !noundef !4 ; 3 uses
  %i.gf = icmp sgt i8 %i.ge, -1
  br i1 %i.gf, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i: ; preds = %bb.ae
  %i.gg = add nuw nsw i64 %i.fw, 1
  %i.gh = icmp samesign ne i64 %i.gg, %i.dm
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp samesign ugt i8 %i.ge, -33
  br i1 %i.gi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i
  %i.gj = add nuw nsw i64 %i.fw, 2
  %i.gk = icmp samesign ne i64 %i.gj, %i.dm
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = icmp samesign ugt i8 %i.ge, -17
  br i1 %i.gl, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i
  %i.gm = add nuw nsw i64 %i.fw, 3
  %i.gn = icmp samesign ne i64 %i.gm, %i.dm
  tail call void @llvm.assume(i1 %i.gn)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ac, %.split.i.i.i, %bb.r, %.split.i.i.i.peel
  %.lcssa144 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.r ], [ %i.fw, %.split.i.i.i ], [ %i.fw, %bb.ac ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dm, i64 noundef %.lcssa144, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #20, !noalias !173
  unreachable

bb.af:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %.promoted.i11 = load i64, ptr %i.fu, align 8, !alias.scope !175, !noalias !178 ; 2 uses
  %i.go = add i64 %.promoted.i11, %i.fv           ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.fp
  br i1 %i.gp, label %.lr.ph.i14, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.af
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt
declare noundef zeroext i1 @_RNvXs2_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 -1, i64 -9223372036854775808}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i64 0, i64 -9223372036854775805}
!8 = distinct !{!8, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameECs9h7Hq22ZyhR_15influxdb3_types"}
!9 = distinct !{!9, !8, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!10 = distinct !{!10, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs9h7Hq22ZyhR_15influxdb3_types"}
!11 = distinct !{!11, !10, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!12 = !{!11, !9}
!13 = distinct !{!13, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq"}
!14 = distinct !{!14, !13, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq: argument 0"}
!15 = distinct !{!15, !13, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq: argument 1"}
!16 = !{!14}
!17 = !{!15}
!18 = !{!14, !15}
!19 = distinct !{!19, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8"}
!20 = distinct !{!20, !19, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 0"}
!21 = distinct !{!21, !19, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String9from_utf8: argument 1"}
!22 = !{i64 0, i64 -9223372036854775807}
!23 = !{!20}
!24 = !{!21}
!25 = !{!20, !21}
!26 = distinct !{!26, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types"}
!27 = distinct !{!27, !26, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!28 = distinct !{!28, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types"}
!29 = distinct !{!29, !28, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!30 = distinct !{!30, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types"}
!31 = distinct !{!31, !30, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!32 = distinct !{!32, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types"}
!33 = distinct !{!33, !32, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!34 = distinct !{!34, !"_RNvXs19_NtCscdodAO9FK5_5alloc4syncINtB6_3ArceEINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtB8_6string6StringE4from"}
!35 = distinct !{!35, !34, !"_RNvXs19_NtCscdodAO9FK5_5alloc4syncINtB6_3ArceEINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtB8_6string6StringE4from: argument 0"}
!36 = distinct !{!36, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types"}
!37 = distinct !{!37, !36, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!38 = distinct !{!38, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types"}
!39 = distinct !{!39, !38, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!40 = distinct !{!40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types"}
!41 = distinct !{!41, !40, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!42 = distinct !{!42, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types"}
!43 = distinct !{!43, !42, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!44 = distinct !{!44, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types"}
!45 = distinct !{!45, !44, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!46 = distinct !{!46, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types"}
!47 = distinct !{!47, !46, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!48 = distinct !{!48, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types"}
!49 = distinct !{!49, !48, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!50 = distinct !{!50, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types"}
!51 = distinct !{!51, !50, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!52 = distinct !{!52, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs9h7Hq22ZyhR_15influxdb3_types"}
!53 = distinct !{!53, !52, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!54 = distinct !{!54, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types"}
!55 = distinct !{!55, !54, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!56 = distinct !{!56, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs9h7Hq22ZyhR_15influxdb3_types"}
!57 = distinct !{!57, !56, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!58 = distinct !{!58, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types"}
!59 = distinct !{!59, !58, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!60 = distinct !{!60, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs9h7Hq22ZyhR_15influxdb3_types"}
!61 = distinct !{!61, !60, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!62 = distinct !{!62, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types"}
!63 = distinct !{!63, !62, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsaXLCtUcOqO5_15influxdb3_authz9TokenInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!64 = !{!27}
!65 = !{!29}
!66 = !{!29, !27}
!67 = !{!31}
!68 = !{!33}
!69 = !{!33, !31}
!70 = !{!35}
!71 = !{!37}
!72 = !{!39}
!73 = !{!39, !37}
!74 = !{!43, !41}
!75 = !{!45}
!76 = !{!47}
!77 = !{!47, !45}
!78 = !{!49}
!79 = !{!51}
!80 = !{!51, !49}
!81 = !{!53}
!82 = !{!55}
!83 = !{!55, !53}
!84 = !{!57}
!85 = !{!59}
!86 = !{!59, !57}
!87 = !{!61}
!88 = !{!63}
!89 = !{!63, !61}
!90 = distinct !{!90, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameNtB5_12SpecToString14spec_to_stringCs9h7Hq22ZyhR_15influxdb3_types"}
!91 = distinct !{!91, !90, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameNtB5_12SpecToString14spec_to_stringCs9h7Hq22ZyhR_15influxdb3_types: argument 1"}
!92 = distinct !{!92, !90, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameNtB5_12SpecToString14spec_to_stringCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!93 = distinct !{!93, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsECs9h7Hq22ZyhR_15influxdb3_types"}
!94 = distinct !{!94, !93, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCscooQ3B8uchQ_8iox_http5write6params11WriteParamsECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!95 = distinct !{!95, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameECs9h7Hq22ZyhR_15influxdb3_types"}
!96 = distinct !{!96, !95, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsIdnmPPg5ba_10data_types14namespace_name13NamespaceNameECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!97 = distinct !{!97, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs9h7Hq22ZyhR_15influxdb3_types"}
!98 = distinct !{!98, !97, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!99 = !{!92, !91}
!100 = !{!92}
!101 = !{!91}
!102 = !{i8 0, i8 4}
!103 = !{!98, !96, !94}
!104 = distinct !{!104, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!105 = distinct !{!105, !104, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!106 = !{!105}
!107 = distinct !{!107, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!108 = distinct !{!108, !107, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!109 = distinct !{!109, !107, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!110 = distinct !{!110, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs9h7Hq22ZyhR_15influxdb3_types"}
!111 = distinct !{!111, !110, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!112 = !{!108}
!113 = !{!111, !109}
!114 = !{i64 8}
!115 = distinct !{!115, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains"}
!116 = distinct !{!116, !115, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains: argument 0"}
!117 = distinct !{!117, !115, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains: argument 1"}
!118 = distinct !{!118, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs9h7Hq22ZyhR_15influxdb3_types"}
!119 = distinct !{!119, !118, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs9h7Hq22ZyhR_15influxdb3_types: argument 1"}
!120 = distinct !{!120, !118, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!121 = distinct !{!121, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types"}
!122 = distinct !{!122, !121, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!123 = distinct !{!123, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains0Cs9h7Hq22ZyhR_15influxdb3_types"}
!124 = distinct !{!124, !123, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains0Cs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!125 = distinct !{!125, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9h7Hq22ZyhR_15influxdb3_types"}
!126 = distinct !{!126, !125, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9h7Hq22ZyhR_15influxdb3_types: argument 1"}
!127 = distinct !{!127, !125, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!128 = distinct !{!128, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0Cs9h7Hq22ZyhR_15influxdb3_types"}
!129 = distinct !{!129, !128, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0Cs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!130 = distinct !{!130, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0Cs9h7Hq22ZyhR_15influxdb3_types"}
!131 = distinct !{!131, !130, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0Cs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!132 = distinct !{!132, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0Cs9h7Hq22ZyhR_15influxdb3_types"}
!133 = distinct !{!133, !132, !"_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss1_0Cs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!134 = distinct !{!134, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!135 = distinct !{!135, !134, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!136 = distinct !{!136, !134, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!137 = distinct !{!137, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!138 = distinct !{!138, !137, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!139 = distinct !{!139, !137, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!140 = distinct !{!140, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!141 = distinct !{!141, !140, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!142 = distinct !{!142, !137, !"_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!143 = distinct !{!143, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9h7Hq22ZyhR_15influxdb3_types"}
!144 = distinct !{!144, !143, !"_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!145 = distinct !{!145, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types"}
!146 = distinct !{!146, !145, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types: argument 1"}
!147 = distinct !{!147, !145, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types: argument 2"}
!148 = distinct !{!148, !145, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types: argument 3"}
!149 = distinct !{!149, !145, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!150 = distinct !{!150, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types"}
!151 = distinct !{!151, !150, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types: argument 1"}
!152 = distinct !{!152, !150, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types: argument 2"}
!153 = distinct !{!153, !150, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types: argument 3"}
!154 = distinct !{!154, !150, !"_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9h7Hq22ZyhR_15influxdb3_types: argument 0"}
!155 = !{!116}
!156 = !{!117}
!157 = !{!124, !122, !120, !119, !117}
!158 = !{!124, !122, !120, !119, !116, !117}
!159 = !{!116, !117}
!160 = !{!127, !126}
!161 = !{!129, !116}
!162 = !{!131, !116}
!163 = !{!133, !116}
!164 = !{!135}
!165 = !{!136}
!166 = !{i8 0, i8 2}
!167 = !{!138, !135}
!168 = !{!139, !136}
!169 = !{!141}
!170 = !{!139, !142, !136, !135}
!171 = !{!144, !139, !142, !136, !135}
!172 = !{!138}
!173 = !{!139, !138, !136, !135}
!174 = !{!144, !139, !138, !136, !135}
!175 = !{!146}
!176 = !{!147}
!177 = !{!148}
!178 = !{!149, !147, !148}
!179 = !{!149, !146, !148}
!180 = !{!149, !146, !147, !148}
!181 = !{!149, !146, !147}
!182 = !{!151}
!183 = !{!152}
!184 = !{!153}
!185 = !{!154, !152, !153}
!186 = !{!154, !151, !153}
!187 = !{!154, !151, !152, !153}
!188 = !{!154, !151, !152}
end_hunk_1
