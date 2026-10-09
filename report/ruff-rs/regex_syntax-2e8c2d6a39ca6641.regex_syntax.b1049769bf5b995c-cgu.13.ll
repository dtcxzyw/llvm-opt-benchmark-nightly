Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_syntax-2e8c2d6a39ca6641.regex_syntax.b1049769bf5b995c-cgu.13?download=true
inline.NumInlined: 108
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYB1d_NtNtBa_3cmp10PartialOrd2ltEB1h_:bb.a
  %i.q = add i64 %.sroa.11.1.lcssa.us, %i.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.3.1.lcssa.us, i64 48
  br label %.split.us

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.split:                                           ; preds = %bb.b, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit12
  %.sroa.11.0 = phi i64 [ %i.ae, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit12 ], [ 0, %bb.b ] ; 2 uses
  %.sroa.3.0 = phi ptr [ %i.af, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit12 ], [ %0, %bb.b ] ; 3 uses
  %.sroa.21.0 = phi ptr [ %i.ac, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit12 ], [ %i.c, %bb.b ] ; 2 uses
  %.sroa.05.0 = phi ptr [ %i.ad, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit12 ], [ null, %bb.b ]
  %.sroa.0.0 = phi i64 [ %1, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit12 ], [ %4, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.0 ; 2 uses
  %i.t = icmp ult ptr %.sroa.3.0, %i.s
  br i1 %i.t, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit, %.split
  %.sroa.11.1.lcssa = phi i64 [ %.sroa.11.0, %.split ], [ %i.z, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit ] ; 3 uses
  %.sroa.3.1.lcssa = phi ptr [ %.sroa.3.0, %.split ], [ %i.aa, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit ] ; 2 uses
  %.sroa.21.1.lcssa = phi ptr [ %.sroa.21.0, %.split ], [ %i.w, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit ]
  %i.u = icmp eq i64 %.sroa.0.0, %1
  br i1 %i.u, label %.split32.us, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit12

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit: ; preds = %.split, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit
  %.sroa.21.128 = phi ptr [ %i.w, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit ], [ %.sroa.21.0, %.split ]
  %.sroa.3.127 = phi ptr [ %i.aa, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit ], [ %.sroa.3.0, %.split ] ; 3 uses
  %.sroa.11.126 = phi i64 [ %i.z, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit ], [ %.sroa.11.0, %.split ] ; 2 uses
  %i.v = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBO_3ops8function5FnMutTRB5_B1U_EE8call_mutB9_(ptr %6, ptr align 8 %.sroa.3.127, ptr align 8 %i.b) ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.21.128, i64 -48 ; 3 uses
  %spec.select = select i1 %i.v, ptr %2, ptr %i.w
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %spec.select, i64 %.sroa.11.126
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.127, i64 48, i1 false)
  %i.y = zext i1 %i.v to i64
  %i.z = add i64 %.sroa.11.126, %i.y              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.3.127, i64 48 ; 3 uses
  %i.ab = icmp ult ptr %i.aa, %i.s
  br i1 %i.ab, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit, label %._crit_edge

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanE13partition_oneB1l_.exit12: ; preds = %._crit_edge
  %i.ac = getelementptr inbounds i8, ptr %.sroa.21.1.lcssa, i64 -48 ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %.sroa.11.1.lcssa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.1.lcssa, i64 48, i1 false)
  %i.ae = add i64 %.sroa.11.1.lcssa, %i.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.3.1.lcssa, i64 48
  br label %.split

.split32.us:                                      ; preds = %._crit_edge, %._crit_edge.us
  %.us-phi = phi ptr [ %.sroa.05.0.us, %._crit_edge.us ], [ %.sroa.05.0, %._crit_edge ]
  %.us-phi33 = phi i64 [ %.sroa.11.1.lcssa.us, %._crit_edge.us ], [ %.sroa.11.1.lcssa, %._crit_edge ] ; 6 uses
  %i.ag = tail call zeroext i1 @_RNvXs0_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNtB5_8IsFreeze9is_freezeB12_()
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %.split32.us
  %i.ah = mul i64 %.us-phi33, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %2, i64 %i.ah, i1 false)
  %i.ai = sub i64 %1, %.us-phi33                  ; 3 uses
  %.not37 = icmp eq i64 %1, %.us-phi33
  br i1 %.not37, label %._crit_edge36, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aj = getelementptr [48 x i8], ptr %0, i64 %.us-phi33 ; 3 uses
  %.neg = add i64 %.us-phi33, 1
  %xtraiter = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %1, %.neg
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ai, -2
  br label %bb.f

bb.e:                                             ; preds = %.split32.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.us-phi, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  br label %bb.d

._crit_edge36.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge36, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge36.loopexit.unr-lcssa, %.lr.ph
  %.sroa.06.034.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ar, %._crit_edge36.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.al = xor i64 %.sroa.06.034.epil.init, -1
  %i.am = getelementptr [48 x i8], ptr %i.c, i64 %i.al
  %i.an = getelementptr [48 x i8], ptr %i.aj, i64 %.sroa.06.034.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 48, i1 false)
  br label %._crit_edge36

