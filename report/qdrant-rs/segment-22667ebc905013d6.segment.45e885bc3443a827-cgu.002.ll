Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratorNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsENCINvNtB1Y_17postings_iterator38intersect_compressed_postings_iteratorB1U_NCNvMs0_NtB1Y_22on_disk_inverted_indexNtB4X_19OnDiskInvertedIndex14filter_has_all0Es0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB6f_4find5checkmQNCB3F_s1_0E0INtNtNtBc_3ops12control_flow11ControlFlowmEEB26_:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecmEECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEmuINtNtNtBa_3ops12control_flow11ControlFlowmENCINvNtB24_17postings_iterator38intersect_compressed_postings_iteratorB20_NCNvMs0_NtB24_22on_disk_inverted_indexNtB5M_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkmQNCB4u_s1_0E0E0B2c_.exit.i: ; preds = %bb.b
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !2573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2566
  store i32 %i.i, ptr %i.a, align 4, !noalias !2574
  %i.l = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratorNtNtBV_9positions9PositionsNCNvMs0_NtBV_22on_disk_inverted_indexNtB3L_19OnDiskInvertedIndex14filter_has_all0Es1_0INtB7_5FnMutTRmEE8call_mutB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !2577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2566
  br i1 %i.l, label %_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratorNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2P_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementB10_EmuINtNtNtB2R_3ops12control_flow11ControlFlowmENCINvNtB14_17postings_iterator38intersect_compressed_postings_iteratorB10_NCNvMs0_NtB14_22on_disk_inverted_indexNtB7d_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvB2J_4find5checkmQNCB5V_s1_0E0E0B5b_EB1c_.exit, label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEmuINtNtNtBa_3ops12control_flow11ControlFlowmENCINvNtB24_17postings_iterator38intersect_compressed_postings_iteratorB20_NCNvMs0_NtB24_22on_disk_inverted_indexNtB5M_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkmQNCB4u_s1_0E0E0B2c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2561
  call void @_RNvXs_NtCs6cW95TQWYPl_12posting_list8iteratorINtB4_15PostingIteratorNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1g_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(640) %0)
  %i.m = load i64, ptr %i.c, align 8, !range !7, !noalias !2561, !noundef !5
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratorNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2P_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementB10_EmuINtNtNtB2R_3ops12control_flow11ControlFlowmENCINvNtB14_17postings_iterator38intersect_compressed_postings_iteratorB10_NCNvMs0_NtB14_22on_disk_inverted_indexNtB7d_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvB2J_4find5checkmQNCB5V_s1_0E0E0B5b_EB1c_.exit, label %bb.b

_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratorNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2P_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementB10_EmuINtNtNtB2R_3ops12control_flow11ControlFlowmENCINvNtB14_17postings_iterator38intersect_compressed_postings_iteratorB10_NCNvMs0_NtB14_22on_disk_inverted_indexNtB7d_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvB2J_4find5checkmQNCB5V_s1_0E0E0B5b_EB1c_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEmuINtNtNtBa_3ops12control_flow11ControlFlowmENCINvNtB24_17postings_iterator38intersect_compressed_postings_iteratorB20_NCNvMs0_NtB24_22on_disk_inverted_indexNtB5M_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkmQNCB4u_s1_0E0E0B2c_.exit.i, %bb.e, %bb.a
  %.sroa.3.0.i = phi i32 [ undef, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEmuINtNtNtBa_3ops12control_flow11ControlFlowmENCINvNtB24_17postings_iterator38intersect_compressed_postings_iteratorB20_NCNvMs0_NtB24_22on_disk_inverted_indexNtB5M_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkmQNCB4u_s1_0E0E0B2c_.exit.i ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.a ], [ 1, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEmuINtNtNtBa_3ops12control_flow11ControlFlowmENCINvNtB24_17postings_iterator38intersect_compressed_postings_iteratorB20_NCNvMs0_NtB24_22on_disk_inverted_indexNtB5M_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkmQNCB4u_s1_0E0E0B2c_.exit.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2561
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB23_24immutable_inverted_indexNtB4q_22ImmutableInvertedIndex14filter_has_all0Es0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtB8_6filter15filter_try_foldmB6u_INtNtBc_6option6OptionB6u_ENCB1Y_s1_0NCNvXs_NvB5N_10advance_byINtB75_6FilterBN_B84_ENtB8l_13SpecAdvanceBy15spec_advance_by0E0B7D_EB2b_(ptr noalias nofree noundef align 8 dereferenceable(616) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2578)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !2578, !noalias !2581, !nonnull !5, !align !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2578, !noalias !2581, !nonnull !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2578, !noalias !2581 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 616
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementuEmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB23_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB37_24immutable_inverted_indexNtB5u_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB6_6filter15filter_try_foldmB23_B2z_NCB32_s1_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB6V_6FilterINtB4_3MapINtNtB14_8iterator15PostingIteratoruEB30_EB7x_ENtB7O_13SpecAdvanceBy15spec_advance_by0E0E0B3f_.exit.i, %bb.a
  %.sroa.01.0.i = phi i64 [ %1, %bb.a ], [ %.sroa.0.0.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementuEmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB23_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB37_24immutable_inverted_indexNtB5u_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB6_6filter15filter_try_foldmB23_B2z_NCB32_s1_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB6V_6FilterINtB4_3MapINtNtB14_8iterator15PostingIteratoruEB30_EB7x_ENtB7O_13SpecAdvanceBy15spec_advance_by0E0E0B3f_.exit.i ] ; 5 uses
  %i.j = tail call { i32, i32 } @_RNvXs_NtCs6cW95TQWYPl_12posting_list8iteratorINtB4_15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(616) %0), !noalias !2578 ; 2 uses
  %i.k = extractvalue { i32, i32 } %i.j, 0
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %bb.c, label %_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1a_3num7nonzero7NonZerojENCINvNtNtB18_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementuEmB26_INtNtB1a_6option6OptionB26_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB4z_24immutable_inverted_indexNtB6W_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB2K_6filter15filter_try_foldmB26_B40_NCB4u_s1_0NCNvXs_NvB12_10advance_byINtB8n_6FilterINtB2I_3MapB3_B4s_EB90_ENtB9h_13SpecAdvanceBy15spec_advance_by0E0E0B40_EB4H_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { i32, i32 } %i.j, 1        ; 3 uses
  %i.n = load i64, ptr %i.b, align 8, !noalias !2583, !noundef !5
  %i.o = zext i32 %i.m to i64                     ; 2 uses
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4_22ImmutableInvertedIndex14filter_has_all0Be_.exit.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementuEmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB23_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB37_24immutable_inverted_indexNtB5u_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB6_6filter15filter_try_foldmB23_B2z_NCB32_s1_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB6V_6FilterINtB4_3MapINtNtB14_8iterator15PostingIteratoruEB30_EB7x_ENtB7O_13SpecAdvanceBy15spec_advance_by0E0E0B3f_.exit.i

_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4_22ImmutableInvertedIndex14filter_has_all0Be_.exit.i.i.i.i: ; preds = %bb.c
  %i.q = load ptr, ptr %i.c, align 8, !noalias !2583, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  %i.s = load i64, ptr %i.r, align 8, !noalias !2583, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementuEmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB23_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB37_24immutable_inverted_indexNtB5u_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB6_6filter15filter_try_foldmB23_B2z_NCB32_s1_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB6V_6FilterINtB4_3MapINtNtB14_8iterator15PostingIteratoruEB30_EB7x_ENtB7O_13SpecAdvanceBy15spec_advance_by0E0E0B3f_.exit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4_22ImmutableInvertedIndex14filter_has_all0Be_.exit.i.i.i.i
  br i1 %i.i, label %_RNCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB6_24immutable_inverted_indexNtB2t_22ImmutableInvertedIndex14filter_has_all0Es1_0Be_.exit.i.i.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.v, i64 616 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %_RNCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB6_24immutable_inverted_indexNtB2t_22ImmutableInvertedIndex14filter_has_all0Es1_0Be_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %i.v = phi ptr [ %i.t, %.preheader.i ], [ %i.e, %.preheader.i.preheader ] ; 2 uses
  %i.w = tail call { i32, i32 } @_RNvMNtCs6cW95TQWYPl_12posting_list8iteratorINtB2_15PostingIteratoruE30advance_until_greater_or_equalCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(616) %i.v, i32 noundef %i.m), !noalias !2586 ; 2 uses
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = trunc i32 %i.x to i1
  %i.z = extractvalue { i32, i32 } %i.w, 1
  %i.aa = icmp eq i32 %i.z, %i.m
  %or.cond.i.i.i.i.i = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.preheader.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementuEmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB23_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB37_24immutable_inverted_indexNtB5u_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB6_6filter15filter_try_foldmB23_B2z_NCB32_s1_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB6V_6FilterINtB4_3MapINtNtB14_8iterator15PostingIteratoruEB30_EB7x_ENtB7O_13SpecAdvanceBy15spec_advance_by0E0E0B3f_.exit.i

_RNCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB6_24immutable_inverted_indexNtB2t_22ImmutableInvertedIndex14filter_has_all0Es1_0Be_.exit.i.i.i: ; preds = %.preheader.i, %.preheader.i.preheader
  %i.ab = add i64 %.sroa.01.0.i, -1
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementuEmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB23_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB37_24immutable_inverted_indexNtB5u_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB6_6filter15filter_try_foldmB23_B2z_NCB32_s1_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB6V_6FilterINtB4_3MapINtNtB14_8iterator15PostingIteratoruEB30_EB7x_ENtB7O_13SpecAdvanceBy15spec_advance_by0E0E0B3f_.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementuEmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB23_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB37_24immutable_inverted_indexNtB5u_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB6_6filter15filter_try_foldmB23_B2z_NCB32_s1_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB6V_6FilterINtB4_3MapINtNtB14_8iterator15PostingIteratoruEB30_EB7x_ENtB7O_13SpecAdvanceBy15spec_advance_by0E0E0B3f_.exit.i: ; preds = %.lr.ph, %_RNCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB6_24immutable_inverted_indexNtB2t_22ImmutableInvertedIndex14filter_has_all0Es1_0Be_.exit.i.i.i, %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4_22ImmutableInvertedIndex14filter_has_all0Be_.exit.i.i.i.i, %bb.c
  %.sroa.0.0.i.i.i = phi i64 [ %i.ab, %_RNCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB6_24immutable_inverted_indexNtB2t_22ImmutableInvertedIndex14filter_has_all0Es1_0Be_.exit.i.i.i ], [ %.sroa.01.0.i, %bb.c ], [ %.sroa.01.0.i, %_RNCNvMNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_indexNtB4_22ImmutableInvertedIndex14filter_has_all0Be_.exit.i.i.i.i ], [ %.sroa.01.0.i, %.lr.ph ] ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.ac, label %_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1a_3num7nonzero7NonZerojENCINvNtNtB18_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementuEmB26_INtNtB1a_6option6OptionB26_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB4z_24immutable_inverted_indexNtB6W_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB2K_6filter15filter_try_foldmB26_B40_NCB4u_s1_0NCNvXs_NvB12_10advance_byINtB8n_6FilterINtB2I_3MapB3_B4s_EB90_ENtB9h_13SpecAdvanceBy15spec_advance_by0E0E0B40_EB4H_.exit, label %bb.b

_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB1a_3num7nonzero7NonZerojENCINvNtNtB18_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementuEmB26_INtNtB1a_6option6OptionB26_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB4z_24immutable_inverted_indexNtB6W_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB2K_6filter15filter_try_foldmB26_B40_NCB4u_s1_0NCNvXs_NvB12_10advance_byINtB8n_6FilterINtB2I_3MapB3_B4s_EB90_ENtB9h_13SpecAdvanceBy15spec_advance_by0E0E0B40_EB4H_.exit: ; preds = %bb.b, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementuEmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB23_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB37_24immutable_inverted_indexNtB5u_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB6_6filter15filter_try_foldmB23_B2z_NCB32_s1_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB6V_6FilterINtB4_3MapINtNtB14_8iterator15PostingIteratoruEB30_EB7x_ENtB7O_13SpecAdvanceBy15spec_advance_by0E0E0B3f_.exit.i
  %.sroa.0.0.i = phi i64 [ %.sroa.01.0.i, %bb.b ], [ 0, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldINtNtCs6cW95TQWYPl_12posting_list12posting_list14PostingElementuEmINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB23_ENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB37_24immutable_inverted_indexNtB5u_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNtB6_6filter15filter_try_foldmB23_B2z_NCB32_s1_0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB6V_6FilterINtB4_3MapINtNtB14_8iterator15PostingIteratoruEB30_EB7x_ENtB7O_13SpecAdvanceBy15spec_advance_by0E0E0B3f_.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB23_24immutable_inverted_indexNtB4q_22ImmutableInvertedIndex14filter_has_all0Es0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5N_4find5checkmQNCB1Y_s1_0E0INtNtNtBc_3ops12control_flow11ControlFlowmEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(616) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !2590
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !2590
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = call { i32, i32 } @_RNvXs_NtCs6cW95TQWYPl_12posting_list8iteratorINtB4_15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(616) %0) ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = trunc i32 %i.f to i1
  br i1 %i.g, label %bb.c, label %_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB18_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementuEmuINtNtNtB1a_3ops12control_flow11ControlFlowmENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB4g_24immutable_inverted_indexNtB6D_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNvB12_4find5checkmQNCB4b_s1_0E0E0B3r_EB4o_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i32, i32 } %i.e, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2595
  store i32 %i.h, ptr %i.a, align 4, !noalias !2598
  %i.i = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtBV_24immutable_inverted_indexNtB3i_22ImmutableInvertedIndex14filter_has_all0Es1_0INtB7_5FnMutTRmEE8call_mutB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2595
  br i1 %i.i, label %_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB18_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementuEmuINtNtNtB1a_3ops12control_flow11ControlFlowmENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB4g_24immutable_inverted_indexNtB6D_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNvB12_4find5checkmQNCB4b_s1_0E0E0B3r_EB4o_.exit, label %bb.b

