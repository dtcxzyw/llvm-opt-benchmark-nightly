Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.15?download=true
inline.NumInlined: 747
inline.NumDeleted: 471
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtB1q_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore10IgnoreKindNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEENCNvMB2w_NtB2w_13IgnoreMatcher16with_all_sourcess1_0ENCB46_s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1o_13in_place_drop11InPlaceDropNtB2w_14AncestorIgnoreENCINvNtB1o_16in_place_collect24write_in_place_with_dropB6o_E0INtNtBc_6result6ResultB5N_zEEB2y_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !295
  store ptr %i.b, ptr %i.a, align 8, !noalias !295
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !noalias !295
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.d, align 8, !noalias !295
  %i.e = call { ptr, ptr } @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore10IgnoreKindNtNtCs30WoLBgco1_6ignore9gitignore9GitignoreEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtB1l_14AncestorIgnoreENCINvNtNtB2Z_8adapters6filter15filter_try_foldBX_B3X_INtNtB31_6result6ResultB3X_zENCNvMB1l_NtB1l_13IgnoreMatcher16with_all_sourcess1_0NCINvNtB51_3map12map_try_foldBX_B4x_B3X_B5L_NCB6g_s2_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB4x_E0E0E0B5L_EB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !295
  ret { ptr, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdENCNvB2P_19write_file_evidence0ENCB3z_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4c_8for_each4callTReB2b_ENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5x_7HashMapB5g_B2b_NtNtNtB1s_4hash6random11RandomStateEINtNtB4g_7collect6ExtendB5f_E6extendBN_E0E0EB2R_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !298, !nonnull !12, !align !22, !noundef !12
  tail call void @_RINvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2d_8adapters6filter11filter_foldTRBL_RB1n_EuNCNvB1p_19write_file_evidence0NCINvNtB3f_3map8map_foldB3O_TReBL_EuNCB42_s_0NCINvNvB27_8for_each4callB4W_NCINvXs1i_B6_INtB6_7HashMapB4X_BL_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2b_7collect6ExtendB4W_E6extendINtB4z_3MapINtB3d_6FilterINtNtNtNtB6k_11collections4hash3map4IterBL_B1n_EB40_EB54_EE0E0E0E0EB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1u_11IndexReader31all_trigram_postings_with_masks0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4callTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1w_6ondisk12PostingEntryEENCINvMsk_B43_IB41_B3Y_E14extend_trustedBN_E0E0EB1w_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.g = icmp ult i64 %i.c, %i.e
  br i1 %i.g, label %.lr.ph.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB2I_6readerNtB3B_11IndexReader31all_trigram_postings_with_masks0NCINvNvBL_8for_each4callB25_NCINvMsk_B2a_IB28_B25_E14extend_trustedINtB1B_3MapB3_B3w_EE0E0E0EB2I_.exit

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB1y_6readerNtB2r_11IndexReader31all_trigram_postings_with_masks0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_B10_IBY_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2m_EE0E0E0B1y_.exit.i
  %.val4.i = phi i64 [ %i.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB1y_6readerNtB2r_11IndexReader31all_trigram_postings_with_masks0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_B10_IBY_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2m_EE0E0E0B1y_.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.h, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB1y_6readerNtB2r_11IndexReader31all_trigram_postings_with_masks0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_B10_IBY_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2m_EE0E0E0B1y_.exit.i ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !307
  invoke void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB2_11IndexReader18trigram_posting_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.f, i64 noundef %.sroa.0.010.i)
          to label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB1y_6readerNtB2r_11IndexReader31all_trigram_postings_with_masks0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_B10_IBY_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2m_EE0E0E0B1y_.exit.i unwind label %bb.b, !noalias !308

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB1y_6readerNtB2r_11IndexReader31all_trigram_postings_with_masks0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_B10_IBY_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2m_EE0E0E0B1y_.exit.i: ; preds = %.lr.ph.i
  %i.h = add nuw i64 %.sroa.0.010.i, 1            ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !309
  %i.j = add i64 %.val4.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !307
  %exitcond.not.i = icmp eq i64 %i.h, %i.e
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB2I_6readerNtB3B_11IndexReader31all_trigram_postings_with_masks0NCINvNvBL_8for_each4callB25_NCINvMsk_B2a_IB28_B25_E14extend_trustedINtB1B_3MapB3_B3w_EE0E0E0EB2I_.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !308
  resume { ptr, i32 } %i.k

_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB2I_6readerNtB3B_11IndexReader31all_trigram_postings_with_masks0NCINvNvBL_8for_each4callB25_NCINvMsk_B2a_IB28_B25_E14extend_trustedINtB1B_3MapB3_B3w_EE0E0E0EB2I_.exit: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB1y_6readerNtB2r_11IndexReader31all_trigram_postings_with_masks0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_B10_IBY_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2m_EE0E0E0B1y_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEuNCNvMNtB1y_6readerNtB2r_11IndexReader31all_trigram_postings_with_masks0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_B10_IBY_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2m_EE0E0E0B1y_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !308
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB1w_6BufferNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0ECsbzNSmZPCnTx_10tgrep_core(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  %.val6.i = add i64 %.sroa.4.0.copyload, %i.a
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !312
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsbzNSmZPCnTx_10tgrep_core5query22literals_to_query_plan0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2r_8for_each4callNtB1t_12TrigramQueryNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3X_3VecB3u_E14extend_trustedBN_E0E0EB1v_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.h = icmp ult i64 %i.b, %i.d
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvB27_22literals_to_query_plan0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB42_3VecB25_E14extend_trustedINtB1B_3MapB3_B2U_EE0E0E0EB29_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.b) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvBX_22literals_to_query_plan0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1K_EE0E0E0BZ_.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.ai, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvBX_22literals_to_query_plan0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1K_EE0E0E0BZ_.exit.i ] ; 3 uses
  %.sroa.0.019.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvBX_22literals_to_query_plan0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1K_EE0E0E0BZ_.exit.i ] ; 5 uses
  %i.i = add nuw i64 %.sroa.0.019.i, 1            ; 5 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0.019.i, %umax.i
  br i1 %exitcond.not.i, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.019.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !321, !noundef !12
  %i.l = icmp ult i64 %i.i, %i.g
  br i1 %i.l, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %.sroa.0.019.i, 2            ; 3 uses
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %bb.e, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  %i.p = load i8, ptr %i.o, align 1, !noalias !321, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.r = load i8, ptr %i.q, align 1, !noalias !321, !noundef !12
  %i.s = add nuw i64 %.sroa.0.019.i, 3            ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.g
  br i1 %i.t, label %bb.f, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvBX_22literals_to_query_plan0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1K_EE0E0E0BZ_.exit.i

