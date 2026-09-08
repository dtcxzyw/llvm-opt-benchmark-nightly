Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.12?download=true
inline.NumInlined: 193
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB1f_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1h_NtB1h_13SemanticModel29resolve_qualified_import_name0s_0E0EB1j_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i41.i30, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i41.i, i64 40, i1 false), !alias.scope !43, !noalias !42
  %i.du = icmp eq ptr %.sroa.0.0.i41.i, %i.a
  br i1 %i.du, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.0.0.i41.i30 = phi ptr [ %.sroa.0.0.i41.i, %bb.m ], [ %.sroa.0.0.i41.i28, %bb.l ] ; 5 uses
  %.sroa.5.0.i.i29 = phi ptr [ %.sroa.0.0.i41.i30, %bb.m ], [ %i.do, %bb.l ] ; 2 uses
  %i.dv = getelementptr i8, ptr %.sroa.5.0.i.i29, i64 -56
  %.val8.i42.i = load i32, ptr %i.dv, align 8, !alias.scope !43, !noalias !42, !noundef !3
  %i.dw = icmp ult i32 %.val9.i40.i, %.val8.i42.i
  br i1 %i.dw, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.do, %bb.l ], [ %.sroa.0.0.i41.i30, %bb.m ], [ %.sroa.5.0.i.i29, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %i.a, %bb.l ], [ %i.a, %bb.m ], [ %.sroa.0.0.i41.i30, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.lcssa.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false), !alias.scope !44
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -16
  store i32 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !43, !noalias !45
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ds, i64 12, i1 false), !alias.scope !44
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB18_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1a_NtB1a_13SemanticModel29resolve_qualified_import_name0s_0E0EB1c_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB18_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1a_NtB1a_13SemanticModel29resolve_qualified_import_name0s_0E0EB1c_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.dx = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dx, %i.c
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB1s_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1u_NtB1u_13SemanticModel29resolve_qualified_import_name0s_0E0EB1w_.exit: ; preds = %bb.a, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB1m_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1o_NtB1o_13SemanticModel29resolve_qualified_import_name0s_0E0EB1q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.5.i = alloca [12 x i8], align 4          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB18_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1a_NtB1a_13SemanticModel29resolve_qualified_import_name0s_0E0EB1c_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB18_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1a_NtB1a_13SemanticModel29resolve_qualified_import_name0s_0E0EB1c_.exit
  %.sroa.0.05 = phi ptr [ %i.k, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB18_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1a_NtB1a_13SemanticModel29resolve_qualified_import_name0s_0E0EB1c_.exit ], [ %i.c, %.lr.ph.preheader ] ; 9 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 24
  %.val9.i = load i32, ptr %i.d, align 8, !noundef !3 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 -16
  %.val10.i = load i32, ptr %i.e, align 8, !noundef !3
  %i.f = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.f, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB18_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1a_NtB1a_13SemanticModel29resolve_qualified_import_name0s_0E0EB1c_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, i64 24, i1 false)
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.511.0..sroa_idx.i, i64 12, i1 false)
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i8, i64 40, i1 false)
  %i.g = icmp eq ptr %.sroa.0.0.i8, %0
  br i1 %i.g, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i, i64 40, i1 false)
  %i.h = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.h, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.5.0.i9, i64 -56
  %.val8.i = load i32, ptr %i.i, align 8, !noundef !3
  %i.j = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.j, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !noalias !54
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store i32 %.val9.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !54
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, i64 12, i1 false), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB18_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1a_NtB1a_13SemanticModel29resolve_qualified_import_name0s_0E0EB1c_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB18_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1a_NtB1a_13SemanticModel29resolve_qualified_import_name0s_0E0EB1c_.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_(ptr noalias nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit
  %.sroa.0.07 = phi ptr [ %i.aa, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -1 ; 4 uses
  %.val9.i = load i8, ptr %.sroa.0.07, align 1, !range !4, !noundef !3 ; 6 uses
  %.val10.i = load i8, ptr %i.d, align 1, !range !4, !noundef !3 ; 5 uses
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
  br i1 %or.cond.i.i.i.i, label %.split.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i

.split.i:                                         ; preds = %.lr.ph
  %i.m = icmp samesign ult i8 %.val9.i, %.val10.i
  br i1 %i.m, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i: ; preds = %.lr.ph
  %i.n = icmp samesign ult i8 %narrow.i.i.i.fr.i, %narrow1.i.i.i.i
  br i1 %i.n, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

bb.d:                                             ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i, %.split.i
  store i8 %.val10.i, ptr %.sroa.0.07, align 1
  %i.o = icmp eq ptr %i.d, %0
  br i1 %i.o, label %.split5._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  br i1 %i.k, label %.lr.ph.split.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i: ; preds = %.lr.ph.i, %.backedge.us.i
  %.sroa.0.06.us.i = phi ptr [ %i.p, %.backedge.us.i ], [ %i.d, %.lr.ph.i ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.06.us.i, i64 -1 ; 3 uses
  %.val8.us.i = load i8, ptr %i.p, align 1, !range !4, !noundef !3 ; 4 uses
  %i.q = icmp ne i8 %.val8.us.i, 6
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i8 %.val8.us.i, -4
  %i.s = icmp samesign ugt i8 %.val8.us.i, 3
  %narrow1.i.i.i12.us.i = select i1 %i.s, i8 %i.r, i8 2
  %i.t = icmp samesign ult i8 %narrow.i.i.i.fr.i, %narrow1.i.i.i12.us.i
  br i1 %i.t, label %.backedge.us.i, label %.split5._crit_edge.i

.backedge.us.i:                                   ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i
  store i8 %.val8.us.i, ptr %.sroa.0.06.us.i, align 1
  %i.u = icmp eq ptr %i.p, %0
  br i1 %i.u, label %.split5._crit_edge.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.backedge.i
  %.sroa.0.06.i = phi ptr [ %i.v, %.backedge.i ], [ %i.d, %.lr.ph.i ] ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -1 ; 3 uses
  %.val8.i = load i8, ptr %i.v, align 1, !range !4, !noundef !3 ; 5 uses
  %i.w = icmp ne i8 %.val8.i, 6
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp samesign ult i8 %.val8.i, 4
  br i1 %i.x, label %.split5.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i

.split5.i:                                        ; preds = %.lr.ph.split.i
  %i.y = icmp samesign ult i8 %.val9.i, %.val8.i
  br i1 %i.y, label %.backedge.i, label %.split5._crit_edge.i

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i: ; preds = %.lr.ph.split.i
  %4 = icmp samesign ugt i8 %.val8.i, 6
  br i1 %4, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i, %.split5.i
  store i8 %.val8.i, ptr %.sroa.0.06.i, align 1
  %i.z = icmp eq ptr %i.v, %0
  br i1 %i.z, label %.split5._crit_edge.i, label %.lr.ph.split.i

.split5._crit_edge.i:                             ; preds = %.backedge.us.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i, %.backedge.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i, %.split5.i, %bb.d
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.d ], [ %.sroa.0.06.i, %.split5.i ], [ %0, %.backedge.i ], [ %.sroa.0.06.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i ], [ %0, %.backedge.us.i ], [ %.sroa.0.06.us.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i ]
  store i8 %.val9.i, ptr %.sroa.0.0.lcssa.i, align 1, !noalias !59
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit: ; preds = %.split.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i, %.split5._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB17_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B19_NtB19_13SemanticModel29resolve_qualified_import_name0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(40) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph118

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph118

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB1f_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1h_NtB1h_13SemanticModel29resolve_qualified_import_name0s_0E0EB1j_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.078.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.077.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB15_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B17_NtB17_13SemanticModel29resolve_qualified_import_name0s_0E0EB19_(ptr noalias noundef nonnull align 8 %.sroa.0.078.lcssa, i64 noundef %.sroa.15.077.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

.lr.ph118:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.075117 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.076116 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.077115 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.078114 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.f = add nsw i32 %.sroa.026.075117, -1        ; 3 uses
  %i.g = lshr i64 %.sroa.15.077115, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 160
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 280
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.15.077115, 64
  br i1 %i.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SBZ_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B11_NtB11_13SemanticModel29resolve_qualified_import_name0s_0E0EB13_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph118
  %i.k = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB14_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B16_NtB16_13SemanticModel29resolve_qualified_import_name0s_0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.078114, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB15_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B17_NtB17_13SemanticModel29resolve_qualified_import_name0s_0E0EB19_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SBZ_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B11_NtB11_13SemanticModel29resolve_qualified_import_name0s_0E0EB13_.exit.i: ; preds = %.lr.ph118
  %i.l = getelementptr i8, ptr %.sroa.0.078114, i64 24
  %.val6.i = load i32, ptr %i.l, align 8, !alias.scope !80, !noundef !3 ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 24
  %.val7.i = load i32, ptr %i.m, align 8, !alias.scope !80, !noundef !3 ; 2 uses
  %i.n = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 24
  %.val5.i = load i32, ptr %i.o, align 8, !alias.scope !80, !noundef !3 ; 2 uses
  %i.p = icmp ult i32 %.val6.i, %.val5.i
  %i.q = xor i1 %i.n, %i.p
  %i.r = icmp ult i32 %.val7.i, %.val5.i
  %i.s = xor i1 %i.n, %i.r
  %..i.i = select i1 %i.s, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.q, ptr %.sroa.0.078114, ptr %..i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB15_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B17_NtB17_13SemanticModel29resolve_qualified_import_name0s_0E0EB19_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB15_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B17_NtB17_13SemanticModel29resolve_qualified_import_name0s_0E0EB19_.exit: ; preds = %bb.b, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SBZ_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B11_NtB11_13SemanticModel29resolve_qualified_import_name0s_0E0EB13_.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SBZ_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B11_NtB11_13SemanticModel29resolve_qualified_import_name0s_0E0EB13_.exit.i ], [ %i.k, %bb.b ]
  %i.t = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.u = ptrtoint ptr %.sroa.0.078114 to i64
  %i.v = sub nuw i64 %i.t, %i.u                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.v, 40          ; 3 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.077115
  tail call void @llvm.assume(i1 %i.w)
  %.not = icmp eq ptr %.sroa.023.076116, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB15_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B17_NtB17_13SemanticModel29resolve_qualified_import_name0s_0E0EB19_.exit, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.077115, i64 noundef 0, i64 noundef range(i64 0, 230584300921369395) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !noalias !83
  %i.y = mul nuw nsw i64 %.sroa.15.077115, 40
  %i.z = getelementptr i8, ptr %.sroa.0.078114, i64 %i.y ; 2 uses
  %.sroa.11.025.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 80
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 24
  %.val1.i.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !85, !noalias !82 ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.ae, %.preheader.i.i ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep19.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 5 uses
  %.sroa.011.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.028.i.i, %.lr.ph.i.i ]
  %i.aa = icmp eq ptr %.sroa.11.1.i.i, %i.z       ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.aa, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aa, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %.val.i.i.i = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !86, !noundef !3
  %i.ab = icmp ult i32 %.val.i.i.i, %.val1.i.pre.i.i
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !alias.scope !87, !noalias !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.i.i, i64 40, i1 false), !noalias !86
  %i.ad = zext i1 %i.ab to i64
  %i.ae = add i64 %.sroa.19.1.i.i, %i.ad          ; 6 uses
  %.sroa.11.1.sroa.gep19.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 40
  br i1 %i.aa, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1z_NtB1z_13SemanticModel29resolve_qualified_import_name0s_0E0EB1B_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.11.028.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.025.i.i, %bb.d ] ; 4 uses
  %.sroa.011.027.i.i = phi ptr [ %.sroa.11.028.i.i, %.lr.ph.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %.sroa.19.026.i.i = phi i64 [ %i.aj, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.af = getelementptr i8, ptr %.sroa.011.027.i.i, i64 64
  %.val.i9.i.i = load i32, ptr %i.af, align 8, !alias.scope !87, !noalias !88, !noundef !3
  %i.ag = icmp ult i32 %.val.i9.i.i, %.val1.i.pre.i.i
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %.sroa.19.026.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.027.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !alias.scope !87, !noalias !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.028.i.i, i64 40, i1 false), !alias.scope !87, !noalias !88
  %i.ai = zext i1 %i.ag to i64
  %i.aj = add i64 %.sroa.19.026.i.i, %i.ai        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.028.i.i, i64 40 ; 3 uses
  %i.ak = icmp ult ptr %.sroa.11.0.i.i, %i.z
  br i1 %i.ak, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1z_NtB1z_13SemanticModel29resolve_qualified_import_name0s_0E0EB1B_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  %.not7.i = icmp ult i64 %i.ae, %.sroa.15.077115
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName12split_at_mutBy_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1z_NtB1z_13SemanticModel29resolve_qualified_import_name0s_0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName12split_at_mutBy_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB1x_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B1z_NtB1z_13SemanticModel29resolve_qualified_import_name0s_0E0EB1B_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.077115, i64 noundef 0, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.078114, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = xor i64 %i.ae, -1
  %i.ao = add i64 %.sroa.15.077115, %i.an
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB17_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B19_NtB19_13SemanticModel29resolve_qualified_import_name0s_0E0EB1b_(ptr noalias noundef nonnull align 8 %.sroa.0.078114, i64 noundef %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %.sroa.023.076116, i32 noundef %i.f, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedNameNCINvMB8_SB15_20sort_unstable_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNCNvMs_B17_NtB17_13SemanticModel29resolve_qualified_import_name0s_0E0EB19_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 %i.v
  %i.aq = getelementptr i8, ptr %.sroa.023.076116, i64 24
  %.sroa.023.0.val = load i32, ptr %i.aq, align 8, !noundef !3
  %i.ar = getelementptr i8, ptr %i.ap, i64 24
  %.val = load i32, ptr %i.ar, align 8, !noundef !3
  %i.as = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.as, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model12ImportedName14swap_uncheckedBy_(ptr noalias noundef nonnull align 8 %.sroa.0.078114, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.077115, i64 noundef 0, i64 noundef range(i64 0, 230584300921369395) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !noalias !91
  %i.au = mul nuw nsw i64 %.sroa.15.077115, 40
  %i.av = getelementptr i8, ptr %.sroa.0.078114, i64 %i.au ; 2 uses
  %.sroa.11.025.i.i41 = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 80
  %.phi.trans.insert.i.i42 = getelementptr inbounds nuw i8, ptr %.sroa.0.078114, i64 24
  %.val1.i.pre.i.i43 = load i32, ptr %.phi.trans.insert.i.i42, align 8, !alias.scope !93, !noalias !90 ; 2 uses
  br label %.lr.ph.i.i44

.preheader.i.i50:                                 ; preds = %.lr.ph.i.i44, %.preheader.i.i50
  %.sroa.19.1.i.i51 = phi i64 [ %i.ba, %.preheader.i.i50 ], [ %i.bf, %.lr.ph.i.i44 ] ; 2 uses
  %.sroa.11.1.i.i52 = phi ptr [ %.sroa.11.1.sroa.gep19.i.i58, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %.lr.ph.i.i44 ] ; 5 uses
  %.sroa.011.1.i.i53 = phi ptr [ %.sroa.11.1.i.i52, %.preheader.i.i50 ], [ %.sroa.11.028.i.i45, %.lr.ph.i.i44 ]
  %i.aw = icmp eq ptr %.sroa.11.1.i.i52, %i.av    ; 3 uses
  %.sroa.01.0.i.i54 = select i1 %i.aw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %.val.i.i.i57 = load i32, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i55.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !94, !noundef !3
  %i.ax = icmp uge i32 %.val1.i.pre.i.i43, %.val.i.i.i57
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %.sroa.19.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.011.1.i.i53, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false), !alias.scope !95, !noalias !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.i.i54, i64 40, i1 false), !noalias !94
  %i.az = zext i1 %i.ax to i64
  %i.ba = add i64 %.sroa.19.1.i.i51, %i.az        ; 4 uses
  %.sroa.11.1.sroa.gep19.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i52, i64 40
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1d_:bb.a
  br i1 %or.cond.i.i.i.i145.i129.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit140.i125.i
  %i.akb = icmp samesign ult i8 %narrow.i.i.i.i143.i127.i, %narrow1.i.i.i.i144.i128.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit147.i130.i

bb.ej:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit140.i125.i
  %i.akc = icmp samesign ult i8 %i.agl, %i.aiq
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit147.i130.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit147.i130.i: ; preds = %bb.ej, %bb.ei
  %.sroa.0.0.i.i.i.i146.i131.i = phi i1 [ %i.akc, %bb.ej ], [ %i.akb, %bb.ei ] ; 2 uses
  %i.akd = select i1 %.sroa.0.0.i.i.i.i146.i131.i, ptr %i.yt, ptr %i.ace, !unpredictable !3
  %i.ake = select i1 %.sroa.0.0.i.i.i.i146.i131.i, ptr %i.ace, ptr %i.yt, !unpredictable !3
  %i.akf = load i8, ptr %i.ake, align 1, !range !4, !alias.scope !143, !noundef !3
  %i.akg = load i8, ptr %i.akd, align 1, !alias.scope !143 ; 5 uses
  store i8 %i.akg, ptr %i.ace, align 1, !alias.scope !143
  store i8 %i.akf, ptr %i.yt, align 1, !alias.scope !143
  %i.akh = icmp ne i8 %i.aje, 6
  tail call void @llvm.assume(i1 %i.akh)
  %i.aki = add nsw i8 %i.aje, -4
  %i.akj = icmp samesign ugt i8 %i.aje, 3
  %narrow.i.i.i.i150.i132.i = select i1 %i.akj, i8 %i.aki, i8 2 ; 2 uses
  %i.akk = icmp ne i8 %i.agz, 6
  tail call void @llvm.assume(i1 %i.akk)
  %i.akl = add nsw i8 %i.agz, -4
  %i.akm = icmp samesign ugt i8 %i.agz, 3
  %narrow1.i.i.i.i151.i133.i = select i1 %i.akm, i8 %i.akl, i8 2 ; 2 uses
  %i.akn = icmp eq i8 %narrow.i.i.i.i150.i132.i, 2
  %i.ako = icmp eq i8 %narrow1.i.i.i.i151.i133.i, 2
  %or.cond.i.i.i.i152.i134.i = and i1 %i.ako, %i.akn
  br i1 %or.cond.i.i.i.i152.i134.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit147.i130.i
  %i.akp = icmp samesign ult i8 %narrow.i.i.i.i150.i132.i, %narrow1.i.i.i.i151.i133.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit154.i135.i

bb.el:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit147.i130.i
  %i.akq = icmp samesign ult i8 %i.aje, %i.agz
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit154.i135.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit154.i135.i: ; preds = %bb.el, %bb.ek
  %.sroa.0.0.i.i.i.i153.i136.i = phi i1 [ %i.akq, %bb.el ], [ %i.akp, %bb.ek ] ; 2 uses
  %i.akr = select i1 %.sroa.0.0.i.i.i.i153.i136.i, ptr %i.zi, ptr %i.ys, !unpredictable !3
  %i.aks = select i1 %.sroa.0.0.i.i.i.i153.i136.i, ptr %i.ys, ptr %i.zi, !unpredictable !3
  %i.akt = load i8, ptr %i.aks, align 1, !range !4, !alias.scope !143, !noundef !3
  %i.aku = load i8, ptr %i.akr, align 1, !alias.scope !143
  store i8 %i.aku, ptr %i.ys, align 1, !alias.scope !143
  store i8 %i.akt, ptr %i.zi, align 1, !alias.scope !143
  %i.akv = icmp ne i8 %i.ajs, 6
  tail call void @llvm.assume(i1 %i.akv)
  %i.akw = add nsw i8 %i.ajs, -4
  %i.akx = icmp samesign ugt i8 %i.ajs, 3
  %narrow.i.i.i.i157.i137.i = select i1 %i.akx, i8 %i.akw, i8 2 ; 2 uses
  %i.aky = icmp ne i8 %i.ajd, 6
  tail call void @llvm.assume(i1 %i.aky)
  %i.akz = add nsw i8 %i.ajd, -4
  %i.ala = icmp samesign ugt i8 %i.ajd, 3
  %narrow1.i.i.i.i158.i138.i = select i1 %i.ala, i8 %i.akz, i8 2 ; 2 uses
  %i.alb = icmp eq i8 %narrow.i.i.i.i157.i137.i, 2
  %i.alc = icmp eq i8 %narrow1.i.i.i.i158.i138.i, 2
  %or.cond.i.i.i.i159.i139.i = and i1 %i.alc, %i.alb
  br i1 %or.cond.i.i.i.i159.i139.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit154.i135.i
  %i.ald = icmp samesign ult i8 %narrow.i.i.i.i157.i137.i, %narrow1.i.i.i.i158.i138.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit161.i140.i

bb.en:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit154.i135.i
  %i.ale = icmp samesign ult i8 %i.ajs, %i.ajd
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit161.i140.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit161.i140.i: ; preds = %bb.en, %bb.em
  %.sroa.0.0.i.i.i.i160.i141.i = phi i1 [ %i.ale, %bb.en ], [ %i.ald, %bb.em ] ; 2 uses
  %i.alf = select i1 %.sroa.0.0.i.i.i.i160.i141.i, ptr %i.zy, ptr %i.yd, !unpredictable !3
  %i.alg = select i1 %.sroa.0.0.i.i.i.i160.i141.i, ptr %i.yd, ptr %i.zy, !unpredictable !3
  %i.alh = load i8, ptr %i.alg, align 1, !range !4, !alias.scope !143, !noundef !3
  %i.ali = load i8, ptr %i.alf, align 1, !alias.scope !143
  store i8 %i.ali, ptr %i.yd, align 1, !alias.scope !143
  store i8 %i.alh, ptr %i.zy, align 1, !alias.scope !143
  %i.alj = icmp ne i8 %i.akg, 6
  tail call void @llvm.assume(i1 %i.alj)
  %i.alk = add nsw i8 %i.akg, -4
  %i.all = icmp samesign ugt i8 %i.akg, 3
  %narrow.i.i.i.i164.i142.i = select i1 %i.all, i8 %i.alk, i8 2 ; 2 uses
  %i.alm = icmp ne i8 %i.ajr, 6
  tail call void @llvm.assume(i1 %i.alm)
  %i.aln = add nsw i8 %i.ajr, -4
  %i.alo = icmp samesign ugt i8 %i.ajr, 3
  %narrow1.i.i.i.i165.i143.i = select i1 %i.alo, i8 %i.aln, i8 2 ; 2 uses
  %i.alp = icmp eq i8 %narrow.i.i.i.i164.i142.i, 2
  %i.alq = icmp eq i8 %narrow1.i.i.i.i165.i143.i, 2
  %or.cond.i.i.i.i166.i144.i = and i1 %i.alq, %i.alp
  br i1 %or.cond.i.i.i.i166.i144.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit161.i140.i
  %i.alr = icmp samesign ult i8 %narrow.i.i.i.i164.i142.i, %narrow1.i.i.i.i165.i143.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort13sort9_optimalNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1a_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit.i

bb.ep:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12swap_if_lessNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1f_.exit161.i140.i
  %i.als = icmp samesign ult i8 %i.akg, %i.ajr
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort13sort9_optimalNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1a_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort13sort9_optimalNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1a_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit.i: ; preds = %bb.ep, %bb.eo
  %.sroa.0.0.i.i.i.i167.i146.i = phi i1 [ %i.als, %bb.ep ], [ %i.alr, %bb.eo ] ; 2 uses
  %i.alt = select i1 %.sroa.0.0.i.i.i.i167.i146.i, ptr %i.ace, ptr %i.zj, !unpredictable !3
  %i.alu = select i1 %.sroa.0.0.i.i.i.i167.i146.i, ptr %i.zj, ptr %i.ace, !unpredictable !3
  %i.alv = load i8, ptr %i.alu, align 1, !range !4, !alias.scope !143, !noundef !3
  %i.alw = load i8, ptr %i.alt, align 1, !alias.scope !143
  store i8 %i.alw, ptr %i.zj, align 1, !alias.scope !143
  store i8 %i.alv, ptr %i.ace, align 1, !alias.scope !143
  br label %bb.eq

bb.eq:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort13sort9_optimalNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1a_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort14sort13_optimalNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1b_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit.i, %bb.d
  %.sroa.01.0.i = phi i64 [ 13, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort14sort13_optimalNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1b_NtNtBa_3cmp10PartialOrd2ltEB1h_.exit.i ], [ 9, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort13sort9_optimalNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1a_NtNtBa_3cmp10PartialOrd2ltEB1g_.exit.i ], [ 1, %bb.d ] ; 3 uses
  %i.alx = add nsw i64 %.sroa.01.0.i, -1
  %or.cond.not.i.i = icmp ult i64 %i.alx, %.sroa.8.0.i
  br i1 %or.cond.not.i.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @llvm.trap()
  unreachable

bb.es:                                            ; preds = %bb.eq
  %i.aly = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.sroa.8.0.i
  %.not6.i.i = icmp samesign eq i64 %.sroa.01.0.i, %.sroa.8.0.i
  br i1 %.not6.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.es
  %i.alz = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.sroa.01.0.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.amx, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit.i.i ], [ %i.alz, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ama = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -1 ; 4 uses
  %.val9.i.i.i = load i8, ptr %.sroa.0.07.i.i, align 1, !range !4, !alias.scope !144, !noundef !3 ; 6 uses
  %.val10.i.i.i = load i8, ptr %i.ama, align 1, !range !4, !alias.scope !144, !noundef !3 ; 5 uses
  %i.amb = icmp ne i8 %.val9.i.i.i, 6
  tail call void @llvm.assume(i1 %i.amb)
  %i.amc = add nsw i8 %.val9.i.i.i, -4
  %i.amd = icmp samesign ugt i8 %.val9.i.i.i, 3
  %narrow.i.i.i.i.i147.i = select i1 %i.amd, i8 %i.amc, i8 2
  %narrow.i.i.i.fr.i.i.i = freeze i8 %narrow.i.i.i.i.i147.i ; 3 uses
  %i.ame = icmp ne i8 %.val10.i.i.i, 6
  tail call void @llvm.assume(i1 %i.ame)
  %i.amf = add nsw i8 %.val10.i.i.i, -4
  %i.amg = icmp samesign ugt i8 %.val10.i.i.i, 3
  %narrow1.i.i.i.i.i148.i = select i1 %i.amg, i8 %i.amf, i8 2 ; 2 uses
  %i.amh = icmp eq i8 %narrow.i.i.i.fr.i.i.i, 2   ; 2 uses
  %i.ami = icmp eq i8 %narrow1.i.i.i.i.i148.i, 2
  %or.cond.i.i.i.i.i149.i = and i1 %i.amh, %i.ami
  br i1 %or.cond.i.i.i.i.i149.i, label %.split.i.i.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i
  %i.amj = icmp samesign ult i8 %.val9.i.i.i, %.val10.i.i.i
  br i1 %i.amj, label %bb.et, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit.i.i

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i.i.i: ; preds = %.lr.ph.i.i
  %i.amk = icmp samesign ult i8 %narrow.i.i.i.fr.i.i.i, %narrow1.i.i.i.i.i148.i
  br i1 %i.amk, label %bb.et, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit.i.i

bb.et:                                            ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i.i.i, %.split.i.i.i
  store i8 %.val10.i.i.i, ptr %.sroa.0.07.i.i, align 1, !alias.scope !144
  %i.aml = icmp eq ptr %i.ama, %.sroa.02.0.i
  br i1 %i.aml, label %.split5._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.et
  br i1 %i.amh, label %.lr.ph.split.i.i.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i.i.i

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i.i.i: ; preds = %.lr.ph.i.i.i, %.backedge.us.i.i.i
  %.sroa.0.06.us.i.i.i = phi ptr [ %i.amm, %.backedge.us.i.i.i ], [ %i.ama, %.lr.ph.i.i.i ] ; 3 uses
  %i.amm = getelementptr inbounds i8, ptr %.sroa.0.06.us.i.i.i, i64 -1 ; 3 uses
  %.val8.us.i.i.i = load i8, ptr %i.amm, align 1, !range !4, !alias.scope !144, !noundef !3 ; 4 uses
  %i.amn = icmp ne i8 %.val8.us.i.i.i, 6
  tail call void @llvm.assume(i1 %i.amn)
  %i.amo = add nsw i8 %.val8.us.i.i.i, -4
  %i.amp = icmp samesign ugt i8 %.val8.us.i.i.i, 3
  %narrow1.i.i.i12.us.i.i.i = select i1 %i.amp, i8 %i.amo, i8 2
  %i.amq = icmp samesign ult i8 %narrow.i.i.i.fr.i.i.i, %narrow1.i.i.i12.us.i.i.i
  br i1 %i.amq, label %.backedge.us.i.i.i, label %.split5._crit_edge.i.i.i

.backedge.us.i.i.i:                               ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i.i.i
  store i8 %.val8.us.i.i.i, ptr %.sroa.0.06.us.i.i.i, align 1, !alias.scope !144
  %i.amr = icmp eq ptr %i.amm, %.sroa.02.0.i
  br i1 %i.amr, label %.split5._crit_edge.i.i.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.backedge.i.i.i
  %.sroa.0.06.i.i.i = phi ptr [ %i.ams, %.backedge.i.i.i ], [ %i.ama, %.lr.ph.i.i.i ] ; 4 uses
  %i.ams = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i, i64 -1 ; 3 uses
  %.val8.i.i.i = load i8, ptr %i.ams, align 1, !range !4, !alias.scope !144, !noundef !3 ; 5 uses
  %i.amt = icmp ne i8 %.val8.i.i.i, 6
  tail call void @llvm.assume(i1 %i.amt)
  %i.amu = icmp samesign ult i8 %.val8.i.i.i, 4
  br i1 %i.amu, label %.split5.i.i.i, label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i.i.i

.split5.i.i.i:                                    ; preds = %.lr.ph.split.i.i.i
  %i.amv = icmp samesign ult i8 %.val9.i.i.i, %.val8.i.i.i
  br i1 %i.amv, label %.backedge.i.i.i, label %.split5._crit_edge.i.i.i

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %5 = icmp samesign ugt i8 %.val8.i.i.i, 6
  br i1 %5, label %.backedge.i.i.i, label %.split5._crit_edge.i.i.i

.backedge.i.i.i:                                  ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i.i.i, %.split5.i.i.i
  store i8 %.val8.i.i.i, ptr %.sroa.0.06.i.i.i, align 1, !alias.scope !144
  %i.amw = icmp eq ptr %i.ams, %.sroa.02.0.i
  br i1 %i.amw, label %.split5._crit_edge.i.i.i, label %.lr.ph.split.i.i.i

.split5._crit_edge.i.i.i:                         ; preds = %.backedge.us.i.i.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i.i.i, %.backedge.i.i.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i.i.i, %.split5.i.i.i, %bb.et
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.02.0.i, %bb.et ], [ %.sroa.0.06.i.i.i, %.split5.i.i.i ], [ %.sroa.02.0.i, %.backedge.i.i.i ], [ %.sroa.0.06.i.i.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.i.i.i ], [ %.sroa.02.0.i, %.backedge.us.i.i.i ], [ %.sroa.0.06.us.i.i.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit15.us.i.i.i ]
  store i8 %.val9.i.i.i, ptr %.sroa.0.0.lcssa.i.i.i, align 1, !alias.scope !144, !noalias !145
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit.i.i: ; preds = %.split5._crit_edge.i.i.i, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i.i.i, %.split.i.i.i
  %i.amx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.amx, %i.aly
  br i1 %.not.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_.exit.i, label %.lr.ph.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_.exit.i: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1e_.exit.i.i, %bb.es
  br i1 %i.g, label %.sink.split.i, label %bb.eu

