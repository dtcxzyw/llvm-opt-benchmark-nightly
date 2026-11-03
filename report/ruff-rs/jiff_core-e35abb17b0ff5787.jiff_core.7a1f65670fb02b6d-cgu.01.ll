Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/jiff_core-e35abb17b0ff5787.jiff_core.7a1f65670fb02b6d-cgu.01?download=true
inline.NumInlined: 202
inline.NumDeleted: 114
begin_hunk_0_@_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone16parse_indicators:bb.a

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %.lr.ph, label %bb.n

bb.h:                                             ; preds = %.lr.ph68
  %i.n = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %.not3.not.not.i.not = icmp eq ptr %i.n, %i.j
  br i1 %.not3.not.not.i.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB1I_14ParsedTimeZone16parse_indicators0EB1O_.exit, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.f, %bb.h
  %i.o = phi ptr [ %i.n, %bb.h ], [ %i.f, %bb.f ] ; 2 uses
  %.val.i = load i8, ptr %i.o, align 1, !noalias !144, !noundef !4
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %.lr.ph68
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 12, ptr %i.p, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB1I_14ParsedTimeZone16parse_indicators0EB1O_.exit: ; preds = %bb.l, %bb.h, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit.thread, %bb.f
  store ptr %i.j, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.q, align 8
  br label %bb.q

.lr.ph:                                           ; preds = %bb.g, %bb.l
  %.sroa.08.050 = phi ptr [ %i.r, %bb.l ], [ %1, %bb.g ] ; 2 uses
  %.sroa.8.049 = phi i64 [ %i.s, %bb.l ], [ 0, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.050, i64 1 ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.8.049, 1
  %i.t = load i8, ptr %.sroa.08.050, align 1, !noundef !4 ; 2 uses
  %switch = icmp ult i8 %i.t, 2
  br i1 %switch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %exitcond58.not = icmp eq i64 %.sroa.8.049, %.128.val
  br i1 %exitcond58.not, label %bb.m, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.u, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.120.val) ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.120.val, i64 %.sroa.8.049
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  store i8 %i.t, ptr %i.w, align 1
  %i.x = icmp eq ptr %i.r, %i.f
  br i1 %i.x, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB1I_14ParsedTimeZone16parse_indicators0EB1O_.exit, label %.lr.ph

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.128.val, i64 noundef %.128.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19
  unreachable

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.16.val, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.8.val, ptr %i.b, align 8
  %i.y = icmp eq i64 %.16.val, %.8.val
  br i1 %i.y, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #19
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %.16.val
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsau3t54nuvpx_9jiff_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.z)
  %.sroa.021.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.021.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.021.sroa.3.0.copyload = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.021.sroa.5.0.copyload = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.021.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.021.sroa.6.0.copyload = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.aa = icmp ult i64 %.sroa.021.sroa.5.0.copyload, %.sroa.021.sroa.6.0.copyload
  br i1 %i.aa, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit.lr.ph, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit.lr.ph: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload), "nonnull"(ptr %.sroa.021.sroa.3.0.copyload) ]
  %i.ab = sub nuw i64 %.sroa.021.sroa.6.0.copyload, %.sroa.021.sroa.5.0.copyload
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit.lr.ph, %bb.v
  %.sroa.614.048 = phi i64 [ %.sroa.021.sroa.5.0.copyload, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit.lr.ph ], [ %i.ac, %bb.v ] ; 3 uses
  %.sroa.916.047 = phi i64 [ 0, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit.lr.ph ], [ %i.ad, %bb.v ] ; 3 uses
  %i.ac = add nuw i64 %.sroa.614.048, 1
  %i.ad = add i64 %.sroa.916.047, 1               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.0.0.copyload, i64 %.sroa.614.048
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.021.sroa.3.0.copyload, i64 %.sroa.614.048
  %i.ag = load i8, ptr %i.ae, align 1, !noundef !4
  %i.ah = load i8, ptr %i.af, align 1, !noundef !4 ; 3 uses
  switch i8 %i.ag, label %.loopexit [
    i8 0, label %bb.r
    i8 1, label %bb.s
  ]

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit.thread: ; preds = %bb.v, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB1I_14ParsedTimeZone16parse_indicators0EB1O_.exit

