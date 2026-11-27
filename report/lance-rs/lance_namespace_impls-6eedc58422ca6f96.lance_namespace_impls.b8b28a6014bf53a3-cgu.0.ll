Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 288
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB3g_9UpdateJob12execute_impl0s8_0EECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 0, ptr %i.x, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.not87.not412 = icmp eq i64 %i.bo, 0
  br i1 %.not87.not412, label %.outer._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.k, %.outer
  %.ph415 = phi i64 [ 0, %.outer ], [ %i.bl, %bb.k ]
  %.sroa.05.0.ph414 = phi i64 [ %i.dl, %.outer ], [ %i.bo, %bb.k ] ; 6 uses
  %.sroa.0181.1.ph413 = phi i64 [ 0, %.outer ], [ %.sroa.0181.0425, %bb.k ] ; 2 uses
  %i.bp = load i64, ptr %i.bi, align 8, !range !484, !noundef !422 ; 2 uses
  %.not.i111.peel = icmp eq i64 %i.bp, -2
  br i1 %.not.i111.peel, label %bb.l, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel

bb.l:                                             ; preds = %.lr.ph.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12087
  call fastcc void @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4G_9UpdateJob12execute_impl0s8_0EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.y), !noalias !12088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !12089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12087
  %i.bq = load i64, ptr %i.bi, align 8, !range !484, !noundef !422 ; 2 uses
  %i.br = icmp ne i64 %i.bq, -2
  call void @llvm.assume(i1 %i.br)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel: ; preds = %bb.l, %.lr.ph.split.preheader
  %i.bs = phi i64 [ %i.bq, %bb.l ], [ %i.bp, %.lr.ph.split.preheader ] ; 3 uses
  %.not88.peel = icmp eq i64 %i.bs, -1
  br i1 %.not88.peel, label %.split386, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel
  %i.bt = invoke noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(56) %i.bi)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel unwind label %.loopexit.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel: ; preds = %bb.m
  %i.bu = icmp eq i64 %i.bt, %.sroa.0181.1.ph413
  br i1 %i.bu, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112, label %.split.us

.thread303:                                       ; preds = %bb.ad
  %.pre = load i64, ptr %i.bi, align 8, !range !484 ; 2 uses
  %.not.i106 = icmp eq i64 %.pre, -2
  br i1 %.not.i106, label %.thread303.thread, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

.thread303.thread:                                ; preds = %bb.i, %.thread303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12090
  call fastcc void @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4G_9UpdateJob12execute_impl0s8_0EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.y), !noalias !12091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !noalias !12092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12090
  %i.bv = load i64, ptr %i.bi, align 8, !range !484, !noundef !422 ; 2 uses
  %i.bw = icmp ne i64 %i.bv, -2
  call void @llvm.assume(i1 %i.bw)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.thread303.thread, %.thread303
  %i.bx = phi i64 [ %i.bv, %.thread303.thread ], [ %.pre, %.thread303 ]
  %.not86 = icmp eq i64 %i.bx, -1
  br i1 %.not86, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.by = load i64, ptr %i.bh, align 8, !noundef !422 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 384307168202282326
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %i.by, ptr %i.o, align 8, !noalias !12093
  store i64 %.sroa.4.0.i16.i.i.i.i496, ptr %i.n, align 8, !noalias !12093
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12093
  store ptr %i.o, ptr %i.l, align 8, !noalias !12093
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !12093
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.n, ptr %i.ca, align 8, !noalias !12093
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !12093
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @757, ptr noundef nonnull %i.l)
          to label %.noexc107 unwind label %bb.j, !noalias !12094

.noexc107:                                        ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12093
  call void @llvm.experimental.noalias.scope.decl(metadata !12095)
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.m, align 8, !alias.scope !12096, !noalias !12093 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !12096, !noalias !12093 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.57.0.copyload.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !12096, !noalias !12093
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !12097
  %i.cb = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !12097 ; 5 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.o, label %bb.s, !prof !454

bb.o:                                             ; preds = %.noexc107
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i.i unwind label %bb.p, !noalias !12097

.noexc.i.i:                                       ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %.sroa.06.0.copyload.i.i, 0
  br i1 %i.ce, label %bb.g, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %.sroa.06.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !12098
  br label %bb.g

bb.r:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_7flatten7FlatMapINtNtNtB4_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2d_7segment10U64SegmentENCINvB2d_17rechunk_sequencesAB2b_B33_INtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtNtB2f_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB6o_9UpdateJob12execute_impl0s8_0EE0EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(168) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110.sink.split: ; preds = %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i15.i.i.i.i499, i64 noundef %.idx, i64 noundef range(i64 1, -9223372036854775807) 8) #68
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.r
  ret void

bb.s:                                             ; preds = %.noexc107
  store i64 %.sroa.06.0.copyload.i.i, ptr %i.cb, align 8, !noalias !12099
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !12099
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %.sroa.57.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !12099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i8 0, ptr %0, align 8
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %.sroa.4193.0..sroa_idx, align 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @39, ptr %.sroa.5194.0..sroa_idx, align 8
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @759, ptr %.sroa.6195.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.s
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_7flatten7FlatMapINtNtNtB4_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2d_7segment10U64SegmentENCINvB2d_17rechunk_sequencesAB2b_B33_INtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtNtB2f_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB6o_9UpdateJob12execute_impl0s8_0EE0EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(168) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !12100)
  %.val.i = load ptr, ptr %i.bg, align 8, !alias.scope !12100, !nonnull !422, !noundef !422 ; 2 uses
  %.val1.i = load i64, ptr %i.bh, align 8, !alias.scope !12100, !noundef !422 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12101)
  %i.cg = icmp eq i64 %.val1.i, 0
  br i1 %i.cg, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph.i.i.i

.outer._crit_edge:                                ; preds = %.outer, %.outer.thread, %bb.k
  %.sroa.0181.1.lcssa = phi i64 [ %.sroa.0181.0425, %bb.k ], [ %i.ei, %.outer.thread ], [ 0, %.outer ]
  %.lcssa326 = phi i64 [ %i.bl, %bb.k ], [ %i.ei, %.outer.thread ], [ 0, %.outer ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.ch = load i64, ptr %i.bh, align 8, !alias.scope !12102, !noundef !422 ; 3 uses
  %i.ci = load i64, ptr %i.z, align 8, !range !425, !alias.scope !12102, !noundef !422
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %.outer._crit_edge
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceE8grow_oneCshkPeWWG1flk_5lance(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.ad unwind label %bb.v, !noalias !12103

bb.v:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.q) #73
  br label %bb.g

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.sink = phi i64 [ %i.cl, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.bs, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 -2, ptr %i.bi, align 8
  store i64 %.sink, ptr %i.w, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.561.0..sroa_idx62, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.456.0..sroa_idx, i64 48, i1 false)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12087
  call fastcc void @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4G_9UpdateJob12execute_impl0s8_0EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.y), !noalias !12088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !12089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12087
  %i.cl = load i64, ptr %i.bi, align 8, !range !484, !noundef !422 ; 4 uses
  %i.cm = icmp ne i64 %i.cl, -2
  call void @llvm.assume(i1 %i.cm)
  %.not88 = icmp eq i64 %i.cl, -1
  br i1 %.not88, label %.split386, label %bb.w

bb.w:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112
  %i.cn = invoke noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(56) %i.bi)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %.loopexit.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.w
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112, label %.split.us, !llvm.loop !12027

.split.us:                                        ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel
  %.lcssa436 = phi i64 [ %i.bs, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel ], [ %i.cl, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.lcssa433 = phi i64 [ %.ph415, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 3 uses
  %.sroa.0181.1377.lcssa430 = phi i64 [ %.sroa.0181.1.ph413, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %.lcssa = phi i64 [ %i.bt, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel ], [ %i.cn, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB4l_9UpdateJob12execute_impl0s8_0EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit ]
  %i.cp = sub i64 %.lcssa, %.sroa.0181.1377.lcssa430 ; 3 uses
  %i.cq = icmp ugt i64 %i.cp, %.sroa.05.0.ph414
  br i1 %i.cq, label %bb.aj, label %bb.ae

.split386:                                        ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNvMs_NtNtNtCshkPeWWG1flk_5lance7dataset5write6updateNtB79_9UpdateJob12execute_impl0s8_0EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 -2, ptr %i.bi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.8184.0423, ptr %i.j, align 8, !noalias !12104
  store i64 %i.bo, ptr %i.i, align 8, !noalias !12104
  store i64 %.sroa.05.0.ph414, ptr %i.h, align 8, !noalias !12104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12104
  store ptr %i.j, ptr %i.f, align 8, !noalias !12104
  %.sroa.42.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i118, align 8, !noalias !12104
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %i.cr, align 8, !noalias !12104
  %.sroa.46.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i119, align 8, !noalias !12104
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.h, ptr %i.cs, align 8, !noalias !12104
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !12104
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @760, ptr noundef nonnull %i.f)
          to label %.noexc129 unwind label %.loopexit.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12105

.noexc129:                                        ; preds = %.split386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12104
  call void @llvm.experimental.noalias.scope.decl(metadata !12106)
  %.sroa.06.0.copyload.i.i120 = load i64, ptr %i.g, align 8, !alias.scope !12107, !noalias !12104 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i121 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i.i122 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i121, align 8, !alias.scope !12107, !noalias !12104 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i123 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.57.0.copyload.i.i124 = load i64, ptr %.sroa.57.0..sroa_idx.i.i123, align 8, !alias.scope !12107, !noalias !12104
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !12108
  %i.ct = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !12108 ; 5 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.x, label %bb.aa, !prof !454

bb.x:                                             ; preds = %.noexc129
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i.i128 unwind label %bb.y, !noalias !12108

.noexc.i.i128:                                    ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = icmp eq i64 %.sroa.06.0.copyload.i.i120, 0
  br i1 %i.cw, label %.thread313, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i122) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i122, i64 noundef %.sroa.06.0.copyload.i.i120, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !12109
  br label %.thread313

bb.aa:                                            ; preds = %.noexc129
  store i64 %.sroa.06.0.copyload.i.i120, ptr %i.ct, align 8, !noalias !12110
  %.sroa.5.0..sroa_idx2.i.i125 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %.sroa.4.0.copyload.i.i122, ptr %.sroa.5.0..sroa_idx2.i.i125, align 8, !noalias !12110
  %.sroa.6.0..sroa_idx4.i.i126 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %.sroa.57.0.copyload.i.i124, ptr %.sroa.6.0..sroa_idx4.i.i126, align 8, !noalias !12110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i8 0, ptr %0, align 8
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.4187.0..sroa_idx, align 8
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @39, ptr %.sroa.5188.0..sroa_idx, align 8
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @761, ptr %.sroa.6189.0..sroa_idx, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ap, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !12111)
  call void @llvm.experimental.noalias.scope.decl(metadata !12112)
  %.val.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !12113, !nonnull !422, !noundef !422 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !12113, !noundef !422 ; 2 uses
  %i.cx = icmp eq i64 %.val1.i.i, 0
  br i1 %i.cx, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ab, %.lr.ph.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %i.cz, %.lr.ph.i.i.i.i ], [ 0, %bb.ab ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i, i64 %.sroa.0.07.i.i.i.i
  %i.cz = add nuw nsw i64 %.sroa.0.07.i.i.i.i, 1  ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(56) %i.cy), !noalias !12113
  %i.da = icmp eq i64 %i.cz, %.val1.i.i
  br i1 %i.da, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ab
  %.val2.i.i = load i64, ptr %i.x, align 8, !range !425, !alias.scope !12113, !noundef !422 ; 2 uses
  %i.db = icmp eq i64 %.val2.i.i, 0
  br i1 %i.db, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.dc = mul nuw i64 %.val2.i.i, 56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !12113
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ad:                                            ; preds = %bb.u, %.outer._crit_edge
  %i.dd = load ptr, ptr %i.bg, align 8, !alias.scope !12102, !nonnull !422, !noundef !422
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.df = add i64 %i.ch, 1
  store i64 %i.df, ptr %i.bh, align 8, !alias.scope !12102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.dg = icmp eq ptr %i.bm, %i.bj
  br i1 %i.dg, label %.thread303, label %bb.k

