Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.14?download=true
inline.NumInlined: 4475
inline.NumDeleted: 1583
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1q_:bb.a
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1c_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCscdodAO9FK5_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCscdodAO9FK5_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCscdodAO9FK5_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.07 = phi ptr [ %i.q, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCscdodAO9FK5_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.c, %.lr.ph.preheader ] ; 10 uses
  %i.d = getelementptr i8, ptr %.sroa.0.07, i64 8 ; 2 uses
  %.val11.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr i8, ptr %.sroa.0.07, i64 16 ; 2 uses
  %.val12.i = load i64, ptr %i.e, align 8, !noundef !4
  %i.f = getelementptr i8, ptr %.sroa.0.07, i64 -16
  %.val13.i = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr i8, ptr %.sroa.0.07, i64 -8
  %.val14.i = load i64, ptr %i.g, align 8, !noundef !4
  %i.h = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val13.i, i64 noundef %.val14.i) ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.h, -2
  %i.i = icmp slt i8 %i.h, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.i
  br i1 %.sroa.0.0.i.i.i, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCscdodAO9FK5_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %.lr.ph
  %.sroa.015.0.copyload.i = load i64, ptr %.sroa.0.07, align 8 ; 2 uses
  %.sroa.416.0.copyload.i = load ptr, ptr %i.d, align 8 ; 3 uses
  %.sroa.517.0.copyload.i = load i64, ptr %i.e, align 8 ; 3 uses
  %.sroa.0.0.i18 = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i18, i64 24, i1 false)
  %i.j = icmp eq ptr %.sroa.0.0.i18, %0
  br i1 %i.j, label %._crit_edge23, label %.lr.ph22

bb.e:                                             ; preds = %bb.f
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i20, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i20, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i64 24, i1 false)
  %i.k = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.k, label %._crit_edge23, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i20 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i18, %bb.d ] ; 6 uses
  %.sroa.5.0.i19 = phi ptr [ %.sroa.0.0.i20, %bb.e ], [ %.sroa.0.07, %bb.d ] ; 5 uses
  %i.l = getelementptr i8, ptr %.sroa.5.0.i19, i64 -40
  %.val9.i = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr i8, ptr %.sroa.5.0.i19, i64 -32
  %.val10.i = load i64, ptr %i.m, align 8, !noundef !4
  %i.n = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.416.0.copyload.i, i64 noundef %.sroa.517.0.copyload.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %.lr.ph22
  %.not.i.i15.i = icmp ne i8 %i.n, -2
  %i.o = icmp slt i8 %i.n, 0
  %.sroa.0.0.i.i16.i = and i1 %.not.i.i15.i, %i.o
  br i1 %.sroa.0.0.i.i16.i, label %bb.e, label %._crit_edge23