._crit_edge36:                                    ; preds = %.epil.preheader, %._crit_edge36.loopexit.unr-lcssa, %bb.d
  ret i64 %.us-phi33

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.sroa.06.034 = phi i64 [ 0, %.lr.ph.new ], [ %i.ar, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.ao = xor i64 %.sroa.06.034, -1
  %i.ap = getelementptr [48 x i8], ptr %i.c, i64 %i.ao
  %i.aq = getelementptr [48 x i8], ptr %i.aj, i64 %.sroa.06.034
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false)
  %i.ar = add nuw i64 %.sroa.06.034, 2            ; 2 uses
  %i.as = xor i64 %.sroa.06.034, -2
  %i.at = getelementptr [48 x i8], ptr %i.c, i64 %i.as
  %i.au = getelementptr [48 x i8], ptr %i.aj, i64 %.sroa.06.034
  %i.av = getelementptr i8, ptr %i.au, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.at, i64 48, i1 false)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge36.loopexit.unr-lcssa, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_(ptr %0, i64 %1, ptr nofree captures(none) %2, i64 %3, i64 %4, i1 zeroext %5, ptr nofree readonly align 8 captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp uge i64 %3, %1
  %.not = icmp ult i64 %4, %1
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %4 ; 6 uses
  %i.c = getelementptr [2 x i8], ptr %2, i64 %1   ; 9 uses
  %i.d = zext i1 %5 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23, %bb.b
  %.sroa.31.0 = phi i64 [ 0, %bb.b ], [ %i.bi, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %0, %bb.b ], [ %i.bj, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ] ; 3 uses
  %.sroa.53.0 = phi ptr [ %i.c, %bb.b ], [ %i.bf, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ] ; 2 uses
  %.sroa.06.0 = phi ptr [ null, %bb.b ], [ %i.bg, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ]
  %.sroa.0.0 = phi i64 [ %4, %bb.b ], [ %1, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ] ; 3 uses
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0, i64 3)
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = icmp ult ptr %.sroa.7.0, %i.f
  br i1 %i.g, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit, label %._crit_edge

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit: ; preds = %bb.d, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit
  %.sroa.53.168 = phi ptr [ %i.al, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ], [ %.sroa.53.0, %bb.d ] ; 4 uses
  %.sroa.7.167 = phi ptr [ %i.aq, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ], [ %.sroa.7.0, %bb.d ] ; 6 uses
  %.sroa.31.166 = phi i64 [ %i.ap, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ], [ %.sroa.31.0, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %6, align 8
  %i.i = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %i.h, ptr %i.b, ptr %.sroa.7.167) ; 2 uses
  %i.j = xor i1 %i.i, true
  %i.k = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -2
  %spec.select = select i1 %i.i, ptr %i.k, ptr %2
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.sroa.31.166
  %i.m = load i16, ptr %.sroa.7.167, align 1
  store i16 %i.m, ptr %i.l, align 1
  %i.n = zext i1 %i.j to i64
  %i.o = add i64 %.sroa.31.166, %i.n              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 2 ; 2 uses
  %i.q = load ptr, ptr %6, align 8
  %i.r = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %i.q, ptr %i.b, ptr nonnull %i.p) ; 2 uses
  %i.s = xor i1 %i.r, true
  %i.t = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -4
  %.sroa.01.0.i14 = select i1 %i.r, ptr %i.t, ptr %2
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i14, i64 %i.o
  %i.v = load i16, ptr %i.p, align 1
  store i16 %i.v, ptr %i.u, align 1
  %i.w = zext i1 %i.s to i64
  %i.x = add i64 %i.o, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 4 ; 2 uses
  %i.z = load ptr, ptr %6, align 8
  %i.aa = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %i.z, ptr %i.b, ptr nonnull %i.y) ; 2 uses
  %i.ab = xor i1 %i.aa, true
  %i.ac = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -6
  %.sroa.01.0.i16 = select i1 %i.aa, ptr %i.ac, ptr %2
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i16, i64 %i.x
  %i.ae = load i16, ptr %i.y, align 1
  store i16 %i.ae, ptr %i.ad, align 1
  %i.af = zext i1 %i.ab to i64
  %i.ag = add i64 %i.x, %i.af                     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 6 ; 2 uses
  %i.ai = load ptr, ptr %6, align 8
  %i.aj = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %i.ai, ptr %i.b, ptr nonnull %i.ah) ; 2 uses
  %i.ak = xor i1 %i.aj, true
  %i.al = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -8 ; 3 uses
  %.sroa.01.0.i18 = select i1 %i.aj, ptr %i.al, ptr %2
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i18, i64 %i.ag
  %i.an = load i16, ptr %i.ah, align 1
  store i16 %i.an, ptr %i.am, align 1
  %i.ao = zext i1 %i.ak to i64
  %i.ap = add i64 %i.ag, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 8 ; 3 uses
  %i.ar = icmp ult ptr %i.aq, %i.f
  br i1 %i.ar, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit, %bb.d
  %.sroa.31.1.lcssa = phi i64 [ %.sroa.31.0, %bb.d ], [ %i.ap, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ] ; 2 uses
  %.sroa.7.1.lcssa = phi ptr [ %.sroa.7.0, %bb.d ], [ %i.aq, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ] ; 3 uses
  %.sroa.53.1.lcssa = phi ptr [ %.sroa.53.0, %bb.d ], [ %i.al, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.0.0 ; 2 uses
  %i.at = icmp ult ptr %.sroa.7.1.lcssa, %i.as
  br i1 %i.at, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21, label %._crit_edge74

._crit_edge74:                                    ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21, %._crit_edge
  %.sroa.31.2.lcssa = phi i64 [ %.sroa.31.1.lcssa, %._crit_edge ], [ %i.bc, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ] ; 10 uses
  %.sroa.7.2.lcssa = phi ptr [ %.sroa.7.1.lcssa, %._crit_edge ], [ %i.bd, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ] ; 2 uses
  %.sroa.53.2.lcssa = phi ptr [ %.sroa.53.1.lcssa, %._crit_edge ], [ %i.ay, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ]
  %i.au = icmp eq i64 %.sroa.0.0, %1
  br i1 %i.au, label %bb.e, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21: ; preds = %._crit_edge, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21
  %.sroa.53.273 = phi ptr [ %i.ay, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ], [ %.sroa.53.1.lcssa, %._crit_edge ]
  %.sroa.7.272 = phi ptr [ %i.bd, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ], [ %.sroa.7.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.31.271 = phi i64 [ %i.bc, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ], [ %.sroa.31.1.lcssa, %._crit_edge ] ; 2 uses
  %i.av = load ptr, ptr %6, align 8
  %i.aw = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %i.av, ptr %i.b, ptr %.sroa.7.272) ; 2 uses
  %i.ax = xor i1 %i.aw, true
  %i.ay = getelementptr inbounds i8, ptr %.sroa.53.273, i64 -2 ; 3 uses
  %spec.select64 = select i1 %i.aw, ptr %i.ay, ptr %2
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %spec.select64, i64 %.sroa.31.271
  %i.ba = load i16, ptr %.sroa.7.272, align 1
  store i16 %i.ba, ptr %i.az, align 1
  %i.bb = zext i1 %i.ax to i64
  %i.bc = add i64 %.sroa.31.271, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.7.272, i64 2 ; 3 uses
  %i.be = icmp ult ptr %i.bd, %i.as
  br i1 %i.be, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21, label %._crit_edge74

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23: ; preds = %._crit_edge74
  %i.bf = getelementptr inbounds i8, ptr %.sroa.53.2.lcssa, i64 -2 ; 2 uses
  %spec.select65 = select i1 %5, ptr %2, ptr %i.bf
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %spec.select65, i64 %.sroa.31.2.lcssa ; 2 uses
  %i.bh = load i16, ptr %.sroa.7.2.lcssa, align 1
  store i16 %i.bh, ptr %i.bg, align 1
  %i.bi = add i64 %.sroa.31.2.lcssa, %i.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.7.2.lcssa, i64 2
  br label %bb.d

bb.e:                                             ; preds = %._crit_edge74
  %i.bk = tail call zeroext i1 @_RNvXs0_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtB5_8IsFreeze9is_freezeB12_()
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bl = shl i64 %.sroa.31.2.lcssa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 %i.bl, i1 false)
  %i.bm = sub i64 %1, %.sroa.31.2.lcssa           ; 8 uses
  %.not81 = icmp eq i64 %1, %.sroa.31.2.lcssa
  br i1 %.not81, label %._crit_edge80, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.bn = getelementptr [2 x i8], ptr %0, i64 %.sroa.31.2.lcssa ; 8 uses
  %min.iters.check = icmp ult i64 %i.bm, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bo = shl i64 %1, 1
  %i.bp = getelementptr i8, ptr %0, i64 %i.bo
  %i.bq = shl i64 %.sroa.31.2.lcssa, 1
  %i.br = getelementptr i8, ptr %2, i64 %i.bq
  %bound0 = icmp ult ptr %i.bn, %i.c
  %bound1 = icmp ult ptr %i.br, %i.bp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check103 = icmp ult i64 %i.bm, 16
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %i.bm, 12
  %n.vec = and i64 %i.bm, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bt = xor i64 %index, -1
  %i.bu = getelementptr [2 x i8], ptr %i.c, i64 %i.bt ; 2 uses
  %i.bv = getelementptr [2 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 -14
  %i.bx = getelementptr i8, ptr %i.bu, i64 -30
  %wide.load = load <8 x i16>, ptr %i.bw, align 1, !alias.scope !14
  %wide.load104 = load <8 x i16>, ptr %i.bx, align 1, !alias.scope !14
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse105 = shufflevector <8 x i16> %wide.load104, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.by = getelementptr i8, ptr %i.bv, i64 16
  store <8 x i16> %reverse, ptr %i.bv, align 1, !alias.scope !15, !noalias !14
  store <8 x i16> %reverse105, ptr %i.by, align 1, !alias.scope !15, !noalias !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge80, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bs, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !5

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec106 = and i64 %i.bm, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = xor i64 %index107, -1
  %i.cb = getelementptr [2 x i8], ptr %i.c, i64 %i.ca
  %i.cc = getelementptr [2 x i8], ptr %i.bn, i64 %index107
  %i.cd = getelementptr i8, ptr %i.cb, i64 -6
  %wide.load108 = load <4 x i16>, ptr %i.cd, align 1, !alias.scope !14
  %reverse109 = shufflevector <4 x i16> %wide.load108, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse109, ptr %i.cc, align 1, !alias.scope !15, !noalias !14
  %index.next110 = add nuw i64 %index107, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next110, %n.vec106
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %i.bm, %n.vec106
  br i1 %cmp.n111, label %._crit_edge80, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.07.078.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec106, %vec.epilog.middle.block ] ; 3 uses
  %7 = sub i64 %1, %.sroa.31.2.lcssa
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.07.078.prol = phi i64 [ %i.cf, %vec.epilog.scalar.ph.prol ], [ %.sroa.07.078.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cf = add nuw i64 %.sroa.07.078.prol, 1       ; 2 uses
  %i.cg = xor i64 %.sroa.07.078.prol, -1
  %i.ch = getelementptr [2 x i8], ptr %i.c, i64 %i.cg
  %i.ci = getelementptr [2 x i8], ptr %i.bn, i64 %.sroa.07.078.prol
  %i.cj = load i16, ptr %i.ch, align 1
  store i16 %i.cj, ptr %i.ci, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !12

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.07.078.unr = phi i64 [ %.sroa.07.078.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cf, %vec.epilog.scalar.ph.prol ]
  %i.ck = sub i64 %.sroa.07.078.ph, %1
  %i.cl = add i64 %i.ck, %.sroa.31.2.lcssa
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %._crit_edge80, label %vec.epilog.scalar.ph

bb.g:                                             ; preds = %bb.e
  %i.cn = load i16, ptr %i.b, align 1
  store i16 %i.cn, ptr %.sroa.06.0, align 1
  br label %bb.f

._crit_edge80:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.f
  ret i64 %.sroa.31.2.lcssa

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.07.078 = phi i64 [ %i.dc, %vec.epilog.scalar.ph ], [ %.sroa.07.078.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.co = xor i64 %.sroa.07.078, -1
  %i.cp = getelementptr [2 x i8], ptr %i.c, i64 %i.co
  %i.cq = getelementptr [2 x i8], ptr %i.bn, i64 %.sroa.07.078
  %i.cr = load i16, ptr %i.cp, align 1
  store i16 %i.cr, ptr %i.cq, align 1
  %i.cs = sub i64 -2, %.sroa.07.078
  %i.ct = getelementptr [2 x i8], ptr %i.c, i64 %i.cs
  %i.cu = getelementptr [2 x i8], ptr %i.bn, i64 %.sroa.07.078
  %i.cv = getelementptr i8, ptr %i.cu, i64 2
  %i.cw = load i16, ptr %i.ct, align 1
  store i16 %i.cw, ptr %i.cv, align 1
  %i.cx = sub i64 -3, %.sroa.07.078
  %i.cy = getelementptr [2 x i8], ptr %i.c, i64 %i.cx
  %i.cz = getelementptr [2 x i8], ptr %i.bn, i64 %.sroa.07.078
  %i.da = getelementptr i8, ptr %i.cz, i64 4
  %i.db = load i16, ptr %i.cy, align 1
  store i16 %i.db, ptr %i.da, align 1
  %i.dc = add nuw i64 %.sroa.07.078, 4            ; 2 uses
  %i.dd = sub i64 -4, %.sroa.07.078
  %i.de = getelementptr [2 x i8], ptr %i.c, i64 %i.dd
  %i.df = getelementptr [2 x i8], ptr %i.bn, i64 %.sroa.07.078
  %i.dg = getelementptr i8, ptr %i.df, i64 6
  %i.dh = load i16, ptr %i.de, align 1
  store i16 %i.dh, ptr %i.dg, align 1
  %exitcond.not.3 = icmp eq i64 %i.dc, %i.bm
  br i1 %exitcond.not.3, label %._crit_edge80, label %vec.epilog.scalar.ph, !llvm.loop !13
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNvYB1d_NtNtBa_3cmp10PartialOrd2ltEB1h_(ptr %0, i64 %1, ptr nofree captures(none) %2, i64 %3, i64 %4, i1 zeroext %5, ptr %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp uge i64 %3, %1
  %.not = icmp ult i64 %4, %1
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %4 ; 6 uses
  %i.c = getelementptr [2 x i8], ptr %2, i64 %1   ; 9 uses
  %i.d = zext i1 %5 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23, %bb.b
  %.sroa.31.0 = phi i64 [ 0, %bb.b ], [ %i.ay, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %0, %bb.b ], [ %i.az, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ] ; 3 uses
  %.sroa.53.0 = phi ptr [ %i.c, %bb.b ], [ %i.av, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ] ; 2 uses
  %.sroa.06.0 = phi ptr [ null, %bb.b ], [ %i.aw, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ]
  %.sroa.0.0 = phi i64 [ %4, %bb.b ], [ %1, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23 ] ; 3 uses
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0, i64 3)
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = icmp ult ptr %.sroa.7.0, %i.f
  br i1 %i.g, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit, label %._crit_edge

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit: ; preds = %bb.d, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit
  %.sroa.53.168 = phi ptr [ %i.ad, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ], [ %.sroa.53.0, %bb.d ] ; 4 uses
  %.sroa.7.167 = phi ptr [ %i.ai, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ], [ %.sroa.7.0, %bb.d ] ; 6 uses
  %.sroa.31.166 = phi i64 [ %i.ah, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ], [ %.sroa.31.0, %bb.d ] ; 2 uses
  %i.h = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %6, ptr %.sroa.7.167, ptr %i.b) ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -2
  %spec.select = select i1 %i.h, ptr %2, ptr %i.i
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.sroa.31.166
  %i.k = load i16, ptr %.sroa.7.167, align 1
  store i16 %i.k, ptr %i.j, align 1
  %i.l = zext i1 %i.h to i64
  %i.m = add i64 %.sroa.31.166, %i.l              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 2 ; 2 uses
  %i.o = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %6, ptr nonnull %i.n, ptr %i.b) ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -4
  %.sroa.01.0.i14 = select i1 %i.o, ptr %2, ptr %i.p
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i14, i64 %i.m
  %i.r = load i16, ptr %i.n, align 1
  store i16 %i.r, ptr %i.q, align 1
  %i.s = zext i1 %i.o to i64
  %i.t = add i64 %i.m, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 4 ; 2 uses
  %i.v = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %6, ptr nonnull %i.u, ptr %i.b) ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -6
  %.sroa.01.0.i16 = select i1 %i.v, ptr %2, ptr %i.w
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i16, i64 %i.t
  %i.y = load i16, ptr %i.u, align 1
  store i16 %i.y, ptr %i.x, align 1
  %i.z = zext i1 %i.v to i64
  %i.aa = add i64 %i.t, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 6 ; 2 uses
  %i.ac = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %6, ptr nonnull %i.ab, ptr %i.b) ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -8 ; 3 uses
  %.sroa.01.0.i18 = select i1 %i.ac, ptr %2, ptr %i.ad
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i18, i64 %i.aa
  %i.af = load i16, ptr %i.ab, align 1
  store i16 %i.af, ptr %i.ae, align 1
  %i.ag = zext i1 %i.ac to i64
  %i.ah = add i64 %i.aa, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 8 ; 3 uses
  %i.aj = icmp ult ptr %i.ai, %i.f
  br i1 %i.aj, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit, %bb.d
  %.sroa.31.1.lcssa = phi i64 [ %.sroa.31.0, %bb.d ], [ %i.ah, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ] ; 2 uses
  %.sroa.7.1.lcssa = phi ptr [ %.sroa.7.0, %bb.d ], [ %i.ai, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ] ; 3 uses
  %.sroa.53.1.lcssa = phi ptr [ %.sroa.53.0, %bb.d ], [ %i.ad, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.0.0 ; 2 uses
  %i.al = icmp ult ptr %.sroa.7.1.lcssa, %i.ak
  br i1 %i.al, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21, label %._crit_edge74

._crit_edge74:                                    ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21, %._crit_edge
  %.sroa.31.2.lcssa = phi i64 [ %.sroa.31.1.lcssa, %._crit_edge ], [ %i.as, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ] ; 10 uses
  %.sroa.7.2.lcssa = phi ptr [ %.sroa.7.1.lcssa, %._crit_edge ], [ %i.at, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ] ; 2 uses
  %.sroa.53.2.lcssa = phi ptr [ %.sroa.53.1.lcssa, %._crit_edge ], [ %i.ao, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ]
  %i.am = icmp eq i64 %.sroa.0.0, %1
  br i1 %i.am, label %bb.e, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21: ; preds = %._crit_edge, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21
  %.sroa.53.273 = phi ptr [ %i.ao, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ], [ %.sroa.53.1.lcssa, %._crit_edge ]
  %.sroa.7.272 = phi ptr [ %i.at, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ], [ %.sroa.7.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.31.271 = phi i64 [ %i.as, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21 ], [ %.sroa.31.1.lcssa, %._crit_edge ] ; 2 uses
  %i.an = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB10_3ops8function5FnMutTRB5_B27_EE8call_mutB9_(ptr %6, ptr %.sroa.7.272, ptr %i.b) ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.53.273, i64 -2 ; 3 uses
  %spec.select64 = select i1 %i.an, ptr %2, ptr %i.ao
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %spec.select64, i64 %.sroa.31.271
  %i.aq = load i16, ptr %.sroa.7.272, align 1
  store i16 %i.aq, ptr %i.ap, align 1
  %i.ar = zext i1 %i.an to i64
  %i.as = add i64 %.sroa.31.271, %i.ar            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.7.272, i64 2 ; 3 uses
  %i.au = icmp ult ptr %i.at, %i.ak
  br i1 %i.au, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit21, label %._crit_edge74

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeE13partition_oneB1l_.exit23: ; preds = %._crit_edge74
  %i.av = getelementptr inbounds i8, ptr %.sroa.53.2.lcssa, i64 -2 ; 2 uses
  %spec.select65 = select i1 %5, ptr %2, ptr %i.av
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %spec.select65, i64 %.sroa.31.2.lcssa ; 2 uses
  %i.ax = load i16, ptr %.sroa.7.2.lcssa, align 1
  store i16 %i.ax, ptr %i.aw, align 1
  %i.ay = add i64 %.sroa.31.2.lcssa, %i.d
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.7.2.lcssa, i64 2
  br label %bb.d

bb.e:                                             ; preds = %._crit_edge74
  %i.ba = tail call zeroext i1 @_RNvXs0_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortNtNtCsfcggljOhZkm_12regex_syntax3hir15ClassBytesRangeNtB5_8IsFreeze9is_freezeB12_()
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bb = shl i64 %.sroa.31.2.lcssa, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %2, i64 %i.bb, i1 false)
  %i.bc = sub i64 %1, %.sroa.31.2.lcssa           ; 8 uses
  %.not81 = icmp eq i64 %1, %.sroa.31.2.lcssa
  br i1 %.not81, label %._crit_edge80, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.bd = getelementptr [2 x i8], ptr %0, i64 %.sroa.31.2.lcssa ; 8 uses
  %min.iters.check = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.be = shl i64 %1, 1
  %i.bf = getelementptr i8, ptr %0, i64 %i.be
  %i.bg = shl i64 %.sroa.31.2.lcssa, 1
  %i.bh = getelementptr i8, ptr %2, i64 %i.bg
  %bound0 = icmp ult ptr %i.bd, %i.c
  %bound1 = icmp ult ptr %i.bh, %i.bf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check103 = icmp ult i64 %i.bc, 16
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %i.bc, 12
  %n.vec = and i64 %i.bc, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bj = xor i64 %index, -1
  %i.bk = getelementptr [2 x i8], ptr %i.c, i64 %i.bj ; 2 uses
  %i.bl = getelementptr [2 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 -14
  %i.bn = getelementptr i8, ptr %i.bk, i64 -30
  %wide.load = load <8 x i16>, ptr %i.bm, align 1, !alias.scope !23
  %wide.load104 = load <8 x i16>, ptr %i.bn, align 1, !alias.scope !23
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse105 = shufflevector <8 x i16> %wide.load104, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bo = getelementptr i8, ptr %i.bl, i64 16
  store <8 x i16> %reverse, ptr %i.bl, align 1, !alias.scope !24, !noalias !23
  store <8 x i16> %reverse105, ptr %i.bo, align 1, !alias.scope !24, !noalias !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge80, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !5

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec106 = and i64 %i.bc, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next110, %vec.epilog.vector.body ] ; 3 uses
  %i.bq = xor i64 %index107, -1
  %i.br = getelementptr [2 x i8], ptr %i.c, i64 %i.bq
  %i.bs = getelementptr [2 x i8], ptr %i.bd, i64 %index107
  %i.bt = getelementptr i8, ptr %i.br, i64 -6
  %wide.load108 = load <4 x i16>, ptr %i.bt, align 1, !alias.scope !23
  %reverse109 = shufflevector <4 x i16> %wide.load108, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse109, ptr %i.bs, align 1, !alias.scope !24, !noalias !23
  %index.next110 = add nuw i64 %index107, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next110, %n.vec106
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n111 = icmp eq i64 %i.bc, %n.vec106
  br i1 %cmp.n111, label %._crit_edge80, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.07.078.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec106, %vec.epilog.middle.block ] ; 3 uses
  %7 = sub i64 %1, %.sroa.31.2.lcssa
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.sroa.07.078.prol = phi i64 [ %i.bv, %vec.epilog.scalar.ph.prol ], [ %.sroa.07.078.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bv = add nuw i64 %.sroa.07.078.prol, 1       ; 2 uses
  %i.bw = xor i64 %.sroa.07.078.prol, -1
  %i.bx = getelementptr [2 x i8], ptr %i.c, i64 %i.bw
  %i.by = getelementptr [2 x i8], ptr %i.bd, i64 %.sroa.07.078.prol
  %i.bz = load i16, ptr %i.bx, align 1
  store i16 %i.bz, ptr %i.by, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !21

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.07.078.unr = phi i64 [ %.sroa.07.078.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bv, %vec.epilog.scalar.ph.prol ]
  %i.ca = sub i64 %.sroa.07.078.ph, %1
  %i.cb = add i64 %i.ca, %.sroa.31.2.lcssa
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %._crit_edge80, label %vec.epilog.scalar.ph

bb.g:                                             ; preds = %bb.e
  %i.cd = load i16, ptr %i.b, align 1
  store i16 %i.cd, ptr %.sroa.06.0, align 1
  br label %bb.f

._crit_edge80:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.f
  ret i64 %.sroa.31.2.lcssa

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.sroa.07.078 = phi i64 [ %i.cs, %vec.epilog.scalar.ph ], [ %.sroa.07.078.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ce = xor i64 %.sroa.07.078, -1
  %i.cf = getelementptr [2 x i8], ptr %i.c, i64 %i.ce
  %i.cg = getelementptr [2 x i8], ptr %i.bd, i64 %.sroa.07.078
  %i.ch = load i16, ptr %i.cf, align 1
  store i16 %i.ch, ptr %i.cg, align 1
  %i.ci = sub i64 -2, %.sroa.07.078
  %i.cj = getelementptr [2 x i8], ptr %i.c, i64 %i.ci
  %i.ck = getelementptr [2 x i8], ptr %i.bd, i64 %.sroa.07.078
  %i.cl = getelementptr i8, ptr %i.ck, i64 2
  %i.cm = load i16, ptr %i.cj, align 1
  store i16 %i.cm, ptr %i.cl, align 1
  %i.cn = sub i64 -3, %.sroa.07.078
  %i.co = getelementptr [2 x i8], ptr %i.c, i64 %i.cn
  %i.cp = getelementptr [2 x i8], ptr %i.bd, i64 %.sroa.07.078
  %i.cq = getelementptr i8, ptr %i.cp, i64 4
  %i.cr = load i16, ptr %i.co, align 1
  store i16 %i.cr, ptr %i.cq, align 1
  %i.cs = add nuw i64 %.sroa.07.078, 4            ; 2 uses
  %i.ct = sub i64 -4, %.sroa.07.078
  %i.cu = getelementptr [2 x i8], ptr %i.c, i64 %i.ct
  %i.cv = getelementptr [2 x i8], ptr %i.bd, i64 %.sroa.07.078
  %i.cw = getelementptr i8, ptr %i.cv, i64 6
  %i.cx = load i16, ptr %i.cu, align 1
  store i16 %i.cx, ptr %i.cw, align 1
  %exitcond.not.3 = icmp eq i64 %i.cs, %i.bc
  br i1 %exitcond.not.3, label %._crit_edge80, label %vec.epilog.scalar.ph, !llvm.loop !22
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_(ptr align 4 %0, i64 %1, ptr nofree align 4 captures(none) %2, i64 %3, i64 %4, i1 zeroext %5, ptr nofree readonly align 8 captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp uge i64 %3, %1
  %.not = icmp ult i64 %4, %1
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 6 uses
  %i.c = getelementptr [8 x i8], ptr %2, i64 %1   ; 8 uses
  %i.d = zext i1 %5 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23, %bb.b
  %.sroa.31.0 = phi i64 [ 0, %bb.b ], [ %i.bi, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %0, %bb.b ], [ %i.bj, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ] ; 3 uses
  %.sroa.53.0 = phi ptr [ %i.c, %bb.b ], [ %i.bf, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ] ; 2 uses
  %.sroa.06.0 = phi ptr [ null, %bb.b ], [ %i.bg, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ]
  %.sroa.0.0 = phi i64 [ %4, %bb.b ], [ %1, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ] ; 3 uses
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0, i64 3)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = icmp ult ptr %.sroa.7.0, %i.f
  br i1 %i.g, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit, label %._crit_edge

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit: ; preds = %bb.d, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit
  %.sroa.53.168 = phi ptr [ %i.al, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ], [ %.sroa.53.0, %bb.d ] ; 4 uses
  %.sroa.7.167 = phi ptr [ %i.aq, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ], [ %.sroa.7.0, %bb.d ] ; 6 uses
  %.sroa.31.166 = phi i64 [ %i.ap, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ], [ %.sroa.31.0, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr %6, align 8
  %i.i = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %i.h, ptr align 4 %i.b, ptr align 4 %.sroa.7.167) ; 2 uses
  %i.j = xor i1 %i.i, true
  %i.k = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -8
  %spec.select = select i1 %i.i, ptr %i.k, ptr %2
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.sroa.31.166
  %i.m = load i64, ptr %.sroa.7.167, align 4
  store i64 %i.m, ptr %i.l, align 4
  %i.n = zext i1 %i.j to i64
  %i.o = add i64 %.sroa.31.166, %i.n              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 8 ; 2 uses
  %i.q = load ptr, ptr %6, align 8
  %i.r = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %i.q, ptr align 4 %i.b, ptr nonnull align 4 %i.p) ; 2 uses
  %i.s = xor i1 %i.r, true
  %i.t = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -16
  %.sroa.01.0.i14 = select i1 %i.r, ptr %i.t, ptr %2
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i14, i64 %i.o
  %i.v = load i64, ptr %i.p, align 4
  store i64 %i.v, ptr %i.u, align 4
  %i.w = zext i1 %i.s to i64
  %i.x = add i64 %i.o, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 16 ; 2 uses
  %i.z = load ptr, ptr %6, align 8
  %i.aa = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %i.z, ptr align 4 %i.b, ptr nonnull align 4 %i.y) ; 2 uses
  %i.ab = xor i1 %i.aa, true
  %i.ac = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -24
  %.sroa.01.0.i16 = select i1 %i.aa, ptr %i.ac, ptr %2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i16, i64 %i.x
  %i.ae = load i64, ptr %i.y, align 4
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = zext i1 %i.ab to i64
  %i.ag = add i64 %i.x, %i.af                     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %6, align 8
  %i.aj = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %i.ai, ptr align 4 %i.b, ptr nonnull align 4 %i.ah) ; 2 uses
  %i.ak = xor i1 %i.aj, true
  %i.al = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -32 ; 3 uses
  %.sroa.01.0.i18 = select i1 %i.aj, ptr %i.al, ptr %2
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i18, i64 %i.ag
  %i.an = load i64, ptr %i.ah, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = zext i1 %i.ak to i64
  %i.ap = add i64 %i.ag, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 32 ; 3 uses
  %i.ar = icmp ult ptr %i.aq, %i.f
  br i1 %i.ar, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit, %bb.d
  %.sroa.31.1.lcssa = phi i64 [ %.sroa.31.0, %bb.d ], [ %i.ap, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ] ; 2 uses
  %.sroa.7.1.lcssa = phi ptr [ %.sroa.7.0, %bb.d ], [ %i.aq, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ] ; 3 uses
  %.sroa.53.1.lcssa = phi ptr [ %.sroa.53.0, %bb.d ], [ %i.al, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0 ; 2 uses
  %i.at = icmp ult ptr %.sroa.7.1.lcssa, %i.as
  br i1 %i.at, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21, label %._crit_edge74

._crit_edge74:                                    ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21, %._crit_edge
  %.sroa.31.2.lcssa = phi i64 [ %.sroa.31.1.lcssa, %._crit_edge ], [ %i.bc, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ] ; 10 uses
  %.sroa.7.2.lcssa = phi ptr [ %.sroa.7.1.lcssa, %._crit_edge ], [ %i.bd, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ] ; 2 uses
  %.sroa.53.2.lcssa = phi ptr [ %.sroa.53.1.lcssa, %._crit_edge ], [ %i.ay, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ]
  %i.au = icmp eq i64 %.sroa.0.0, %1
  br i1 %i.au, label %bb.e, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21: ; preds = %._crit_edge, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21
  %.sroa.53.273 = phi ptr [ %i.ay, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ], [ %.sroa.53.1.lcssa, %._crit_edge ]
  %.sroa.7.272 = phi ptr [ %i.bd, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ], [ %.sroa.7.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.31.271 = phi i64 [ %i.bc, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ], [ %.sroa.31.1.lcssa, %._crit_edge ] ; 2 uses
  %i.av = load ptr, ptr %6, align 8
  %i.aw = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %i.av, ptr align 4 %i.b, ptr align 4 %.sroa.7.272) ; 2 uses
  %i.ax = xor i1 %i.aw, true
  %i.ay = getelementptr inbounds i8, ptr %.sroa.53.273, i64 -8 ; 3 uses
  %spec.select64 = select i1 %i.aw, ptr %i.ay, ptr %2
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %spec.select64, i64 %.sroa.31.271
  %i.ba = load i64, ptr %.sroa.7.272, align 4
  store i64 %i.ba, ptr %i.az, align 4
  %i.bb = zext i1 %i.ax to i64
  %i.bc = add i64 %.sroa.31.271, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.7.272, i64 8 ; 3 uses
  %i.be = icmp ult ptr %i.bd, %i.as
  br i1 %i.be, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21, label %._crit_edge74

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23: ; preds = %._crit_edge74
  %i.bf = getelementptr inbounds i8, ptr %.sroa.53.2.lcssa, i64 -8 ; 2 uses
  %spec.select65 = select i1 %5, ptr %2, ptr %i.bf
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %spec.select65, i64 %.sroa.31.2.lcssa ; 2 uses
  %i.bh = load i64, ptr %.sroa.7.2.lcssa, align 4
  store i64 %i.bh, ptr %i.bg, align 4
  %i.bi = add i64 %.sroa.31.2.lcssa, %i.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.7.2.lcssa, i64 8
  br label %bb.d

bb.e:                                             ; preds = %._crit_edge74
  %i.bk = tail call zeroext i1 @_RNvXs0_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtB5_8IsFreeze9is_freezeB12_()
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bl = shl i64 %.sroa.31.2.lcssa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %2, i64 %i.bl, i1 false)
  %i.bm = sub i64 %1, %.sroa.31.2.lcssa           ; 4 uses
  %.not81 = icmp eq i64 %1, %.sroa.31.2.lcssa
  br i1 %.not81, label %._crit_edge80, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bn = getelementptr [8 x i8], ptr %0, i64 %.sroa.31.2.lcssa ; 7 uses
  %min.iters.check = icmp ult i64 %i.bm, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bo = shl i64 %1, 3
  %i.bp = getelementptr i8, ptr %0, i64 %i.bo
  %i.bq = shl i64 %.sroa.31.2.lcssa, 3
  %i.br = getelementptr i8, ptr %2, i64 %i.bq
  %bound0 = icmp ult ptr %i.bn, %i.c
  %bound1 = icmp ult ptr %i.br, %i.bp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bm, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = xor i64 %index, -1
  %i.bt = getelementptr [8 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 -8
  %i.bw = getelementptr i8, ptr %i.bt, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bv, align 4, !alias.scope !31
  %wide.load103 = load <2 x i64>, ptr %i.bw, align 4, !alias.scope !31
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse104 = shufflevector <2 x i64> %wide.load103, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bx = getelementptr i8, ptr %i.bu, i64 16
  store <2 x i64> %reverse, ptr %i.bu, align 4, !alias.scope !32, !noalias !31
  store <2 x i64> %reverse104, ptr %i.bx, align 4, !alias.scope !32, !noalias !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge80, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.07.078.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %7 = sub i64 %1, %.sroa.31.2.lcssa
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.07.078.prol = phi i64 [ %i.bz, %scalar.ph.prol ], [ %.sroa.07.078.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bz = add nuw i64 %.sroa.07.078.prol, 1       ; 2 uses
  %i.ca = xor i64 %.sroa.07.078.prol, -1
  %i.cb = getelementptr [8 x i8], ptr %i.c, i64 %i.ca
  %i.cc = getelementptr [8 x i8], ptr %i.bn, i64 %.sroa.07.078.prol
  %i.cd = load i64, ptr %i.cb, align 4
  store i64 %i.cd, ptr %i.cc, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !29

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.07.078.unr = phi i64 [ %.sroa.07.078.ph, %scalar.ph.preheader ], [ %i.bz, %scalar.ph.prol ]
  %i.ce = sub i64 %.sroa.07.078.ph, %1
  %i.cf = add i64 %i.ce, %.sroa.31.2.lcssa
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %._crit_edge80, label %scalar.ph

bb.g:                                             ; preds = %bb.e
  %i.ch = load i64, ptr %i.b, align 4
  store i64 %i.ch, ptr %.sroa.06.0, align 4
  br label %bb.f

._crit_edge80:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  ret i64 %.sroa.31.2.lcssa

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.07.078 = phi i64 [ %i.cw, %scalar.ph ], [ %.sroa.07.078.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ci = xor i64 %.sroa.07.078, -1
  %i.cj = getelementptr [8 x i8], ptr %i.c, i64 %i.ci
  %i.ck = getelementptr [8 x i8], ptr %i.bn, i64 %.sroa.07.078
  %i.cl = load i64, ptr %i.cj, align 4
  store i64 %i.cl, ptr %i.ck, align 4
  %i.cm = sub i64 -2, %.sroa.07.078
  %i.cn = getelementptr [8 x i8], ptr %i.c, i64 %i.cm
  %i.co = getelementptr [8 x i8], ptr %i.bn, i64 %.sroa.07.078
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %i.cq = load i64, ptr %i.cn, align 4
  store i64 %i.cq, ptr %i.cp, align 4
  %i.cr = sub i64 -3, %.sroa.07.078
  %i.cs = getelementptr [8 x i8], ptr %i.c, i64 %i.cr
  %i.ct = getelementptr [8 x i8], ptr %i.bn, i64 %.sroa.07.078
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cs, align 4
  store i64 %i.cv, ptr %i.cu, align 4
  %i.cw = add nuw i64 %.sroa.07.078, 4            ; 2 uses
  %i.cx = sub i64 -4, %.sroa.07.078
  %i.cy = getelementptr [8 x i8], ptr %i.c, i64 %i.cx
  %i.cz = getelementptr [8 x i8], ptr %i.bn, i64 %.sroa.07.078
  %i.da = getelementptr i8, ptr %i.cz, i64 24
  %i.db = load i64, ptr %i.cy, align 4
  store i64 %i.db, ptr %i.da, align 4
  %exitcond.not.3 = icmp eq i64 %i.cw, %i.bm
  br i1 %exitcond.not.3, label %._crit_edge80, label %scalar.ph, !llvm.loop !30
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNvYB1d_NtNtBa_3cmp10PartialOrd2ltEB1h_(ptr align 4 %0, i64 %1, ptr nofree align 4 captures(none) %2, i64 %3, i64 %4, i1 zeroext %5, ptr %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp uge i64 %3, %1
  %.not = icmp ult i64 %4, %1
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 6 uses
  %i.c = getelementptr [8 x i8], ptr %2, i64 %1   ; 8 uses
  %i.d = zext i1 %5 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23, %bb.b
  %.sroa.31.0 = phi i64 [ 0, %bb.b ], [ %i.ay, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %0, %bb.b ], [ %i.az, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ] ; 3 uses
  %.sroa.53.0 = phi ptr [ %i.c, %bb.b ], [ %i.av, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ] ; 2 uses
  %.sroa.06.0 = phi ptr [ null, %bb.b ], [ %i.aw, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ]
  %.sroa.0.0 = phi i64 [ %4, %bb.b ], [ %1, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23 ] ; 3 uses
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0, i64 3)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = icmp ult ptr %.sroa.7.0, %i.f
  br i1 %i.g, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit, label %._crit_edge

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit: ; preds = %bb.d, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit
  %.sroa.53.168 = phi ptr [ %i.ad, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ], [ %.sroa.53.0, %bb.d ] ; 4 uses
  %.sroa.7.167 = phi ptr [ %i.ai, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ], [ %.sroa.7.0, %bb.d ] ; 6 uses
  %.sroa.31.166 = phi i64 [ %i.ah, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ], [ %.sroa.31.0, %bb.d ] ; 2 uses
  %i.h = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %6, ptr align 4 %.sroa.7.167, ptr align 4 %i.b) ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -8
  %spec.select = select i1 %i.h, ptr %2, ptr %i.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.sroa.31.166
  %i.k = load i64, ptr %.sroa.7.167, align 4
  store i64 %i.k, ptr %i.j, align 4
  %i.l = zext i1 %i.h to i64
  %i.m = add i64 %.sroa.31.166, %i.l              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 8 ; 2 uses
  %i.o = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %6, ptr nonnull align 4 %i.n, ptr align 4 %i.b) ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -16
  %.sroa.01.0.i14 = select i1 %i.o, ptr %2, ptr %i.p
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i14, i64 %i.m
  %i.r = load i64, ptr %i.n, align 4
  store i64 %i.r, ptr %i.q, align 4
  %i.s = zext i1 %i.o to i64
  %i.t = add i64 %i.m, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 16 ; 2 uses
  %i.v = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %6, ptr nonnull align 4 %i.u, ptr align 4 %i.b) ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -24
  %.sroa.01.0.i16 = select i1 %i.v, ptr %2, ptr %i.w
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i16, i64 %i.t
  %i.y = load i64, ptr %i.u, align 4
  store i64 %i.y, ptr %i.x, align 4
  %i.z = zext i1 %i.v to i64
  %i.aa = add i64 %i.t, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 24 ; 2 uses
  %i.ac = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %6, ptr nonnull align 4 %i.ab, ptr align 4 %i.b) ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.53.168, i64 -32 ; 3 uses
  %.sroa.01.0.i18 = select i1 %i.ac, ptr %2, ptr %i.ad
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i18, i64 %i.aa
  %i.af = load i64, ptr %i.ab, align 4
  store i64 %i.af, ptr %i.ae, align 4
  %i.ag = zext i1 %i.ac to i64
  %i.ah = add i64 %i.aa, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.167, i64 32 ; 3 uses
  %i.aj = icmp ult ptr %i.ai, %i.f
  br i1 %i.aj, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit, %bb.d
  %.sroa.31.1.lcssa = phi i64 [ %.sroa.31.0, %bb.d ], [ %i.ah, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ] ; 2 uses
  %.sroa.7.1.lcssa = phi ptr [ %.sroa.7.0, %bb.d ], [ %i.ai, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ] ; 3 uses
  %.sroa.53.1.lcssa = phi ptr [ %.sroa.53.0, %bb.d ], [ %i.ad, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0 ; 2 uses
  %i.al = icmp ult ptr %.sroa.7.1.lcssa, %i.ak
  br i1 %i.al, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21, label %._crit_edge74

._crit_edge74:                                    ; preds = %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21, %._crit_edge
  %.sroa.31.2.lcssa = phi i64 [ %.sroa.31.1.lcssa, %._crit_edge ], [ %i.as, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ] ; 10 uses
  %.sroa.7.2.lcssa = phi ptr [ %.sroa.7.1.lcssa, %._crit_edge ], [ %i.at, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ] ; 2 uses
  %.sroa.53.2.lcssa = phi ptr [ %.sroa.53.1.lcssa, %._crit_edge ], [ %i.ao, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ]
  %i.am = icmp eq i64 %.sroa.0.0, %1
  br i1 %i.am, label %bb.e, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21: ; preds = %._crit_edge, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21
  %.sroa.53.273 = phi ptr [ %i.ao, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ], [ %.sroa.53.1.lcssa, %._crit_edge ]
  %.sroa.7.272 = phi ptr [ %i.at, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ], [ %.sroa.7.1.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.31.271 = phi i64 [ %i.as, %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21 ], [ %.sroa.31.1.lcssa, %._crit_edge ] ; 2 uses
  %i.an = tail call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB12_3ops8function5FnMutTRB5_B29_EE8call_mutB9_(ptr %6, ptr align 4 %.sroa.7.272, ptr align 4 %i.b) ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.53.273, i64 -8 ; 3 uses
  %spec.select64 = select i1 %i.an, ptr %2, ptr %i.ao
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %spec.select64, i64 %.sroa.31.271
  %i.aq = load i64, ptr %.sroa.7.272, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = zext i1 %i.an to i64
  %i.as = add i64 %.sroa.31.271, %i.ar            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.7.272, i64 8 ; 3 uses
  %i.au = icmp ult ptr %i.at, %i.ak
  br i1 %i.au, label %_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit21, label %._crit_edge74

_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeE13partition_oneB1l_.exit23: ; preds = %._crit_edge74
  %i.av = getelementptr inbounds i8, ptr %.sroa.53.2.lcssa, i64 -8 ; 2 uses
  %spec.select65 = select i1 %5, ptr %2, ptr %i.av
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %spec.select65, i64 %.sroa.31.2.lcssa ; 2 uses
  %i.ax = load i64, ptr %.sroa.7.2.lcssa, align 4
  store i64 %i.ax, ptr %i.aw, align 4
  %i.ay = add i64 %.sroa.31.2.lcssa, %i.d
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.7.2.lcssa, i64 8
  br label %bb.d

bb.e:                                             ; preds = %._crit_edge74
  %i.ba = tail call zeroext i1 @_RNvXs0_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortNtNtCsfcggljOhZkm_12regex_syntax3hir17ClassUnicodeRangeNtB5_8IsFreeze9is_freezeB12_()
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.bb = shl i64 %.sroa.31.2.lcssa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %2, i64 %i.bb, i1 false)
  %i.bc = sub i64 %1, %.sroa.31.2.lcssa           ; 4 uses
  %.not81 = icmp eq i64 %1, %.sroa.31.2.lcssa
  br i1 %.not81, label %._crit_edge80, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bd = getelementptr [8 x i8], ptr %0, i64 %.sroa.31.2.lcssa ; 7 uses
  %min.iters.check = icmp ult i64 %i.bc, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.be = shl i64 %1, 3
  %i.bf = getelementptr i8, ptr %0, i64 %i.be
  %i.bg = shl i64 %.sroa.31.2.lcssa, 3
  %i.bh = getelementptr i8, ptr %2, i64 %i.bg
  %bound0 = icmp ult ptr %i.bd, %i.c
  %bound1 = icmp ult ptr %i.bh, %i.bf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = xor i64 %index, -1
  %i.bj = getelementptr [8 x i8], ptr %i.c, i64 %i.bi ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 -8
  %i.bm = getelementptr i8, ptr %i.bj, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bl, align 4, !alias.scope !39
  %wide.load103 = load <2 x i64>, ptr %i.bm, align 4, !alias.scope !39
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse104 = shufflevector <2 x i64> %wide.load103, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  store <2 x i64> %reverse, ptr %i.bk, align 4, !alias.scope !40, !noalias !39
  store <2 x i64> %reverse104, ptr %i.bn, align 4, !alias.scope !40, !noalias !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge80, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.07.078.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %7 = sub i64 %1, %.sroa.31.2.lcssa
  %xtraiter = and i64 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.07.078.prol = phi i64 [ %i.bp, %scalar.ph.prol ], [ %.sroa.07.078.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bp = add nuw i64 %.sroa.07.078.prol, 1       ; 2 uses
  %i.bq = xor i64 %.sroa.07.078.prol, -1
  %i.br = getelementptr [8 x i8], ptr %i.c, i64 %i.bq
  %i.bs = getelementptr [8 x i8], ptr %i.bd, i64 %.sroa.07.078.prol
  %i.bt = load i64, ptr %i.br, align 4
  store i64 %i.bt, ptr %i.bs, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !37

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.07.078.unr = phi i64 [ %.sroa.07.078.ph, %scalar.ph.preheader ], [ %i.bp, %scalar.ph.prol ]
  %i.bu = sub i64 %.sroa.07.078.ph, %1
  %i.bv = add i64 %i.bu, %.sroa.31.2.lcssa
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge80, label %scalar.ph

bb.g:                                             ; preds = %bb.e
  %i.bx = load i64, ptr %i.b, align 4
  store i64 %i.bx, ptr %.sroa.06.0, align 4
  br label %bb.f

._crit_edge80:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  ret i64 %.sroa.31.2.lcssa

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.07.078 = phi i64 [ %i.cm, %scalar.ph ], [ %.sroa.07.078.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.by = xor i64 %.sroa.07.078, -1
  %i.bz = getelementptr [8 x i8], ptr %i.c, i64 %i.by
  %i.ca = getelementptr [8 x i8], ptr %i.bd, i64 %.sroa.07.078
  %i.cb = load i64, ptr %i.bz, align 4
  store i64 %i.cb, ptr %i.ca, align 4
  %i.cc = sub i64 -2, %.sroa.07.078
  %i.cd = getelementptr [8 x i8], ptr %i.c, i64 %i.cc
  %i.ce = getelementptr [8 x i8], ptr %i.bd, i64 %.sroa.07.078
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cd, align 4
  store i64 %i.cg, ptr %i.cf, align 4
  %i.ch = sub i64 -3, %.sroa.07.078
  %i.ci = getelementptr [8 x i8], ptr %i.c, i64 %i.ch
  %i.cj = getelementptr [8 x i8], ptr %i.bd, i64 %.sroa.07.078
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ci, align 4
  store i64 %i.cl, ptr %i.ck, align 4
  %i.cm = add nuw i64 %.sroa.07.078, 4            ; 2 uses
  %i.cn = sub i64 -4, %.sroa.07.078
  %i.co = getelementptr [8 x i8], ptr %i.c, i64 %i.cn
  %i.cp = getelementptr [8 x i8], ptr %i.bd, i64 %.sroa.07.078
  %i.cq = getelementptr i8, ptr %i.cp, i64 24
  %i.cr = load i64, ptr %i.co, align 4
  store i64 %i.cr, ptr %i.cq, align 4
  %exitcond.not.3 = icmp eq i64 %i.cm, %i.bc
  br i1 %exitcond.not.3, label %._crit_edge80, label %scalar.ph, !llvm.loop !38
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i32 %4, ptr align 8 %5, ptr %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, 33
  br i1 %i.d, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.fr = freeze ptr %5
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph69 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.am, %.outer ] ; 4 uses
  %.sroa.16.0.ph68 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.al, %.outer ] ; 4 uses
  %.sroa.025.0.ph67 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %.us-phi60, %.outer ] ; 3 uses
  %.sroa.028.0.ph66 = phi ptr [ %.fr, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %.not = icmp eq ptr %.sroa.028.0.ph66, null
  %i.h = icmp eq i32 %.sroa.025.0.ph67, 0         ; 2 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.h, label %.split.us, label %.lr.ph200

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.h, label %.split.us, label %.lr.ph207

.lr.ph.split.us:                                  ; preds = %bb.c
  %i.i = icmp eq i32 %i.j, 0
  br i1 %i.i, label %.split.us, label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.sroa.025.049.us206 = phi i32 [ %i.j, %.lr.ph.split.us ], [ %.sroa.025.0.ph67, %.lr.ph.split.us.preheader ]
  %.sroa.16.050.us205 = phi i64 [ %i.r, %.lr.ph.split.us ], [ %.sroa.16.0.ph68, %.lr.ph.split.us.preheader ] ; 6 uses
  %.sroa.0.051.us204 = phi ptr [ %i.q, %.lr.ph.split.us ], [ %.sroa.0.0.ph69, %.lr.ph.split.us.preheader ] ; 5 uses
  %i.j = add i32 %.sroa.025.049.us206, -1         ; 4 uses
  %i.k = call i64 @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr align 8 %.sroa.0.051.us204, i64 %.sroa.16.050.us205, ptr %6) ; 5 uses
  %i.l = icmp ult i64 %i.k, %.sroa.16.050.us205
  br i1 %i.l, label %bb.b, label %.split57.us