_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB18_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementuEmuINtNtNtB1a_3ops12control_flow11ControlFlowmENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMNtB4g_24immutable_inverted_indexNtB6D_22ImmutableInvertedIndex14filter_has_all0Es0_0NCINvNvB12_4find5checkmQNCB4b_s1_0E0E0B3r_EB4o_.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi i32 [ undef, %bb.b ], [ %i.h, %bb.c ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.j = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.k = insertvalue { i32, i32 } %i.j, i32 %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i32, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMs0_NtB23_22on_disk_inverted_indexNtB4t_19OnDiskInvertedIndex14filter_has_all0Es0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5L_4find5checkmQNCB1Y_s1_0E0INtNtNtBc_3ops12control_flow11ControlFlowmEEB2b_(ptr noalias nofree noundef align 8 dereferenceable(616) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !2601
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !2601
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = call { i32, i32 } @_RNvXs_NtCs6cW95TQWYPl_12posting_list8iteratorINtB4_15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(616) %0) ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = trunc i32 %i.f to i1
  br i1 %i.g, label %bb.c, label %_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB18_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementuEmuINtNtNtB1a_3ops12control_flow11ControlFlowmENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMs0_NtB4g_22on_disk_inverted_indexNtB6G_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvB12_4find5checkmQNCB4b_s1_0E0E0B3r_EB4o_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { i32, i32 } %i.e, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2606
  store i32 %i.h, ptr %i.a, align 4, !noalias !2609
  %i.i = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMs0_NtBV_22on_disk_inverted_indexNtB3l_19OnDiskInvertedIndex14filter_has_all0Es1_0INtB7_5FnMutTRmEE8call_mutB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2606
  br i1 %i.i, label %_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB18_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementuEmuINtNtNtB1a_3ops12control_flow11ControlFlowmENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMs0_NtB4g_22on_disk_inverted_indexNtB6G_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvB12_4find5checkmQNCB4b_s1_0E0E0B3r_EB4o_.exit, label %bb.b

_RINvYINtNtCs6cW95TQWYPl_12posting_list8iterator15PostingIteratoruENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB18_8adapters3map12map_try_foldINtNtB8_12posting_list14PostingElementuEmuINtNtNtB1a_3ops12control_flow11ControlFlowmENCINvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index17postings_iterator38intersect_compressed_postings_iteratoruNCNvMs0_NtB4g_22on_disk_inverted_indexNtB6G_19OnDiskInvertedIndex14filter_has_all0Es0_0NCINvNvB12_4find5checkmQNCB4b_s1_0E0E0B3r_EB4o_.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi i32 [ undef, %bb.b ], [ %i.h, %bb.c ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.j = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.k = insertvalue { i32, i32 } %i.j, i32 %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i32, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs9XvERIT2X68_9itertools10merge_join7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtCs4R3jSB693Zs_4uuid4UuidmEINtB2i_5RangeB3a_mEEB1K_INtB10_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB4r_13PointMappings9iter_froms_00NtNtBc_3cmp8OrderingEENCB4m_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB6o_8find_map5checkTNtNtB4v_5types15ExtendedPointIdmENtB4t_13MergedPointIdQNCNCINvB4t_21for_each_unique_pointNtNtNtB4t_15id_tracker_base12tracker_enum13IdTrackerEnumIBO_INtNtNtBc_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefB8Y_EENCNvMNtNtB4v_19segment_constructor15segment_builderNtBbe_14SegmentBuilder6updates0_0ENCBbb_s1_0E00E0INtNtNtBc_3ops12control_flow11ControlFlowB84_EEB4v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(176) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 13 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8, !noalias !2615
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.f, align 8, !noalias !2615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2615
  call void @_RNvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB5_7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtCs4R3jSB693Zs_4uuid4UuidmEINtB1t_5RangeB2l_mEEBV_INtB5_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3A_13PointMappings9iter_froms_00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB55_4iter6traits8iterator8Iterator4nextB3E_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1), !noalias !2612
  %i.g = load i64, ptr %i.c, align 8, !range !671, !noalias !2615, !noundef !5 ; 2 uses
  %.not18.i = icmp eq i64 %i.g, -1
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.h = phi i64 [ %i.g, %.lr.ph.i ], [ %i.l, %bb.d ]
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !2615
  %.sroa.610.0.copyload.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !noalias !2615
  %.sroa.711.0.copyload.i = load i64, ptr %.sroa.711.0..sroa_idx.i, align 8, !noalias !2615
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2615
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %.sroa.0.0.i.sroa.speculated.v.i.i = select i1 %i.i, i64 %.sroa.711.0.copyload.i, i64 %.sroa.59.0.copyload.i
  %.sroa.0.0.i.sroa.speculated.i.i = inttoptr i64 %.sroa.0.0.i.sroa.speculated.v.i.i to ptr
  %.sroa.01.0.i.sroa.speculated.v.i.i = select i1 %i.i, i64 %.sroa.8.0.copyload.i, i64 %.sroa.610.0.copyload.i
  %.sroa.01.0.i.sroa.speculated.i.i = inttoptr i64 %.sroa.01.0.i.sroa.speculated.v.i.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.43.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.i.sroa.speculated.i.i, i64 16, i1 false), !noalias !2628
  %i.j = load i32, ptr %.sroa.01.0.i.sroa.speculated.i.i, align 4, !noalias !2629, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2619
  store i8 1, ptr %i.a, align 8, !noalias !2633
  store i32 %i.j, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !2633
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCINvNtCs607s0NAIaWN_7segment10id_tracker21for_each_unique_pointNtNtNtBV_15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefB1S_EENCNvMNtNtBX_19segment_constructor15segment_builderNtB4B_14SegmentBuilder6updates0_0ENCB4y_s1_0E00INtB7_5FnMutTTNtNtBX_5types15ExtendedPointIdmEEE8call_mutBX_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2619
  %i.k = load i8, ptr %i.b, align 8, !range !1103, !noalias !2619, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.k, 2
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2615
  store i8 2, ptr %0, align 8, !alias.scope !2635, !noalias !2638
  br label %_RINvYINtNtCs9XvERIT2X68_9itertools10merge_join7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtCs4R3jSB693Zs_4uuid4UuidmEINtB1o_5RangeB2g_mEEBQ_INtB6_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3v_13PointMappings9iter_froms_00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB50_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB5E_8adapters3map12map_try_foldINtNtB8_14either_or_both12EitherOrBothTRB2g_RmEETNtNtB3z_5types15ExtendedPointIdmEuINtNtNtB50_3ops12control_flow11ControlFlowNtB3x_13MergedPointIdENCB3q_s_0NCINvNvB5y_8find_map5checkB7O_B93_QNCNCINvB3x_21for_each_unique_pointNtNtNtB3x_15id_tracker_base12tracker_enum13IdTrackerEnumINtB6t_3MapINtNtNtB50_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefBaF_EENCNvMNtNtB3z_19segment_constructor15segment_builderNtBd3_14SegmentBuilder6updates0_0ENCBd0_s1_0E00E0E0B8n_EB3z_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.413.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.0..sroa_idx.i, i64 47, i1 false), !noalias !2638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2619
  store i8 %i.k, ptr %0, align 8, !alias.scope !2639, !noalias !2638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2615
  br label %_RINvYINtNtCs9XvERIT2X68_9itertools10merge_join7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtCs4R3jSB693Zs_4uuid4UuidmEINtB1o_5RangeB2g_mEEBQ_INtB6_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3v_13PointMappings9iter_froms_00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB50_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB5E_8adapters3map12map_try_foldINtNtB8_14either_or_both12EitherOrBothTRB2g_RmEETNtNtB3z_5types15ExtendedPointIdmEuINtNtNtB50_3ops12control_flow11ControlFlowNtB3x_13MergedPointIdENCB3q_s_0NCINvNvB5y_8find_map5checkB7O_B93_QNCNCINvB3x_21for_each_unique_pointNtNtNtB3x_15id_tracker_base12tracker_enum13IdTrackerEnumINtB6t_3MapINtNtNtB50_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefBaF_EENCNvMNtNtB3z_19segment_constructor15segment_builderNtBd3_14SegmentBuilder6updates0_0ENCBd0_s1_0E00E0E0B8n_EB3z_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2615
  call void @_RNvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB5_7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtCs4R3jSB693Zs_4uuid4UuidmEINtB1t_5RangeB2l_mEEBV_INtB5_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3A_13PointMappings9iter_froms_00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB55_4iter6traits8iterator8Iterator4nextB3E_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1), !noalias !2612
  %i.l = load i64, ptr %i.c, align 8, !range !671, !noalias !2615, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

_RINvYINtNtCs9XvERIT2X68_9itertools10merge_join7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtCs4R3jSB693Zs_4uuid4UuidmEINtB1o_5RangeB2g_mEEBQ_INtB6_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3v_13PointMappings9iter_froms_00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB50_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB5E_8adapters3map12map_try_foldINtNtB8_14either_or_both12EitherOrBothTRB2g_RmEETNtNtB3z_5types15ExtendedPointIdmEuINtNtNtB50_3ops12control_flow11ControlFlowNtB3x_13MergedPointIdENCB3q_s_0NCINvNvB5y_8find_map5checkB7O_B93_QNCNCINvB3x_21for_each_unique_pointNtNtNtB3x_15id_tracker_base12tracker_enum13IdTrackerEnumINtB6t_3MapINtNtNtB50_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefBaF_EENCNvMNtNtB3z_19segment_constructor15segment_builderNtBd3_14SegmentBuilder6updates0_0ENCBd0_s1_0E00E0E0B8n_EB3z_.exit: ; preds = %._crit_edge.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs9XvERIT2X68_9itertools10merge_join7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterymEINtB2i_5RangeymEEB1K_INtB10_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3Z_13PointMappings9iter_from00NtNtBc_3cmp8OrderingEENCB3U_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvB5U_8find_map5checkTNtNtB43_5types15ExtendedPointIdmENtB41_13MergedPointIdQNCNCINvB41_21for_each_unique_pointNtNtNtB41_15id_tracker_base12tracker_enum13IdTrackerEnumIBO_INtNtNtBc_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefB8v_EENCNvMNtNtB43_19segment_constructor15segment_builderNtBaL_14SegmentBuilder6updates0_0ENCBaI_s1_0E00E0INtNtNtBc_3ops12control_flow11ControlFlowB7B_EEB43_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(176) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 13 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8, !noalias !2646
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.f, align 8, !noalias !2646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2646
  call void @_RNvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB5_7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterymEINtB1t_5RangeymEEBV_INtB5_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB38_13PointMappings9iter_from00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB4B_4iter6traits8iterator8Iterator4nextB3c_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1), !noalias !2643
  %i.g = load i64, ptr %i.c, align 8, !range !671, !noalias !2646, !noundef !5 ; 2 uses
  %.not14.i = icmp eq i64 %i.g, -1
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.h = phi i64 [ %i.g, %.lr.ph.i ], [ %i.m, %bb.d ]
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !2646
  %.sroa.68.0.copyload.i = load i64, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !2646
  %.sroa.79.0.copyload.i = load i64, ptr %.sroa.79.0..sroa_idx.i, align 8, !noalias !2646
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2650
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %.sroa.0.0.i.sroa.speculated.v.i.i = select i1 %i.i, i64 %.sroa.79.0.copyload.i, i64 %.sroa.57.0.copyload.i
  %.sroa.0.0.i.sroa.speculated.i.i = inttoptr i64 %.sroa.0.0.i.sroa.speculated.v.i.i to ptr
  %.sroa.01.0.i.sroa.speculated.v.i.i = select i1 %i.i, i64 %.sroa.8.0.copyload.i, i64 %.sroa.68.0.copyload.i
  %.sroa.01.0.i.sroa.speculated.i.i = inttoptr i64 %.sroa.01.0.i.sroa.speculated.v.i.i to ptr
  %i.j = load i64, ptr %.sroa.0.0.i.sroa.speculated.i.i, align 8, !noalias !2655, !noundef !5
  %i.k = load i32, ptr %.sroa.01.0.i.sroa.speculated.i.i, align 4, !noalias !2655, !noundef !5
  store i8 0, ptr %i.a, align 8, !noalias !2650
  store i64 %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !2650
  store i32 %i.k, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !2650
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdmENtNtB1U_10id_tracker13MergedPointIdQNCNCINvB2H_21for_each_unique_pointNtNtNtB2H_15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtB11_8adapters3map3MapINtNtNtBb_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefB3N_EENCNvMNtNtB1U_19segment_constructor15segment_builderNtB6r_14SegmentBuilder6updates0_0ENCB6o_s1_0E00E0INtB7_5FnMutTuB1P_EE8call_mutB1U_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2650
  %i.l = load i8, ptr %i.b, align 8, !range !1103, !alias.scope !2660, !noalias !2663, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i8 %i.l, 2
  br i1 %.not.i.i, label %bb.d, label %bb.c

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2646
  store i8 2, ptr %0, align 8, !alias.scope !2665, !noalias !2668
  br label %_RINvYINtNtCs9XvERIT2X68_9itertools10merge_join7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterymEINtB1o_5RangeymEEBQ_INtB6_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB33_13PointMappings9iter_from00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB4w_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB5a_8adapters3map12map_try_foldINtNtB8_14either_or_both12EitherOrBothTRyRmEETNtNtB37_5types15ExtendedPointIdmEuINtNtNtB4w_3ops12control_flow11ControlFlowNtB35_13MergedPointIdENCB2Y_s_0QNCINvNvB54_8find_map5checkB7h_B8w_QNCNCINvB35_21for_each_unique_pointNtNtNtB35_15id_tracker_base12tracker_enum13IdTrackerEnumINtB5Z_3MapINtNtNtB4w_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefBa9_EENCNvMNtNtB37_19segment_constructor15segment_builderNtBcx_14SegmentBuilder6updates0_0ENCBcu_s1_0E00E0E0B7Q_EB37_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.411.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.0..sroa_idx3.i, i64 47, i1 false), !noalias !2668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2646
  store i8 %i.l, ptr %0, align 8, !alias.scope !2669, !noalias !2668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2646
  br label %_RINvYINtNtCs9XvERIT2X68_9itertools10merge_join7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterymEINtB1o_5RangeymEEBQ_INtB6_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB33_13PointMappings9iter_from00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB4w_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB5a_8adapters3map12map_try_foldINtNtB8_14either_or_both12EitherOrBothTRyRmEETNtNtB37_5types15ExtendedPointIdmEuINtNtNtB4w_3ops12control_flow11ControlFlowNtB35_13MergedPointIdENCB2Y_s_0QNCINvNvB54_8find_map5checkB7h_B8w_QNCNCINvB35_21for_each_unique_pointNtNtNtB35_15id_tracker_base12tracker_enum13IdTrackerEnumINtB5Z_3MapINtNtNtB4w_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefBa9_EENCNvMNtNtB37_19segment_constructor15segment_builderNtBcx_14SegmentBuilder6updates0_0ENCBcu_s1_0E00E0E0B7Q_EB37_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2646
  call void @_RNvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB5_7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterymEINtB1t_5RangeymEEBV_INtB5_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB38_13PointMappings9iter_from00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB4B_4iter6traits8iterator8Iterator4nextB3c_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1), !noalias !2643
  %i.m = load i64, ptr %i.c, align 8, !range !671, !noalias !2646, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.m, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