bb.ae:                                            ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %.sroa.565.sroa.5.0.copyload = load ptr, ptr %.sroa.565.sroa.5.0..sroa.456.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8269.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.565.sroa.6.0..sroa.456.0..sroa_idx.sroa_idx, i64 24, i1 false)
  store i64 -2, ptr %i.bi, align 8
  %.sroa.0.0.extract.trunc = trunc nuw nsw i64 %.lcssa436 to i8
  store i8 %.sroa.0.0.extract.trunc, ptr %i.s, align 8
  store i56 0, ptr %.sroa.4265.0..sroa_idx, align 1
  %i.dh = load <2 x ptr>, ptr %.sroa.456.0..sroa_idx, align 8
  store <2 x ptr> %i.dh, ptr %.sroa.5266.0..sroa_idx, align 8
  store ptr %.sroa.565.sroa.5.0.copyload, ptr %.sroa.7268.0..sroa_idx, align 8
  invoke void @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment5slice(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s, i64 noundef %.lcssa433, i64 noundef %i.cp)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.s) #73
  br label %.thread313

bb.ag:                                            ; preds = %bb.ae
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.dj = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ah, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !454

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc150 unwind label %bb.ai

.noexc150:                                        ; preds = %bb.ah
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dj, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false)
  store i64 1, ptr %i.r, align 8
  store ptr %i.dj, ptr %.sroa.446.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.547.0..sroa_idx, align 8
  invoke void @_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence6extend(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.outer unwind label %.loopexit.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.outer:                                           ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dl = sub nuw i64 %.sroa.05.0.ph414, %i.cp    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not87.not = icmp eq i64 %i.dl, 0
  br i1 %.not87.not, label %.outer._crit_edge, label %.lr.ph.split.preheader

bb.ai:                                            ; preds = %bb.ah
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.t) #73
  br label %.thread313

bb.aj:                                            ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.dm = load i64, ptr %i.bi, align 8, !range !485, !noundef !422
  %.not91 = icmp eq i64 %i.dm, -1
  br i1 %.not91, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment5slice(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bi, i64 noundef %.lcssa433, i64 noundef %.sroa.05.0.ph414)
          to label %bb.as unwind label %.loopexit.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.8184.0423, ptr %i.e, align 8, !noalias !12114
  store i64 %i.bo, ptr %i.d, align 8, !noalias !12114
  store i64 %.sroa.05.0.ph414, ptr %i.c, align 8, !noalias !12114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12114
  store ptr %i.e, ptr %i.a, align 8, !noalias !12114
  %.sroa.42.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i151, align 8, !noalias !12114
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.dn, align 8, !noalias !12114
  %.sroa.46.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i152, align 8, !noalias !12114
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.do, align 8, !noalias !12114
  %.sroa.410.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsd_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i153, align 8, !noalias !12114
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @760, ptr noundef nonnull %i.a)
          to label %.noexc163 unwind label %.loopexit.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !12115

.noexc163:                                        ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12114
  call void @llvm.experimental.noalias.scope.decl(metadata !12116)
  %.sroa.06.0.copyload.i.i154 = load i64, ptr %i.b, align 8, !alias.scope !12117, !noalias !12114 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i155 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i.i156 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i155, align 8, !alias.scope !12117, !noalias !12114 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i157 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.57.0.copyload.i.i158 = load i64, ptr %.sroa.57.0..sroa_idx.i.i157, align 8, !alias.scope !12117, !noalias !12114
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !12118
  %i.dp = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !12118 ; 5 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.am, label %bb.ap, !prof !454

bb.am:                                            ; preds = %.noexc163
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i.i162 unwind label %bb.an, !noalias !12118

.noexc.i.i162:                                    ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = icmp eq i64 %.sroa.06.0.copyload.i.i154, 0
  br i1 %i.ds, label %.thread313, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i156) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i156, i64 noundef %.sroa.06.0.copyload.i.i154, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !12119
  br label %.thread313

bb.ap:                                            ; preds = %.noexc163
  store i64 %.sroa.06.0.copyload.i.i154, ptr %i.dp, align 8, !noalias !12120
  %.sroa.5.0..sroa_idx2.i.i159 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %.sroa.4.0.copyload.i.i156, ptr %.sroa.5.0..sroa_idx2.i.i159, align 8, !noalias !12120
  %.sroa.6.0..sroa_idx4.i.i160 = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i64 %.sroa.57.0.copyload.i.i158, ptr %.sroa.6.0..sroa_idx4.i.i160, align 8, !noalias !12120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 0, ptr %0, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dp, ptr %.sroa.580.0..sroa_idx, align 8
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @39, ptr %.sroa.681.0..sroa_idx, align 8
  %.sroa.681.sroa.4.0..sroa.681.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @761, ptr %.sroa.681.sroa.4.0..sroa.681.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ab

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ac, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.t

.lr.ph.i.i.i:                                     ; preds = %bb.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.du, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ 0, %bb.t ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 3 uses
  %i.du = add nuw nsw i64 %.sroa.0.07.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12121)
  call void @llvm.experimental.noalias.scope.decl(metadata !12122)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !12123, !noalias !12100, !nonnull !422, !noundef !422 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !12123, !noalias !12100, !noundef !422 ; 2 uses
  %i.dx = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.dx, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i
  %i.dz = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(56) %i.dy), !noalias !12124
  %i.ea = icmp eq i64 %i.dz, %.val1.i.i.i.i.i
  br i1 %i.ea, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.dt, align 8, !range !425, !alias.scope !12123, !noalias !12100, !noundef !422 ; 2 uses
  %i.eb = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.eb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.ec = mul nuw i64 %.val2.i.i.i.i.i, 56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !12124
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.aq, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.ed = icmp eq i64 %i.du, %.val1.i
  br i1 %i.ed, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.t
  %.val2.i = load i64, ptr %i.z, align 8, !range !425, !alias.scope !12100, !noundef !422 ; 2 uses
  %i.ee = icmp eq i64 %.val2.i, 0
  br i1 %i.ee, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ar

bb.ar:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.ef = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !12100
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ar, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit110.sink.split

bb.as:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68
  %i.eg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.at, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit169, !prof !454

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc168 unwind label %bb.au

.noexc168:                                        ; preds = %bb.at
  unreachable

end_hunk_0
begin_hunk_1_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob22execute_uncommitted_v20CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6494.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6494.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  invoke void @_RNvMNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert4exec6deleteNtB2_25DeleteOnlyMergeInsertExec11transaction(ptr noalias noundef nonnull sret([344 x i8]) align 8 captures(none) dereferenceable(344) %i.cl, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(448) %i.apw)
          to label %bb.pe unwind label %bb.pd

bb.pd:                                            ; preds = %bb.pe, %bb.pc
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8532)
  br label %bb.pm

bb.pe:                                            ; preds = %bb.pc
  invoke fastcc void @_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionE10ok_or_elseNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2Q_14MergeInsertJob22execute_uncommitted_v20s3_0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(344) %i.cm, ptr noalias noundef readonly align 8 captures(none) dereferenceable(344) %i.cl)
          to label %bb.pf unwind label %bb.pd

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.experimental.noalias.scope.decl(metadata !161445)
  %i.aqc = load i64, ptr %i.cm, align 8, !range !427, !alias.scope !161446, !noundef !422 ; 3 uses
  %i.aqd = icmp eq i64 %i.aqc, -1
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8532, ptr noundef nonnull align 8 dereferenceable(56) %i.aqe, i64 56, i1 false), !alias.scope !161447
  br i1 %i.aqd, label %bb.pn, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %.sroa.10534.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %.sroa.5538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5538.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.10534.0..sroa_idx535, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %.sroa.4537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4537.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8532, i64 56, i1 false)
  store i64 %i.aqc, ptr %i.cn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  invoke void @_RNvMNtNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert4exec6deleteNtB2_25DeleteOnlyMergeInsertExec13affected_rows(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cj, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(448) %i.apw)
          to label %bb.pi unwind label %bb.ph