bb.b:                                             ; preds = %.lr.ph207
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.051.us204, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  %i.n = call zeroext i1 @_RNvXs0_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNtB5_8IsFreeze9is_freezeB12_()
  %i.o = call i64 @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYB1d_NtNtBa_3cmp10PartialOrd2ltEB1h_(ptr nonnull align 8 %.sroa.0.051.us204, i64 %.sroa.16.050.us205, ptr align 8 %2, i64 %3, i64 %i.k, i1 zeroext false, ptr %6) ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %..us = select i1 %i.n, ptr %i.c, ptr null
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast4Span12split_at_mutBy_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %.sroa.0.051.us204, i64 %.sroa.16.050.us205, i64 %i.o, ptr nonnull align 8 @2)
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = load i64, ptr %i.e, align 8              ; 4 uses
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = load i64, ptr %i.g, align 8
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr align 8 %i.s, i64 %i.t, ptr align 8 %2, i64 %3, i32 %i.j, ptr align 8 %..us, ptr %6)
  %i.u = icmp ult i64 %i.r, 33
  br i1 %i.u, label %.outer._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %bb.g
  %i.v = icmp eq i32 %i.w, 0
  br i1 %i.v, label %.split.us, label %.lr.ph200

.outer._crit_edge:                                ; preds = %.outer, %bb.g, %bb.c, %bb.a
  %.sroa.16.0.lcssa = phi i64 [ %i.r, %bb.c ], [ %1, %bb.a ], [ %i.af, %bb.g ], [ %i.al, %.outer ]
  %.sroa.0.0.lcssa = phi ptr [ %i.q, %bb.c ], [ %0, %bb.a ], [ %i.ae, %bb.g ], [ %i.am, %.outer ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr align 8 %.sroa.0.0.lcssa, i64 range(i64 0, 33) %.sroa.16.0.lcssa, ptr align 8 %2, i64 %3, ptr %6)
  br label %bb.d

