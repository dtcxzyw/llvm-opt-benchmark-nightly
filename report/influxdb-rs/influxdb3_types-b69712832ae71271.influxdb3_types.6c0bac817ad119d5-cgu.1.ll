Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_types-b69712832ae71271.influxdb3_types.6c0bac817ad119d5-cgu.1?download=true
inline.NumInlined: 95
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char:bb.a
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !103, !nonnull !9, !noundef !9
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
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !103
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !106
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !109, !noalias !106, !noundef !9 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !109, !noalias !106, !nonnull !9, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !109, !noalias !106
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !109, !noalias !106
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsb_NtCs9h7Hq22ZyhR_15influxdb3_types4httpNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !113, !noundef !9 ; 3 uses
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
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !9, !nonnull !9
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
  %i.e = load i64, ptr %0, align 8, !range !113, !noundef !9 ; 3 uses
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
  %i.k = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !9, !align !114, !noundef !9
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
  %i.o = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !align !114, !noundef !9
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
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.js, %bb.be ], [ %.sroa.0.025, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.o ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3
  br i1 %i.e, label %bb.be, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.f = load i8, ptr %0, align 1, !alias.scope !115, !noalias !118, !noundef !9 ; 2 uses
  %i.g = add nsw i64 %1, -1                       ; 2 uses
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 10) %1, i64 4)
  br label %.lr.ph

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i
  %i.i = icmp ult i64 %i.h, %i.k
  br i1 %i.i, label %.lr.ph, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %1, %bb.c ], [ %i.k, %bb.d ]
  %i.k = add nsw i64 %i.j, -1                     ; 11 uses
  %i.l = icmp ult i64 %i.k, %1
  br i1 %i.l, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef range(i64 3, 10) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20, !noalias !120
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i: ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !115, !noalias !128, !noundef !9 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.n, %i.f
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.f

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.i.i
  %i.o = add nuw nsw i64 %1, 15                   ; 3 uses
  %i.p = icmp ult i64 %3, %i.o
  br i1 %i.p, label %.lr.ph.split.us.i.i, label %bb.g

.lr.ph.split.us.i.i:                              ; preds = %bb.f
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 10) %1), !alias.scope !129, !noalias !130
  %i.q = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.q, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.r = add nsw i64 %3, -1                       ; 2 uses
  %.not28.i.i275 = icmp ugt i64 %1, %i.r
  br i1 %.not28.i.i275, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i
  %i.s = phi i64 [ %i.v, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i ], [ %i.r, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader ]
  %.pn.i276 = phi ptr [ %i.t, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i276, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.t, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 10) %1), !alias.scope !129, !noalias !130
  %i.u = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.u, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs9h7Hq22ZyhR_15influxdb3_types.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.v = add nsw i64 %i.s, -1                     ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.v
  br i1 %.not28.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  store ptr %2, ptr %i.a, align 8, !noalias !129
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ab, align 8, !noalias !129
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aa, ptr %i.ac, align 8, !noalias !129
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.g, ptr %i.ad, align 8, !noalias !129
  %i.ae = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.g
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.g ], [ %.sroa.014.2.3.i, %bb.k ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.bz, %bb.k ] ; 2 uses
  %i.af = add i64 %.sroa.06.0.lcssa.i, %i.o
  %i.ag = icmp uge i64 %i.af, %3
  %i.ah = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.sroa.06.098.i = phi i64 [ %i.bz, %bb.k ], [ 0, %bb.g ] ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ai, align 1, !alias.scope !118, !noalias !134
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.k
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !118, !noalias !134
  %i.ak = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.x
  %i.al = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.z
  %i.am = and <16 x i1> %i.ak, %i.al
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !118, !noalias !134
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.k
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.ap, align 1, !alias.scope !118, !noalias !134
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.x
  %i.ar = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.z
  %i.as = and <16 x i1> %i.aq, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !118, !noalias !134
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.k
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.av, align 1, !alias.scope !118, !noalias !134
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.x
  %i.ax = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.z
  %i.ay = and <16 x i1> %i.aw, %i.ax
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !118, !noalias !134
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.k
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !118, !noalias !134
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.x
  %i.bd = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.z
  %i.be = and <16 x i1> %i.bc, %i.bd
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %i.bg = icmp eq i16 %i.an, 0
  br i1 %i.bg, label %.preheader91.1.i, label %bb.l

.preheader91.1.i:                                 ; preds = %bb.l, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.ce, %bb.l ] ; 3 uses
  %i.bh = icmp eq i16 %i.at, 0
  br i1 %i.bh, label %.preheader91.2.i, label %bb.h

bb.h:                                             ; preds = %.preheader91.1.i
  %i.bi = or disjoint i64 %.sroa.06.098.i, 16
  %i.bj = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bk = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bi, i16 noundef %i.at, i1 noundef zeroext %i.bj)
  %i.bl = zext i1 %i.bk to i8
  %i.bm = or i8 %.sroa.014.2.i, %i.bl
  br label %.preheader91.2.i