.invoke:                                          ; preds = %bb.d, %bb.c, %bb.b
  %i.u = phi i64 [ %i.i, %bb.c ], [ %umax.i, %bb.b ], [ %i.m, %bb.d ]
  %i.v = phi ptr [ @28, %bb.c ], [ @27, %bb.b ], [ @29, %bb.d ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.u, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #34
          to label %.cont unwind label %bb.g, !noalias !322

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.s
  %i.x = load i8, ptr %i.w, align 1, !noalias !321, !noundef !12
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 40
  %i.aa = or disjoint i64 %i.z, 4294967296
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvBX_22literals_to_query_plan0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1K_EE0E0E0BZ_.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvBX_22literals_to_query_plan0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1K_EE0E0E0BZ_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.2.0.insert.insert.i.i.i = phi i64 [ %i.aa, %bb.f ], [ 0, %bb.e ]
  %i.ab = zext i8 %i.k to i64
  %i.ac = shl nuw nsw i64 %i.ab, 16
  %i.ad = zext i8 %i.p to i64
  %i.ae = shl nuw nsw i64 %i.ad, 8
  %i.af = or disjoint i64 %i.ae, %i.ac
  %i.ag = zext i8 %i.r to i64
  %.sroa.0.0.insert.ext.i.i.i = or disjoint i64 %i.af, %i.ag
  %.sroa.0.0.insert.insert.i.i.i = or i64 %.sroa.0.0.insert.ext.i.i.i, %.sroa.2.0.insert.insert.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ah, align 4, !noalias !323
  %i.ai = add i64 %.val4.i, 1                     ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond27.not.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvB27_22literals_to_query_plan0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB42_3VecB25_E14extend_trustedINtB1B_3MapB3_B2U_EE0E0E0EB29_.exit, label %bb.b

bb.g:                                             ; preds = %.invoke
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !322
  resume { ptr, i32 } %i.aj

_RINvYINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvB27_22literals_to_query_plan0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB42_3VecB25_E14extend_trustedINtB1B_3MapB3_B2U_EE0E0E0EB29_.exit: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvBX_22literals_to_query_plan0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1K_EE0E0E0BZ_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ai, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldjNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryuNCNvBX_22literals_to_query_plan0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3l_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1K_EE0E0E0BZ_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !322
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter12MatchIndicescENCNvMNtCsbzNSmZPCnTx_10tgrep_core10visibilityNtB1B_14PathVisibility10is_visible0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB2P_3all5checkjNCB1y_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1D_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !340
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %0, ptr %i.c, align 8, !noalias !340
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !341, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !341, !noundef !12 ; 6 uses
  %i.i = load i64, ptr %i.e, align 8, !alias.scope !341
  %.fr.i.i.i.i = freeze i64 %i.i                  ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.h, %.fr.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !340 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  br i1 %.not.i.i.i.i, label %.split.us.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.a
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !341
  br label %.split.i

.split.us.i:                                      ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBY_8adapters3map12map_try_foldTjReEjuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtCsbzNSmZPCnTx_10tgrep_core10visibilityNtB3d_14PathVisibility10is_visible0QNCINvNvBS_3all5checkjNCB3a_s_0E0E0B2r_EB3f_.exit

.split.i:                                         ; preds = %_RNvXs1r_NtNtCsf3Ta7LF998c_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit.i, %.split.preheader.i
  %i.q = phi i64 [ %i.af, %_RNvXs1r_NtNtCsf3Ta7LF998c_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %.promoted.i, %.split.preheader.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %.not.i.not.not = icmp uge i64 %i.h, %i.q       ; 3 uses
  br i1 %.not.i.not.not, label %.lr.ph.split.preheader.i.i.i.i, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBY_8adapters3map12map_try_foldTjReEjuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtCsbzNSmZPCnTx_10tgrep_core10visibilityNtB3d_14PathVisibility10is_visible0QNCINvNvBS_3all5checkjNCB3a_s_0E0E0B2r_EB3f_.exit

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %.split.i
  call void @llvm.assume(i1 %i.n)
  %.pre.i.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !341 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i
  %i.r = phi i64 [ %i.af, %bb.d ], [ %i.q, %.lr.ph.split.preheader.i.i.i.i ] ; 4 uses
  %i.s = sub nuw i64 %i.h, %i.r                   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.h, %i.r
  br i1 %.not.i.i.i.i.i, label %.loopexit15.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.v = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !345 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %.loopexit.i.i.i.i, label %.loopexit15.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.ac, %bb.c ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.04.011.i.i.i.i.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !346, !noalias !345, !noundef !12
  %i.ab = icmp eq i8 %i.aa, %.pre.i.i.i.i
  br i1 %i.ab, label %.loopexit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ac, %i.s
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit15.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.x, %bb.b ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ad = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.s
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %i.r, 1
  %i.af = add i64 %i.ae, %.sroa.5.0.i.i.i.i.i     ; 7 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !341
  %.not11.i.i.i.i = icmp ult i64 %i.af, %i.m
  %.not12.i.i.i.i = icmp ugt i64 %i.af, %.fr.i.i.i.i
  %or.cond.i.i.i.i = or i1 %.not11.i.i.i.i, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

.loopexit15.i.i.i.i:                              ; preds = %bb.b, %.preheader.i.i.i.i.i, %bb.c
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !341
  br label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBY_8adapters3map12map_try_foldTjReEjuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtCsbzNSmZPCnTx_10tgrep_core10visibilityNtB3d_14PathVisibility10is_visible0QNCINvNvBS_3all5checkjNCB3a_s_0E0E0B2r_EB3f_.exit

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i
  %i.ag = icmp ult i64 %i.h, %i.af
  br i1 %i.ag, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBY_8adapters3map12map_try_foldTjReEjuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtCsbzNSmZPCnTx_10tgrep_core10visibilityNtB3d_14PathVisibility10is_visible0QNCINvNvBS_3all5checkjNCB3a_s_0E0E0B2r_EB3f_.exit, label %.lr.ph.split.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i
  %i.ah = sub nuw i64 %i.af, %i.m                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.j, i64 %i.m), !noalias !347
  %i.aj = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.aj, label %_RNvXs1r_NtNtCsf3Ta7LF998c_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.d

_RNvXs1r_NtNtCsf3Ta7LF998c_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ak = load ptr, ptr %i.c, align 8, !alias.scope !348, !noalias !340, !nonnull !12, !align !22, !noundef !12
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val.i.i = load i64, ptr %i.al, align 8, !noalias !349, !noundef !12
  %i.am = add i64 %.val.i.i, %i.ah
  %i.an = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3all5checkjNCNvMNtCsbzNSmZPCnTx_10tgrep_core10visibilityNtB1Q_14PathVisibility10is_visibles_0E0INtB7_5FnMutTujEE8call_mutB1S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.am), !noalias !350
  br i1 %i.an, label %_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBY_8adapters3map12map_try_foldTjReEjuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtCsbzNSmZPCnTx_10tgrep_core10visibilityNtB3d_14PathVisibility10is_visible0QNCINvNvBS_3all5checkjNCB3a_s_0E0E0B2r_EB3f_.exit, label %.split.i