_RINvYINtNtCs9XvERIT2X68_9itertools10merge_join7MergeByINtCsgNzSnKyKfuE_6either6EitherINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterymEINtB1o_5RangeymEEBQ_INtB6_11MergeFuncLRNCNCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB33_13PointMappings9iter_from00NtNtCskKLDkoKarTP_4core3cmp8OrderingEENtNtNtNtB4w_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB5a_8adapters3map12map_try_foldINtNtB8_14either_or_both12EitherOrBothTRyRmEETNtNtB37_5types15ExtendedPointIdmEuINtNtNtB4w_3ops12control_flow11ControlFlowNtB35_13MergedPointIdENCB2Y_s_0QNCINvNvB54_8find_map5checkB7h_B8w_QNCNCINvB35_21for_each_unique_pointNtNtNtB35_15id_tracker_base12tracker_enum13IdTrackerEnumINtB5Z_3MapINtNtNtB4w_5slice4iter4IterINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefBa9_EENCNvMNtNtB37_19segment_constructor15segment_builderNtBcx_14SegmentBuilder6updates0_0ENCBcu_s1_0E00E0E0B7Q_EB37_.exit: ; preds = %._crit_edge.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs9XvERIT2X68_9itertools10tuple_impl12TupleWindowsINtNtB8_5chain5ChainIB1R_INtNtBc_6option8IntoIterTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB2M_9histogram6CountsEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeB2F_B3Z_EEB2f_ETB2D_B2D_EENCNvMB41_INtB41_9HistogramdE8estimate0ENtNtNtBa_6traits8iterator8Iterator4foldTjjjENCB5O_s_0EB2Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !12, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !12, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  %.sroa.03.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !2676, !noalias !2682 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2676, !noalias !2682 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2676, !noalias !2682 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2684
  call void @_RNvXs5_NtCs9XvERIT2X68_9itertools10tuple_implINtB5_12TupleWindowsINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainIB12_INtNtB1a_6option8IntoIterTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB2w_9histogram6CountsEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeB2p_B3J_EEB1Y_ETB2n_B2n_EENtNtNtB18_6traits8iterator8Iterator4nextB2A_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b), !noalias !2685
  %i.g = load ptr, ptr %i.a, align 8, !noalias !2684, !noundef !5 ; 2 uses
  %.not25.i = icmp eq ptr %i.g, null
  br i1 %.not25.i, label %_RINvYINtNtCs9XvERIT2X68_9itertools10tuple_impl12TupleWindowsINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainIBX_INtNtB15_6option8IntoIterTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB2q_9histogram6CountsEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeB2j_B3D_EEB1S_ETB2h_B2h_EENtNtNtB13_6traits8iterator8Iterator4foldTjjjENCINvNtB11_3map8map_foldB5f_B64_B64_NCNvMB3F_INtB3F_9HistogramdE8estimate0NCB6L_s_0E0EB2u_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load double, ptr %i.d, align 8, !alias.scope !2678, !noalias !2686
  %i.i = load double, ptr %i.f, align 8, !alias.scope !2680, !noalias !2687
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i, %.lr.ph.i
  %i.j = phi ptr [ %i.g, %.lr.ph.i ], [ %i.ah, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i ] ; 2 uses
  %.sroa.03.028.i = phi i64 [ %.sroa.03.0.copyload.i, %.lr.ph.i ], [ %i.ae, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i ]
  %.sroa.6.027.i = phi i64 [ %.sroa.6.0.copyload.i, %.lr.ph.i ], [ %i.af, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i ]
  %.sroa.7.026.i = phi i64 [ %.sroa.7.0.copyload.i, %.lr.ph.i ], [ %i.ag, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i ]
  %.sroa.419.0.copyload.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !2684, !nonnull !5, !noundef !5
  %.sroa.520.0.copyload.i = load ptr, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !2684, !nonnull !5, !noundef !5
  %i.k = load double, ptr %.sroa.520.0.copyload.i, align 1, !noalias !2688, !noundef !5 ; 2 uses
  %i.l = load double, ptr %i.j, align 1, !noalias !2688, !noundef !5
  %i.m = fsub double %i.k, %i.l                   ; 3 uses
  %i.n = fcmp oeq double %i.m, 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !2688, !noundef !5 ; 4 uses
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = add i64 %i.p, 1                          ; 3 uses
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = call noundef double @_RNvYdNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point11Numericable3minBb_(double noundef %i.h, double noundef %i.k), !noalias !2688
  %i.t = load double, ptr %i.j, align 1, !noalias !2688, !noundef !5
  %i.u = call noundef double @_RNvYdNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point11Numericable3maxBb_(double noundef %i.i, double noundef %i.t), !noalias !2688
  %i.v = fsub double %i.s, %i.u                   ; 2 uses
  %i.w = fdiv double %i.v, %i.m
  %i.x = uitofp i64 %i.p to double
  %i.y = fmul double %i.w, %i.x
  %i.z = call double @llvm.round.f64(double %i.y)
  %i.aa = call i64 @llvm.fptoui.sat.i64.f64(double %i.z)
  %i.ab = add i64 %i.aa, 1
  %i.ac = fcmp oeq double %i.v, %i.m
  %i.ad = add i64 %i.p, 1                         ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.ac, i64 %i.ad, i64 0
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink5.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.sroa.0.0.i.i.i, %bb.e ], [ 1, %bb.c ]
  %.sink3.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.ab, %bb.e ], [ 1, %bb.c ]
  %.sink.i.i.i = phi i64 [ %i.r, %bb.d ], [ %i.ad, %bb.e ], [ 1, %bb.c ]
  %i.ae = add i64 %.sink5.i.i.i, %.sroa.03.028.i  ; 2 uses
  %i.af = add i64 %.sink3.i.i.i, %.sroa.6.027.i   ; 2 uses
  %i.ag = add i64 %.sink.i.i.i, %.sroa.7.026.i    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2684
  call void @_RNvXs5_NtCs9XvERIT2X68_9itertools10tuple_implINtB5_12TupleWindowsINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainIB12_INtNtB1a_6option8IntoIterTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB2w_9histogram6CountsEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeB2p_B3J_EEB1Y_ETB2n_B2n_EENtNtNtB18_6traits8iterator8Iterator4nextB2A_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b), !noalias !2685
  %i.ah = load ptr, ptr %i.a, align 8, !noalias !2684, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_RINvYINtNtCs9XvERIT2X68_9itertools10tuple_impl12TupleWindowsINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainIBX_INtNtB15_6option8IntoIterTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB2q_9histogram6CountsEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeB2j_B3D_EEB1S_ETB2h_B2h_EENtNtNtB13_6traits8iterator8Iterator4foldTjjjENCINvNtB11_3map8map_foldB5f_B64_B64_NCNvMB3F_INtB3F_9HistogramdE8estimate0NCB6L_s_0E0EB2u_.exit, label %bb.b