bb.eu:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_.exit.i
  %.not.i = icmp eq ptr %.sroa.02.0.i, %.sroa.0.0.lcssa
  br i1 %.not.i, label %bb.c, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.amy = add nsw i64 %.sroa.15.0.lcssa, -1      ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amy
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 %i.amy
  %i.anb = getelementptr i8, ptr %i.h, i64 -1
  br label %.lr.ph.i151.i

._crit_edge.i.i:                                  ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i
  %i.anc = getelementptr i8, ptr %i.aol, i64 1    ; 2 uses
  %i.and = getelementptr i8, ptr %i.aok, i64 1
  %i.ane = and i64 %.sroa.15.0.lcssa, 1
  %i.anf = icmp eq i64 %i.ane, 0
  br i1 %i.anf, label %bb.fb, label %bb.fa

.lr.ph.i151.i:                                    ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i, %bb.ev
  %.sroa.0.010.i.i = phi ptr [ %i.anx, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i ], [ %i.a, %bb.ev ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ang, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i ], [ 0, %bb.ev ]
  %.sroa.06.08.i.i = phi ptr [ %i.anw, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i ], [ %.sroa.0.0.lcssa, %bb.ev ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.anu, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i ], [ %i.h, %bb.ev ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.aol, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i ], [ %i.anb, %bb.ev ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.aok, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i ], [ %i.ana, %bb.ev ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.aom, %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i ], [ %i.amz, %bb.ev ] ; 2 uses
  %i.ang = add nuw nsw i64 %.sroa.04.09.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load i8, ptr %.sroa.011.07.i.i, align 1, !range !4, !alias.scope !147, !noundef !3 ; 4 uses
  %.sroa.06.0.val.i.i = load i8, ptr %.sroa.06.08.i.i, align 1, !range !4, !alias.scope !147, !noundef !3 ; 4 uses
  %i.anh = icmp ne i8 %.sroa.011.0.val.i.i, 6
  tail call void @llvm.assume(i1 %i.anh)
  %i.ani = add nsw i8 %.sroa.011.0.val.i.i, -4
  %i.anj = icmp samesign ugt i8 %.sroa.011.0.val.i.i, 3
  %narrow.i.i.i.i.i = select i1 %i.anj, i8 %i.ani, i8 2 ; 2 uses
  %i.ank = icmp ne i8 %.sroa.06.0.val.i.i, 6
  tail call void @llvm.assume(i1 %i.ank)
  %i.anl = add nsw i8 %.sroa.06.0.val.i.i, -4
  %i.anm = icmp samesign ugt i8 %.sroa.06.0.val.i.i, 3
  %narrow1.i.i.i.i.i = select i1 %i.anm, i8 %i.anl, i8 2 ; 2 uses
  %i.ann = icmp eq i8 %narrow.i.i.i.i.i, 2
  %i.ano = icmp eq i8 %narrow1.i.i.i.i.i, 2
  %or.cond.i.i.i.i.i = and i1 %i.ann, %i.ano
  br i1 %or.cond.i.i.i.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph.i151.i
  %i.anp = icmp samesign ult i8 %narrow.i.i.i.i.i, %narrow1.i.i.i.i.i
  br label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i.i