bb.ph:                                            ; preds = %bb.pj, %bb.pg
  %i.aqf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table11transaction7builder11TransactionECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(344) %i.cn) #73
          to label %bb.pm unwind label %bb.mf

bb.pi:                                            ; preds = %bb.pg
  call void @llvm.experimental.noalias.scope.decl(metadata !161448)
  %i.aqg = load i64, ptr %i.cj, align 8, !range !448, !alias.scope !161448, !noundef !422
  %i.aqh = trunc nuw i64 %i.aqg to i1
  br i1 %i.aqh, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !161449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aqi, i64 24, i1 false), !noalias !161450
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  invoke void @_RNvXsn_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs1akgR21QTtx_7roaring7treemap14RoaringTreemapE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aqj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc219 unwind label %bb.ph, !noalias !161448

.noexc219:                                        ; preds = %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !161449
  br label %bb.pk

bb.pk:                                            ; preds = %.noexc219, %bb.pi
  %.sink.i218 = phi i64 [ 1, %.noexc219 ], [ 0, %bb.pi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4537.0..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.9.sroa.9, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5538.0..sroa_idx, i64 280, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2496, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7501, i64 16, i1 false)
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.nz

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit195: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i192, %bb.ob
  %i.aqk = getelementptr inbounds nuw i8, ptr %1, i64 401
  store i8 0, ptr %i.aqk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.experimental.noalias.scope.decl(metadata !161451)
  call void @llvm.experimental.noalias.scope.decl(metadata !161452)
  %i.aql = load ptr, ptr %i.ami, align 8, !alias.scope !161453, !nonnull !422, !noundef !422
  %i.aqm = atomicrmw add ptr %i.aql, i64 -1 release, align 8, !noalias !161453
  %i.aqn = icmp eq i64 %i.aqm, 1
  br i1 %i.aqn, label %.invoke, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit

.invoke:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit195, %bb.mc
  %i.aqo = phi ptr [ %i.aki, %bb.mc ], [ %i.ami, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit195 ]
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aqo)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.pl

bb.pl:                                            ; preds = %bb.le, %.invoke
  %i.aqp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit133

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs5E8EBwPtAkp_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.invoke, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls.exit195, %bb.me, %bb.mc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(512) %i.ch, i64 512, i1 false)
  br label %common.ret

bb.pm:                                            ; preds = %bb.pd, %bb.ph
  %.pn50.pn = phi { ptr, i32 } [ %i.aqb, %bb.pd ], [ %i.aqf, %bb.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %.loopexit.split-lp.loopexit.split-lp

bb.pn:                                            ; preds = %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqq, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8532, i64 56, i1 false)
  store i64 -1, ptr %i.ch, align 8, !alias.scope !161454
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8532)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.nc

bb.po:                                            ; preds = %bb.pb
  %.sroa.5525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5525.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6494.sroa.8, i64 7, i1 false)
  %.sroa.10529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10529.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6494.sroa.13, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !161455)
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %.sroa.6494.sroa.0.0.copyload503, ptr %i.aqr, align 8, !alias.scope !161456
  %.sroa.6526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %.sroa.6494.sroa.9.0.copyload509, ptr %.sroa.6526.0..sroa_idx, align 8, !alias.scope !161456
  %.sroa.7527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 %.sroa.6494.sroa.10.0.copyload513, ptr %.sroa.7527.0..sroa_idx, align 8, !alias.scope !161456
  %.sroa.8528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store ptr %.sroa.6494.sroa.11.0.copyload517, ptr %.sroa.8528.0..sroa_idx, align 8, !alias.scope !161456
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i64 %.sroa.6494.sroa.12.0.copyload521, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !161456
  store i64 -1, ptr %i.ch, align 8, !alias.scope !161457
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6494.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6494.sroa.13)
  br label %bb.nc

bb.pp:                                            ; preds = %bb.oy
  %i.aqs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %.loopexit.split-lp.loopexit.split-lp

bb.pq:                                            ; preds = %bb.oy
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aqt, ptr noundef nonnull align 8 dereferenceable(56) %i.ci, i64 56, i1 false)
  store i64 -1, ptr %i.ch, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.nc

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.pp, %bb.oe, %bb.nj, %bb.op, %bb.ok, %bb.pm, %bb.oz, %bb.mg, %.body141
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %.body141 ], [ %i.aks, %bb.mg ], [ %i.aqs, %bb.pp ], [ %.pn50.pn, %bb.pm ], [ %i.apk, %bb.op ], [ %i.ane, %bb.nj ], [ %.pn71.pn, %bb.oe ], [ %i.ape, %bb.ok ], [ %i.apx, %bb.oz ], [ %lpad.loopexit.split-lp785, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 440
  %.val = load ptr, ptr %i.aqu, align 8
  %i.aqv = getelementptr i8, ptr %1, i64 448
  %.val98 = load ptr, ptr %i.aqv, align 16, !nonnull !422, !align !423, !noundef !422
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs5ncyOgBbgdO_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.val, ptr nonnull %.val98) #73
          to label %.body170 unwind label %bb.mf