_RINvYINtNtCs9XvERIT2X68_9itertools10tuple_impl12TupleWindowsINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainIBX_INtNtB15_6option8IntoIterTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB2q_9histogram6CountsEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeB2j_B3D_EEB1S_ETB2h_B2h_EENtNtNtB13_6traits8iterator8Iterator4foldTjjjENCINvNtB11_3map8map_foldB5f_B64_B64_NCNvMB3F_INtB3F_9HistogramdE8estimate0NCB6L_s_0E0EB2u_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i, %bb.a
  %.sroa.7.0.lcssa.i = phi i64 [ %.sroa.7.0.copyload.i, %bb.a ], [ %i.ag, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i ]
  %.sroa.6.0.lcssa.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.a ], [ %i.af, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i ]
  %.sroa.03.0.lcssa.i = phi i64 [ %.sroa.03.0.copyload.i, %bb.a ], [ %i.ae, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointdERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramdE8estimate0NCB2W_s_0E0B18_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2684
  store i64 %.sroa.03.0.lcssa.i, ptr %0, align 8, !alias.scope !2673, !noalias !2696
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.lcssa.i, ptr %.sroa.6.0..sroa_idx8.i, align 8, !alias.scope !2673, !noalias !2696
  %.sroa.7.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.lcssa.i, ptr %.sroa.7.0..sroa_idx12.i, align 8, !alias.scope !2673, !noalias !2696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtCs9XvERIT2X68_9itertools10tuple_impl12TupleWindowsINtNtB8_5chain5ChainIB1R_INtNtBc_6option8IntoIterTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB2M_9histogram6CountsEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeB2F_B3Z_EEB2f_ETB2D_B2D_EENCNvMB41_INtB41_9HistogramoE8estimate0ENtNtNtBa_6traits8iterator8Iterator4foldTjjjENCB5O_s_0EB2Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(152) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !2697, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !2697, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2705)
  %.sroa.03.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !2701, !noalias !2707 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2701, !noalias !2707 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2701, !noalias !2707 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2709
  call void @_RNvXs5_NtCs9XvERIT2X68_9itertools10tuple_implINtB5_12TupleWindowsINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainIB12_INtNtB1a_6option8IntoIterTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB2w_9histogram6CountsEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeB2p_B3J_EEB1Y_ETB2n_B2n_EENtNtNtB18_6traits8iterator8Iterator4nextB2A_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b), !noalias !2710
  %i.g = load ptr, ptr %i.a, align 8, !noalias !2709, !noundef !5 ; 2 uses
  %.not25.i = icmp eq ptr %i.g, null
  br i1 %.not25.i, label %_RINvYINtNtCs9XvERIT2X68_9itertools10tuple_impl12TupleWindowsINtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainIBX_INtNtB15_6option8IntoIterTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB2q_9histogram6CountsEEINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeB2j_B3D_EEB1S_ETB2h_B2h_EENtNtNtB13_6traits8iterator8Iterator4foldTjjjENCINvNtB11_3map8map_foldB5f_B64_B64_NCNvMB3F_INtB3F_9HistogramoE8estimate0NCB6L_s_0E0EB2u_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i128, ptr %i.d, align 16, !alias.scope !2703, !noalias !2711
  %i.i = load i128, ptr %i.f, align 16, !alias.scope !2705, !noalias !2712
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramoE8estimate0NCB2W_s_0E0B18_.exit.i, %.lr.ph.i
  %i.j = phi ptr [ %i.g, %.lr.ph.i ], [ %i.aj, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramoE8estimate0NCB2W_s_0E0B18_.exit.i ] ; 2 uses
  %.sroa.03.028.i = phi i64 [ %.sroa.03.0.copyload.i, %.lr.ph.i ], [ %i.ag, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramoE8estimate0NCB2W_s_0E0B18_.exit.i ]
  %.sroa.6.027.i = phi i64 [ %.sroa.6.0.copyload.i, %.lr.ph.i ], [ %i.ah, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramoE8estimate0NCB2W_s_0E0B18_.exit.i ]
  %.sroa.7.026.i = phi i64 [ %.sroa.7.0.copyload.i, %.lr.ph.i ], [ %i.ai, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramoE8estimate0NCB2W_s_0E0B18_.exit.i ]
  %.sroa.419.0.copyload.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !2709, !nonnull !5, !noundef !5
  %.sroa.520.0.copyload.i = load ptr, ptr %.sroa.520.0..sroa_idx.i, align 8, !noalias !2709, !nonnull !5, !noundef !5
  %i.k = load i128, ptr %.sroa.520.0.copyload.i, align 1, !noalias !2713, !noundef !5 ; 3 uses
  %i.l = load i128, ptr %i.j, align 1, !noalias !2713, !noundef !5 ; 2 uses
  %i.m = sub i128 %i.k, %i.l
  %i.n = uitofp i128 %i.m to double               ; 2 uses
  %i.o = icmp eq i128 %i.k, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !2713, !noundef !5 ; 4 uses
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramoE8estimate0NCB2W_s_0E0B18_.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = add i64 %i.q, 1                          ; 3 uses
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTTRINtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point5point5PointoERNtNtB14_9histogram6CountsEBV_ETjjjEB2L_NCNvMB2j_INtB2j_9HistogramoE8estimate0NCB2W_s_0E0B18_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = call noundef i128 @_RNvYoNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point11Numericable3minBb_(i128 noundef %i.h, i128 noundef %i.k), !noalias !2713
  %i.u = load i128, ptr %i.j, align 1, !noalias !2713, !noundef !5
  %i.v = call noundef i128 @_RNvYoNtNtNtNtCs607s0NAIaWN_7segment5index11field_index13numeric_point11Numericable3maxBb_(i128 noundef %i.i, i128 noundef %i.u), !noalias !2713
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENCNvMs_NtB1v_20struct_payload_indexNtB31_18StructPayloadIndex12load_from_dbs2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4c_8for_each4callNtNtB1v_14payload_config20FullPayloadIndexTypeNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB68_3VecB5f_E14extend_trustedBN_E0E0EB1x_:bb.a
  %i.g = invoke i24 @_RNvMs_NtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_indexNtB4_10FieldIndex19get_full_index_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(696) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !8454

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [3 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i24 %i.g, ptr %i.h, align 1, !noalias !8457
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtBY_14payload_config20FullPayloadIndexTypeuNCNvMs_NtBY_20struct_payload_indexNtB4C_18StructPayloadIndex12load_from_dbs2_0NCINvNvB2n_8for_each4callB3L_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6n_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4v_EE0E0E0EB10_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !8454
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtBY_14payload_config20FullPayloadIndexTypeuNCNvMs_NtBY_20struct_payload_indexNtB4C_18StructPayloadIndex12load_from_dbs2_0NCINvNvB2n_8for_each4callB3L_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6n_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4v_EE0E0E0EB10_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8454
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENCNvXNtNtB1v_20struct_payload_index13payload_indexNtB31_18StructPayloadIndexNtNtB1v_18payload_index_base12PayloadIndex11apply_index0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB53_8for_each4callNtNtB1v_14payload_config20FullPayloadIndexTypeNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Z_3VecB66_E14extend_trustedBN_E0E0EB1x_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtBY_14payload_config20FullPayloadIndexTypeuNCNvXNtNtBY_20struct_payload_index13payload_indexNtB4C_18StructPayloadIndexNtNtBY_18payload_index_base12PayloadIndex11apply_index0NCINvNvB2n_8for_each4callB3L_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7d_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4v_EE0E0E0EB10_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 696
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [696 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.g = invoke i24 @_RNvMs_NtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_indexNtB4_10FieldIndex19get_full_index_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(696) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !8464

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [3 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i24 %i.g, ptr %i.h, align 1, !noalias !8467
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtBY_14payload_config20FullPayloadIndexTypeuNCNvXNtNtBY_20struct_payload_index13payload_indexNtB4C_18StructPayloadIndexNtNtBY_18payload_index_base12PayloadIndex11apply_index0NCINvNvB2n_8for_each4callB3L_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7d_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4v_EE0E0E0EB10_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !8464
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtBY_14payload_config20FullPayloadIndexTypeuNCNvXNtNtBY_20struct_payload_index13payload_indexNtB4C_18StructPayloadIndexNtNtBY_18payload_index_base12PayloadIndex11apply_index0NCINvNvB2n_8for_each4callB3L_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7d_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4v_EE0E0E0EB10_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8464
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENCNvXNtNtNtB1v_20struct_payload_index9read_view18payload_index_readINtB31_26StructPayloadIndexReadViewNtNtNtB1x_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1x_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1x_14vector_storage19vector_storage_base17VectorStorageEnumB1n_ENtNtB1v_18payload_index_base16PayloadIndexRead14indexed_points0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1x_6common15operation_error14OperationErrorEEB8Y_8try_folduNCINvNvB8Y_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtBc8_5Break0E0Bc8_E0IBc9_Bc8_EEB1x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef align 8 dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8474)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !8477, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !8477, !nonnull !5, !noundef !5
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2m_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultjNtNtNtBT_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB50_jEENCNvXNtNtNtBR_20struct_payload_index9read_view18payload_index_readINtB5T_26StructPayloadIndexReadViewNtNtNtBT_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtBT_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBT_14vector_storage19vector_storage_base17VectorStorageEnumBJ_ENtNtBR_18payload_index_base16PayloadIndexRead14indexed_points0NCINvXB3c_INtB3c_12GenericShuntINtB3a_3MapB3_B5M_EIB3O_zB4a_EEB2g_8try_folduNCINvNvB2g_12try_for_each4calljB5E_NcNtB5E_5Break0E0B5E_E0E0B4Z_EBT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 696
  store ptr %i.f, ptr %0, align 8, !alias.scope !8477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8474
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @_RNvXNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base21field_index_read_implNtNtB4_11field_index10FieldIndexNtNtB4_19payload_field_index21PayloadFieldIndexRead20count_indexed_points(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(696) %i.b), !noalias !8474
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !8480 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !8480 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexINtNtBa_6result6ResultjNtNtNtB1a_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3K_jEENCNvXNtNtNtB18_20struct_payload_index9read_view18payload_index_readINtB4D_26StructPayloadIndexReadViewNtNtNtB1a_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1a_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1a_14vector_storage19vector_storage_base17VectorStorageEnumB10_ENtNtB18_18payload_index_base16PayloadIndexRead14indexed_points0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4w_EIB2x_zB2T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbY_12try_for_each4calljB4o_NcNtB4o_5Break0E0B4o_E0E0B1a_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %2, align 8, !range !11, !alias.scope !8483, !noalias !8486, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i unwind label %bb.e, !noalias !8489

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !8486
  %.sroa.58.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx.i.i.i, align 8, !noalias !8486
  %.sroa.611.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.611.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !8480
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !noalias !8486
  %.sroa.58.0..8.val.sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.4.0.copyload.i.i, ptr %.sroa.58.0..8.val.sroa_idx9.i.i.i, align 8, !noalias !8486
  %.sroa.611.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.611.0..8.val.sroa_idx12.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !8480
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexINtNtBa_6result6ResultjNtNtNtB1a_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3K_jEENCNvXNtNtNtB18_20struct_payload_index9read_view18payload_index_readINtB4D_26StructPayloadIndexReadViewNtNtNtB1a_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1a_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1a_14vector_storage19vector_storage_base17VectorStorageEnumB10_ENtNtB18_18payload_index_base16PayloadIndexRead14indexed_points0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4w_EIB2x_zB2T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbY_12try_for_each4calljB4o_NcNtB4o_5Break0E0B4o_E0E0B1a_.exit.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexINtNtBa_6result6ResultjNtNtNtB1a_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3K_jEENCNvXNtNtNtB18_20struct_payload_index9read_view18payload_index_readINtB4D_26StructPayloadIndexReadViewNtNtNtB1a_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1a_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1a_14vector_storage19vector_storage_base17VectorStorageEnumB10_ENtNtB18_18payload_index_base16PayloadIndexRead14indexed_points0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4w_EIB2x_zB2T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbY_12try_for_each4calljB4o_NcNtB4o_5Break0E0B4o_E0E0B1a_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i, %bb.b
  %.sroa.4.1.i.i.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.b ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8474
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2m_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultjNtNtNtBT_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB50_jEENCNvXNtNtNtBR_20struct_payload_index9read_view18payload_index_readINtB5T_26StructPayloadIndexReadViewNtNtNtBT_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtBT_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBT_14vector_storage19vector_storage_base17VectorStorageEnumBJ_ENtNtBR_18payload_index_base16PayloadIndexRead14indexed_points0NCINvXB3c_INtB3c_12GenericShuntINtB3a_3MapB3_B5M_EIB3O_zB4a_EEB2g_8try_folduNCINvNvB2g_12try_for_each4calljB5E_NcNtB5E_5Break0E0B5E_E0E0B4Z_EBT_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2m_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultjNtNtNtBT_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB50_jEENCNvXNtNtNtBR_20struct_payload_index9read_view18payload_index_readINtB5T_26StructPayloadIndexReadViewNtNtNtBT_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtBT_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBT_14vector_storage19vector_storage_base17VectorStorageEnumBJ_ENtNtBR_18payload_index_base16PayloadIndexRead14indexed_points0NCINvXB3c_INtB3c_12GenericShuntINtB3a_3MapB3_B5M_EIB3O_zB4a_EEB2g_8try_folduNCINvNvB2g_12try_for_each4calljB5E_NcNtB5E_5Break0E0B5E_E0E0B4Z_EBT_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexINtNtBa_6result6ResultjNtNtNtB1a_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3K_jEENCNvXNtNtNtB18_20struct_payload_index9read_view18payload_index_readINtB4D_26StructPayloadIndexReadViewNtNtNtB1a_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1a_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1a_14vector_storage19vector_storage_base17VectorStorageEnumB10_ENtNtB18_18payload_index_base16PayloadIndexRead14indexed_points0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4w_EIB2x_zB2T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbY_12try_for_each4calljB4o_NcNtB4o_5Break0E0B4o_E0E0B1a_.exit.i
  %.sroa.3.0.i = phi i64 [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexINtNtBa_6result6ResultjNtNtNtB1a_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3K_jEENCNvXNtNtNtB18_20struct_payload_index9read_view18payload_index_readINtB4D_26StructPayloadIndexReadViewNtNtNtB1a_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1a_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1a_14vector_storage19vector_storage_base17VectorStorageEnumB10_ENtNtB18_18payload_index_base16PayloadIndexRead14indexed_points0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4w_EIB2x_zB2T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbY_12try_for_each4calljB4o_NcNtB4o_5Break0E0B4o_E0E0B1a_.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexINtNtBa_6result6ResultjNtNtNtB1a_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3K_jEENCNvXNtNtNtB18_20struct_payload_index9read_view18payload_index_readINtB4D_26StructPayloadIndexReadViewNtNtNtB1a_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtNtB1a_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1a_14vector_storage19vector_storage_base17VectorStorageEnumB10_ENtNtB18_18payload_index_base16PayloadIndexRead14indexed_points0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4w_EIB2x_zB2T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBbY_12try_for_each4calljB4o_NcNtB4o_5Break0E0B4o_E0E0B1a_.exit.i ], [ 2, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index19immutable_geo_index6CountsENCNvMNtB1p_9lifecycleNtB1p_17ImmutableGeoIndex15points_per_hash0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3S_4find5checkTNtNtB1t_8geo_hash7GeoHashjEQNCNvXNtB1p_8read_opsB3a_NtNtB1r_8read_ops12GeoIndexRead24points_per_hash_filtered0E0INtNtNtBc_3ops12control_flow11ControlFlowB4W_EEB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !noalias !8495
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !8495
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !8498, !noalias !8501, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !8498, !noalias !8501 ; 2 uses
  %i.g = icmp eq ptr %.promoted.i, %i.f
  br i1 %i.g, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index19immutable_geo_index6CountsENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2h_8adapters3map12map_try_foldRBJ_TNtNtBP_8geo_hash7GeoHashjEuINtNtNtBa_3ops12control_flow11ControlFlowB3I_ENCNvMNtBL_9lifecycleNtBL_17ImmutableGeoIndex15points_per_hash0NCINvNvB2b_4find5checkB3I_QNCNvXNtBL_8read_opsB5e_NtNtBN_8read_ops12GeoIndexRead24points_per_hash_filtered0E0E0B4a_EBT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %1, align 8, !alias.scope !8498, !noalias !8501
  %.val.i = load i64, ptr %i.i, align 8, !noalias !8502, !noundef !5 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val3.i = load i32, ptr %i.k, align 8, !noalias !8502, !noundef !5
  %i.l = zext i32 %.val3.i to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8503
  store i64 %.val.i, ptr %i.a, align 8, !noalias !8507
  store i64 %i.l, ptr %i.h, align 8, !noalias !8507
  %i.m = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index19immutable_geo_index8read_opsNtBV_17ImmutableGeoIndexNtNtBX_8read_ops12GeoIndexRead24points_per_hash_filtered0INtB7_5FnMutTRTNtNtBZ_8geo_hash7GeoHashjEEE8call_mutB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !8511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8503
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val.i, ptr %i.n, align 8, !alias.scope !8512, !noalias !8515
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.o, align 8, !alias.scope !8512, !noalias !8515
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index19immutable_geo_index6CountsENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2h_8adapters3map12map_try_foldRBJ_TNtNtBP_8geo_hash7GeoHashjEuINtNtNtBa_3ops12control_flow11ControlFlowB3I_ENCNvMNtBL_9lifecycleNtBL_17ImmutableGeoIndex15points_per_hash0NCINvNvB2b_4find5checkB3I_QNCNvXNtBL_8read_opsB5e_NtNtBN_8read_ops12GeoIndexRead24points_per_hash_filtered0E0E0B4a_EBT_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq ptr %i.j, %i.f
  br i1 %i.p, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index19immutable_geo_index6CountsENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2h_8adapters3map12map_try_foldRBJ_TNtNtBP_8geo_hash7GeoHashjEuINtNtNtBa_3ops12control_flow11ControlFlowB3I_ENCNvMNtBL_9lifecycleNtBL_17ImmutableGeoIndex15points_per_hash0NCINvNvB2b_4find5checkB3I_QNCNvXNtBL_8read_opsB5e_NtNtBN_8read_ops12GeoIndexRead24points_per_hash_filtered0E0E0B4a_EBT_.exit, label %bb.b

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index19immutable_geo_index6CountsENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2h_8adapters3map12map_try_foldRBJ_TNtNtBP_8geo_hash7GeoHashjEuINtNtNtBa_3ops12control_flow11ControlFlowB3I_ENCNvMNtBL_9lifecycleNtBL_17ImmutableGeoIndex15points_per_hash0NCINvNvB2b_4find5checkB3I_QNCNvXNtBL_8read_opsB5e_NtNtBN_8read_ops12GeoIndexRead24points_per_hash_filtered0E0E0B4a_EBT_.exit: ; preds = %bb.d, %bb.a, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !8490, !noalias !8515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment7segment10VectorDataEENCNvMNtNtB2Y_19segment_constructor15segment_builderNtB3L_14SegmentBuilder6updates7_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB2Y_6common15operation_error14OperationErrorEEB53_8try_folduNCINvNvB53_12try_for_each4callINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtB2Y_14vector_storage19vector_storage_base17VectorStorageEnumEINtNtNtBc_3ops12control_flow11ControlFlowB8c_ENcNtB9Y_5Break0E0B9Y_E0IB9Z_B9Y_EEB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 4 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8519)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !8521, !noalias !8516, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !8521, !noalias !8516, !nonnull !5, !noundef !5
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment7segment10VectorDataEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB38_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtB2k_14vector_storage19vector_storage_base17VectorStorageEnumENtNtNtB2k_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7y_B4V_EENCNvMNtNtB2k_19segment_constructor15segment_builderNtB8s_14SegmentBuilder6updates7_0NCINvXB3Y_INtB3Y_12GenericShuntINtB3W_3MapB3_B8n_EIB4A_zB6H_EEB32_8try_folduNCINvNvB32_12try_for_each4callB4V_B8c_NcNtB8c_5Break0E0B8c_E0E0B7x_EB2k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %1, align 8, !alias.scope !8521, !noalias !8516
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i)
  %.val4.i = load ptr, ptr %i.f, align 8, !noalias !8524, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8524
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %i.j, align 8, !noalias !8528, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.m, align 8, !noalias !8528 ; 5 uses
  %i.n = load ptr, ptr %.val.i.i, align 8, !noalias !8529, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val4.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !8532, !noalias !8535, !noundef !5
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.val4.i, i64 32
  %i.s = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !8529 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8540)
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !8543, !noalias !8544, !noundef !5 ; 2 uses
  %i.x = load ptr, ptr %.val4.i, align 8, !alias.scope !8543, !noalias !8544, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aq, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.s, %bb.c ], [ %i.ar, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.w ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.aa, align 1, !noalias !8547 ; 2 uses
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.z
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ap, %bb.e ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.w
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [48 x i8], ptr %i.x, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -48
  %i.ak = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj), !noalias !8550
  br i1 %i.ak, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment7segment10VectorDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i, label %bb.e, !prof !1821

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.f, label %.loopexit.i.i, !prof !2510

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aq = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ar = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aq
  br label %bb.d

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment7segment10VectorDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ai, i64 -24 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.at = load ptr, ptr %i.as, align 8, !noalias !8529, !nonnull !5, !noundef !5
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !8529
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment7segment10VectorDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i
  %i.aw = load ptr, ptr %i.as, align 8, !noalias !8529, !nonnull !5, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8529
  store ptr %i.aw, ptr %i.c, align 8, !noalias !8556
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !8553, !noalias !8529, !noundef !5 ; 3 uses
  %i.az = load i64, ptr %.val1.i.i, align 8, !range !8, !alias.scope !8553, !noalias !8529, !noundef !5
  %i.ba = icmp eq i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtCs5LEDvFxVFYt_14atomic_refcell13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment5index17vector_index_base15VectorIndexEnumEEE8push_mutB1O_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcINtCs5LEDvFxVFYt_14atomic_refcell13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment5index17vector_index_base15VectorIndexEnumEEE8grow_oneB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1.i.i)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtCs5LEDvFxVFYt_14atomic_refcell13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment5index17vector_index_base15VectorIndexEnumEEE8push_mutB1O_.exit.i.i.i unwind label %bb.i, !noalias !8529