bb.ex:                                            ; preds = %.lr.ph.i151.i
  %i.anq = icmp samesign ult i8 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  br label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i.i

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i.i: ; preds = %bb.ex, %bb.ew
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.anq, %bb.ex ], [ %i.anp, %bb.ew ] ; 3 uses
  %..i23.i.i = select i1 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.anr = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %i.ans = load i8, ptr %..i23.i.i, align 1, !alias.scope !147, !noalias !148
  store i8 %i.ans, ptr %.sroa.0.010.i.i, align 1, !noalias !149
  %i.ant = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.anu = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %i.ant ; 4 uses
  %i.anv = zext i1 %i.anr to i64
  %i.anw = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %i.anv ; 5 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 1 ; 2 uses
  %.sroa.017.0.val.i.i = load i8, ptr %.sroa.017.05.i.i, align 1, !range !4, !alias.scope !147, !noundef !3 ; 4 uses
  %.sroa.015.0.val.i.i = load i8, ptr %.sroa.015.06.i.i, align 1, !range !4, !alias.scope !147, !noundef !3 ; 4 uses
  %i.any = icmp ne i8 %.sroa.017.0.val.i.i, 6
  tail call void @llvm.assume(i1 %i.any)
  %i.anz = add nsw i8 %.sroa.017.0.val.i.i, -4
  %i.aoa = icmp samesign ugt i8 %.sroa.017.0.val.i.i, 3
  %narrow.i.i.i24.i.i = select i1 %i.aoa, i8 %i.anz, i8 2 ; 2 uses
  %i.aob = icmp ne i8 %.sroa.015.0.val.i.i, 6
  tail call void @llvm.assume(i1 %i.aob)
  %i.aoc = add nsw i8 %.sroa.015.0.val.i.i, -4
  %i.aod = icmp samesign ugt i8 %.sroa.015.0.val.i.i, 3
  %narrow1.i.i.i25.i.i = select i1 %i.aod, i8 %i.aoc, i8 2 ; 2 uses
  %i.aoe = icmp eq i8 %narrow.i.i.i24.i.i, 2
  %i.aof = icmp eq i8 %narrow1.i.i.i25.i.i, 2
  %or.cond.i.i.i26.i.i = and i1 %i.aoe, %i.aof
  br i1 %or.cond.i.i.i26.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i.i
  %i.aog = icmp samesign ult i8 %narrow.i.i.i24.i.i, %narrow1.i.i.i25.i.i
  br label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i

