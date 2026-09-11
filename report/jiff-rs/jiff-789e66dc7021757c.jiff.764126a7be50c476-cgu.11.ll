Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.11?download=true
inline.NumInlined: 215
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone22to_ambiguous_timestamp:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.021.0.copyload = load i32, ptr %i.t, align 4
  %.sroa.023.0.copyload = load i64, ptr %1, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sroa.021.0.copyload, ptr %i.u, align 8
  store i64 %.sroa.023.0.copyload, ptr %i.c, align 8
  call void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone22to_ambiguous_timestamp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.s, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.05.0.copyload = load i32, ptr %i.d, align 4 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.46.0.copyload = load i32, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.79.0.copyload = load i32, ptr %.sroa.79.0..sroa_idx, align 4
  %i.v = icmp eq i32 %.sroa.05.0.copyload, 0
  %..sroa.79.0.copyload = select i1 %i.v, i32 undef, i32 %.sroa.79.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMs1_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %.0.val, i64 -5    ; 3 uses
  %i.x = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.w)
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.025.0.copyload = load i32, ptr %i.ab, align 4
  %.sroa.027.0.copyload = load i64, ptr %1, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sroa.025.0.copyload, ptr %i.ac, align 8
  store i64 %.sroa.027.0.copyload, ptr %i.a, align 8
  call void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone22to_ambiguous_timestamp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.aa, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.011.0.copyload = load i32, ptr %i.b, align 4 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.412.0.copyload = load i32, ptr %.sroa.412.0..sroa_idx, align 4
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.715.0.copyload = load i32, ptr %.sroa.715.0..sroa_idx, align 4
  %i.ad = icmp eq i32 %.sroa.011.0.copyload, 0
  %..sroa.715.0.copyload = select i1 %i.ad, i32 undef, i32 %.sroa.715.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs1_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit

_RNvMs1_NtNtCsa9sSWSfjDbm_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit: ; preds = %bb.c, %bb.a, %bb.a, %bb.g, %bb.f, %bb.e
  %.sroa.25.0 = phi i32 [ %..sroa.715.0.copyload, %bb.g ], [ undef, %bb.a ], [ undef, %bb.a ], [ %..sroa.7.0.copyload, %bb.e ], [ %..sroa.79.0.copyload, %bb.f ], [ undef, %bb.c ]
  %.sroa.13.0 = phi i32 [ %.sroa.412.0.copyload, %bb.g ], [ 0, %bb.a ], [ 0, %bb.a ], [ %.sroa.4.0.copyload, %bb.e ], [ %.sroa.46.0.copyload, %bb.f ], [ %i.j, %bb.c ]
  %.sroa.0.0 = phi i32 [ %.sroa.011.0.copyload, %bb.g ], [ 0, %bb.a ], [ 0, %bb.a ], [ %.sroa.01.0.copyload, %bb.e ], [ %.sroa.05.0.copyload, %bb.f ], [ 0, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  store i32 %.sroa.0.0, ptr %0, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.25.0, ptr %.sroa.25.0..sroa_idx, align 4
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtB2_14DateTimeParser12skip_comment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 1)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.f, label %bb.e, !prof !10