bb.pr:                                            ; preds = %.body170
  call void @llvm.experimental.noalias.scope.decl(metadata !161458)
  call void @llvm.experimental.noalias.scope.decl(metadata !161459)
  %i.aqw = load ptr, ptr %i.dh, align 8, !alias.scope !161460, !nonnull !422, !noundef !422
  %i.aqx = atomicrmw add ptr %i.aqw, i64 -1 release, align 8, !noalias !161460
  %i.aqy = icmp eq i64 %i.aqx, 1
  br i1 %i.aqy, label %bb.ps, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ps:                                            ; preds = %bb.pr
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextE9drop_slowCs5E8EBwPtAkp_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs5ncyOgBbgdO_20datafusion_execution4task11TaskContextEECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.mf
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob24execute_uncommitted_impl0CsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(512) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !162111 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.7.i2.i.i = alloca [48 x i8], align 8     ; 4 uses
  %i.c = alloca [24 x i8], align 16               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %i.h = alloca [56 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [56 x i8], align 8                ; 10 uses
  %i.q = alloca [56 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [56 x i8], align 8                ; 5 uses
  %i.t = alloca [56 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [168 x i8], align 8               ; 27 uses
  %i.w = alloca [24 x i8], align 8                ; 12 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4261.i = alloca [7 x i8], align 1        ; 6 uses
  %.sroa.12265.sroa.3.i = alloca [16 x i8], align 8 ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 10 uses
  %.sroa.3.i = alloca [7 x i8], align 1           ; 6 uses
  %.sroa.6244.sroa.3.sroa.2.i = alloca [16 x i8], align 8 ; 6 uses
  %i.aa = alloca [56 x i8], align 8               ; 11 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.9205.i = alloca [16 x i8], align 8       ; 8 uses
  %i.ad = alloca [64 x i8], align 8               ; 13 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [72 x i8], align 8               ; 13 uses
  %.sroa.51132 = alloca [59 x i8], align 1        ; 5 uses
  %i.ai = alloca [40 x i8], align 8               ; 6 uses
  %i.aj = alloca [40 x i8], align 8               ; 6 uses
  %i.ak = alloca [48 x i8], align 8               ; 10 uses
  %.sroa.8.sroa.12.i.sroa.0 = alloca [24 x i8], align 8 ; 10 uses
  %i.al = alloca [40 x i8], align 8               ; 7 uses
  %i.am = alloca [64 x i8], align 8               ; 6 uses
  %i.an = alloca [40 x i8], align 8               ; 7 uses
  %i.ao = alloca [56 x i8], align 8               ; 14 uses
  %i.ap = alloca [40 x i8], align 8               ; 9 uses
  %i.aq = alloca [48 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 13 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 6 uses
  %i.as = alloca [40 x i8], align 8               ; 9 uses
  %i.at = alloca [16 x i8], align 8               ; 9 uses
  %i.au = alloca [24 x i8], align 8               ; 10 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.8132.i = alloca [6 x i8], align 2        ; 9 uses
  %.sroa.11.i = alloca [24 x i8], align 8         ; 9 uses
  %.sroa.3.sroa.2.i = alloca [6 x i8], align 1    ; 7 uses
  %.sroa.5120.i = alloca [24 x i8], align 8       ; 7 uses
  %i.ax = alloca [56 x i8], align 8               ; 12 uses
  %i.ay = alloca [24 x i8], align 8               ; 10 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 13 uses
  %i.bc = alloca [7 x i8], align 4                ; 8 uses
  %i.bd = alloca [72 x i8], align 8               ; 14 uses
  %.sroa.8.sroa.9.i = alloca [6 x i8], align 2    ; 7 uses
  %.sroa.8.sroa.13.i = alloca [24 x i8], align 8  ; 7 uses
  %i.be = alloca [56 x i8], align 8               ; 3 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [512 x i8], align 8              ; 76 uses
  %.sroa.050 = alloca [376 x i8], align 8         ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 5 uses
  %i.bi = alloca [280 x i8], align 8              ; 5 uses
  %i.bj = alloca [344 x i8], align 8              ; 5 uses
  %.sroa.51121 = alloca [59 x i8], align 1        ; 5 uses
  %.sroa.51118 = alloca [56 x i8], align 8        ; 6 uses
  %i.bk = alloca [56 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 8 uses
  %i.bp = alloca [24 x i8], align 8               ; 8 uses
  %i.bq = alloca [24 x i8], align 8               ; 8 uses
  %i.br = alloca [280 x i8], align 8              ; 24 uses
  %i.bs = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.81038 = alloca [7 x i8], align 1         ; 7 uses
  %.sroa.131043 = alloca [16 x i8], align 8       ; 7 uses
  %.sroa.31016 = alloca [56 x i8], align 8        ; 3 uses
  %.sroa.51017 = alloca [32 x i8], align 8        ; 2 uses
  %i.bt = alloca [96 x i8], align 8               ; 8 uses
  %i.bu = alloca [448 x i8], align 8              ; 5 uses
  %i.bv = alloca [1056 x i8], align 16            ; 6 uses
  %i.bw = alloca [72 x i8], align 8               ; 6 uses
  %i.bx = alloca [8 x i8], align 8                ; 7 uses
  %.sroa.0995 = alloca [544 x i8], align 8        ; 7 uses
  %i.by = alloca [96 x i8], align 8               ; 16 uses
  %.sroa.3936.sroa.0 = alloca [40 x i8], align 8  ; 4 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5937.sroa.2 = alloca [48 x i8], align 8  ; 3 uses
  %i.ca = alloca [120 x i8], align 8              ; 11 uses
  %i.cb = alloca [1056 x i8], align 16            ; 6 uses
  %i.cc = alloca [8 x i8], align 8                ; 7 uses
  %i.cd = alloca [24 x i8], align 8               ; 5 uses
  %i.ce = alloca [24 x i8], align 8               ; 5 uses
  %i.cf = alloca [24 x i8], align 8               ; 5 uses
  %i.cg = alloca [24 x i8], align 8               ; 8 uses
  %i.ch = alloca [24 x i8], align 8               ; 10 uses
  %i.ci = alloca [24 x i8], align 8               ; 6 uses
  %i.cj = alloca [280 x i8], align 8              ; 24 uses
  %.sroa.3869.sroa.0 = alloca [31 x i8], align 1  ; 3 uses
  %i.ck = alloca [56 x i8], align 8               ; 10 uses
  %i.cl = alloca [24 x i8], align 8               ; 5 uses
  %i.cm = alloca [24 x i8], align 8               ; 7 uses
  %i.cn = alloca [8 x i8], align 8                ; 9 uses
  %.sroa.3844 = alloca [7 x i8], align 1          ; 2 uses
  %.sroa.6846 = alloca [40 x i8], align 8         ; 2 uses
  %i.co = alloca [56 x i8], align 8               ; 9 uses
  %i.cp = alloca [24 x i8], align 8               ; 3 uses
  %i.cq = alloca [40 x i8], align 8               ; 9 uses
  %.sroa.3806 = alloca [24 x i8], align 8         ; 3 uses
  %.sroa.8803.sroa.0 = alloca [24 x i8], align 8  ; 7 uses
  %i.cr = alloca [1056 x i8], align 16            ; 6 uses
  %.sroa.010.sroa.0.sroa.0.sroa.29 = alloca [24 x i8], align 8 ; 27 uses
  %.sroa.010.sroa.0.sroa.0.sroa.30 = alloca [24 x i8], align 8 ; 27 uses
  %.sroa.010.sroa.0.sroa.27 = alloca [72 x i8], align 8 ; 26 uses
  %.sroa.010.sroa.0.sroa.28 = alloca [48 x i8], align 8 ; 27 uses
  %.sroa.010.sroa.27 = alloca [7 x i8], align 1   ; 26 uses
  %.sroa.30 = alloca [24 x i8], align 8           ; 26 uses
  %i.cs = alloca [32 x i8], align 8               ; 7 uses
  %i.ct = alloca [280 x i8], align 8              ; 22 uses
  %i.cu = alloca [1056 x i8], align 16            ; 35 uses
  %.sroa.5778 = alloca [976 x i8], align 16       ; 4 uses
  %i.cv = alloca [8 x i8], align 8                ; 25 uses
  %i.cw = alloca [368 x i8], align 16             ; 5 uses
  %i.cx = alloca [464 x i8], align 16             ; 8 uses
  %.sroa.8769 = alloca [56 x i8], align 8         ; 7 uses
  %.sroa.3758 = alloca [7 x i8], align 1          ; 2 uses
  %.sroa.8761 = alloca [32 x i8], align 8         ; 2 uses
  %i.cy = alloca [56 x i8], align 8               ; 10 uses
  %i.cz = alloca [7 x i8], align 4                ; 8 uses
  %i.da = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.8722 = alloca [56 x i8], align 8         ; 7 uses
  %.sroa.3711 = alloca [7 x i8], align 1          ; 2 uses
  %.sroa.9714 = alloca [32 x i8], align 8         ; 2 uses
  %.sroa.8707.sroa.0 = alloca [7 x i8], align 1   ; 7 uses
  %.sroa.8707.sroa.8 = alloca [32 x i8], align 1  ; 7 uses
  %.sroa.3679 = alloca [31 x i8], align 1         ; 3 uses
  %.sroa.5680 = alloca [24 x i8], align 8         ; 2 uses
  %i.db = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.2 = alloca [504 x i8], align 8           ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 24
  %.sroa.3652 = alloca [56 x i8], align 8         ; 4 uses
  %.sroa.5653 = alloca [448 x i8], align 8        ; 4 uses
  %i.dd = alloca [512 x i8], align 8              ; 8 uses
  %.sroa.6624 = alloca [6 x i8], align 2          ; 2 uses
  %.sroa.11628 = alloca [24 x i8], align 8        ; 2 uses
  %.sroa.9617 = alloca [6 x i8], align 2          ; 8 uses
  %.sroa.13 = alloca [24 x i8], align 8           ; 8 uses
  %i.de = alloca [8 x i8], align 8                ; 11 uses
  %i.df = alloca [56 x i8], align 8               ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 16, !range !568, !noundef !422
  switch i8 %i.dh, label %default.unreachable1527 [
    i8 0, label %bb.j
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.aa
    i8 4, label %bb.cs
    i8 5, label %bb.da
    i8 6, label %bb.dl
    i8 7, label %bb.ge
    i8 8, label %bb.b
    i8 9, label %bb.c
    i8 10, label %bb.d
    i8 11, label %bb.e
    i8 12, label %bb.f
    i8 13, label %bb.nc
    i8 14, label %bb.g
    i8 15, label %bb.h
    i8 16, label %bb.i
  ]

default.unreachable1527:                          ; preds = %bb.nc, %bb.dl, %bb.aa, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.0.sroa.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.0.sroa.30)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.28)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  br label %bb.il

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.0.sroa.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.0.sroa.30)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.28)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  br label %bb.jh

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.0.sroa.29)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.0.sroa.30)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.sroa.0.sroa.27)
end_hunk_1
begin_hunk_2_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob24execute_uncommitted_impl0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.anr = icmp eq i64 %i.anq, 0
  br i1 %i.anr, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.no, !prof !445

bb.no:                                            ; preds = %bb.nn
  %i.ans = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc84.i unwind label %bb.pv, !noalias !162334

.noexc84.i:                                       ; preds = %bb.no
  br i1 %i.ans, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.np

bb.np:                                            ; preds = %.noexc84.i
  store atomic i8 1, ptr %i.ang monotonic, align 4, !noalias !162334
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.np, %.noexc84.i, %bb.nn, %bb.nm
  %i.ant = atomicrmw xchg ptr %i.amx, i32 0 release, align 4, !noalias !162334
  %i.anu = icmp eq i32 %i.ant, 2
  br i1 %i.anu, label %.invoke.i476, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEECsfR8GmIBoxTX_21lance_namespace_impls.exit111.i, !prof !432

bb.nq:                                            ; preds = %bb.nl
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 1840 ; 2 uses
  %i.anw = load ptr, ptr %i.anv, align 16, !noalias !162333, !nonnull !422, !align !423, !noundef !422 ; 2 uses
  %i.anx = getelementptr i8, ptr %i.anw, i64 8
  %.val66.i = load ptr, ptr %i.anx, align 8, !noalias !162334, !nonnull !422, !noundef !422 ; 3 uses
  %i.any = getelementptr i8, ptr %i.anw, i64 16
  %.val67.i = load i64, ptr %i.any, align 8, !noalias !162334, !noundef !422 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !162333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !162333
  %i.anz = getelementptr i8, ptr %.val72.i, i64 40
  %.val70.i = load ptr, ptr %i.anz, align 8, !noalias !162334, !nonnull !422, !noundef !422
  %i.aoa = getelementptr i8, ptr %.val72.i, i64 48
  %.val71.i = load i64, ptr %i.aoa, align 8, !noalias !162334, !noundef !422
  invoke fastcc void @_RNvXs7_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequenceNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ae, ptr nonnull %.val70.i, i64 %.val71.i)
          to label %bb.ns unwind label %bb.nr, !noalias !162334

bb.nr:                                            ; preds = %bb.nq
  %i.aob = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !162333
  br label %.body86.i

bb.ns:                                            ; preds = %bb.nq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !162333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !162333
  %i.aoc = shl nuw nsw i64 %.val67.i, 3           ; 8 uses
  %i.aod = icmp eq i64 %.val67.i, 0               ; 7 uses
  br i1 %i.aod, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.nv

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.ns
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !162340
  br label %bb.oa

bb.nt:                                            ; preds = %bb.ny
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i15.i.i.i.i453.i.i, i64 noundef %i.aoc, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162341
  br label %.body86.i

bb.nu:                                            ; preds = %bb.nw
  %i.aoe = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.nv:                                            ; preds = %bb.ns
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !162342
  %i.aof = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.aoc, i64 noundef range(i64 1, 17) 8) #68, !noalias !162342 ; 7 uses
  %i.aog = icmp eq ptr %i.aof, null
  br i1 %i.aog, label %bb.nw, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.nv
  %xtraiter = and i64 %.val67.i, 1
  %i.aoh = icmp eq i64 %.val67.i, 1
  br i1 %i.aoh, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.val67.i, -2
  br label %.preheader.i.i.i.i.i.i.i.i

bb.nw:                                            ; preds = %bb.nv
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aoc) #72
          to label %.noexc.i.i486 unwind label %bb.nu, !noalias !162343

.noexc.i.i486:                                    ; preds = %bb.nw
  unreachable

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.nx, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %.val15.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aor, %bb.nx ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %bb.nx ]
  %i.aoi = getelementptr inbounds nuw [240 x i8], ptr %.val66.i, i64 %.val15.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aoi, align 8, !range !448, !noalias !162344, !noundef !422
  %i.aoj = trunc nuw i64 %.val16.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.aoj, label %.preheader.i.i.i.i.i.i.i.i.1, label %.loopexit, !prof !445

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.1, %.preheader.i.i.i.i.i.i.i.i.epil.preheader
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1121) #72
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i, !noalias !162345

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.loopexit
  unreachable