bb.ez:                                            ; preds = %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i.i
  %i.aoh = icmp samesign ult i8 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  br label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i

_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit28.i.i: ; preds = %bb.ez, %bb.ey
  %.sroa.0.0.i.i.i27.i.i = phi i1 [ %i.aoh, %bb.ez ], [ %i.aog, %bb.ey ] ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i.i27.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.aoi = xor i1 %.sroa.0.0.i.i.i27.i.i, true
  %i.aoj = load i8, ptr %..i.i.i, align 1, !alias.scope !147, !noalias !150
  store i8 %i.aoj, ptr %.sroa.019.04.i.i, align 1, !noalias !151
  %.neg.i.i.i = sext i1 %i.aoi to i64
  %i.aok = getelementptr i8, ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.sroa.0.0.i.i.i27.i.i to i64
  %i.aol = getelementptr i8, ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.aom = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -1
  %exitcond.not.i.i = icmp eq i64 %i.ang, %i.f
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i151.i

bb.fa:                                            ; preds = %._crit_edge.i.i
  %i.aon = icmp ult ptr %i.anw, %i.anc            ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.aon, ptr %i.anw, ptr %i.anu
  %i.aoo = load i8, ptr %.sroa.06.0..sroa.011.0.i.i, align 1, !alias.scope !147
  store i8 %i.aoo, ptr %i.anx, align 1, !noalias !147
  %i.aop = zext i1 %i.aon to i64
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.anw, i64 %i.aop
  %i.aor = xor i1 %i.aon, true
  %i.aos = zext i1 %i.aor to i64
  %i.aot = getelementptr inbounds nuw i8, ptr %i.anu, i64 %i.aos
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.anu, %._crit_edge.i.i ], [ %i.aot, %bb.fa ]
  %.sroa.06.1.i.i = phi ptr [ %i.anw, %._crit_edge.i.i ], [ %i.aoq, %bb.fa ]
  %i.aou = icmp ne ptr %.sroa.06.1.i.i, %i.anc
  %i.aov = icmp ne ptr %.sroa.011.1.i.i, %i.and
  %or.cond.i.i = select i1 %i.aou, i1 true, i1 %i.aov, !prof !5
  br i1 %or.cond.i.i, label %bb.fc, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit.i, !prof !5

