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
  %.sroa.59.0.copyload.i = load ptr, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !2615
  %.sroa.610.0.copyload.i = load ptr, ptr %.sroa.610.0..sroa_idx.i, align 8, !noalias !2615
  %.sroa.711.0.copyload.i = load ptr, ptr %.sroa.711.0..sroa_idx.i, align 8, !noalias !2615
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2615
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %.sroa.0.0.i.sroa.speculated.i.i = select i1 %i.i, ptr %.sroa.711.0.copyload.i, ptr %.sroa.59.0.copyload.i
  %.sroa.01.0.i.sroa.speculated.i.i = select i1 %i.i, ptr %.sroa.8.0.copyload.i, ptr %.sroa.610.0.copyload.i
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
  %.sroa.57.0.copyload.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !2646
  %.sroa.68.0.copyload.i = load ptr, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !2646
  %.sroa.79.0.copyload.i = load ptr, ptr %.sroa.79.0..sroa_idx.i, align 8, !noalias !2646
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2650
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %.sroa.0.0.i.sroa.speculated.i.i = select i1 %i.i, ptr %.sroa.79.0.copyload.i, ptr %.sroa.57.0.copyload.i
  %.sroa.01.0.i.sroa.speculated.i.i = select i1 %i.i, ptr %.sroa.8.0.copyload.i, ptr %.sroa.68.0.copyload.i
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