.preheader.i.i.i.i.i.i.i.i.1:                     ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.aok = getelementptr i8, ptr %i.aoi, i64 8
  %.val17.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aok, align 8, !noalias !162344
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %i.aof, i64 %.val15.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.val17.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aol, align 8, !noalias !162346
  %i.aom = or disjoint i64 %.val15.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aon = getelementptr inbounds nuw [240 x i8], ptr %.val66.i, i64 %i.aom ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.aon, align 8, !range !448, !noalias !162344, !noundef !422
  %i.aoo = trunc nuw i64 %.val16.i.i.i.i.i.i.i.i.i.i.i.1 to i1
  br i1 %i.aoo, label %bb.nx, label %.loopexit, !prof !445

bb.nx:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.1
  %i.aop = getelementptr i8, ptr %i.aon, i64 8
  %.val17.i.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.aop, align 8, !noalias !162344
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.aof, i64 %i.aom
  store i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.aoq, align 8, !noalias !162346
  %i.aor = add nuw i64 %.val15.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit
  %i.aos = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aof, i64 noundef %i.aoc, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162343
  br label %.thread.i.i

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.unr-lcssa: ; preds = %bb.nx
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.val15.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.aor, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1859 = trunc i64 %.val67.i to i1
  call void @llvm.assume(i1 %lcmp.mod1859)
  %i.aot = getelementptr inbounds nuw [240 x i8], ptr %.val66.i, i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.aot, align 8, !range !448, !noalias !162344, !noundef !422
  %i.aou = trunc nuw i64 %.val16.i.i.i.i.i.i.i.i.i.i.i.epil to i1
  br i1 %i.aou, label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.epilog-lcssa, label %.loopexit, !prof !445

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.epilog-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.epil.preheader
  %i.aov = getelementptr i8, ptr %i.aot, i64 8
  %.val17.i.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.aov, align 8, !noalias !162344
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.aof, i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.epil.init
  store i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.epil, ptr %i.aow, align 8, !noalias !162346
  br label %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.unr-lcssa, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !162340
  %i.aox = mul nuw nsw i64 %.val67.i, 24          ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !162347
  %i.aoy = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.aox, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162347 ; 2 uses
  %i.aoz = icmp eq ptr %i.aoy, null
  br i1 %i.aoz, label %bb.nz, label %bb.oa

bb.ny:                                            ; preds = %.thread291.i.i, %bb.om, %bb.oi, %bb.oh, %bb.ob
  %i.apa = phi i1 [ false, %.thread291.i.i ], [ false, %bb.om ], [ %i.aod, %bb.ob ], [ %i.aod, %bb.oi ], [ %i.aod, %bb.oh ]
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn290.i.i, %.thread291.i.i ], [ %i.aqy, %bb.om ], [ %i.apm, %bb.ob ], [ %i.aqr, %bb.oi ], [ %i.aqr, %bb.oh ] ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_7flatten7FlatMapINtNtNtB4_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2d_7segment10U64SegmentENCINvB2d_17rechunk_sequencesAB2b_B33_INtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtNtB2f_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6r_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(168) %i.v) #73, !noalias !162341
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.w) #73, !noalias !162341
  br i1 %i.apa, label %.body86.i, label %bb.nt

.thread472.i.i:                                   ; preds = %bb.nz
  %i.apb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aof, i64 noundef %i.aoc, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162341
  br label %.thread.i.i

bb.nz:                                            ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aox) #72
          to label %bb.pk unwind label %.thread472.i.i, !noalias !162341

bb.oa:                                            ; preds = %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %.sroa.10.0.i15.i.i.i.i453.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i ], [ %i.aof, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 5 uses
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i ], [ %i.aoy, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB2q_14MergeInsertJob24execute_uncommitted_impl0s1_00ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  store i64 %.val67.i, ptr %i.w, align 8, !noalias !162340
  %i.apc = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %i.apc, align 8, !noalias !162340
  %i.apd = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 6 uses
  store i64 0, ptr %i.apd, align 8, !noalias !162340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !162340
  store i64 1, ptr %i.v, align 8, !noalias !162340
  %.sroa.4.0..sroa_idx158.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx158.i.i, align 8, !noalias !162340
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx158.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx158.sroa_idx.i.i, align 8, !noalias !162340
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx158.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx158.sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !162348
  %.sroa.5.0..sroa_idx159.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 6 uses
  store ptr null, ptr %.sroa.5.0..sroa_idx159.i.i, align 8, !noalias !162340
  %.sroa.6160.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 3 uses
  store ptr null, ptr %.sroa.6160.0..sroa_idx.i.i, align 8, !noalias !162340
  %i.ape = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 15 uses
  store i64 -2, ptr %i.ape, align 8, !noalias !162340
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i15.i.i.i.i453.i.i, i64 %i.aoc
  br i1 %i.aod, label %.thread281.thread.i.i, label %.lr.ph388.i.i

.lr.ph388.i.i:                                    ; preds = %bb.oa
  %.sroa.4.0..sroa_idx.i.i477 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.0..sroa_idx.i.i478 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.561.0..sroa_idx62.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4243.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.5244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7246.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.8247.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.446.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.547.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.565.sroa.5.0..sroa.456.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %.sroa.565.sroa.6.0..sroa.456.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.apg = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 2 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 4 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.apk = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  br label %bb.oc

bb.ob:                                            ; preds = %bb.of
  %i.apm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ny

bb.oc:                                            ; preds = %bb.oy, %.lr.ph388.i.i
  %i.apn = phi i64 [ 0, %.lr.ph388.i.i ], [ %i.aqu, %bb.oy ] ; 2 uses
  %.sroa.0165.0387.i.i = phi i64 [ 0, %.lr.ph388.i.i ], [ %.sroa.0165.1313.i.i, %bb.oy ] ; 2 uses
  %.sroa.0166.0386.i.i = phi ptr [ %.sroa.10.0.i15.i.i.i.i453.i.i, %.lr.ph388.i.i ], [ %i.apo, %bb.oy ] ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %.sroa.0166.0386.i.i, i64 8 ; 2 uses
  %i.app = load i64, ptr %.sroa.0166.0386.i.i, align 8, !noalias !162341, !noundef !422 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !162340
  store i64 0, ptr %i.u, align 8, !noalias !162340
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i477, align 8, !noalias !162340
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i478, align 8, !noalias !162340
  %.not87378.i.i = icmp eq i64 %i.app, 0
  br i1 %.not87378.i.i, label %.loopexit.i.i, label %.lr.ph.split.preheader.i.preheader.i

.lr.ph.split.preheader.i.preheader.i:             ; preds = %bb.oc
  %.pre.i479 = load i64, ptr %i.ape, align 8, !range !484, !noalias !162340
  br label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.outer.i.i, %.lr.ph.split.preheader.i.preheader.i
  %i.apq = phi i64 [ -2, %.outer.i.i ], [ %.pre.i479, %.lr.ph.split.preheader.i.preheader.i ] ; 2 uses
  %.ph381.i.i = phi i64 [ 0, %.outer.i.i ], [ %i.apn, %.lr.ph.split.preheader.i.preheader.i ] ; 2 uses
  %.sroa.05.0.ph380.i.i = phi i64 [ %i.atl, %.outer.i.i ], [ %i.app, %.lr.ph.split.preheader.i.preheader.i ] ; 4 uses
  %.sroa.0165.1.ph379.i.i = phi i64 [ 0, %.outer.i.i ], [ %.sroa.0165.0387.i.i, %.lr.ph.split.preheader.i.preheader.i ] ; 3 uses
  %.not.i111.peel.i.i = icmp eq i64 %i.apq, -2
  br i1 %.not.i111.peel.i.i, label %bb.od, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel.i.i

bb.od:                                            ; preds = %.lr.ph.split.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !162349
  call fastcc void @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4J_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.v), !noalias !162350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ape, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !162351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !162349
  %i.apr = load i64, ptr %i.ape, align 8, !range !484, !noalias !162340, !noundef !422 ; 2 uses
  %i.aps = icmp ne i64 %i.apr, -2
  call void @llvm.assume(i1 %i.aps)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel.i.i: ; preds = %bb.od, %.lr.ph.split.preheader.i.i
  %i.apt = phi i64 [ %i.apr, %bb.od ], [ %i.apq, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.not88.peel.i.i = icmp eq i64 %i.apt, -1
  br i1 %.not88.peel.i.i, label %.split361.us.i.i, label %bb.oe

bb.oe:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel.i.i
  %i.apu = invoke noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(56) %i.ape)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel.i.i unwind label %.loopexit302.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !162341 ; 2 uses

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel.i.i: ; preds = %bb.oe
  %i.apv = icmp eq i64 %i.apu, %.sroa.0165.1.ph379.i.i
  br i1 %i.apv, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.preheader.i, label %.split.us.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.preheader.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel.i.i
  %i.apw = load i64, ptr %i.v, align 8, !range !448, !noalias !162333
  %.fr445.i = freeze i64 %i.apw
  %i.apx = trunc i64 %.fr445.i to i1
  %i.apy = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx158.sroa_idx.i.i, align 8, !noalias !162333 ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx158.sroa_idx.i.i, align 8, !noalias !162333
  %.sroa.0.0.copyload1.i.i.i.fr.i = freeze i64 %.sroa.0.0.copyload1.i.i.i.i ; 4 uses
  %.not.i.i.i.i484 = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.fr.i, -1
  %.sroa.6.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i, align 8, !noalias !162333 ; 2 uses
  %i.apz = icmp ult i64 %.sroa.6.sroa.4.0.copyload.i.i.i.i, 164703072086692426
  %i.aqa = icmp sgt i64 %.sroa.0.0.copyload1.i.i.i.fr.i, -1
  %.sroa.6.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !162333, !nonnull !422 ; 4 uses
  %i.aqb = getelementptr inbounds nuw [56 x i8], ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.sroa.4.0.copyload.i.i.i.i ; 2 uses
  %i.aqc = load ptr, ptr %i.apj, align 8, !noalias !162333, !nonnull !422 ; 3 uses
  %i.aqd = ptrtoint ptr %i.aqc to i64
  %i.aqe = load i64, ptr %i.apl, align 8, !noalias !162333 ; 2 uses
  %i.aqf = icmp eq i64 %i.aqe, 0
  %i.aqg = mul nuw i64 %i.aqe, 56
  %.promoted.i.pre.i = load ptr, ptr %.sroa.5.0..sroa_idx159.i.i, align 8, !alias.scope !162352, !noalias !162353
  %.promoted50.i.pre.i = load ptr, ptr %i.apg, align 8, !alias.scope !162352, !noalias !162353
  %.promoted51.i.pre.i = load ptr, ptr %i.aph, align 8, !alias.scope !162352, !noalias !162353
  %.promoted53.i.pre.i = load i64, ptr %i.api, align 8, !alias.scope !162352, !noalias !162353
  %.promoted55.i.pre.i = load i64, ptr %.sroa.4.0..sroa_idx158.i.i, align 8, !alias.scope !162352, !noalias !162353
  %i.aqh = insertelement <2 x ptr> poison, ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i, i64 0
  %i.aqi = shufflevector <2 x ptr> %i.aqh, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.i

