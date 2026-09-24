Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.11?download=true
inline.NumInlined: 215
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt7rfc2822NtB2_14DateTimeParser12skip_comment:bb.a
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
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %2, align 1, !noundef !4    ; 3 uses
  switch i8 %i.d, label %bb.ad [
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
  ]

bb.c:                                             ; preds = %bb.a, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.e = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i24 37) #24
  br label %bb.d

bb.d:                                             ; preds = %.thread37, %bb.c
  %.sink = phi ptr [ %i.w, %.thread37 ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  br label %bb.aa

bb.e:                                             ; preds = %bb.af, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.g = icmp eq i8 %.sroa.027.0, 117
  %i.h = icmp eq i8 %.sroa.027.0.1, 116
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %.loopexit, label %.thread37

bb.f:                                             ; preds = %bb.ah, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  switch i8 %.sroa.027.0, label %.thread36 [
    i8 103, label %bb.g
    i8 101, label %bb.h
    i8 99, label %bb.i
    i8 109, label %bb.j
    i8 112, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.i = icmp eq i8 %.sroa.027.0.1, 109
  %i.j = icmp eq i8 %.sroa.027.0.2, 116
  %or.cond5 = and i1 %i.i, %i.j
  br i1 %or.cond5, label %.loopexit, label %.thread36

bb.h:                                             ; preds = %bb.f
  switch i8 %.sroa.027.0.1, label %.thread36 [
    i8 115, label %bb.l
    i8 100, label %bb.m
  ]

bb.i:                                             ; preds = %bb.f
  switch i8 %.sroa.027.0.1, label %.thread36 [
    i8 115, label %bb.n
    i8 100, label %bb.o
  ]

bb.j:                                             ; preds = %bb.f
  switch i8 %.sroa.027.0.1, label %.thread36 [
    i8 115, label %bb.p
    i8 100, label %bb.q
  ]

bb.k:                                             ; preds = %bb.f
  switch i8 %.sroa.027.0.1, label %.thread36 [
    i8 115, label %bb.r
    i8 100, label %bb.s
  ]

bb.l:                                             ; preds = %bb.h
  %i.k = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.k, label %.loopexit, label %.thread36

bb.m:                                             ; preds = %bb.h
  %i.l = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.l, label %.loopexit, label %.thread36

.loopexit:                                        ; preds = %bb.z, %bb.w, %bb.y, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.t, %.thread, %bb.e, %bb.g
  %.sroa.0.04458 = phi i64 [ 3, %bb.s ], [ 3, %bb.r ], [ 1, %.thread ], [ 1, %bb.t ], [ 3, %bb.l ], [ 3, %bb.m ], [ 3, %bb.n ], [ 3, %bb.o ], [ 3, %bb.p ], [ 3, %bb.q ], [ 3, %bb.g ], [ 2, %bb.e ], [ %.sroa.0.04457, %bb.w ], [ %.sroa.0.04457, %bb.y ], [ %.sroa.0.04457, %bb.z ] ; 4 uses
  %.sroa.022.0 = phi i32 [ -25200, %bb.s ], [ -28800, %bb.r ], [ 0, %.thread ], [ 0, %bb.t ], [ -18000, %bb.l ], [ -14400, %bb.m ], [ -21600, %bb.n ], [ -18000, %bb.o ], [ -25200, %bb.p ], [ -21600, %bb.q ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.z ]
  %i.m = icmp samesign ugt i64 %.sroa.0.04458, %3
  br i1 %i.m, label %bb.ac, label %bb.ab, !prof !10

bb.n:                                             ; preds = %bb.i
  %i.n = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.n, label %.loopexit, label %.thread36

bb.o:                                             ; preds = %bb.i
  %i.o = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.o, label %.loopexit, label %.thread36

bb.p:                                             ; preds = %bb.j
  %i.p = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.p, label %.loopexit, label %.thread36

bb.q:                                             ; preds = %bb.j
  %i.q = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.q, label %.loopexit, label %.thread36

bb.r:                                             ; preds = %bb.k
  %i.r = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.r, label %.loopexit, label %.thread36

bb.s:                                             ; preds = %bb.k
  %i.s = icmp eq i8 %.sroa.027.0.2, 116
  br i1 %i.s, label %.loopexit, label %.thread36

.thread:                                          ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ad
  %i.t = icmp eq i8 %.sroa.027.0, 122
  br i1 %i.t, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.u = add i8 %.sroa.027.0, -97
  %or.cond8 = icmp ult i8 %i.u, 9
  %i.v = add i8 %.sroa.027.0, -107
  %or.cond34 = icmp ult i8 %i.v, 16
  %or.cond40 = or i1 %or.cond8, %or.cond34
  br i1 %or.cond40, label %.loopexit, label %.thread37

.thread37:                                        ; preds = %.thread36, %bb.u, %bb.v, %bb.x, %bb.z, %bb.t, %bb.e
  %i.w = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc2822NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i24 18) #24
  br label %bb.d

switch.hole_check:                                ; preds = %bb.ak
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388635, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %.thread36, label %.thread.loopexit

bb.u:                                             ; preds = %.thread36
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.val.i.1 = load i8, ptr %i.x, align 1, !noalias !229, !noundef !4
  %i.y = add i8 %.val.i.1, -97
  %.sroa.0.0.i.i.1 = icmp ult i8 %i.y, 26
  br i1 %.sroa.0.0.i.i.1, label %bb.v, label %.thread37

bb.v:                                             ; preds = %bb.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.val.i.2 = load i8, ptr %i.z, align 1, !noalias !229, !noundef !4
  %i.aa = add i8 %.val.i.2, -97
  %.sroa.0.0.i.i.2 = icmp ult i8 %i.aa, 26
  br i1 %.sroa.0.0.i.i.2, label %bb.w, label %.thread37

bb.w:                                             ; preds = %bb.v
  br i1 %i.af, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.val.i.3 = load i8, ptr %i.ab, align 1, !noalias !229, !noundef !4
  %i.ac = add i8 %.val.i.3, -97
  %.sroa.0.0.i.i.3 = icmp ult i8 %i.ac, 26
  br i1 %.sroa.0.0.i.i.3, label %bb.y, label %.thread37

bb.y:                                             ; preds = %bb.x
  br i1 %i.ag, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.val.i.4 = load i8, ptr %i.ad, align 1, !noalias !229, !noundef !4
  %i.ae = add i8 %.val.i.4, -97
  %.sroa.0.0.i.i.4 = icmp ult i8 %i.ae, 26
  br i1 %.sroa.0.0.i.i.4, label %.loopexit, label %.thread37

.thread36:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.thread.loopexit, %bb.aj, %switch.hole_check
  %i.af = phi i1 [ true, %bb.s ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.aj ], [ false, %.thread.loopexit ], [ false, %switch.hole_check ]
  %i.ag = phi i1 [ false, %bb.s ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ true, %bb.aj ], [ false, %.thread.loopexit ], [ true, %switch.hole_check ]
  %.sroa.0.04457 = phi i64 [ 3, %bb.s ], [ 3, %bb.f ], [ 3, %bb.g ], [ 3, %bb.h ], [ 3, %bb.i ], [ 3, %bb.j ], [ 3, %bb.k ], [ 3, %bb.l ], [ 3, %bb.m ], [ 3, %bb.n ], [ 3, %bb.o ], [ 3, %bb.p ], [ 3, %bb.q ], [ 3, %bb.r ], [ 4, %bb.aj ], [ 5, %.thread.loopexit ], [ 4, %switch.hole_check ] ; 3 uses
  %.val.i = load i8, ptr %i.a, align 1, !noalias !229, !noundef !4
  %i.ah = add i8 %.val.i, -97
  %.sroa.0.0.i.i = icmp ult i8 %i.ah, 26
  br i1 %.sroa.0.0.i.i, label %bb.u, label %.thread37

bb.aa:                                            ; preds = %bb.ab, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.ab:                                            ; preds = %.loopexit
  %i.ai = sub nuw nsw i64 %3, %.sroa.0.04458
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.04458
  store ptr %i.aj, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.022.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.aa

bb.ac:                                            ; preds = %.loopexit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.04458, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25
  unreachable

bb.ad:                                            ; preds = %bb.b
  %i.ak = add i8 %i.d, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = select i1 %i.al, i8 32, i8 0
  %.sroa.027.0 = or i8 %i.am, %i.d                ; 6 uses
  store i8 %.sroa.027.0, ptr %i.a, align 1
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !4 ; 3 uses
  switch i8 %i.ap, label %bb.af [
    i8 9, label %.thread
    i8 10, label %.thread
    i8 12, label %.thread
    i8 13, label %.thread
    i8 32, label %.thread
  ]

bb.af:                                            ; preds = %bb.ae
  %i.aq = add i8 %i.ap, -65
  %i.ar = icmp ult i8 %i.aq, 26
  %i.as = select i1 %i.ar, i8 32, i8 0
  %.sroa.027.0.1 = or i8 %i.as, %i.ap             ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sroa.027.0.1, ptr %i.at, align 1
  %i.au = icmp eq i64 %3, 2
  br i1 %i.au, label %bb.e, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !noundef !4 ; 3 uses
  switch i8 %i.aw, label %bb.ah [
    i8 9, label %bb.e
    i8 10, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
    i8 32, label %bb.e
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ax = add i8 %i.aw, -65
  %i.ay = icmp ult i8 %i.ax, 26
  %i.az = select i1 %i.ay, i8 32, i8 0
  %.sroa.027.0.2 = or i8 %i.az, %i.aw             ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %.sroa.027.0.2, ptr %i.ba, align 1
  %i.bb = icmp eq i64 %3, 3
  br i1 %i.bb, label %bb.f, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !4 ; 3 uses
  switch i8 %i.bd, label %bb.aj [
    i8 9, label %bb.f
    i8 10, label %bb.f
    i8 12, label %bb.f
    i8 13, label %bb.f
    i8 32, label %bb.f
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.be = add i8 %i.bd, -65
  %i.bf = icmp ult i8 %i.be, 26
  %i.bg = select i1 %i.bf, i8 32, i8 0
  %.sroa.027.0.3 = or i8 %i.bg, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %.sroa.027.0.3, ptr %i.bh, align 1
  %i.bi = icmp eq i64 %3, 4
  br i1 %i.bi, label %.thread36, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !4 ; 3 uses
  %switch.tableidx = add i8 %i.bk, -9             ; 2 uses
  %i.bl = icmp ult i8 %switch.tableidx, 24
  br i1 %i.bl, label %switch.hole_check, label %.thread.loopexit

.thread.loopexit:                                 ; preds = %switch.hole_check, %bb.ak
  %i.bm = add i8 %i.bk, -65
  %i.bn = icmp ult i8 %i.bm, 26
  %i.bo = select i1 %i.bn, i8 32, i8 0
  %.sroa.027.0.4 = or i8 %i.bo, %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %.sroa.027.0.4, ptr %i.bp, align 1
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
end_hunk_0