._crit_edge23:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.07, %bb.d ], [ %.sroa.0.0.i20, %bb.e ], [ %.sroa.5.0.i19, %bb.f ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i20, %bb.f ]
  store i64 %.sroa.015.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !4257
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store ptr %.sroa.416.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !4257
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i64 %.sroa.517.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !4257
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCscdodAO9FK5_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %.lr.ph22
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.015.0.copyload.i, ptr %.sroa.0.0.i20, align 8, !noalias !4258
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i19, i64 -16
  store ptr %.sroa.416.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !4258
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i19, i64 -8
  store i64 %.sroa.517.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !4258
  resume { ptr, i32 } %i.p

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCscdodAO9FK5_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %._crit_edge23
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.0.07 = phi ptr [ %i.aa, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -1 ; 4 uses
  %.val9.i = load i8, ptr %.sroa.0.07, align 1, !range !26, !noundef !4 ; 6 uses
  %.val10.i = load i8, ptr %i.d, align 1, !range !26, !noundef !4 ; 5 uses
  %i.e = icmp ne i8 %.val9.i, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %.val9.i, -4
  %i.g = icmp samesign ugt i8 %.val9.i, 3
  %narrow.i.i.i.i = select i1 %i.g, i8 %i.f, i8 2
  %narrow.i.i.i.fr.i = freeze i8 %narrow.i.i.i.i  ; 3 uses
  %i.h = icmp ne i8 %.val10.i, 6
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i8 %.val10.i, -4
  %i.j = icmp samesign ugt i8 %.val10.i, 3
  %narrow1.i.i.i.i = select i1 %i.j, i8 %i.i, i8 2 ; 2 uses
  %i.k = icmp eq i8 %narrow.i.i.i.fr.i, 2         ; 2 uses
  %i.l = icmp eq i8 %narrow1.i.i.i.i, 2
  %or.cond.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %.split.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit.i

.split.i:                                         ; preds = %.lr.ph
  %i.m = icmp samesign ult i8 %.val9.i, %.val10.i
  br i1 %i.m, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %.lr.ph
  %i.n = icmp samesign ult i8 %narrow.i.i.i.fr.i, %narrow1.i.i.i.i
  br i1 %i.n, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %.split.i
  store i8 %.val10.i, ptr %.sroa.0.07, align 1
  %i.o = icmp eq ptr %i.d, %0
  br i1 %i.o, label %.split5._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  br i1 %i.k, label %.lr.ph.split.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.us.i

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.us.i: ; preds = %.lr.ph.i, %.backedge.us.i
  %.sroa.0.06.us.i = phi ptr [ %i.p, %.backedge.us.i ], [ %i.d, %.lr.ph.i ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.06.us.i, i64 -1 ; 3 uses
  %.val8.us.i = load i8, ptr %i.p, align 1, !range !26, !noundef !4 ; 4 uses
  %i.q = icmp ne i8 %.val8.us.i, 6
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i8 %.val8.us.i, -4
  %i.s = icmp samesign ugt i8 %.val8.us.i, 3
  %narrow1.i.i.i12.us.i = select i1 %i.s, i8 %i.r, i8 2
  %i.t = icmp samesign ult i8 %narrow.i.i.i.fr.i, %narrow1.i.i.i12.us.i
  br i1 %i.t, label %.backedge.us.i, label %.split5._crit_edge.i

.backedge.us.i:                                   ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.us.i
  store i8 %.val8.us.i, ptr %.sroa.0.06.us.i, align 1
  %i.u = icmp eq ptr %i.p, %0
  br i1 %i.u, label %.split5._crit_edge.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.backedge.i
  %.sroa.0.06.i = phi ptr [ %i.v, %.backedge.i ], [ %i.d, %.lr.ph.i ] ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -1 ; 3 uses
  %.val8.i = load i8, ptr %i.v, align 1, !range !26, !noundef !4 ; 5 uses
  %i.w = icmp ne i8 %.val8.i, 6
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp samesign ult i8 %.val8.i, 4
  br i1 %i.x, label %.split5.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.i

.split5.i:                                        ; preds = %.lr.ph.split.i
  %i.y = icmp samesign ult i8 %.val9.i, %.val8.i
  br i1 %i.y, label %.backedge.i, label %.split5._crit_edge.i

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.i: ; preds = %.lr.ph.split.i
  %4 = add nsw i8 %.val8.i, -7
  %5 = icmp ult i8 %4, -3
  br i1 %5, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.i, %.split5.i
  store i8 %.val8.i, ptr %.sroa.0.06.i, align 1
  %i.z = icmp eq ptr %i.v, %0
  br i1 %i.z, label %.split5._crit_edge.i, label %.lr.ph.split.i

.split5._crit_edge.i:                             ; preds = %.backedge.us.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.us.i, %.backedge.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.i, %.split5.i, %bb.d
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.d ], [ %.sroa.0.06.i, %.split5.i ], [ %0, %.backedge.i ], [ %.sroa.0.06.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.i ], [ %0, %.backedge.us.i ], [ %.sroa.0.06.us.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit15.us.i ]
  store i8 %.val9.i, ptr %.sroa.0.0.lcssa.i, align 1, !noalias !4263
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.split.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %.split5._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif9SarifRuleNCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCNvXs_B1o_NtB1o_12SarifEmitterNtB1q_7Emitter4emits1_0E0EB1s_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 54901024028897476) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #10 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [168 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [168 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif9SarifRuleNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvXs_B1a_NtB1a_12SarifEmitterNtB1c_7Emitter4emits1_0E0EB1e_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCNvMs9_B1o_NtB1o_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1w_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 128102389400760776) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 5 uses
  %.sroa.7.i = alloca [32 x i8], align 8          ; 5 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %2
  %.val = load ptr, ptr %3, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs9_B1a_NtB1a_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1i_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs9_B1a_NtB1a_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1i_.exit
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %i.u, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs9_B1a_NtB1a_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1i_.exit ] ; 11 uses
  %i.d = getelementptr i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  %.val13.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr i8, ptr %.sroa.0.07, i64 32 ; 2 uses
  %.val14.i = load i64, ptr %i.e, align 8, !noundef !4
  %i.f = getelementptr i8, ptr %.sroa.0.07, i64 -48
  %.val15.i = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr i8, ptr %.sroa.0.07, i64 -40
  %.val16.i = load i64, ptr %i.g, align 8, !noundef !4
  %.val.i.i = load ptr, ptr %.val, align 8, !nonnull !4, !noundef !4
  %i.h = load i8, ptr %.val.i.i, align 1, !range !6, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = tail call noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val13.i, i64 noundef %.val14.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i)
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %bb.e, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs9_B1a_NtB1a_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1i_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.07, i64 24, i1 false)
  %.sroa.415.0.copyload.i = load ptr, ptr %i.d, align 8 ; 3 uses
  %.sroa.516.0.copyload.i = load i64, ptr %i.e, align 8 ; 3 uses
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.617.0..sroa_idx.i, i64 32, i1 false)
  %.sroa.0.0.i19 = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -72 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i19, i64 72, i1 false)
  %i.l = icmp eq ptr %.sroa.0.0.i19, %0
  br i1 %i.l, label %._crit_edge24, label %.lr.ph23