.split.us:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split.us.preheader, %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.af, %.lr.ph.split ], [ %i.r, %.lr.ph.split.us ], [ %.sroa.16.0.ph68, %.lr.ph.split.us.preheader ], [ %.sroa.16.0.ph68, %.lr.ph.split.preheader ]
  %.us-phi55 = phi ptr [ %i.ae, %.lr.ph.split ], [ %i.q, %.lr.ph.split.us ], [ %.sroa.0.0.ph69, %.lr.ph.split.us.preheader ], [ %.sroa.0.0.ph69, %.lr.ph.split.preheader ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYBW_NtNtBa_3cmp10PartialOrd2ltEB10_(ptr align 8 %.us-phi55, i64 %.us-phi, ptr align 8 %2, i64 %3, i1 zeroext true, ptr %6)
  br label %bb.d

.lr.ph200:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %.sroa.025.049199 = phi i32 [ %i.w, %.lr.ph.split ], [ %.sroa.025.0.ph67, %.lr.ph.split.preheader ]
  %.sroa.16.050198 = phi i64 [ %i.af, %.lr.ph.split ], [ %.sroa.16.0.ph68, %.lr.ph.split.preheader ] ; 7 uses
  %.sroa.0.051197 = phi ptr [ %i.ae, %.lr.ph.split ], [ %.sroa.0.0.ph69, %.lr.ph.split.preheader ] ; 6 uses
  %i.w = add i32 %.sroa.025.049199, -1            ; 5 uses
  %i.x = call i64 @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr align 8 %.sroa.0.051197, i64 %.sroa.16.050198, ptr %6) ; 6 uses
  %i.y = icmp ult i64 %i.x, %.sroa.16.050198
  br i1 %i.y, label %bb.e, label %.split57.us