bb.d:                                             ; preds = %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit, %._crit_edge.thread, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %2, i64 %3         ; 2 uses
  %i.e = icmp eq i64 %3, 1
  br i1 %i.e, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = add nsw i64 %3, -1
  br label %.lr.ph

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.0.0126 = phi ptr [ %i.h, %bb.o ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.11.0125 = phi i64 [ %i.k, %bb.o ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.0124 = phi i1 [ %.sroa.015.1, %bb.o ], [ false, %.lr.ph.preheader ]
  %.sroa.062.0122 = phi i8 [ %.sroa.062.2, %bb.o ], [ 1, %.lr.ph.preheader ] ; 7 uses
  %i.h = getelementptr i8, ptr %.sroa.0.0126, i64 1 ; 4 uses
  %i.i = load i8, ptr %.sroa.0.0126, align 1, !noundef !4
  %i.j = icmp eq i64 %.sroa.11.0125, 0
  br i1 %i.j, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %.lr.ph
  %i.k = add nsw i64 %.sroa.11.0125, -1           ; 3 uses
  br i1 %.sroa.015.0124, label %bb.o, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  switch i8 %i.i, label %bb.o [
    i8 92, label %bb.j
    i8 41, label %bb.k
    i8 40, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.l = icmp eq i8 %.sroa.062.0122, 0
  br i1 %i.l, label %._crit_edge.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = add i8 %.sroa.062.0122, -1               ; 2 uses
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.o

._crit_edge:                                      ; preds = %bb.o
  %i.o = icmp eq i8 %.sroa.062.2, 0
  br i1 %i.o, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit, label %._crit_edge.thread

bb.m:                                             ; preds = %bb.i
  %i.p = icmp eq i8 %.sroa.062.0122, -1
  br i1 %i.p, label %._crit_edge.thread, label %bb.n, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.q = add nuw i8 %.sroa.062.0122, 1
  br label %bb.o

._crit_edge.thread:                               ; preds = %bb.m, %bb.k, %._crit_edge, %bb.e
  %.sink164 = phi i24 [ 1, %._crit_edge ], [ 1, %bb.e ], [ 0, %bb.k ], [ 2, %bb.m ]
  %i.r = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i24 %.sink164) #24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.o:                                             ; preds = %bb.g, %bb.n, %bb.i, %bb.l, %bb.j
  %.sroa.062.2 = phi i8 [ %i.q, %bb.n ], [ %.sroa.062.0122, %bb.i ], [ %.sroa.062.0122, %bb.j ], [ %i.m, %bb.l ], [ %.sroa.062.0122, %bb.g ] ; 2 uses
  %.sroa.015.1 = phi i1 [ false, %bb.n ], [ false, %bb.i ], [ true, %bb.j ], [ false, %bb.l ], [ false, %bb.g ]
  %i.t = icmp eq ptr %i.h, %i.d
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.l
  %.not.i129 = icmp eq i64 %i.k, 0
  br i1 %.not.i129, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.thread
  %scevgep = getelementptr i8, ptr %.sroa.0.0126, i64 %.sroa.11.0125
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit
  %.sroa.0.0.i131 = phi ptr [ %i.v, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit ], [ %i.h, %.lr.ph132.preheader ] ; 3 uses
  %.sroa.6.0.i130 = phi i64 [ %i.u, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit ], [ %i.k, %.lr.ph132.preheader ] ; 2 uses
  %.val.i = load i8, ptr %.sroa.0.0.i131, align 1, !alias.scope !225, !noalias !226, !noundef !4
  switch i8 %.val.i, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit [
    i8 9, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit
    i8 10, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit
    i8 12, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit
    i8 13, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit
    i8 32, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit: ; preds = %.lr.ph132, %.lr.ph132, %.lr.ph132, %.lr.ph132, %.lr.ph132
  %i.u = add nsw i64 %.sroa.6.0.i130, -1          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i131, i64 1
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit, label %.lr.ph132

_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtB2_14DateTimeParser15skip_whitespace.exit: ; preds = %.lr.ph132, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit, %._crit_edge, %.thread
  %.sroa.6.0.i.lcssa = phi i64 [ 0, %.thread ], [ 0, %._crit_edge ], [ %.sroa.6.0.i130, %.lr.ph132 ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit ]
  %.sroa.0.0.i.lcssa = phi ptr [ %i.h, %.thread ], [ %i.d, %._crit_edge ], [ %.sroa.0.0.i131, %.lr.ph132 ], [ %scevgep, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtBY_14DateTimeParser15skip_whitespace0EB12_.exit ]
  store ptr %.sroa.0.0.i.lcssa, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.i.lcssa, ptr %i.w, align 8
  br label %bb.d
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtB2_14DateTimeParser21parse_offset_obsolete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i16 0, ptr %i.b, align 1
  %4 = load i8, ptr %2, align 1, !noundef !4      ; 3 uses
  switch i8 %4, label %bb.ac [
    i8 9, label %bb.b
    i8 10, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 32, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i24 37) #24
  br label %bb.c

bb.c:                                             ; preds = %.thread37, %bb.b
  %.sink = phi ptr [ %i.u, %.thread37 ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.d, align 8
  store ptr null, ptr %0, align 8
  br label %bb.z

bb.d:                                             ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ad, %bb.ad
  %i.e = icmp eq i8 %.sroa.027.0, 117
  %i.f = icmp eq i8 %.sroa.027.0.1, 116
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.loopexit, label %.thread37

bb.e:                                             ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae
  switch i8 %.sroa.027.0, label %.thread36 [
    i8 103, label %bb.f
    i8 101, label %bb.g
    i8 99, label %bb.h
    i8 109, label %bb.i
    i8 112, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = icmp eq i8 %.sroa.027.0.1, 109
  %i.h = icmp eq i8 %.sroa.027.0.2, 116
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %.loopexit, label %.thread36

bb.g:                                             ; preds = %bb.e
  switch i8 %.sroa.027.0.1, label %.thread36 [
    i8 115, label %bb.k
    i8 100, label %bb.l
  ]

bb.h:                                             ; preds = %bb.e
  switch i8 %.sroa.027.0.1, label %.thread36 [
    i8 115, label %bb.m
    i8 100, label %bb.n
  ]

bb.i:                                             ; preds = %bb.e
  switch i8 %.sroa.027.0.1, label %.thread36 [
    i8 115, label %bb.o
    i8 100, label %bb.p
  ]

bb.j:                                             ; preds = %bb.e
  switch i8 %.sroa.027.0.1, label %.thread36 [
    i8 115, label %bb.q
    i8 100, label %bb.r
  ]

bb.k:                                             ; preds = %bb.g
  %i.i = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.i, label %.loopexit, label %.thread36

bb.l:                                             ; preds = %bb.g
  %i.j = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.j, label %.loopexit, label %.thread36

.loopexit:                                        ; preds = %bb.y, %bb.v, %bb.x, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.s, %.thread, %bb.d, %bb.f
  %.sroa.0.04458 = phi i64 [ 3, %bb.r ], [ 3, %bb.q ], [ 1, %.thread ], [ 1, %bb.s ], [ 3, %bb.k ], [ 3, %bb.l ], [ 3, %bb.m ], [ 3, %bb.n ], [ 3, %bb.o ], [ 3, %bb.p ], [ 3, %bb.f ], [ 2, %bb.d ], [ %.sroa.0.04463, %bb.v ], [ %.sroa.0.04463, %bb.x ], [ %.sroa.0.04463, %bb.y ] ; 4 uses
  %.sroa.022.0 = phi i32 [ -25200, %bb.r ], [ -28800, %bb.q ], [ 0, %.thread ], [ 0, %bb.s ], [ -18000, %bb.k ], [ -14400, %bb.l ], [ -21600, %bb.m ], [ -18000, %bb.n ], [ -25200, %bb.o ], [ -21600, %bb.p ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.y ]
  %i.k = icmp samesign ugt i64 %.sroa.0.04458, %3
  br i1 %i.k, label %bb.ab, label %bb.aa, !prof !10

bb.m:                                             ; preds = %bb.h
  %i.l = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.l, label %.loopexit, label %.thread36

bb.n:                                             ; preds = %bb.h
  %i.m = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.m, label %.loopexit, label %.thread36

bb.o:                                             ; preds = %bb.i
  %i.n = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.n, label %.loopexit, label %.thread36

bb.p:                                             ; preds = %bb.i
  %i.o = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.o, label %.loopexit, label %.thread36

bb.q:                                             ; preds = %bb.j
  %i.p = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.p, label %.loopexit, label %.thread36

bb.r:                                             ; preds = %bb.j
  %i.q = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.q, label %.loopexit, label %.thread36

.thread:                                          ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.r = icmp eq i8 %.sroa.027.0, 122
  br i1 %i.r, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.s = add i8 %.sroa.027.0, -97
  %or.cond8 = icmp ult i8 %i.s, 9
  %i.t = add i8 %.sroa.027.0, -107
  %or.cond34 = icmp ult i8 %i.t, 16
  %or.cond40 = or i1 %or.cond8, %or.cond34
  br i1 %or.cond40, label %.loopexit, label %.thread37

.thread37:                                        ; preds = %.thread36, %bb.t, %bb.u, %bb.w, %bb.y, %bb.s, %bb.d
  %i.u = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i24 18) #24
  br label %bb.c

switch.hole_check:                                ; preds = %bb.af
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388635, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %.thread36, label %.thread.loopexit

bb.t:                                             ; preds = %.thread36
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.val.i.1 = load i8, ptr %i.v, align 1, !noalias !229, !noundef !4
  %i.w = add i8 %.val.i.1, -97
  %.sroa.0.0.i.i.1 = icmp ult i8 %i.w, 26
  br i1 %.sroa.0.0.i.i.1, label %bb.u, label %.thread37

bb.u:                                             ; preds = %bb.t
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.val.i.2 = load i8, ptr %i.x, align 1, !noalias !229, !noundef !4
  %i.y = add i8 %.val.i.2, -97
  %.sroa.0.0.i.i.2 = icmp ult i8 %i.y, 26
  br i1 %.sroa.0.0.i.i.2, label %bb.v, label %.thread37

bb.v:                                             ; preds = %bb.u
  br i1 %5, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.val.i.3 = load i8, ptr %i.z, align 1, !noalias !229, !noundef !4
  %i.aa = add i8 %.val.i.3, -97
  %.sroa.0.0.i.i.3 = icmp ult i8 %i.aa, 26
  br i1 %.sroa.0.0.i.i.3, label %bb.x, label %.thread37

bb.x:                                             ; preds = %bb.w
  br i1 %6, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.val.i.4 = load i8, ptr %i.ab, align 1, !noalias !229, !noundef !4
  %i.ac = add i8 %.val.i.4, -97
  %.sroa.0.0.i.i.4 = icmp ult i8 %i.ac, 26
  br i1 %.sroa.0.0.i.i.4, label %.loopexit, label %.thread37

.thread36:                                        ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.thread.loopexit, %switch.hole_check
  %5 = phi i1 [ true, %bb.r ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.p ], [ true, %bb.q ], [ false, %.thread.loopexit ], [ false, %switch.hole_check ]
  %6 = phi i1 [ false, %bb.r ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %.thread.loopexit ], [ true, %switch.hole_check ]
  %.sroa.0.04463 = phi i64 [ 3, %bb.r ], [ 3, %bb.e ], [ 3, %bb.f ], [ 3, %bb.g ], [ 3, %bb.h ], [ 3, %bb.i ], [ 3, %bb.j ], [ 3, %bb.k ], [ 3, %bb.l ], [ 3, %bb.m ], [ 3, %bb.n ], [ 3, %bb.o ], [ 3, %bb.p ], [ 3, %bb.q ], [ 5, %.thread.loopexit ], [ 4, %switch.hole_check ] ; 3 uses
  %.val.i = load i8, ptr %i.a, align 1, !noalias !229, !noundef !4
  %i.ad = add i8 %.val.i, -97
  %.sroa.0.0.i.i = icmp ult i8 %i.ad, 26
  br i1 %.sroa.0.0.i.i, label %bb.t, label %.thread37

bb.z:                                             ; preds = %bb.aa, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.aa:                                            ; preds = %.loopexit
  %i.ae = sub nuw nsw i64 %3, %.sroa.0.04458
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.04458
  store ptr %i.af, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.022.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.z

bb.ab:                                            ; preds = %.loopexit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.04458, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25
  unreachable

bb.ac:                                            ; preds = %bb.a
  %i.ag = add i8 %4, -65
  %i.ah = icmp ult i8 %i.ag, 26
  %i.ai = select i1 %i.ah, i8 32, i8 0
  %.sroa.027.0 = or i8 %i.ai, %4                  ; 6 uses
  store i8 %.sroa.027.0, ptr %i.a, align 1
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %8 = load i8, ptr %7, align 1, !noundef !4      ; 3 uses
  switch i8 %8, label %bb.ad [
    i8 9, label %.thread
    i8 10, label %.thread
    i8 12, label %.thread
    i8 13, label %.thread
    i8 32, label %.thread
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.aj = add i8 %8, -65
  %i.ak = icmp ult i8 %i.aj, 26
  %i.al = select i1 %i.ak, i8 32, i8 0
  %.sroa.027.0.1 = or i8 %i.al, %8                ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.027.0.1, ptr %i.am, align 1
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %10 = load i8, ptr %9, align 1, !noundef !4     ; 3 uses
  switch i8 %10, label %bb.ae [
    i8 9, label %bb.d
    i8 10, label %bb.d
    i8 12, label %bb.d
    i8 13, label %bb.d
    i8 32, label %bb.d
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.an = add i8 %10, -65
  %i.ao = icmp ult i8 %i.an, 26
  %i.ap = select i1 %i.ao, i8 32, i8 0
  %.sroa.027.0.2 = or i8 %i.ap, %10               ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %.sroa.027.0.2, ptr %i.aq, align 1
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %12 = load i8, ptr %11, align 1, !noundef !4    ; 3 uses
  switch i8 %12, label %bb.af [
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
    i8 32, label %bb.e
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ar = add i8 %12, -65
  %i.as = icmp ult i8 %i.ar, 26
  %i.at = select i1 %i.as, i8 32, i8 0
  %.sroa.027.0.3 = or i8 %i.at, %12
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %.sroa.027.0.3, ptr %i.au, align 1
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %14 = load i8, ptr %13, align 1, !noundef !4    ; 3 uses
  %switch.tableidx = add i8 %14, -9               ; 2 uses
  %15 = icmp ult i8 %switch.tableidx, 24
  br i1 %15, label %switch.hole_check, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %switch.hole_check, %bb.af
  %i.av = add i8 %14, -65
  %i.aw = icmp ult i8 %i.av, 26
  %i.ax = select i1 %i.aw, i8 32, i8 0
  %.sroa.027.0.4 = or i8 %i.ax, %14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %.sroa.027.0.4, ptr %i.ay, align 1
  br label %.thread36
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime8to_zoned(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [12 x i8], align 8                ; 5 uses
  %i.g = alloca [12 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone22to_ambiguous_timestamp(ptr noalias nofree noundef align 4 captures(none) dereferenceable(24) %i.h, ptr %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc93.invoke, %.invoke, %.noexc101.invoke, %.noexc103, %bb.af, %bb.ae, %.noexc95, %bb.y, %bb.x, %bb.j, %bb.h, %bb.f, %bb.a, %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit105, %_RNvMNtNtCsa9sSWSfjDbm_4jiff2tz8timezoneNtB2_8TimeZone9to_offset.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_(ptr %2) #22
          to label %bb.ai unwind label %bb.ah

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %i.h, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0115.0.copyload = load i64, ptr %1, align 4 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %i.j = shl i32 %.sroa.4.0.copyload, 8
  %i.k = ashr i32 %i.j, 24                        ; 3 uses
  %i.l = icmp ult i32 %i.k, 3                     ; 2 uses
  %i.m = or disjoint i32 %i.k, 12
  %.sroa.02.0.i.i.i = select i1 %i.l, i32 %i.m, i32 %i.k
  %sext.i.i.i = shl i32 %.sroa.4.0.copyload, 16
  %i.n = ashr exact i32 %sext.i.i.i, 16
  %i.o = add nsw i32 %i.n, 32800
  %.neg.i.i.i = sext i1 %i.l to i32
  %i.p = add nsw i32 %i.o, %.neg.i.i.i            ; 3 uses
  %i.q = ashr i32 %.sroa.4.0.copyload, 24
  %i.r = udiv i32 %i.p, 100
  %i.s = mul nuw nsw i32 %i.p, 1461
  %i.t = lshr i32 %i.s, 2
  %i.u = udiv i32 %i.p, 400
  %i.v = mul nsw i32 %.sroa.02.0.i.i.i, 979
  %i.w = add nsw i32 %i.v, -2919
  %i.x = lshr i32 %i.w, 5
  %i.y = add nsw i32 %i.q, -12699423
  %i.z = sub nuw nsw i32 %i.y, %i.r
  %i.aa = add nuw nsw i32 %i.z, %i.u
  %i.ab = add nsw i32 %i.aa, %i.t
  %i.ac = add nsw i32 %i.ab, %i.x
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.ad, 86400
  %i.af = shl i64 %.sroa.0115.0.copyload, 24
  %i.ag = ashr i64 %i.af, 56
  %i.ah = mul nsw i64 %i.ag, 3600
  %i.ai = shl i64 %.sroa.0115.0.copyload, 16
  %i.aj = ashr i64 %i.ai, 56
  %i.ak = mul nsw i64 %i.aj, 60
  %i.al = shl i64 %.sroa.0115.0.copyload, 8
  %i.am = ashr i64 %i.al, 56
  %.sroa.02.0.extract.trunc.i = trunc i64 %.sroa.0115.0.copyload to i32 ; 7 uses
  %i.an = sext i32 %.sroa.5.0.copyload to i64
  %i.ao = sub nsw i64 %i.am, %i.an
  %i.ap = add nsw i64 %i.ao, %i.ah
  %i.aq = add nsw i64 %i.ap, %i.ak
  %i.ar = add nsw i64 %i.aq, %i.ae                ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  %i.at = icmp ne i32 %.sroa.02.0.extract.trunc.i, 0
  %or.cond3.not.i.i = and i1 %i.at, %i.as         ; 4 uses
  %i.au = zext i1 %or.cond3.not.i.i to i64
  %.sroa.05.0.i.i = add nsw i64 %i.ar, %i.au      ; 8 uses
  %i.av = add nsw i64 %.sroa.05.0.i.i, 377705023201
  %or.cond.i.i = icmp ult i64 %i.av, 631107230402 ; 3 uses
  switch i32 %.sroa.0.0.copyload, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.g
    i32 2, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %or.cond.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !244
  store i32 0, ptr %i.e, align 8, !noalias !244
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !244
  %i.aw = invoke fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtB1f_6bounds10RangeErrorEINtB8_12ErrorContextB1b_B1X_E7contextNtNtNtB8_2tz6offset5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, i32 7167) #26
          to label %bb.k unwind label %bb.b

bb.g:                                             ; preds = %bb.c
  br i1 %or.cond.i.i, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !245
  store i32 0, ptr %i.d, align 8, !noalias !245
  %.sroa.6.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx.i69, align 4, !noalias !245
  %i.ax = invoke fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtB1f_6bounds10RangeErrorEINtB8_12ErrorContextB1b_B1X_E7contextNtNtNtB8_2tz6offset5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, i32 7167) #26
          to label %bb.t unwind label %bb.b

bb.i:                                             ; preds = %bb.c
  br i1 %or.cond.i.i, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !246
  store i32 0, ptr %i.c, align 8, !noalias !246
  %.sroa.6.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %.sroa.5.0.copyload, ptr %.sroa.6.0..sroa_idx.i83, align 4, !noalias !246
  %i.ay = invoke fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsb09rMIQFAXO_9jiff_core9timestamp9TimestampNtNtB1f_6bounds10RangeErrorEINtB8_12ErrorContextB1b_B1X_E7contextNtNtNtB8_2tz6offset5ErrorE0Ba_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, i32 7167) #26
          to label %bb.aa unwind label %bb.b

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !244
  br label %bb.n

bb.l:                                             ; preds = %bb.e
  %i.az = add i32 %.sroa.02.0.extract.trunc.i, -1000000000
  %.sroa.021.0.i.i = select i1 %or.cond3.not.i.i, i32 %i.az, i32 %.sroa.02.0.extract.trunc.i
  br label %bb.m

bb.m:                                             ; preds = %bb.ag, %bb.z, %bb.l
  %.sroa.818.0 = phi i32 [ %.sroa.021.0.i.i, %bb.l ], [ %.sroa.021.0.i.i72, %bb.z ], [ %.sroa.021.0.i.i86, %bb.ag ]
  %.sroa.023.0 = phi i32 [ %.sroa.5.0.copyload, %bb.l ], [ %.sroa.0.0.i, %bb.z ], [ %.sroa.0.0.i97, %bb.ag ]
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.746.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i.i, ptr %i.ba, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.818.0, ptr %.sroa.443.0..sroa_idx, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.023.0, ptr %.sroa.847.0..sroa_idx, align 4
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit

bb.n:                                             ; preds = %bb.aa, %bb.t, %bb.k
  %.sink = phi ptr [ %i.ay, %bb.aa ], [ %i.ax, %bb.t ], [ %i.aw, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bb, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = and i64 %i.bc, 7
  switch i64 %i.bd, label %bb.o [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit
    i64 4, label %bb.p
    i64 5, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.be = getelementptr i8, ptr %2, i64 -4        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bf = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.be)
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %i.bg ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  store ptr %i.bh, ptr %i.b, align 8
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !247
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz8timezone8TimeZoneEBH_.exit

bb.r:                                             ; preds = %bb.n
  %i.bk = getelementptr i8, ptr %2, i64 -5        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bl = tail call noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef %i.bk)
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  store ptr %i.bn, ptr %i.a, align 8
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !248
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i

end_hunk_0