bb.i:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !8557
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.j, label %common.resume.i.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs5LEDvFxVFYt_14atomic_refcell13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment5index17vector_index_base15VectorIndexEnumEE9drop_slowB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #38
          to label %common.resume.i.i unwind label %bb.k, !noalias !8529

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !8529
  unreachable

common.resume.i.i:                                ; preds = %bb.p, %bb.j, %bb.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bv, %bb.p ], [ %i.bb, %bb.j ], [ %i.bb, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtCs5LEDvFxVFYt_14atomic_refcell13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment5index17vector_index_base15VectorIndexEnumEEE8push_mutB1O_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !8553, !noalias !8529, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ay
  store ptr %i.aw, ptr %i.bh, align 8, !noalias !8529
  %i.bi = add i64 %i.ay, 1
  store i64 %i.bi, ptr %i.ax, align 8, !alias.scope !8553, !noalias !8529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8529
  %i.bj = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !8529, !nonnull !5, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %i.bm = atomicrmw add ptr %i.bl, i64 1 acquire, align 8, !noalias !8529
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  br i1 %i.bo, label %bb.o, label %bb.l, !prof !1821

bb.l:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtCs5LEDvFxVFYt_14atomic_refcell13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment5index17vector_index_base15VectorIndexEnumEEE8push_mutB1O_.exit.i.i.i
  tail call void @_RNvMs4_Cs5LEDvFxVFYt_14atomic_refcellNtB5_15AtomicBorrowRef14check_overflow(ptr noundef nonnull align 8 %i.bl, i64 noundef %i.bn) #38, !noalias !8529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8529
  store ptr @41, ptr %i.b, align 8, !noalias !8529, !captures !6789
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 24, ptr %i.bp, align 8, !noalias !8529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8529
  store ptr %i.b, ptr %i.a, align 8, !noalias !8529
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs607s0NAIaWN_7segment, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !8529
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #39, !noalias !8529
  unreachable

bb.m:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment7segment10VectorDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1u_.exit.i.i.i
  tail call void @llvm.trap()
  unreachable

.loopexit.i.i:                                    ; preds = %._crit_edge.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8562
  store ptr %.val.i.i, ptr %i.d, align 8, !noalias !8562
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCs607s0NAIaWN_7segment, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !8562
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noundef nonnull @9, ptr noundef nonnull %i.d), !noalias !8528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8562
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !noalias !8528 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8566)
  %i.bs = load i64, ptr %3, align 8, !range !11, !alias.scope !8569, !noalias !8572, !noundef !5
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.loopexit.i.i
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %3)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i unwind label %bb.p, !noalias !8572