bb.q:                                             ; preds = %bb.d, %bb.i, %.loopexit, %bb.k, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB1I_14ParsedTimeZone16parse_indicators0EB1O_.exit, %bb.b
  ret void

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit
  switch i8 %i.ah, label %.loopexit [
    i8 0, label %bb.t
    i8 1, label %.loopexit70
  ]

bb.s:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit
  switch i8 %i.ah, label %.loopexit [
    i8 0, label %bb.t
    i8 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.u
  %.sroa.023.0 = phi i8 [ 2, %bb.u ], [ %i.ah, %bb.r ], [ 1, %bb.s ]
  %exitcond.not = icmp eq i64 %.sroa.916.047, %.128.val
  br i1 %exitcond.not, label %bb.w, label %bb.v

.loopexit70:                                      ; preds = %bb.r
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit, %bb.r, %bb.s, %.loopexit70
  %.sink = phi i8 [ 10, %.loopexit70 ], [ 8, %bb.s ], [ 8, %bb.r ], [ 8, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.ai, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.u:                                             ; preds = %bb.s
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.120.val) ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.120.val, i64 %.sroa.916.047
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 5
  store i8 %.sroa.023.0, ptr %i.ak, align 1
  %exitcond57.not = icmp eq i64 %i.ad, %i.ab
  br i1 %exitcond57.not, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit.thread, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterhEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCsau3t54nuvpx_9jiff_core.exit

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.128.val, i64 noundef %.128.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone17parse_transitions(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(232) %1, i64 %.0.val, i64 %.32.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.32.val, i64 %.0.val) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i1 } %i.b, 0         ; 5 uses
  %i.e = icmp ugt i64 %i.d, %3
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 513, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1287, ptr %i.g, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  %i.i = sub nuw nsw i64 %3, %i.d
  %i.j = icmp eq i64 %.0.val, 0
  br i1 %i.j, label %bb.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19, !noalias !154
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit: ; preds = %bb.e
  %i.k = urem i64 %i.d, %.0.val                   ; 2 uses
  %i.l = sub nuw nsw i64 %i.d, %i.k               ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  tail call fastcc void @_RNvMs0_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB5_17ParsedTransitions19add_with_type_index(ptr noalias noundef align 8 dereferenceable(96) %i.m, i64 noundef -377705023201, i8 noundef 0)
  %.not8 = icmp ugt i64 %.0.val, %i.l
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit
  switch i64 %.0.val, label %.lr.ph.split.split [
    i64 4, label %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i32.exit.us
    i64 8, label %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i64.exit.us
  ]

_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i32.exit.us: ; preds = %.lr.ph, %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i32.exit.us
  %.sroa.02.010.us = phi ptr [ %i.n, %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i32.exit.us ], [ %2, %.lr.ph ] ; 2 uses
  %.sroa.5.09.us = phi i64 [ %i.o, %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i32.exit.us ], [ %i.l, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.010.us, i64 4
  %i.o = add nsw i64 %.sroa.5.09.us, -4           ; 2 uses
  %.sroa.02.0.copyload.i.us = load i32, ptr %.sroa.02.010.us, align 1, !alias.scope !155
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.us)
  %i.q = sext i32 %i.p to i64
  tail call fastcc void @_RNvMs0_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB5_17ParsedTransitions19add_with_type_index(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.m, i64 noundef range(i64 -377705023201, 253402207201) %i.q, i8 noundef 0)
  %.not.us = icmp ult i64 %i.o, 4
  br i1 %.not.us, label %._crit_edge, label %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i32.exit.us

_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i64.exit.us: ; preds = %.lr.ph, %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i64.exit.us
  %.sroa.02.010.us11 = phi ptr [ %i.r, %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i64.exit.us ], [ %2, %.lr.ph ] ; 2 uses
  %.sroa.5.09.us12 = phi i64 [ %i.s, %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i64.exit.us ], [ %i.l, %.lr.ph ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.010.us11, i64 8
  %i.s = add nsw i64 %.sroa.5.09.us12, -8         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %.sroa.01.0.copyload.i.us = load i64, ptr %.sroa.02.010.us11, align 1, !alias.scope !156
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.01.0.copyload.i.us)
  %i.u = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -377705023201)
  %i.v = tail call i64 @llvm.smin.i64(i64 %i.u, i64 253402207200)
  tail call fastcc void @_RNvMs0_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB5_17ParsedTransitions19add_with_type_index(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.m, i64 noundef range(i64 -377705023201, 253402207201) %i.v, i8 noundef 0)
  %.not.us13 = icmp ult i64 %i.s, 8
  br i1 %.not.us13, label %._crit_edge, label %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i64.exit.us