bb.f:                                             ; preds = %bb.g
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i21, i64 -72 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i21, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0.i, i64 72, i1 false)
  %i.m = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.m, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i21 = phi ptr [ %.sroa.0.0.i, %bb.f ], [ %.sroa.0.0.i19, %bb.e ] ; 6 uses
  %.sroa.5.0.i20 = phi ptr [ %.sroa.0.0.i21, %bb.f ], [ %.sroa.0.07, %bb.e ] ; 6 uses
  %i.n = getelementptr i8, ptr %.sroa.5.0.i20, i64 -120
  %.val10.i = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %.sroa.5.0.i20, i64 -112
  %.val11.i = load i64, ptr %i.o, align 8, !noundef !4
  %.val.i17.i = load ptr, ptr %.val, align 8, !nonnull !4, !noundef !4
  %i.p = load i8, ptr %.val.i17.i, align 1, !range !6, !noundef !4
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = invoke noundef range(i8 -1, 2) i8 @_RNvMNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2_12SortingStyle7compare(i1 noundef zeroext %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.415.0.copyload.i, i64 noundef %.sroa.516.0.copyload.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph23
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %bb.f, label %._crit_edge24

._crit_edge24:                                    ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.07, %bb.e ], [ %.sroa.0.0.i21, %bb.f ], [ %.sroa.5.0.i20, %bb.g ] ; 3 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.e ], [ %0, %bb.f ], [ %.sroa.0.0.i21, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !4272
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -48
  store ptr %.sroa.415.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !4272
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -40
  store i64 %.sroa.516.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !4272
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !4272
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs9_B1a_NtB1a_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1i_.exit

bb.h:                                             ; preds = %.lr.ph23
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i21, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !4273
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i20, i64 -48
  store ptr %.sroa.415.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !4273
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i20, i64 -40
  store i64 %.sroa.516.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !4273
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i20, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !4273
  resume { ptr, i32 } %i.t

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sorting18StringSequenceItemNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs9_B1a_NtB1a_28MultilineStringSequenceValue23into_sorted_source_codes_0E0EB1i_.exit: ; preds = %bb.d, %._crit_edge24
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.b
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntryNCINvMB8_SB1m_16sort_unstable_byNCNvMsh_B1o_NtB1o_11BodyVisitor6finish0E0EB1w_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 60680079189834052) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #10 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ExceptionEntryNCINvMB8_SB18_16sort_unstable_byNCNvMsh_B1a_NtB1a_11BodyVisitor6finish0E0EB1i_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 152 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
end_hunk_0
