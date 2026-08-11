inline.NumInlined: 1243
inline.NumDeleted: 653
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtNtNtB9_6traits8iterator8Iterator3nthB11_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3082
  call void @_RNvXNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fnINtB2_6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtNtNtB6_6traits8iterator8Iterator4nextB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #26
  %i.m = load i64, ptr %i.a, align 8, !range !258, !noalias !3082, !noundef !7 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.m, -4
  br i1 %.not.i.i.i, label %.loopexit3, label %bb.c

.loopexit3:                                       ; preds = %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3082
  store i64 -4, ptr %0, align 8
  br label %bb.j

.loopexit:                                        ; preds = %_RNCNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtB6_13SpecAdvanceBy15spec_advance_by0B1R_.exit.i.i.i, %bb.a
  tail call void @_RNvXNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fnINtB2_6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtNtNtB6_6traits8iterator8Iterator4nextB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) #26
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %.loopexit3
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtCs2vKOLqTMYjT_3std2fs4FileEs_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB9_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1s_17files0_iter_stdin0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1s_(ptr noalias nofree noundef align 8 dereferenceable(88) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBc_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB2g_17files0_iter_stdin0ENtB4_13SpecAdvanceBy15spec_advance_byB2g_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3098
  call fastcc void @_RNvXNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fnINtB2_6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENtNtNtB6_6traits8iterator8Iterator4nextB14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) #26
  %i.b = load i64, ptr %i.a, align 8, !range !258, !noalias !3098, !noundef !7 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.b, -4
  br i1 %.not12.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %i.c = phi i64 [ %i.b, %.lr.ph.i.i.i ], [ %i.o, %bb.k ] ; 3 uses
  %.sroa.01.013.i.i.i = phi i64 [ %1, %.lr.ph.i.i.i ], [ %i.m, %bb.k ]
  %.sroa.58.0.copyload.i.i.i = load ptr, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !noalias !3098 ; 3 uses
  %.sroa.69.0.copyload.i.i.i = load ptr, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !noalias !3098
  switch i64 %i.c, label %bb.f [
    i64 -2, label %bb.d
    i64 -3, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3105
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #28, !noalias !3105 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %_RNCNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin0B3_.exit.thread.i.i.i.i, !prof !185

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !3105
  unreachable

_RNCNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin0B3_.exit.thread.i.i.i.i: ; preds = %bb.d
  store i64 -9223372036854775807, ptr %i.d, align 8, !noalias !3113
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.f = icmp sgt i64 %i.c, 0
  br i1 %i.f, label %bb.g, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEBZ_INtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3e_ENCNvB1n_17files0_iter_stdin0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtB8_7sources7from_fn6FromFnNCINvB1n_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0EB4b_ENtB4K_13SpecAdvanceBy15spec_advance_by0E0B1n_.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.58.0.copyload.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.58.0.copyload.i.i.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !3114
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEBZ_INtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3e_ENCNvB1n_17files0_iter_stdin0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtB8_7sources7from_fn6FromFnNCINvB1n_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0EB4b_ENtB4K_13SpecAdvanceBy15spec_advance_by0E0B1n_.exit.i.i.i

bb.h:                                             ; preds = %_RNCNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin0B3_.exit.thread.i.i.i.i, %bb.c
  %.sroa.73.011.i.i.i.i = phi ptr [ @46, %_RNCNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin0B3_.exit.thread.i.i.i.i ], [ %.sroa.69.0.copyload.i.i.i, %bb.c ] ; 4 uses
  %.sroa.52.010.i.i.i.i = phi ptr [ %i.d, %_RNCNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin0B3_.exit.thread.i.i.i.i ], [ %.sroa.58.0.copyload.i.i.i, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.73.011.i.i.i.i) ]
  %i.g = load ptr, ptr %.sroa.73.011.i.i.i.i, align 8, !invariant.load !7, !noalias !3121 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.010.i.i.i.i) ]
  tail call void %i.g(ptr noundef nonnull %.sroa.52.010.i.i.i.i) #26, !noalias !3121, !inline_history !3122
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.73.011.i.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !76, !invariant.load !7, !noalias !3121 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEBZ_INtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3e_ENCNvB1n_17files0_iter_stdin0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtB8_7sources7from_fn6FromFnNCINvB1n_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0EB4b_ENtB4K_13SpecAdvanceBy15spec_advance_by0E0B1n_.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.73.011.i.i.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !176, !invariant.load !7, !noalias !3121
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.010.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.52.010.i.i.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #28, !noalias !3121
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEBZ_INtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3e_ENCNvB1n_17files0_iter_stdin0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtB8_7sources7from_fn6FromFnNCINvB1n_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0EB4b_ENtB4K_13SpecAdvanceBy15spec_advance_by0E0B1n_.exit.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEBZ_INtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3e_ENCNvB1n_17files0_iter_stdin0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtB8_7sources7from_fn6FromFnNCINvB1n_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0EB4b_ENtB4K_13SpecAdvanceBy15spec_advance_by0E0B1n_.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.j, %bb.g, %bb.f
  %i.m = add i64 %.sroa.01.013.i.i.i, -1          ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3098
  br i1 %i.n, label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBc_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB2g_17files0_iter_stdin0ENtB4_13SpecAdvanceBy15spec_advance_byB2g_.exit, label %bb.k

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.b
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ %1, %bb.b ], [ %i.m, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3098
  br label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBc_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB2g_17files0_iter_stdin0ENtB4_13SpecAdvanceBy15spec_advance_byB2g_.exit

bb.k:                                             ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEBZ_INtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3e_ENCNvB1n_17files0_iter_stdin0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtB8_7sources7from_fn6FromFnNCINvB1n_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0EB4b_ENtB4K_13SpecAdvanceBy15spec_advance_by0E0B1n_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3098
  call fastcc void @_RNvXNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fnINtB2_6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENtNtNtB6_6traits8iterator8Iterator4nextB14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) #26
  %i.o = load i64, ptr %i.a, align 8, !range !258, !noalias !3098, !noundef !7 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, -4
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.c