._crit_edge:                                      ; preds = %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i64.exit.us, %_RNvNtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parser17from_be_bytes_i32.exit.us, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh12chunks_exactCsau3t54nuvpx_9jiff_core.exit
  %4 = icmp eq i64 %i.k, 0
  br i1 %4, label %bb.g, label %bb.h, !prof !8

.lr.ph.split.split:                               ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #19, !noalias !157
  unreachable

bb.g:                                             ; preds = %._crit_edge
  store ptr %i.h, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.w, align 8
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i1, i8 } @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone26find_or_create_designation(ptr noalias noundef nonnull align 8 dereferenceable(232) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca i48, align 8                ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 9 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.thread.i
  %.sroa.02.010.i = phi i64 [ %i.x, %_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.thread.i ], [ 0, %bb.a ] ; 4 uses
  %i.g = phi ptr [ %i.h, %_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.thread.i ], [ %i.b, %bb.a ] ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i8, ptr %i.g, align 8, !range !6, !alias.scope !178, !noalias !179, !noundef !4
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !178, !noalias !179, !noundef !4
  %i.m = zext i8 %i.l to i64
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !178, !noalias !179, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !178, !noalias !179, !noundef !4
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !178, !noalias !179, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !178, !noalias !179, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.4.0.i.i.i = phi i64 [ %i.m, %bb.b ], [ %i.q, %bb.c ], [ %i.u, %bb.d ]
  %.sroa.01.0.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ], [ %i.s, %bb.d ]
  %i.v = icmp eq i64 %.sroa.4.0.i.i.i, %2
  br i1 %i.v, label %_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.i, label %_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.thread.i

_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.i: ; preds = %bb.e
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i, ptr nonnull readonly %1, i64 %2), !noalias !179
  %i.w = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.w, label %bb.f, label %_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.thread.i

_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.thread.i: ; preds = %_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.i, %bb.e
  %i.x = add nuw nsw i64 %.sroa.02.010.i, 1
  %i.y = icmp eq ptr %i.h, %i.e
  br i1 %i.y, label %.loopexit, label %.lr.ph.i

bb.f:                                             ; preds = %_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.i
  %i.z = icmp ult i64 %.sroa.02.010.i, %i.d
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp samesign ult i64 %.sroa.02.010.i, 256 ; 2 uses
  %i.ab = trunc nuw i64 %.sroa.02.010.i to i8
  %.sroa.5.0 = select i1 %i.aa, i8 %i.ab, i8 undef
  br label %bb.g

.loopexit:                                        ; preds = %_RNCNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB6_14ParsedTimeZone26find_or_create_designation0Bc_.exit.thread.i
  %i.ac = icmp ult i64 %i.d, 384307168202282326
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ugt i64 %i.d, 255
  br i1 %i.ad, label %bb.g, label %.loopexit.thread

bb.g:                                             ; preds = %.loopexit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit, %bb.f
  %.sroa.5.1 = phi i8 [ %.sroa.5.0, %bb.f ], [ %i.ag, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit ], [ undef, %.loopexit ]
  %.sroa.0.1 = phi i1 [ %i.aa, %bb.f ], [ true, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit ], [ false, %.loopexit ]
  %i.ae = insertvalue { i1, i8 } poison, i1 %.sroa.0.1, 0
  %i.af = insertvalue { i1, i8 } %i.ae, i8 %.sroa.5.1, 1
  ret { i1, i8 } %i.af

.loopexit.thread:                                 ; preds = %bb.a, %.loopexit
  %i.ag = trunc nuw i64 %i.d to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.ah = icmp ult i64 %2, 7                      ; 2 uses
  br i1 %i.ah, label %bb.h, label %.thread