.thread281.i.i:                                   ; preds = %bb.oy
  %.pre.i.i = load i64, ptr %i.ape, align 8, !range !484, !noalias !162340 ; 2 uses
  %.not.i106.i.i = icmp eq i64 %.pre.i.i, -2
  br i1 %.not.i106.i.i, label %.thread281.thread.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

.thread281.thread.i.i:                            ; preds = %.thread281.i.i, %bb.oa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !162354
  call fastcc void @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4J_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.v), !noalias !162355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ape, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !noalias !162356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !162354
  %i.aqj = load i64, ptr %i.ape, align 8, !range !484, !noalias !162340, !noundef !422 ; 2 uses
  %i.aqk = icmp ne i64 %i.aqj, -2
  call void @llvm.assume(i1 %i.aqk)
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.thread281.thread.i.i, %.thread281.i.i
  %i.aql = phi i64 [ %i.aqj, %.thread281.thread.i.i ], [ %.pre.i.i, %.thread281.i.i ]
  %.not86.i.i = icmp eq i64 %i.aql, -1
  br i1 %.not86.i.i, label %bb.oj, label %bb.of

bb.of:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.aqm = load i64, ptr %i.apd, align 8, !noalias !162340, !noundef !422 ; 2 uses
  %i.aqn = icmp ult i64 %i.aqm, 384307168202282326
  call void @llvm.assume(i1 %i.aqn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !162340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !162340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !162340
  store i64 %i.aqm, ptr %i.l, align 8, !noalias !162357
  store i64 %.val67.i, ptr %i.k, align 8, !noalias !162357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !162357
  store ptr %i.l, ptr %i.i, align 8, !noalias !162357
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !162357
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.aqo, align 8, !noalias !162357
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !162357
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @757, ptr noundef nonnull %i.i)
          to label %.noexc107.i.i unwind label %bb.ob, !noalias !162358

.noexc107.i.i:                                    ; preds = %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !162357
  call void @llvm.experimental.noalias.scope.decl(metadata !162359)
  %.sroa.06.0.copyload.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !162360, !noalias !162357 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !162360, !noalias !162357 ; 3 uses
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.57.0.copyload.i.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !alias.scope !162360, !noalias !162357
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !162361
  %i.aqp = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162361 ; 5 uses
  %i.aqq = icmp eq ptr %i.aqp, null
  br i1 %i.aqq, label %bb.og, label %bb.ok, !prof !454

bb.og:                                            ; preds = %.noexc107.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #72
          to label %.noexc.i.i.i.i unwind label %bb.oh, !noalias !162361

.noexc.i.i.i.i:                                   ; preds = %bb.og
  unreachable

bb.oh:                                            ; preds = %bb.og
  %i.aqr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqs = icmp eq i64 %.sroa.06.0.copyload.i.i.i.i, 0
  br i1 %i.aqs, label %bb.ny, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef %.sroa.06.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !162362
  br label %bb.ny

bb.oj:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.8170.8.copyload.i = load ptr, ptr %i.w, align 8, !noalias !162363 ; 2 uses
  %.sroa.12171.8.copyload.i = load ptr, ptr %i.apc, align 8, !noalias !162363 ; 7 uses
  %.sroa.15.8.copyload.i = load ptr, ptr %i.apd, align 8, !noalias !162363 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_7flatten7FlatMapINtNtNtB4_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2d_7segment10U64SegmentENCINvB2d_17rechunk_sequencesAB2b_B33_INtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtNtB2f_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6r_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(168) %i.v), !noalias !162341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !162340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !162340
  br i1 %i.aod, label %_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread287.i

_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread287.i: ; preds = %bb.oj
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i15.i.i.i.i453.i.i, i64 noundef %i.aoc, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162341
  br label %_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i

bb.ok:                                            ; preds = %.noexc107.i.i
  store i64 %.sroa.06.0.copyload.i.i.i.i, ptr %i.aqp, align 8, !noalias !162364
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i.i, align 8, !noalias !162364
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16
  store i64 %.sroa.57.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !noalias !162364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !162340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !162340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !162340
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_7flatten7FlatMapINtNtNtB4_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB2d_7segment10U64SegmentENCINvB2d_17rechunk_sequencesAB2b_B33_INtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtNtB2f_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB6r_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(168) %i.v), !noalias !162341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !162340
  call void @llvm.experimental.noalias.scope.decl(metadata !162365)
  %.val.i.i.i480 = load ptr, ptr %i.apc, align 8, !alias.scope !162365, !noalias !162340, !nonnull !422, !noundef !422 ; 2 uses
  %.val1.i.i.i481 = load i64, ptr %i.apd, align 8, !alias.scope !162365, !noalias !162340, !noundef !422 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162366)
  %i.aqt = icmp eq i64 %.val1.i.i.i481, 0
end_hunk_2
begin_hunk_3_@_RNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7_14MergeInsertJob24execute_uncommitted_impl0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %.not.i.i.i485 = icmp eq ptr %.promoted.i534.i, null
  br i1 %.not.i.i.i485, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.or

bb.or:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.split.split.i
  call void @llvm.experimental.noalias.scope.decl(metadata !162372), !noalias !162371
  call void @llvm.experimental.noalias.scope.decl(metadata !162373), !noalias !162371
  %i.ary = icmp eq ptr %.promoted51.i547.i, %.promoted50.i540.i
  br i1 %i.ary, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.or
  %i.arz = getelementptr inbounds nuw i8, ptr %.promoted51.i547.i, i64 56 ; 3 uses
  store ptr %i.arz, ptr %i.aph, align 8, !alias.scope !162374, !noalias !162353
  %.sroa.0.0.copyload8.i.i.i = load i64, ptr %.promoted51.i547.i, align 8, !noalias !162375 ; 2 uses
  %.not6.i.i149.i = icmp eq i64 %.sroa.0.0.copyload8.i.i.i, -1
  br i1 %.not6.i.i149.i, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %.split.us.i

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.or
  %.promoted51.i545.i = phi ptr [ %i.arz, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ %.promoted51.i547.i, %bb.or ] ; 4 uses
  %i.asa = ptrtoint ptr %.promoted50.i540.i to i64
  %i.asb = ptrtoint ptr %.promoted51.i545.i to i64
  %i.asc = sub nuw i64 %i.asa, %i.asb
  %i.asd = udiv exact i64 %i.asc, 56
  %i.ase = icmp eq ptr %.promoted50.i540.i, %.promoted51.i545.i
  br i1 %i.ase, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i150.i

.lr.ph.i.i.i.i.i.i150.i:                          ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, %.lr.ph.i.i.i.i.i.i150.i
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.asg, %.lr.ph.i.i.i.i.i.i150.i ], [ 0, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i ] ; 2 uses
  %i.asf = getelementptr inbounds nuw [56 x i8], ptr %.promoted51.i545.i, i64 %.sroa.0.07.i.i.i.i.i.i.i
  %i.asg = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(56) %i.asf), !noalias !162376
  %i.ash = icmp eq i64 %i.asg, %i.asd
  br i1 %i.ash, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i150.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i150.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i
  %i.asi = icmp eq i64 %.promoted53.i555.i, 0
  br i1 %i.asi, label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.i, label %bb.os

bb.os:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.asj = mul nuw i64 %.promoted53.i555.i, 56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.promoted.i534.i, i64 noundef %i.asj, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162376
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.i: ; preds = %bb.os, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  store ptr null, ptr %.sroa.5.0..sroa_idx159.i.i, align 8, !alias.scope !162377, !noalias !162353
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