bb.o:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtCs5LEDvFxVFYt_14atomic_refcell13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment5index17vector_index_base15VectorIndexEnumEEE8push_mutB1O_.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %4 = ptrtoint ptr %i.bu to i64
  store i64 %4, ptr %.sroa.4.i, align 8, !alias.scope !8574, !noalias !8575
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775798, ptr %3, align 8, !noalias !8572
  %.sroa.511.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = extractelement <2 x ptr> %i.br, i64 0
  store ptr %i.bw, ptr %.sroa.511.0..8.val.sroa_idx.i.i.i, align 8, !noalias !8572
  %.sroa.614.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = extractelement <2 x ptr> %i.br, i64 1
  store ptr %i.bx, ptr %.sroa.614.0..8.val.sroa_idx.i.i.i, align 8, !noalias !8572
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !8528
  br label %common.resume.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i: ; preds = %bb.n, %.loopexit.i.i
  store i64 -9223372036854775798, ptr %3, align 8, !noalias !8572
  %.sroa.511.0..8.val.sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x ptr> %i.br, ptr %.sroa.511.0..8.val.sroa_idx12.i.i.i, align 8, !noalias !8572
  %.sroa.7.0..8.val.sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx17.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !8528
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i, %bb.o
  %.sink15.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.o ], [ %.sroa.4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i ]
  %.sink.i.i = phi ptr [ %i.bl, %bb.o ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_.exit.i.i.i ]
  store ptr %.sink.i.i, ptr %.sink15.i.sroa.phi.i, align 8, !alias.scope !8574, !noalias !8575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8524
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !alias.scope !8576, !noalias !8579, !noundef !5
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !alias.scope !8576, !noalias !8579
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.by, align 8, !alias.scope !8581, !noalias !8519
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %6, ptr %i.bz, align 8, !alias.scope !8581, !noalias !8519
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment7segment10VectorDataEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB38_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtB2k_14vector_storage19vector_storage_base17VectorStorageEnumENtNtNtB2k_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7y_B4V_EENCNvMNtNtB2k_19segment_constructor15segment_builderNtB8s_14SegmentBuilder6updates7_0NCINvXB3Y_INtB3Y_12GenericShuntINtB3W_3MapB3_B8n_EIB4A_zB6H_EEB32_8try_folduNCINvNvB32_12try_for_each4callB4V_B8c_NcNtB8c_5Break0E0B8c_E0E0B7x_EB2k_.exit

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs607s0NAIaWN_7segment7segment10VectorDataEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB38_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtB2k_14vector_storage19vector_storage_base17VectorStorageEnumENtNtNtB2k_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB7y_B4V_EENCNvMNtNtB2k_19segment_constructor15segment_builderNtB8s_14SegmentBuilder6updates7_0NCINvXB3Y_INtB3Y_12GenericShuntINtB3W_3MapB3_B8n_EIB4A_zB6H_EEB32_8try_folduNCINvNvB32_12try_for_each4callB4V_B8c_NcNtB8c_5Break0E0B8c_E0E0B7x_EB2k_.exit: ; preds = %bb.a, %bb.q
  %storemerge.i = phi i64 [ 1, %bb.q ], [ 0, %bb.a ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !8516, !noalias !8519
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENCNvMNtNtB1s_19segment_constructor15segment_builderNtB2a_14SegmentBuilder6update0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3p_8for_each4callINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtB1s_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB4s_E14extend_trustedBN_E0E0EB1s_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.new
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %.new ], [ %i.af, %bb.e ] ; 4 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ag, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.e ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !8584, !nonnull !5, !align !12, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.val15.i, i64 464
  %i.k = load ptr, ptr %i.j, align 8, !noalias !8587, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 acquire, align 8, !noalias !8587
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %bb.d, label %.loopexit, !prof !1821