.thread:                                          ; preds = %.loopexit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !180
  %i.ai = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %2, i64 noundef 1) #16, !noalias !180 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %_RNCNvMs2_NtCsau3t54nuvpx_9jiff_core4utilINtB7_8SmallStrKj6_E11new_or_heap0B9_.exit

bb.h:                                             ; preds = %.loopexit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.0.i, i8 0, i64 6, i1 false), !noalias !181
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread29, label %_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit

_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.05.sroa.0.0.copyload.pre.i = load i48, ptr %.sroa.0.i, align 8, !noalias !181
  %i.ak = zext i48 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.05.sroa.0.0.copyload.pre.i to i64
  %i.al = shl nuw nsw i64 %2, 48
  %i.am = or disjoint i64 %i.al, %i.ak
  br label %_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread29

_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread29: ; preds = %bb.h, %_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit
  %.sroa.416.0.extract.shift = phi i64 [ %i.am, %_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.sroa.416.0.extract.trunc = trunc nuw nsw i64 %.sroa.416.0.extract.shift to i56
  br label %bb.j

bb.i:                                             ; preds = %.thread
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %2) #19, !noalias !182
  unreachable

_RNCNvMs2_NtCsau3t54nuvpx_9jiff_core4utilINtB7_8SmallStrKj6_E11new_or_heap0B9_.exit: ; preds = %.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !182
  br label %bb.j

bb.j:                                             ; preds = %_RNCNvMs2_NtCsau3t54nuvpx_9jiff_core4utilINtB7_8SmallStrKj6_E11new_or_heap0B9_.exit, %_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread29
  %.sroa.423.0 = phi i56 [ %.sroa.416.0.extract.trunc, %_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread29 ], [ undef, %_RNCNvMs2_NtCsau3t54nuvpx_9jiff_core4utilINtB7_8SmallStrKj6_E11new_or_heap0B9_.exit ]
  %.sroa.022.0 = phi i8 [ 0, %_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread29 ], [ 2, %_RNCNvMs2_NtCsau3t54nuvpx_9jiff_core4utilINtB7_8SmallStrKj6_E11new_or_heap0B9_.exit ]
  %.sroa.5.025 = phi ptr [ undef, %_RNvMsg_NtCsau3t54nuvpx_9jiff_core4utilINtB5_8ArrayStrKj6_E3newB7_.exit.thread29 ], [ %i.ai, %_RNCNvMs2_NtCsau3t54nuvpx_9jiff_core4utilINtB7_8SmallStrKj6_E11new_or_heap0B9_.exit ] ; 3 uses
  %i.an = load i64, ptr %0, align 8, !range !7, !alias.scope !183, !noundef !4
  %i.ao = icmp eq i64 %i.d, %i.an
  br i1 %i.ao, label %bb.k, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit_crit_edge unwind label %bb.l, !noalias !184

._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit_crit_edge: ; preds = %bb.k
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !183
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EEBG_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.025) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.025, i64 noundef range(i64 1, 0) %2, i64 noundef 1) #16, !noalias !185
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EEBG_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EEBG_.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.ap

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit: ; preds = %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit_crit_edge, %bb.j
  %i.aq = phi ptr [ %.pre, %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsau3t54nuvpx_9jiff_core4util8SmallStrKj6_EE8push_mutBJ_.exit_crit_edge ], [ %i.b, %bb.j ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.d ; 4 uses
  store i8 %.sroa.022.0, ptr %i.ar, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i56 %.sroa.423.0, ptr %.sroa.423.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.5.025, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %2, ptr %.sroa.724.0..sroa_idx, align 8
  %i.as = add nuw nsw i64 %i.d, 1
  store i64 %i.as, ptr %i.c, align 8, !alias.scope !183
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCsau3t54nuvpx_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone28parse_time_zone_designations(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(232) %1, i64 %.48.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.10.sroa.0 = alloca [7 x i8], align 1     ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 15 uses
  %i.f = icmp ugt i64 %.48.val, %3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.g, align 8
  store ptr null, ptr %0, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.48.val
  %i.i = sub nuw nsw i64 %3, %.48.val
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsau3t54nuvpx_9jiff_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.48.val, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.j = load i64, ptr %i.c, align 8, !range !5, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_0