.split.us.i:                                      ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us416.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us.i
  %.promoted55.i558.i = phi i64 [ %.promoted55.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us.i ], [ %.promoted55.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us416.i ], [ %.promoted55.i560.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %.promoted53.i553.i = phi i64 [ %.promoted53.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us.i ], [ %.promoted53.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us416.i ], [ %.promoted53.i555.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %.promoted51.i551.i = phi ptr [ %i.ara, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us.i ], [ %i.arm, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us416.i ], [ %i.arz, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %.promoted50.i538.i = phi ptr [ %.promoted50.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us.i ], [ %.promoted50.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us416.i ], [ %.promoted50.i540.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %.promoted.i531.i = phi ptr [ %.promoted.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us.i ], [ %.promoted.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us416.i ], [ %.promoted.i534.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %.us-phi.i = phi ptr [ %.promoted51.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us.i ], [ %.promoted51.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us416.i ], [ %.promoted51.i547.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %.us-phi409.i = phi i64 [ %.sroa.0.0.copyload8.i.i.us.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us.i ], [ %.sroa.0.0.copyload8.i.i.us417.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.us416.i ], [ %.sroa.0.0.copyload8.i.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  %.sroa.7.0..sroa_idx9.i.le.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  store i64 %.us-phi409.i, ptr %i.h, align 8, !alias.scope !162369, !noalias !162353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx9.i.le.i.i, i64 48, i1 false), !noalias !162379
  br label %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4J_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.split.split.i
  %.promoted51.i546.i = phi ptr [ %.promoted51.i545.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.i ], [ %.promoted51.i547.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.split.split.i ]
  %.not.i.i.i.i.i151.not.i = icmp eq i64 %i.apy, %.promoted55.i560.i
  br i1 %.not.i.i.i.i.i151.not.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.us.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  store i64 1, ptr %.sroa.4.0..sroa_idx158.i.i, align 8, !alias.scope !162378, !noalias !162353
  %i.ask = icmp eq i64 %.promoted55.i560.i, 0
  call void @llvm.assume(i1 %i.ask), !noalias !162371
  call void @llvm.assume(i1 %i.apz), !noalias !162371
  call void @llvm.assume(i1 %i.aqa), !noalias !162371
  store <2 x ptr> %i.aqi, ptr %.sroa.5.0..sroa_idx159.i.i, align 8, !alias.scope !162352, !noalias !162353
  store i64 %.sroa.0.0.copyload1.i.i.i.fr.i, ptr %i.api, align 8, !alias.scope !162352, !noalias !162353
  store ptr %i.aqb, ptr %i.apg, align 8, !alias.scope !162352, !noalias !162353
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.split.split.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.us.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.us.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.us427.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.us.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.split.us.i
  %.promoted55.i559.i = phi i64 [ %.promoted55.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.us.i ], [ 1, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.us.i ], [ %i.apy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.us427.i ], [ %.promoted55.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.split.us.i ], [ %i.apy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %.promoted53.i554.i = phi i64 [ %.promoted53.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.us.i ], [ %.promoted53.i.i, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.us.i ], [ %.promoted53.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.us427.i ], [ %.promoted53.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.split.us.i ], [ %.promoted53.i555.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %.promoted51.i544.i = phi ptr [ %.promoted51.i542.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.us.i ], [ %.promoted51.i549.i, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.us.i ], [ %.promoted51.i549.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.us427.i ], [ %.promoted51.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.split.us.i ], [ %.promoted51.i546.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %.promoted50.i539.i = phi ptr [ %.promoted50.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread33.i.us.i ], [ %.promoted50.i.i, %_RNvXs2_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.us.i ], [ %.promoted50.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.us427.i ], [ %.promoted50.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.split.us.i ], [ %.promoted50.i540.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !162380), !noalias !162371
  call void @llvm.experimental.noalias.scope.decl(metadata !162381), !noalias !162371
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i2.i.i)
  %i.asl = load ptr, ptr %.sroa.6160.0..sroa_idx.i.i, align 8, !alias.scope !162382, !noalias !162353, !noundef !422 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.asl, null
  br i1 %.not.i3.i.i, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !162383), !noalias !162371
  call void @llvm.experimental.noalias.scope.decl(metadata !162384), !noalias !162371
  %i.asm = load ptr, ptr %i.apk, align 8, !alias.scope !162385, !noalias !162353, !nonnull !422, !noundef !422 ; 5 uses
  %i.asn = icmp eq ptr %i.asm, %i.aqc
  br i1 %i.asn, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i10.i.i, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i: ; preds = %bb.ot
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asm, i64 56 ; 2 uses
  store ptr %i.aso, ptr %i.apk, align 8, !alias.scope !162385, !noalias !162353
  %.sroa.0.0.copyload8.i5.i.i = load i64, ptr %i.asm, align 8, !noalias !162386 ; 2 uses
  %.sroa.7.0..sroa_idx9.i6.i.i = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i2.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx9.i6.i.i, i64 48, i1 false), !noalias !162386
  %.not6.i7.i.i = icmp eq i64 %.sroa.0.0.copyload8.i5.i.i, -1
  br i1 %.not6.i7.i.i, label %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i10.i.i, label %bb.ov

bb.ou:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.us.i
  store i64 -1, ptr %i.h, align 8, !alias.scope !162387, !noalias !162353
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i

bb.ov:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i15.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i
  %.sroa.0.0.i8.i.i = phi i64 [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i15.i.i ], [ %.sroa.0.0.copyload8.i5.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i ]
  store i64 %.sroa.0.0.i8.i.i, ptr %i.h, align 8, !alias.scope !162387, !noalias !162353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i2.i.i, i64 48, i1 false), !noalias !162388
  br label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i

_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i10.i.i: ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i, %bb.ot
  %.val.i.i.i.i11.i.i = phi ptr [ %i.aso, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.i4.i.i ], [ %i.asm, %bb.ot ] ; 3 uses
  %i.asp = ptrtoint ptr %.val.i.i.i.i11.i.i to i64
  %i.asq = sub nuw i64 %i.aqd, %i.asp
  %i.asr = udiv exact i64 %i.asq, 56
  %i.ass = icmp eq ptr %i.aqc, %.val.i.i.i.i11.i.i
  br i1 %i.ass, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i14.i.i, label %.lr.ph.i.i.i.i.i12.i.i

.lr.ph.i.i.i.i.i12.i.i:                           ; preds = %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i10.i.i, %.lr.ph.i.i.i.i.i12.i.i
  %.sroa.0.07.i.i.i.i.i13.i.i = phi i64 [ %i.asu, %.lr.ph.i.i.i.i.i12.i.i ], [ 0, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i10.i.i ] ; 2 uses
  %i.ast = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i11.i.i, i64 %.sroa.0.07.i.i.i.i.i13.i.i
  %i.asu = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i13.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(56) %i.ast), !noalias !162389
  %i.asv = icmp eq i64 %i.asu, %i.asr
  br i1 %i.asv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i14.i.i, label %.lr.ph.i.i.i.i.i12.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i14.i.i: ; preds = %.lr.ph.i.i.i.i.i12.i.i, %_RNvYNvYINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextINtNtNtB20_3ops8function6FnOnceTQB5_EE9call_onceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i10.i.i
  br i1 %i.aqf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i15.i.i, label %bb.ow

bb.ow:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i14.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.asl, i64 noundef %i.aqg, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162389
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i15.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i15.i.i: ; preds = %bb.ow, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i14.i.i
  store ptr null, ptr %.sroa.6160.0..sroa_idx.i.i, align 8, !alias.scope !162382, !noalias !162353
  br label %bb.ov

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i: ; preds = %bb.ov, %bb.ou
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i2.i.i)
  br label %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4J_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4J_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i, %.split.us.i
  %.promoted55.i557.i = phi i64 [ %.promoted55.i558.i, %.split.us.i ], [ %.promoted55.i559.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i ]
  %.promoted53.i552.i = phi i64 [ %.promoted53.i553.i, %.split.us.i ], [ %.promoted53.i554.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i ]
  %.promoted51.i543.i = phi ptr [ %.promoted51.i551.i, %.split.us.i ], [ %.promoted51.i544.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i ]
  %.promoted50.i537.i = phi ptr [ %.promoted50.i538.i, %.split.us.i ], [ %.promoted50.i539.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i ]
  %.promoted.i530.i = phi ptr [ %.promoted.i531.i, %.split.us.i ], [ null, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit16.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ape, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !162351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !162349
  %i.asw = load i64, ptr %i.ape, align 8, !range !484, !noalias !162340, !noundef !422 ; 4 uses
  %i.asx = icmp ne i64 %i.asw, -2
  call void @llvm.assume(i1 %i.asx)
  %.not88.i.i = icmp eq i64 %i.asw, -1
  br i1 %.not88.i.i, label %.split361.us.i.i, label %bb.ox

bb.ox:                                            ; preds = %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4J_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.asy = invoke noundef i64 @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) dereferenceable_or_null(56) %i.ape)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %.loopexit302.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !162341 ; 2 uses

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ox
  %i.asz = icmp eq i64 %i.asy, 0
  br i1 %i.asz, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.i.i, label %.split.us.i.i, !llvm.loop !161895

.split.us.i.i:                                    ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel.i.i
  %i.ata = phi i64 [ %i.apt, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel.i.i ], [ %i.asw, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %.lcssa395.i.i = phi i64 [ %.ph381.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ] ; 3 uses
  %.sroa.0165.1352.lcssa392.i.i = phi i64 [ %.sroa.0165.1.ph379.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %.lcssa.i.i = phi i64 [ %i.apu, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.peel.i.i ], [ %i.asy, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentE6map_oryNCINvBN_17rechunk_sequencesANtBN_13RowIdSequencej1_INtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBP_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4o_14MergeInsertJob24execute_uncommitted_impl0s1_00EEs1_0ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ]
  %i.atb = sub i64 %.lcssa.i.i, %.sroa.0165.1352.lcssa392.i.i ; 3 uses
  %i.atc = icmp ugt i64 %i.atb, %.sroa.05.0.ph380.i.i
  br i1 %i.atc, label %bb.pe, label %bb.oz

.split361.us.i.i:                                 ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel.i.i, %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4J_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.lcssa396.i.i = phi i64 [ 0, %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4J_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %.ph381.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel.i.i ]
  %.sroa.0165.1352.lcssa393.i.i = phi i64 [ 0, %_RNvXsi_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5array4iter8IntoIterNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceKj1_ENCINvB1X_17rechunk_sequencesAB1V_B2N_IB1c_INtNtNtBb_5slice4iter4IterNtNtNtB1Z_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB4J_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtB1X_7segment10U64SegmentEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %.sroa.0165.1.ph379.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_NtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2e_8PeekableINtNtB2g_7flatten7FlatMapINtNtNtB5_5array4iter8IntoIterNtBQ_13RowIdSequenceKj1_EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterBM_ENCINvBQ_17rechunk_sequencesAB3T_B4e_INtNtB2g_3map3MapINtNtNtB5_5slice4iter4IterNtNtNtBS_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB7c_14MergeInsertJob24execute_uncommitted_impl0s1_00EE0EE4peek0ECsfR8GmIBoxTX_21lance_namespace_impls.exit112.peel.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !162340
  store i64 -2, ptr %i.ape, align 8, !noalias !162340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !162340
  br label %.loopexit.i.i

bb.oy:                                            ; preds = %bb.ol, %.loopexit.i.i
  %i.atd = load ptr, ptr %i.apc, align 8, !alias.scope !162367, !noalias !162340, !nonnull !422, !noundef !422
  %i.ate = getelementptr inbounds nuw [24 x i8], ptr %i.atd, i64 %i.aqv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ate, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !162341
  %i.atf = add i64 %i.aqv, 1
  store i64 %i.atf, ptr %i.apd, align 8, !alias.scope !162367, !noalias !162340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !162340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !162340
  %i.atg = icmp eq ptr %i.apo, %i.apf
  br i1 %i.atg, label %.thread281.i.i, label %bb.oc

bb.oz:                                            ; preds = %.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !162340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !162340
  %.sroa.565.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.565.sroa.5.0..sroa.456.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !162340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8247.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.565.sroa.6.0..sroa.456.0..sroa_idx.sroa_idx.i.i, i64 24, i1 false), !noalias !162340
  store i64 -2, ptr %i.ape, align 8, !noalias !162340
  %.sroa.0.0.extract.trunc.i.i = trunc nuw nsw i64 %i.ata to i8
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %i.p, align 8, !noalias !162340
  store i56 0, ptr %.sroa.4243.0..sroa_idx.i.i, align 1, !noalias !162340
  %i.ath = load <2 x ptr>, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !noalias !162340
  store <2 x ptr> %i.ath, ptr %.sroa.5244.0..sroa_idx.i.i, align 8, !noalias !162340
  store ptr %.sroa.565.sroa.5.0.copyload.i.i, ptr %.sroa.7246.0..sroa_idx.i.i, align 8, !noalias !162340
  invoke void @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment5slice(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, i64 noundef %.lcssa395.i.i, i64 noundef %i.atb)
          to label %bb.pb unwind label %bb.pa, !noalias !162341

bb.pa:                                            ; preds = %bb.oz
  %i.ati = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.p) #73, !noalias !162341
  br label %.thread291.i.i

bb.pb:                                            ; preds = %bb.oz
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.p), !noalias !162341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !162340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !162340
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !162341
  %i.atj = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162341 ; 3 uses
  %i.atk = icmp eq ptr %i.atj, null
  br i1 %i.atk, label %bb.pc, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i, !prof !454

bb.pc:                                            ; preds = %bb.pb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc134.i.i unwind label %bb.pd, !noalias !162341

.noexc134.i.i:                                    ; preds = %bb.pc
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.pb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.atj, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false), !noalias !162341
  store i64 1, ptr %i.o, align 8, !noalias !162340
  store ptr %i.atj, ptr %.sroa.446.0..sroa_idx.i.i, align 8, !noalias !162340
  store i64 1, ptr %.sroa.547.0..sroa_idx.i.i, align 8, !noalias !162340
  invoke void @_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence6extend(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %.outer.i.i unwind label %.loopexit302.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !162341

.outer.i.i:                                       ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !162340
  %i.atl = sub nuw i64 %.sroa.05.0.ph380.i.i, %i.atb ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !162340
  %.not87.i.i = icmp eq i64 %i.atl, 0
  br i1 %.not87.i.i, label %.loopexit.i.i, label %.lr.ph.split.preheader.i.i

bb.pd:                                            ; preds = %bb.pc
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.q) #73, !noalias !162341
  br label %.thread291.i.i

bb.pe:                                            ; preds = %.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !162340
  invoke void @_RNvMs2_NtNtCs9KQ7US1M400_11lance_table6rowids7segmentNtB5_10U64Segment5slice(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ape, i64 noundef %.lcssa395.i.i, i64 noundef %.sroa.05.0.ph380.i.i)
          to label %bb.ph unwind label %.loopexit302.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !162341

.lr.ph.i.i.i.i.i482:                              ; preds = %bb.ok, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.atn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ 0, %bb.ok ] ; 2 uses
  %i.atm = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i480, i64 %.sroa.0.07.i.i.i.i.i ; 3 uses
  %i.atn = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !162390)
  call void @llvm.experimental.noalias.scope.decl(metadata !162391)
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atm, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ato, align 8, !alias.scope !162392, !noalias !162393, !nonnull !422, !noundef !422 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atm, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.atp, align 8, !alias.scope !162392, !noalias !162393, !noundef !422 ; 2 uses
  %i.atq = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.atq, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i482, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ats, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i482 ] ; 2 uses
  %i.atr = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i
  %i.ats = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 dereferenceable(56) %i.atr), !noalias !162394
  %i.att = icmp eq i64 %i.ats, %.val1.i.i.i.i.i.i.i
  br i1 %i.att, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i482
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.atm, align 8, !range !425, !alias.scope !162392, !noalias !162393, !noundef !422 ; 2 uses
  %i.atu = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.atu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.pf