_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBc_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB2g_17files0_iter_stdin0ENtB4_13SpecAdvanceBy15spec_advance_byB2g_.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEBZ_INtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3e_ENCNvB1n_17files0_iter_stdin0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtB8_7sources7from_fn6FromFnNCINvB1n_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0EB4b_ENtB4K_13SpecAdvanceBy15spec_advance_by0E0B1n_.exit.i.i.i, %bb.a, %._crit_edge.i.i.i
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ 0, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEBZ_INtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB3e_ENCNvB1n_17files0_iter_stdin0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtB8_7sources7from_fn6FromFnNCINvB1n_11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0EB4b_ENtB4K_13SpecAdvanceBy15spec_advance_by0E0B1n_.exit.i.i.i ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB9_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1s_17files0_iter_stdin0ENtNtNtB9_6traits8iterator8Iterator3nthB1s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = tail call noundef i64 @_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB9_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1s_17files0_iter_stdin0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2) #26
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -4, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3126
  call fastcc void @_RNvXNtNtNtCs6JMX4GRUq9U_4core4iter7sources7from_fnINtB2_6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENtNtNtB6_6traits8iterator8Iterator4nextB14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(88) %1) #26, !noalias !3123
  %i.c = load i64, ptr %i.a, align 8, !range !258, !noalias !3126, !noundef !7 ; 3 uses
  %.not.i = icmp eq i64 %i.c, -4
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3126
  %cond.i.i = icmp eq i64 %i.c, -2
  br i1 %cond.i.i, label %bb.e, label %_RNCNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin0B3_.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3128
  %i.e = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #28, !noalias !3128 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEBZ_.exit.i.i, !prof !185

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !3128
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEBZ_.exit.i.i: ; preds = %bb.e
  store i64 -9223372036854775807, ptr %i.e, align 8, !noalias !3134
  %i.g = insertelement <2 x ptr> <ptr poison, ptr @46>, ptr %i.e, i64 0
  br label %_RNCNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin0B3_.exit.i

_RNCNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin0B3_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEBZ_.exit.i.i, %bb.d
  %.sroa.0.0.i = phi i64 [ -3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEBZ_.exit.i.i ], [ %i.c, %bb.d ]
  %i.h = phi <2 x ptr> [ %i.g, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfPYenFzdTHO_5uu_wc5InputINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEBZ_.exit.i.i ], [ %i.d, %bb.d ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !3123, !noalias !3135
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3123, !noalias !3135
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1y_17files0_iter_stdin0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit

bb.g:                                             ; preds = %bb.c
  store i64 -4, ptr %0, align 8, !alias.scope !3123, !noalias !3135
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1y_17files0_iter_stdin0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1y_17files0_iter_stdin0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit: ; preds = %_RNCNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin0B3_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3126
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtB9_7sources7from_fn6FromFnNCINvCsfPYenFzdTHO_5uu_wc11files0_iterNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEs_0ENCNvB1y_17files0_iter_stdin0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B1i_NtB1i_6Inputs8try_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1i_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B26_NtB26_6Inputs8try_iter0ENtB4_13SpecAdvanceBy15spec_advance_byB26_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3136, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !3136 ; 5 uses
  %.promoted.i.i.i3 = ptrtoaddr ptr %.promoted.i.i.i to i64 ; 2 uses
  %i.d = mul i64 %i.c, 768614336404564651
  %i.e = mul i64 %.promoted.i.i.i3, -768614336404564651
  %i.f = add i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 3
  %i.h = add i64 %1, -1
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h) ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i.i3
  %i.l = and i64 %i.k, 7
  %ident.check.not = icmp eq i64 %i.l, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.m = and i64 %i.j, 3                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 4, i64 %i.m
  %n.vec = sub nsw i64 %i.j, %i.o                 ; 3 uses
  %i.p = mul i64 %n.vec, 24
  %i.q = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.p
  %i.r = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 96
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !3145