bb.fc:                                            ; preds = %bb.fb
  tail call void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #19, !noalias !146
  unreachable

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit.i: ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.lcssa, ptr nonnull align 1 %i.a, i64 range(i64 0, 33) %.sroa.15.0.lcssa, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1s_.exit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1m_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1l_.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.0133.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.0132.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias noundef nonnull %.sroa.0.0133.lcssa, i64 noundef %.sroa.15.0132.lcssa, ptr noalias noundef nonnull %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1l_.exit

.lr.ph242:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.0130241 = phi i32 [ %i.aow, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.0131240 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.0132239 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.0133238 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.aow = add nsw i32 %.sroa.026.0130241, -1     ; 3 uses
  %i.aox = lshr i64 %.sroa.15.0132239, 3          ; 3 uses
  %i.aoy = shl nuw nsw i64 %i.aox, 2
  %i.aoz = getelementptr inbounds nuw i8, ptr %.sroa.0.0133238, i64 %i.aoy ; 3 uses
  %i.apa = mul nuw nsw i64 %i.aox, 7
  %i.apb = getelementptr inbounds nuw i8, ptr %.sroa.0.0133238, i64 %i.apa ; 3 uses
  %i.apc = icmp samesign ult i64 %.sroa.15.0132239, 64
  br i1 %i.apc, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph242
  %i.apd = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef nonnull readonly %.sroa.0.0133238, ptr noundef readonly %i.aoz, ptr noundef readonly %i.apb, i64 noundef %i.aox)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit

bb.fe:                                            ; preds = %.lr.ph242
  %.val5.i = load i8, ptr %.sroa.0.0133238, align 1, !range !4, !alias.scope !152, !noundef !3 ; 5 uses
  %.val6.i = load i8, ptr %i.aoz, align 1, !range !4, !alias.scope !152, !noundef !3 ; 5 uses
  %i.ape = icmp ne i8 %.val5.i, 6
  tail call void @llvm.assume(i1 %i.ape)
  %i.apf = add nsw i8 %.val5.i, -4
  %i.apg = icmp samesign ugt i8 %.val5.i, 3
  %narrow.i.i.i.i = select i1 %i.apg, i8 %i.apf, i8 2 ; 3 uses
  %i.aph = icmp ne i8 %.val6.i, 6
  tail call void @llvm.assume(i1 %i.aph)
  %i.api = add nsw i8 %.val6.i, -4
  %i.apj = icmp samesign ugt i8 %.val6.i, 3
  %narrow1.i.i.i.i = select i1 %i.apj, i8 %i.api, i8 2 ; 3 uses
  %i.apk = icmp eq i8 %narrow.i.i.i.i, 2          ; 2 uses
  %i.apl = icmp eq i8 %narrow1.i.i.i.i, 2         ; 2 uses
  %or.cond.i.i.i.i = and i1 %i.apk, %i.apl
  br i1 %or.cond.i.i.i.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.apm = icmp samesign ult i8 %narrow.i.i.i.i, %narrow1.i.i.i.i
  br label %_RNvYNvYNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze14type_inference10PythonTypeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1p_3ops8function5FnMutTRB5_B2w_EE8call_mutBb_.exit.i

end_hunk_1