.preheader91.2.i:                                 ; preds = %bb.h, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.bm, %bb.h ] ; 3 uses
  %i.bn = icmp eq i16 %i.az, 0
  br i1 %i.bn, label %.preheader91.3.i, label %bb.i

bb.i:                                             ; preds = %.preheader91.2.i
  %i.bo = or disjoint i64 %.sroa.06.098.i, 32
  %i.bp = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bq = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bo, i16 noundef %i.az, i1 noundef zeroext %i.bp)
  %i.br = zext i1 %i.bq to i8
  %i.bs = or i8 %.sroa.014.2.1.i, %i.br
  br label %.preheader91.3.i

.preheader91.3.i:                                 ; preds = %bb.i, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.bs, %bb.i ] ; 3 uses
  %i.bt = icmp eq i16 %i.bf, 0
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader91.3.i
  %i.bu = or disjoint i64 %.sroa.06.098.i, 48
  %i.bv = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.bw = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bu, i16 noundef %i.bf, i1 noundef zeroext %i.bv)
  %i.bx = zext i1 %i.bw to i8
  %i.by = or i8 %.sroa.014.2.2.i, %i.bx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.by, %bb.j ] ; 2 uses
  %i.bz = add i64 %.sroa.06.098.i, 64             ; 3 uses
  %i.ca = add i64 %i.bz, %i.ae
  %i.cb = icmp uge i64 %i.ca, %3
  %i.cc = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.cd = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.an, i1 noundef zeroext false)
  %i.ce = zext i1 %i.cd to i8
  br label %.preheader91.1.i

._crit_edge.i:                                    ; preds = %bb.m, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.m ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ah, %.preheader.i ], [ %i.cy, %bb.m ]
  %i.cf = sub nuw i64 %3, %i.g
  %i.cg = add i64 %i.cf, -16                      ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.ch, align 1, !alias.scope !118, !noalias !137
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.k
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.ci, align 1, !alias.scope !118, !noalias !137
  %i.cj = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.x
  %i.ck = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.z
  %i.cl = and <16 x i1> %i.cj, %i.ck
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %i.cn = icmp eq i16 %i.cm, 0
  br i1 %i.cn, label %bb.o, label %bb.p

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.m
  %.sroa.06.1101.i = phi i64 [ %i.cv, %bb.m ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.co, align 1, !alias.scope !118, !noalias !140
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.k
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.cp, align 1, !alias.scope !118, !noalias !140
  %i.cq = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.x
  %i.cr = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.z
  %i.cs = and <16 x i1> %i.cq, %i.cr
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %i.cu = icmp eq i16 %i.ct, 0
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.da, %bb.n ] ; 2 uses
  %i.cv = add i64 %.sroa.06.1101.i, 16            ; 2 uses
  %i.cw = add i64 %i.cv, %i.o
  %i.cx = icmp uge i64 %i.cw, %3
  %i.cy = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.cx, %i.cy
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i

bb.n:                                             ; preds = %.lr.ph102.i
  %i.cz = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.ct, i1 noundef zeroext false)
  %i.da = zext i1 %i.cz to i8
  br label %bb.m