.loopexit:                                        ; preds = %bb.c, %bb.d, %.epil.preheader
  %.val10.i.lcssa = phi i64 [ %.val10.i.epil.init, %.epil.preheader ], [ %.val10.i, %bb.c ], [ %i.t, %bb.d ]
  %.lcssa25 = phi ptr [ %i.am, %.epil.preheader ], [ %i.l, %bb.c ], [ %i.y, %bb.d ]
  %.lcssa = phi i64 [ %i.ao, %.epil.preheader ], [ %i.n, %bb.c ], [ %i.aa, %bb.d ]
  invoke void @_RNvMs4_Cs5LEDvFxVFYt_14atomic_refcellNtB5_15AtomicBorrowRef14check_overflow(ptr noundef nonnull align 8 %.lcssa25, i64 noundef %.lcssa) #38
          to label %.noexc.i unwind label %bb.f, !noalias !8584

.noexc.i:                                         ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8587
  store ptr @41, ptr %i.b, align 8, !noalias !8587, !captures !6789
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 24, ptr %i.p, align 8, !noalias !8587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8587
  store ptr %i.b, ptr %i.a, align 8, !noalias !8587
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs607s0NAIaWN_7segment, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !8587
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #39
          to label %.noexc16.i unwind label %bb.f, !noalias !8584

.noexc16.i:                                       ; preds = %.noexc.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !noalias !8590
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.l, ptr %i.s, align 8, !noalias !8590
  %i.t = add i64 %.val10.i, 1                     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val15.i.1 = load ptr, ptr %i.v, align 8, !noalias !8584, !nonnull !5, !align !12, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.val15.i.1, i64 464
  %i.x = load ptr, ptr %i.w, align 8, !noalias !8587, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 acquire, align 8, !noalias !8587
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %.loopexit, !prof !1821

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %i.t ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !8590
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.y, ptr %i.ae, align 8, !noalias !8590
  %i.af = add i64 %.val10.i, 2                    ; 3 uses
  %i.ag = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.unr-lcssa, label %bb.c

bb.f:                                             ; preds = %.noexc.i, %.loopexit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i.lcssa, ptr %.sroa.0.0.copyload, align 8, !noalias !8584
  resume { ptr, i32 } %i.ah

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %i.ai = and i64 %i.f, 8
  %lcmp.mod.not = icmp eq i64 %i.ai, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.unr-lcssa, %bb.b
  %.val10.i.epil.init = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.af, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ag, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load ptr, ptr %i.aj, align 8, !noalias !8584, !nonnull !5, !align !12, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %.val15.i.epil, i64 464
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !8587, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 acquire, align 8, !noalias !8587
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.epilog-lcssa, label %.loopexit, !prof !1821

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.epilog-lcssa: ; preds = %.epil.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i.epil.init ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !noalias !8590
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.am, ptr %i.as, align 8, !noalias !8590
  %i.at = add i64 %.val10.i.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.af, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.unr-lcssa ], [ %i.at, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtNtBV_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4R_14SegmentBuilder6update0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6G_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4M_EE0E0E0EBV_.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8584
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENCNvMNtNtB1s_19segment_constructor15segment_builderNtB2a_14SegmentBuilder6updates2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3s_8for_each4callINtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtB1s_5index20struct_payload_index18StructPayloadIndexENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6i_3VecB4v_E14extend_trustedBN_E0E0EB1s_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRNtNtCs607s0NAIaWN_7segment7segment7SegmentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldRBQ_INtCs5LEDvFxVFYt_14atomic_refcell9AtomicRefNtNtNtBV_5index20struct_payload_index18StructPayloadIndexEuNCNvMNtNtBV_19segment_constructor15segment_builderNtB4F_14SegmentBuilder6updates2_0NCINvNvB1y_8for_each4callB2W_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6x_3VecB2W_E14extend_trustedINtB2o_3MapBF_B4A_EE0E0E0EBV_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.g, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.new
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %.new ], [ %i.af, %bb.e ] ; 4 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ag, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.e ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.i, align 8, !noalias !8595, !nonnull !5, !align !12, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.val15.i, i64 520
  %i.k = load ptr, ptr %i.j, align 8, !noalias !8598, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 acquire, align 8, !noalias !8598
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %bb.d, label %.loopexit, !prof !1821

.loopexit:                                        ; preds = %bb.c, %bb.d, %.epil.preheader
  %.val10.i.lcssa = phi i64 [ %.val10.i.epil.init, %.epil.preheader ], [ %.val10.i, %bb.c ], [ %i.t, %bb.d ]
  %.lcssa25 = phi ptr [ %i.am, %.epil.preheader ], [ %i.l, %bb.c ], [ %i.y, %bb.d ]
  %.lcssa = phi i64 [ %i.ao, %.epil.preheader ], [ %i.n, %bb.c ], [ %i.aa, %bb.d ]
  invoke void @_RNvMs4_Cs5LEDvFxVFYt_14atomic_refcellNtB5_15AtomicBorrowRef14check_overflow(ptr noundef nonnull align 8 %.lcssa25, i64 noundef %.lcssa) #38
          to label %.noexc.i unwind label %bb.f, !noalias !8595

.noexc.i:                                         ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8598
  store ptr @41, ptr %i.b, align 8, !noalias !8598, !captures !6789
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 24, ptr %i.p, align 8, !noalias !8598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8598
  store ptr %i.b, ptr %i.a, align 8, !noalias !8598
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs607s0NAIaWN_7segment, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !8598
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #39
end_hunk_1