bb.pf:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.atv = mul nuw i64 %.val2.i.i.i.i.i.i.i, 56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.atv, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162394
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.pf, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.atw = icmp eq i64 %i.atn, %.val1.i.i.i481
  br i1 %i.atw, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i.i.i.i.i482

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %bb.ok
  %.val2.i.i.i = load i64, ptr %i.w, align 8, !range !425, !alias.scope !162365, !noalias !162340, !noundef !422 ; 2 uses
  %i.atx = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.atx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.pg

bb.pg:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.aty = mul nuw i64 %.val2.i.i.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i480, i64 noundef %i.aty, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162393
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.pg, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !162340
  br i1 %i.aod, label %_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread277.i, label %_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.ph:                                            ; preds = %bb.pe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !162340
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !162341
  %i.atz = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162341 ; 3 uses
  %i.aua = icmp eq ptr %i.atz, null
  br i1 %i.aua, label %bb.pi, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit153.i.i, !prof !454

bb.pi:                                            ; preds = %bb.ph
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #72
          to label %.noexc152.i.i unwind label %bb.pj, !noalias !162341

.noexc152.i.i:                                    ; preds = %bb.pi
  unreachable

.loopexit302.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ox, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i.i, %bb.oe, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit153.i.i, %bb.pe
  %lpad.loopexit.split-lp1802 = landingpad { ptr, i32 }
          cleanup
  br label %.thread291.i.i

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit153.i.i: ; preds = %bb.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.atz, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false), !noalias !162341
  store i64 1, ptr %i.r, align 8, !noalias !162340
  store ptr %i.atz, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !162340
  store i64 1, ptr %.sroa.540.0..sroa_idx.i.i, align 8, !noalias !162340
  invoke void @_RNvMs1_NtCs9KQ7US1M400_11lance_table6rowidsNtB5_13RowIdSequence6extend(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %.outer.thread.i.i unwind label %.loopexit302.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !162341

.outer.thread.i.i:                                ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit153.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !162340
  %i.aub = add i64 %.lcssa395.i.i, %.sroa.05.0.ph380.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !162340
  br label %.loopexit.i.i

bb.pj:                                            ; preds = %bb.pi
  %i.auc = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9KQ7US1M400_11lance_table6rowids7segment10U64SegmentECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(56) %i.s) #73, !noalias !162341
  br label %.thread291.i.i

.thread291.i.i:                                   ; preds = %.loopexit302.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.pj, %bb.pd, %bb.pa
  %.pn290.i.i = phi { ptr, i32 } [ %i.ati, %bb.pa ], [ %lpad.thr_comm.i.i, %bb.pd ], [ %i.auc, %bb.pj ], [ %lpad.loopexit.split-lp1802, %.loopexit302.loopexit.split.loopexit.split-lp.loopexit.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #73, !noalias !162341
  br label %bb.ny

bb.pk:                                            ; preds = %bb.nz
  unreachable

.thread.i.i:                                      ; preds = %.thread472.i.i, %.body.i.i.i.i.i.i, %bb.nu
  %.pn97.pn269.i.i = phi { ptr, i32 } [ %i.apb, %.thread472.i.i ], [ %i.aoe, %bb.nu ], [ %i.aos, %.body.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueANtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequencej1_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.af) #73, !noalias !162395
  br label %.body86.i

.body86.i:                                        ; preds = %.thread.i.i, %bb.ny, %bb.nt, %bb.nr
  %.pn.i = phi { ptr, i32 } [ %i.aob, %bb.nr ], [ %.pn.pn.i.i, %bb.ny ], [ %.pn97.pn269.i.i, %.thread.i.i ], [ %.pn.pn.i.i, %bb.nt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !162333
  br label %.body90.i

_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i15.i.i.i.i453.i.i, i64 noundef %i.aoc, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !162341
  br label %_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread277.i

_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread277.i: ; preds = %_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9KQ7US1M400_11lance_table6rowids13RowIdSequenceEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !162333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !162396
  store i8 0, ptr %i.g, align 8, !noalias !162397
  %.sroa.8170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.aqp, ptr %.sroa.8170.0..sroa_idx.i, align 8, !noalias !162397
  %.sroa.12171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @39, ptr %.sroa.12171.0..sroa_idx.i, align 8, !noalias !162397
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @759, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !162397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !162396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !162398
  store ptr %i.g, ptr %i.e, align 8, !noalias !162398
  %.sroa.42.0..sroa_idx.i.i88.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1B_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i88.i, align 8, !noalias !162398
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @1122, ptr noundef nonnull %i.e)
          to label %_RNCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBb_14MergeInsertJob24execute_uncommitted_impl0s1_0s_0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.pl, !noalias !162399

bb.pl:                                            ; preds = %_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread277.i
  %i.aud = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g) #73
          to label %.body90.i unwind label %bb.pm, !noalias !162400

bb.pm:                                            ; preds = %bb.pl
  %i.aue = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !162400
  unreachable

_RNCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtBb_14MergeInsertJob24execute_uncommitted_impl0s1_0s_0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RINvNtCs9KQ7US1M400_11lance_table6rowids17rechunk_sequencesANtB2_13RowIdSequencej1_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtB4_6format8fragment8FragmentENCNCNCNvMs5_NtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insertNtB3j_14MergeInsertJob24execute_uncommitted_impl0s1_00EECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread277.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !162398
  %.sroa.11167.sroa.0.0.copyload.i = load ptr, ptr %i.f, align 8, !noalias !162401
  %.sroa.11167.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.11167.sroa.7.0.copyload.i = load ptr, ptr %.sroa.11167.sroa.7.0..sroa_idx.i, align 8, !noalias !162401 ; 2 uses
  %.sroa.11167.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
end_hunk_3