bb.d:                                             ; preds = %.split.us, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %.lr.ph200
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.051197, i64 %i.x ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  %i.aa = call zeroext i1 @_RNvXs0_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNtB5_8IsFreeze9is_freezeB12_()
  %. = select i1 %i.aa, ptr %i.c, ptr null
  %i.ab = call zeroext i1 @_RNvYNvYNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBO_3ops8function5FnMutTRB5_B1U_EE8call_mutB9_(ptr %6, ptr nonnull align 8 %.sroa.028.0.ph66, ptr nonnull align 8 %i.z)
  br i1 %i.ab, label %bb.f, label %.thread

.split57.us:                                      ; preds = %.lr.ph200, %.lr.ph207
  %.us-phi58 = phi i64 [ %i.k, %.lr.ph207 ], [ %i.x, %.lr.ph200 ]
  %.us-phi59 = phi i64 [ %.sroa.16.050.us205, %.lr.ph207 ], [ %.sroa.16.050198, %.lr.ph200 ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 %.us-phi58, i64 %.us-phi59, ptr nonnull align 8 @1) #25
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ac = call i64 @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYB1d_NtNtBa_3cmp10PartialOrd2ltEB1h_(ptr nonnull align 8 %.sroa.0.051197, i64 %.sroa.16.050198, ptr align 8 %2, i64 %3, i64 %i.x, i1 zeroext false, ptr %6) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsfcggljOhZkm_12regex_syntax3ast4Span12split_at_mutBy_(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %.sroa.0.051197, i64 %.sroa.16.050198, i64 %i.ac, ptr nonnull align 8 @2)
  %i.ae = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.af = load i64, ptr %i.e, align 8             ; 4 uses
  %i.ag = load ptr, ptr %i.f, align 8
  %i.ah = load i64, ptr %i.g, align 8
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr align 8 %i.ag, i64 %i.ah, ptr align 8 %2, i64 %3, i32 %i.w, ptr align 8 %., ptr %6)
  %i.ai = icmp ult i64 %i.af, 33
  br i1 %i.ai, label %.outer._crit_edge, label %.lr.ph.split