middle.block:                                     ; preds = %vector.body
  %i.t = getelementptr i8, ptr %pointer.phi, i64 96
  store ptr %i.t, ptr %0, align 8, !alias.scope !3136
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %vector.scevcheck ], [ %.promoted.i.i.i, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.r, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.u = phi ptr [ %i.w, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B26_NtB26_6Inputs8try_iter0ENtB4_13SpecAdvanceBy15spec_advance_byB26_.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !alias.scope !3136
  %i.x = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B26_NtB26_6Inputs8try_iter0ENtB4_13SpecAdvanceBy15spec_advance_byB26_.exit, label %scalar.ph, !llvm.loop !3148

_RNvXs_NvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B26_NtB26_6Inputs8try_iter0ENtB4_13SpecAdvanceBy15spec_advance_byB26_.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B1i_NtB1i_6Inputs8try_iter0ENtNtNtB9_6traits8iterator8Iterator3nthB1i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %1, align 8               ; 6 uses
  %.pre9 = ptrtoaddr ptr %.pre to i64             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.pre38 = ptrtoaddr ptr %.pre3 to i64           ; 2 uses
  br i1 %.not.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = mul i64 %.pre38, 768614336404564651
  %i.b = mul i64 %.pre9, -768614336404564651
  %i.c = add i64 %i.a, %i.b
  %i.d = lshr i64 %i.c, 3
  %i.e = add i64 %2, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e) ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.f, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.h = sub i64 %.pre38, %.pre9
  %i.i = and i64 %i.h, 7
  %ident.check.not = icmp eq i64 %i.i, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.j = and i64 %i.g, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %i.g, %i.l                 ; 3 uses
  %i.m = mul i64 %n.vec, 24
  %i.n = getelementptr i8, ptr %.pre, i64 %i.m
  %i.o = sub i64 %2, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 96
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !3149

middle.block:                                     ; preds = %vector.body
  %i.q = getelementptr i8, ptr %pointer.phi, i64 96
  store ptr %i.q, ptr %1, align 8, !alias.scope !3150
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %.ph = phi ptr [ %.pre, %vector.scevcheck ], [ %.pre, %.preheader ], [ %i.n, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %2, %vector.scevcheck ], [ %2, %.preheader ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.r = phi ptr [ %i.t, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.u, %bb.b ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.s = icmp eq ptr %i.r, %.pre3
  br i1 %i.s, label %_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B1i_NtB1i_6Inputs8try_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1i_.exit, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  store ptr %i.t, ptr %1, align 8, !alias.scope !3150
  %i.u = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit, label %scalar.ph, !llvm.loop !3161

_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B1i_NtB1i_6Inputs8try_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1i_.exit: ; preds = %scalar.ph
  store i64 -4, ptr %0, align 8
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B1o_NtB1o_6Inputs8try_iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1o_.exit

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.w = phi ptr [ %.pre, %bb.a ], [ %i.t, %bb.b ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3165)
  %i.x = icmp eq ptr %i.w, %.pre3
  br i1 %i.x, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.y, ptr %1, align 8, !alias.scope !3167, !noalias !3162
  %i.z = load i64, ptr %i.w, align 8, !range !523, !alias.scope !3170, !noalias !3173, !noundef !7
  %cond.i.i = icmp eq i64 %i.z, -2
  br i1 %cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !range !310, !alias.scope !3170, !noalias !3173, !noundef !7
  br label %_RNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB7_6Inputs8try_iter0B7_.exit.i

bb.e:                                             ; preds = %bb.c
  %.sroa.57.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.57.0.i.i = load i64, ptr %.sroa.57.0.in.i.i, align 8, !alias.scope !3170, !noalias !3173, !noundef !7
  %.sroa.06.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !alias.scope !3170, !noalias !3173, !nonnull !7, !noundef !7
  %i.ac = ptrtoint ptr %.sroa.06.0.i.i to i64     ; 2 uses
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %i.ac to i8
  %.sroa.4.1.extract.shift.i.i = lshr i64 %i.ac, 8
  %.sroa.4.1.extract.trunc.i.i = trunc nuw i64 %.sroa.4.1.extract.shift.i.i to i56
  br label %_RNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB7_6Inputs8try_iter0B7_.exit.i

_RNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB7_6Inputs8try_iter0B7_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.6.sroa.0.0.i.i = phi i56 [ undef, %bb.d ], [ %.sroa.4.1.extract.trunc.i.i, %bb.e ]
  %.sroa.6.sroa.4.0.i.i = phi i64 [ undef, %bb.d ], [ %.sroa.57.0.i.i, %bb.e ]
  %.sroa.5.0.i.i = phi i8 [ %i.ab, %bb.d ], [ %.sroa.4.0.extract.trunc.i.i, %bb.e ]
  %.sroa.0.0.i2.i = phi i64 [ -2, %bb.d ], [ -1, %bb.e ]
  store i64 %.sroa.0.0.i2.i, ptr %0, align 8, !alias.scope !3162, !noalias !3165
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3162, !noalias !3165
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i56 %.sroa.6.sroa.0.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !3162, !noalias !3165
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.4.0.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3162, !noalias !3165
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B1o_NtB1o_6Inputs8try_iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1o_.exit

bb.f:                                             ; preds = %.loopexit
  store i64 -4, ptr %0, align 8, !alias.scope !3162, !noalias !3165
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B1o_NtB1o_6Inputs8try_iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1o_.exit

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B1o_NtB1o_6Inputs8try_iter0ENtNtNtB9_6traits8iterator8Iterator4nextB1o_.exit: ; preds = %bb.f, %_RNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB7_6Inputs8try_iter0B7_.exit.i, %_RNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtCsfPYenFzdTHO_5uu_wc5InputENCNvMs0_B1i_NtB1i_6Inputs8try_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1i_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !3175
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !3175
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !3175
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !3175
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !3175
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !3175
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !3175
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !3175
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !3175
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !3175
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3178)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !3178, !noalias !3181, !nonnull !7, !align !175, !noundef !7
  %i.ad = call noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #28, !noalias !3178 ; 2 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsfPYenFzdTHO_5uu_wc.exit

bb.h:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !3178, !noalias !3181, !noundef !7 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3183
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i
    i64 1, label %bb.k
  ], !prof !242

default.unreachable:                              ; preds = %bb.i
end_hunk_0