bb.o:                                             ; preds = %bb.p, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.dd, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.p:                                             ; preds = %._crit_edge.i
  %i.db = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0Cs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cg, i16 noundef %i.cm, i1 noundef zeroext %.lcssa.i)
  %i.dc = zext i1 %i.db to i8
  %i.dd = or i8 %.sroa.014.3.lcssa.i, %i.dc
  br label %bb.o

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.de = load i64, ptr %i.b, align 8, !range !16, !alias.scope !143, !noalias !146, !noundef !9
  %i.df = trunc nuw i64 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.df, label %bb.z, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.di = load i8, ptr %i.dh, align 2, !range !148, !alias.scope !149, !noalias !152, !noundef !9
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.dg, align 8, !alias.scope !143, !noalias !146 ; 12 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !149, !noalias !152, !nonnull !9, !noundef !9 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !149, !noalias !152, !noundef !9 ; 14 uses
  %.promoted26.i = load i8, ptr %i.dk, align 8, !alias.scope !149, !noalias !152 ; 2 uses
  %i.dp = trunc nuw i8 %.promoted26.i to i1
  %i.dq = icmp eq i64 %.promoted.i, 0
  br i1 %i.dq, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.do
  br i1 %.not.i.i.i.peel, label %bb.r, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.q
  %i.dr = icmp eq i64 %.promoted.i, %i.do
  br i1 %i.dr, label %bb.s, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.promoted.i
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !154, !noalias !157, !noundef !9
  %i.du = icmp sgt i8 %i.dt, -65
  br i1 %i.du, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r, %.split.i.i.i.peel, %.lr.ph.i5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.promoted.i ; 4 uses
  %i.dw = icmp samesign eq i64 %.promoted.i, %i.do
  br i1 %i.dw, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = load i8, ptr %i.dv, align 1, !noalias !159, !noundef !9 ; 5 uses
  %i.dy = icmp sgt i8 %i.dx, -1
  br i1 %i.dy, label %bb.u, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel: ; preds = %bb.t
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.ea = and i8 %i.dx, 31
  %i.eb = zext nneg i8 %i.ea to i32               ; 3 uses
  %i.ec = add nuw nsw i64 %.promoted.i, 1
  %i.ed = icmp samesign ne i64 %i.ec, %i.do
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = load i8, ptr %i.dz, align 1, !noalias !159, !noundef !9
  %i.ef = shl nuw nsw i32 %i.eb, 6
  %i.eg = and i8 %i.ee, 63
  %i.eh = zext nneg i8 %i.eg to i32               ; 2 uses
  %i.ei = or disjoint i32 %i.ef, %i.eh
  %i.ej = icmp samesign ugt i8 %i.dx, -33
  br i1 %i.ej, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel, label %bb.v

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.el = add nuw nsw i64 %.promoted.i, 2
  %i.em = icmp samesign ne i64 %i.el, %i.do
  tail call void @llvm.assume(i1 %i.em)
  %i.en = load i8, ptr %i.ek, align 1, !noalias !159, !noundef !9
  %i.eo = shl nuw nsw i32 %i.eh, 6
  %i.ep = and i8 %i.en, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.eo, %i.eq            ; 2 uses
  %i.es = shl nuw nsw i32 %i.eb, 12
  %i.et = or disjoint i32 %i.er, %i.es
  %i.eu = icmp samesign ugt i8 %i.dx, -17
  br i1 %i.eu, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel, label %bb.v

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.ew = add nuw nsw i64 %.promoted.i, 3
  %i.ex = icmp samesign ne i64 %i.ew, %i.do
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = load i8, ptr %i.ev, align 1, !noalias !159, !noundef !9
  %i.ez = shl nuw nsw i32 %i.eb, 18
  %i.fa = and i32 %i.ez, 1835008
  %i.fb = shl nuw nsw i32 %i.er, 6
  %i.fc = and i8 %i.ey, 63
  %i.fd = zext nneg i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fb, %i.fd
  %i.ff = or disjoint i32 %i.fe, %i.fa
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fg = zext nneg i8 %i.dx to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.et, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i.peel ], [ %i.ff, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i.peel ], [ %i.ei, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i.peel ], [ %i.fg, %bb.u ] ; 4 uses
  %i.fh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.fh)
  br i1 %i.dp, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.fi, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.fj, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.fk, i64 3, i64 4
  br label %bb.aa

bb.z:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !143, !noalias !146, !noundef !9 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !143, !noalias !146, !nonnull !9, !noundef !9 ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !143, !noalias !146, !noundef !9 ; 14 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !143, !noalias !146, !nonnull !9, !noundef !9 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !143, !noalias !146, !noundef !9 ; 12 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.fx = add nsw i64 %i.fv, -1                   ; 4 uses
  br i1 %i.fn, label %bb.af, label %bb.ar

bb.aa:                                            ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.x ], [ %..i.i.peel, %bb.y ], [ 1, %bb.w ]
  %i.fy = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i = icmp ult i64 %i.fy, %i.do
  br i1 %.not.i.i.i, label %bb.ac, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ab
  %i.ga = icmp eq i64 %i.fy, %i.do
  br i1 %i.ga, label %bb.ad, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.fy
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !154, !noalias !163, !noundef !9
  %i.gd = icmp sgt i8 %i.gc, -65
  br i1 %i.gd, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac, %.split.i.i.i, %bb.aa
  %i.ge = icmp samesign eq i64 %i.fy, %i.do
  br i1 %i.ge, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.fy
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !164, !noundef !9 ; 3 uses
  %i.gh = icmp sgt i8 %i.gg, -1
  br i1 %i.gh, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i: ; preds = %bb.ae
  %i.gi = add nuw nsw i64 %i.fy, 1
  %i.gj = icmp samesign ne i64 %i.gi, %i.do
  tail call void @llvm.assume(i1 %i.gj)
  %i.gk = icmp samesign ugt i8 %i.gg, -33
  br i1 %i.gk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i
  %i.gl = add nuw nsw i64 %i.fy, 2
  %i.gm = icmp samesign ne i64 %i.gl, %i.do
  tail call void @llvm.assume(i1 %i.gm)
  %i.gn = icmp samesign ugt i8 %i.gg, -17
  br i1 %i.gn, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i
  %i.go = add nuw nsw i64 %i.fy, 3
  %i.gp = icmp samesign ne i64 %i.go, %i.do
  tail call void @llvm.assume(i1 %i.gp)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ac, %.split.i.i.i, %bb.r, %.split.i.i.i.peel
  %.lcssa144 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.r ], [ %i.fy, %.split.i.i.i ], [ %i.fy, %bb.ac ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.do, i64 noundef %.lcssa144, i64 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #20, !noalias !163
  unreachable

bb.af:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %.promoted.i11 = load i64, ptr %i.fw, align 8, !alias.scope !165, !noalias !172 ; 2 uses
  %i.gq = add i64 %.promoted.i11, %i.fx           ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.fr
  br i1 %i.gr, label %.lr.ph.i14, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.af
end_hunk_0