.thread:                                          ; preds = %bb.f, %bb.e, %bb.b
  %.us-phi60 = phi i32 [ %i.j, %bb.b ], [ %i.w, %bb.e ], [ %i.w, %bb.f ]
  %.us-phi61 = phi i64 [ %i.k, %bb.b ], [ %i.x, %bb.e ], [ %i.x, %bb.f ]
  %.us-phi62 = phi i64 [ %.sroa.16.050.us205, %bb.b ], [ %.sroa.16.050198, %bb.e ], [ %.sroa.16.050198, %bb.f ] ; 5 uses
  %.us-phi63 = phi ptr [ %.sroa.0.051.us204, %bb.b ], [ %.sroa.0.051197, %bb.e ], [ %.sroa.0.051197, %bb.f ] ; 2 uses
  store ptr %6, ptr %i.b, align 8
  %i.aj = call i64 @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfcggljOhZkm_12regex_syntax3ast4SpanNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_(ptr nonnull align 8 %.us-phi63, i64 %.us-phi62, ptr align 8 %2, i64 %3, i64 %.us-phi61, i1 zeroext true, ptr nonnull align 8 %i.b) ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, %.us-phi62
  br i1 %i.ak, label %bb.h, label %.outer

.outer:                                           ; preds = %.thread
  %i.al = sub nuw i64 %.us-phi62, %i.aj           ; 3 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %.us-phi63, i64 %i.aj ; 2 uses
  %i.an = icmp ult i64 %i.al, 33
  br i1 %i.an, label %.outer._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %.thread
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 %i.aj, i64 %.us-phi62, i64 %.us-phi62, ptr nonnull align 8 @3) #25
  unreachable
end_hunk_0