_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBY_8adapters3map12map_try_foldTjReEjuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtCsbzNSmZPCnTx_10tgrep_core10visibilityNtB3d_14PathVisibility10is_visible0QNCINvNvBS_3all5checkjNCB3a_s_0E0E0B2r_EB3f_.exit: ; preds = %.split.i, %_RNvXs1r_NtNtCsf3Ta7LF998c_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.d, %.split.us.i, %.loopexit15.i.i.i.i
  %.not10.i = phi i1 [ false, %.loopexit15.i.i.i.i ], [ false, %bb.d ], [ false, %.split.us.i ], [ %.not.i.not.not, %_RNvXs1r_NtNtCsf3Ta7LF998c_4core3str4iterINtB6_12MatchIndicescENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %.not.i.not.not, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not10.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENCINvB1p_12execute_planNCNvMNtB1r_6hybridNtB2E_11HybridIndex13execute_query0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMsk_B4z_IB4x_B4w_E14extend_trustedBN_E0E0EB1r_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecmEuNCINvBS_12execute_planNCNvMNtBU_6hybridNtB44_11HybridIndex13execute_query0E0NCINvNvB1F_8for_each4callB33_NCINvMsk_B36_IB34_B33_E14extend_trustedINtB2v_3MapBF_B3D_EE0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = getelementptr i8, ptr %i.f, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.o, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.p, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.m, align 4, !noalias !361, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !362
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !noalias !363, !nonnull !12, !align !22, !noundef !12
  %.val1.i.i.i = load ptr, ptr %i.l, align 8, !noalias !363, !nonnull !12, !align !22, !noundef !12
  invoke void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB2_11HybridIndex27lookup_trigram_using_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.val.i.i.i, i32 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val1.i.i.i)
          to label %bb.d unwind label %bb.e, !noalias !361

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !364
  %i.o = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !362
  %i.p = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.k
  br i1 %i.q, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecmEuNCINvBS_12execute_planNCNvMNtBU_6hybridNtB44_11HybridIndex13execute_query0E0NCINvNvB1F_8for_each4callB33_NCINvMsk_B36_IB34_B33_E14extend_trustedINtB2v_3MapBF_B3D_EE0E0E0EBU_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !361
  resume { ptr, i32 } %i.r

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecmEuNCINvBS_12execute_planNCNvMNtBU_6hybridNtB44_11HybridIndex13execute_query0E0NCINvNvB1F_8for_each4callB33_NCINvMsk_B36_IB34_B33_E14extend_trustedINtB2v_3MapBF_B3D_EE0E0E0EBU_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.o, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !361
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENCINvB1p_23execute_plan_with_masksNCNvMNtB1r_6hybridNtB2P_11HybridIndex24execute_query_with_masks0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3P_8for_each4callTRB1n_INtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1r_6ondisk12PostingEntryEENCINvMsk_B51_IB4Z_B4S_E14extend_trustedBN_E0E0EB1r_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_TB2Z_INtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBU_6ondisk12PostingEntryEEuNCINvBS_23execute_plan_with_masksNCNvMNtBU_6hybridNtB4M_11HybridIndex24execute_query_with_masks0E0NCINvNvB1F_8for_each4callB33_NCINvMsk_B3b_IB39_B33_E14extend_trustedINtB2v_3MapBF_B4a_EE0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  %i.l = getelementptr i8, ptr %i.f, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.q, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !376, !noalias !374, !noundef !12
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !noalias !377, !nonnull !12, !align !22, !noundef !12
  %.val1.i.i.i = load ptr, ptr %i.l, align 8, !noalias !377, !nonnull !12, !align !22, !noundef !12
  invoke void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB2_11HybridIndex38lookup_trigram_with_masks_using_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %.val.i.i.i, i32 noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val1.i.i.i)
          to label %bb.d unwind label %bb.e, !noalias !374

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.a, align 8, !noalias !378
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !379
  %i.q = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !374
  %i.r = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.k
  br i1 %i.s, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_TB2Z_INtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBU_6ondisk12PostingEntryEEuNCINvBS_23execute_plan_with_masksNCNvMNtBU_6hybridNtB4M_11HybridIndex24execute_query_with_masks0E0NCINvNvB1F_8for_each4callB33_NCINvMsk_B3b_IB39_B33_E14extend_trustedINtB2v_3MapBF_B4a_EE0E0E0EBU_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !374
  resume { ptr, i32 } %i.t

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_TB2Z_INtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBU_6ondisk12PostingEntryEEuNCINvBS_23execute_plan_with_masksNCNvMNtBU_6hybridNtB4M_11HybridIndex24execute_query_with_masks0E0NCINvNvB1F_8for_each4callB33_NCINvMsk_B3b_IB39_B33_E14extend_trustedINtB2v_3MapBF_B4a_EE0E0E0EBU_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.q, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !374
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query9QueryPlanENCINvB1p_12execute_planNCNvMNtB1r_6hybridNtB2A_11HybridIndex13execute_query0Es0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3s_8for_each4callINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMsk_B4y_IB4w_B4v_E14extend_trustedBN_E0E0EB1r_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !22, !noundef !12
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query9QueryPlanENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecmEuNCINvBS_12execute_planNCNvMNtBU_6hybridNtB40_11HybridIndex13execute_query0Es0_0NCINvNvB1B_8for_each4callB2Z_NCINvMsk_B32_IB30_B2Z_E14extend_trustedINtB2r_3MapBF_B3z_EE0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !389
  invoke void @_RINvNtCsbzNSmZPCnTx_10tgrep_core5query12execute_planNCNvMNtB4_6hybridNtBT_11HybridIndex13execute_query0EB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !390

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !391
  %i.n = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !389
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k
  br i1 %i.p, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query9QueryPlanENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecmEuNCINvBS_12execute_planNCNvMNtBU_6hybridNtB40_11HybridIndex13execute_query0Es0_0NCINvNvB1B_8for_each4callB2Z_NCINvMsk_B32_IB30_B2Z_E14extend_trustedINtB2r_3MapBF_B3z_EE0E0E0EBU_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !390
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query9QueryPlanENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecmEuNCINvBS_12execute_planNCNvMNtBU_6hybridNtB40_11HybridIndex13execute_query0Es0_0NCINvNvB1B_8for_each4callB2Z_NCINvMsk_B32_IB30_B2Z_E14extend_trustedINtB2r_3MapBF_B3z_EE0E0E0EBU_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !390
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query9QueryPlanENCINvB1p_23execute_plan_with_masksNCNvMNtB1r_6hybridNtB2L_11HybridIndex24execute_query_with_masks0Es3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3O_8for_each4callINtNtCsgCecv3eZDcN_5alloc3vec3VecmENCINvMsk_B4U_IB4S_B4R_E14extend_trustedBN_E0E0EB1r_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !22, !noundef !12
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbzNSmZPCnTx_10tgrep_core5query9QueryPlanENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc3vec3VecmEuNCINvBS_23execute_plan_with_masksNCNvMNtBU_6hybridNtB4b_11HybridIndex24execute_query_with_masks0Es3_0NCINvNvB1B_8for_each4callB2Z_NCINvMsk_B32_IB30_B2Z_E14extend_trustedINtB2r_3MapBF_B3z_EE0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
end_hunk_0
