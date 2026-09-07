Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB2r_9geo_index17mutable_geo_index5innerNtB4h_16InMemoryGeoIndex18stored_sub_regions0ENCB4c_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB6N_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuINtNtNtBc_3ops12control_flow11ControlFlowmENCINvNvXsi_B6N_B70_B5U_8try_fold7flattenB7M_uB93_QNCINvNvB5U_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBb8_6UniqueINtB6N_7FlatMapINtNtNtB1A_3vec9into_iter8IntoIterB2n_EIBc0_BX_B7M_B5K_ENCNvXs0_B4h_B50_NtNtB4l_8read_ops12GeoIndexRead8iterator0EEB5U_4next0E0E0E0B93_EB2v_:bb.a
bb.e:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, ptr } %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1239
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmuNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE4iterCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i), !noalias !1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !alias.scope !1241, !noalias !1242
  %i.j = tail call { i32, i32 } @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB9_6traits8iterator8Iterator8try_folduQQNCINvNvB1W_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtB3g_6UniqueINtNtB7_7flatten7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashEIB48_INtNtB7_10take_while9TakeWhileINtNtNtNtB4C_11collections5btree3map5RangeB5j_INtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB5n_9geo_index17mutable_geo_index5innerNtB8x_16InMemoryGeoIndex18stored_sub_regions0EBP_NCB8s_s_0ENCNvXs0_B8x_B9g_NtNtB8B_8read_ops12GeoIndexRead8iterator0EEB1W_4next0E0INtNtNtBb_3ops12control_flow11ControlFlowmEEB5r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1), !noalias !1243 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1239
  %i.k = extractvalue { i32, i32 } %i.j, 0
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %select.unfold.loopexit.split.loop.exit15.i.i, label %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i

select.unfold.loopexit.split.loop.exit15.i.i:     ; preds = %bb.e
  %i.m = extractvalue { i32, i32 } %i.j, 1
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB41_16InMemoryGeoIndex18stored_sub_regions0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB27_RB3b_EINtNtB8_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3W_s_0NCINvNvMsg_NtB8_7flattenINtB98_13FlattenCompatppE13iter_try_fold7flattenB6Q_uB87_NCINvNvXsi_B98_B9l_B5u_8try_fold7flattenB6Q_uB87_QNCINvNvB5u_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBbE_6UniqueINtB98_7FlatMapINtNtNtB1k_3vec9into_iter8IntoIterB27_EIBcw_BV_B6Q_B8O_ENCNvXs0_B41_B4K_NtNtB45_8read_ops12GeoIndexRead8iterator0EEB5u_4next0E0E0E0E0B87_EB2f_.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5RangeNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB41_16InMemoryGeoIndex18stored_sub_regions0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB27_RB3b_EINtNtB8_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuINtNtNtBc_3ops12control_flow11ControlFlowmENCB3W_s_0NCINvNvMsg_NtB8_7flattenINtB98_13FlattenCompatppE13iter_try_fold7flattenB6Q_uB87_NCINvNvXsi_B98_B9l_B5u_8try_fold7flattenB6Q_uB87_QNCINvNvB5u_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBbE_6UniqueINtB98_7FlatMapINtNtNtB1k_3vec9into_iter8IntoIterB27_EIBcw_BV_B6Q_B8O_ENCNvXs0_B41_B4K_NtNtB45_8read_ops12GeoIndexRead8iterator0EEB5u_4next0E0E0E0E0B87_EB2f_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i, %bb.a, %bb.d, %select.unfold.loopexit.split.loop.exit15.i.i
  %.sroa.4.1.i = phi i32 [ undef, %bb.d ], [ undef, %bb.a ], [ %i.m, %select.unfold.loopexit.split.loop.exit15.i.i ], [ undef, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i ]
  %.sroa.0.1.i = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %select.unfold.loopexit.split.loop.exit15.i.i ], [ 0, %_RNCINvNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashRINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEuINtNtNtBg_3ops12control_flow11ControlFlowmENCNvMs_NtNtNtB2b_9geo_index17mutable_geo_index5innerNtB4K_16InMemoryGeoIndex18stored_sub_regions0NCINvNtBc_3map12map_try_foldB25_INtNtBc_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEuB3W_NCB4F_s_0NCINvNvMsg_NtBc_7flattenINtB8n_13FlattenCompatppE13iter_try_fold7flattenB6I_uB3W_NCINvNvXsi_B8n_B8A_B1i_8try_fold7flattenB6I_uB3W_QNCINvNvB1i_8find_map5checkmmNCNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtBaT_6UniqueINtB8n_7FlatMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterB27_EIBbL_IB10_INtNtNtNtBc6_11collections5btree3map5RangeB27_B3c_EB4D_EB6I_B83_ENCNvXs0_B4K_B5t_NtNtB4O_8read_ops12GeoIndexRead8iterator0EEB1i_4next0E0E0E0E0E0B2f_.exit.i.i ]
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.0.1.i, 0
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.1.i, 1
  ret { i32, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENCNvNtB2B_24immutable_inverted_index41create_compressed_postings_with_positionss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5J_8for_each4callINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2B_9positions9PositionsENCINvMsk_B1O_INtB1O_3VecB6M_E14extend_trustedBN_E0E0EB2J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %.sroa.620.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !11, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1268, !noalias !1269, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.val13.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !1268, !noalias !1269, !nonnull !5, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val13.i.i.i, %.val.i.i.i
  br i1 %.not.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = ptrtoint ptr %.val13.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = udiv i64 %i.l, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 5 uses
  %.sroa.7.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %.promoted.i.i = load i32, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  br label %bb.b

.split11.i.i:                                     ; preds = %_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i32 %i.v, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  br label %.body.i.i.i

bb.b:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %i.s = phi ptr [ %.val.i.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.g ] ; 5 uses
  %i.t = phi i32 [ %.promoted.i.i, %.lr.ph.i.i.i ], [ %i.v, %bb.g ] ; 2 uses
  %.val15.i.i.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i.i.i ], [ %i.ai, %bb.g ] ; 3 uses
  %.sroa.01.026.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.u, %bb.g ]
  %i.u = add nuw nsw i64 %.sroa.01.026.i.i.i, 1   ; 2 uses
  %i.v = add i32 %i.t, 1                          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.w = icmp eq ptr %i.s, %.val13.i.i.i
  br i1 %i.w, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !alias.scope !1272, !noalias !1273
  %.sroa.018.0.copyload19.i.i.i = load i64, ptr %i.s, align 8, !noalias !1274
  %.sroa.620.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.0..sroa_idx21.i.i.i, i64 16, i1 false), !noalias !1274
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.y = phi ptr [ %i.x, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.018.0.i.i.i = phi i64 [ %.sroa.018.0.copyload19.i.i.i, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.z = icmp ne i64 %.sroa.018.0.i.i.i, -1
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.i.i.i, i64 16, i1 false), !noalias !1276
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1275
  store i32 %i.t, ptr %i.c, align 4, !noalias !1275
  store i64 %.sroa.018.0.i.i.i, ptr %i.b, align 8, !noalias !1277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1275
  %i.aa = load ptr, ptr %.sroa.7.8..sroa_idx.i.i.i, align 8, !noalias !1275, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = load i64, ptr %i.o, align 8, !noalias !1275, !noundef !5
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.ab
  store i64 -1, ptr %i.a, align 8, !noalias !1275
  store i64 -1, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1275
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1275
  store ptr %i.ac, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1275
  store ptr %i.g, ptr %i.p, align 8, !noalias !1275
  store ptr %i.c, ptr %i.q, align 8, !noalias !1275
  invoke void @_RINvXs0_NtCs6cW95TQWYPl_12posting_list12posting_listINtB6_11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTmB17_EE9from_iterINtNtNtB2X_8adapters3map3MapNtNtNtCs9jZsDbilXxj_7roaring6bitmap4iter4IterNCNCNvNtB1b_24immutable_inverted_index41create_compressed_postings_with_positionss_00EEB1j_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(144) %i.a)
          to label %bb.d unwind label %.split.i.i, !noalias !1278

.split.i.i:                                       ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store i32 %i.v, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #37
          to label %.body.i.i.i unwind label %bb.f, !noalias !1275

bb.d:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB18_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1275
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i unwind label %.split7.i.i, !noalias !1275

.split7.i.i:                                      ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store i32 %i.v, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i.i unwind label %bb.e, !noalias !1275

bb.e:                                             ; preds = %.split7.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1275
  unreachable

bb.f:                                             ; preds = %.split.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1275
  unreachable

_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9jZsDbilXxj_7roaring6bitmap9container9ContainerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %.split11.i.i, !noalias !1276

bb.g:                                             ; preds = %_RNCNvNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index41create_compressed_postings_with_positionss_0Bd_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1275
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %.sroa.7.0.copyload, i64 %.val15.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !1278
  %i.ai = add i64 %.val15.i.i.i, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1276
  %exitcond.not.i.i.i = icmp eq i64 %i.u, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit, label %bb.b, !llvm.loop !1264

.body.i.i.i:                                      ; preds = %.split7.i.i, %.split.i.i, %.split11.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ad, %.split.i.i ], [ %i.r, %.split11.i.i ], [ %i.ae, %.split7.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1276
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEEEB2F_.exit.i.i.i unwind label %bb.h, !noalias !1269

bb.h:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !1269
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEEEB2F_.exit.i.i.i: ; preds = %.body.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit: ; preds = %bb.g
  store i32 %i.v, ptr %i.n, align 8, !alias.scope !1270, !noalias !1269
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit: ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit, %bb.a
  %.val17.i.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ai, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range9RangeFrommEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTmB2g_EINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtB2k_9positions9PositionsEuNCNvNtB2k_24immutable_inverted_index41create_compressed_postings_with_positionss_0NCINvNvB47_8for_each4callB5f_NCINvMsk_B1x_INtB1x_3VecB5f_E14extend_trustedINtB4Q_3MapBM_B6H_EE0E0E0EB2s_.exit.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val17.i.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1276
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index12posting_list11PostingListENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e), !noalias !1269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4ItermEIB1e_fEENCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB1V_14FilteredScorer23score_points_unfiltered0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4callNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5G_3VecB4J_E14extend_trustedBN_E0E0EB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 7 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 10 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 7 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 7 uses
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 3
  %scevgep = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.b ; 2 uses
  %i.c = add i64 %.sroa.44.0.copyload, %.sroa.6.0.copyload
  %i.d = sub i64 %i.c, %.sroa.52.0.copyload
  %i.e = shl i64 %i.d, 3
  %scevgep6 = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.e ; 2 uses
  %i.f = shl i64 %.sroa.52.0.copyload, 2          ; 2 uses
  %scevgep7 = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.f
  %i.g = shl i64 %.sroa.6.0.copyload, 2           ; 2 uses
  %scevgep8 = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.g
  %scevgep9 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.f
  %scevgep10 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep8
  %bound1 = icmp ult ptr %scevgep7, %scevgep6
  %found.conflict = and i1 %bound0, %bound1
  %bound011 = icmp ult ptr %scevgep, %scevgep10
  %bound112 = icmp ult ptr %scevgep9, %scevgep6
  %found.conflict13 = and i1 %bound011, %bound112
  %conflict.rdx = or i1 %found.conflict, %found.conflict13
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.h = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = add i64 %.sroa.44.0.copyload, %index     ; 2 uses
  %i.j = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load19 = load <2 x float>, ptr %i.k, align 4, !alias.scope !1298, !noalias !1299
  %wide.load1420 = load <2 x float>, ptr %i.m, align 4, !alias.scope !1298, !noalias !1299
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load15 = load <2 x float>, ptr %i.l, align 4, !alias.scope !1300, !noalias !1299
  %wide.load16 = load <2 x float>, ptr %i.n, align 4, !alias.scope !1300, !noalias !1299
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.i
  %i.p = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.i
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %interleaved.vec = shufflevector <2 x float> %wide.load19, <2 x float> %wide.load15, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %i.o, align 4, !alias.scope !1301, !noalias !1302
  %interleaved.vec17 = shufflevector <2 x float> %wide.load1420, <2 x float> %wide.load16, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec17, ptr %i.q, align 4, !alias.scope !1301, !noalias !1302
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %2 = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %i.s = xor i64 %.sroa.0.015.i.i.ph, -1
  %i.t = add i64 %.sroa.6.0.copyload, %i.s
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.u = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %i.v = add i64 %.sroa.0.015.i.i.ph, %.sroa.52.0.copyload ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.v
  %.val13.i.i.prol = load i32, ptr %i.w, align 4, !noalias !1299, !noundef !5
  %.val14.i.i.prol = load float, ptr %i.x, align 4, !noalias !1299, !noundef !5
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %.ph ; 2 uses
  store i32 %.val13.i.i.prol, ptr %i.y, align 4, !noalias !1302
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store float %.val14.i.i.prol, ptr %i.z, align 4, !noalias !1302
  %i.aa = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %i.ab = icmp eq i64 %i.t, %.sroa.52.0.copyload
  br i1 %i.ab, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.52.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ac = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.ao, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.ai, %scalar.ph ] ; 3 uses
  %i.ad = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ad
  %.val13.i.i = load i32, ptr %i.ae, align 4, !noalias !1299, !noundef !5
  %.val14.i.i = load float, ptr %i.af, align 4, !noalias !1299, !noundef !5
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.ac ; 2 uses
  store i32 %.val13.i.i, ptr %i.ag, align 4, !noalias !1302
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store float %.val14.i.i, ptr %i.ah, align 4, !noalias !1302
  %i.ai = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %.reass
  %.val13.i.i.1 = load i32, ptr %i.aj, align 4, !noalias !1299, !noundef !5
  %.val14.i.i.1 = load float, ptr %i.ak, align 4, !noalias !1299, !noundef !5
  %i.al = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.ac ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  store i32 %.val13.i.i.1, ptr %i.am, align 4, !noalias !1302
  %i.an = getelementptr i8, ptr %i.al, i64 12
  store float %.val14.i.i.1, ptr %i.an, align 4, !noalias !1302
  %i.ao = add i64 %i.ac, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ai, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit, label %scalar.ph, !llvm.loop !1297

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItermEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRmRfENtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetuNCNvMs1_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12point_scorerNtB3z_14FilteredScorer23score_points_unfiltered0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5V_3VecB2C_E14extend_trustedINtB2e_3MapBM_B3r_EE0E0E0EB3F_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ao, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !1299
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IteryEIB1e_fEENCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2X_8for_each4callTyfENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4d_3VecB40_E14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 3 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 3 uses
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %.neg = add i64 %.sroa.52.0.copyload, 1
  %xtraiter = and i64 %i.a, 1
  %i.b = icmp eq i64 %.sroa.6.0.copyload, %.neg
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.a, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %i.c = phi i64 [ %.sroa.44.0.copyload, %.lr.ph.i.i.new ], [ %i.q, %bb.b ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.j, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.b ]
  %i.d = or disjoint i64 %.sroa.0.015.i.i, 1
  %i.e = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.e
  %.val13.i.i = load i64, ptr %i.f, align 8, !noalias !1315, !noundef !5
  %.val14.i.i = load float, ptr %i.g, align 4, !noalias !1315, !noundef !5
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c ; 2 uses
  store i64 %.val13.i.i, ptr %i.h, align 8, !noalias !1316
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store float %.val14.i.i, ptr %i.i, align 8, !noalias !1316
  %i.j = add nuw i64 %.sroa.0.015.i.i, 2          ; 2 uses
  %i.k = add i64 %i.d, %.sroa.52.0.copyload       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %.val13.i.i.1 = load i64, ptr %i.l, align 8, !noalias !1315, !noundef !5
  %.val14.i.i.1 = load float, ptr %i.m, align 4, !noalias !1315, !noundef !5
  %i.n = getelementptr [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store i64 %.val13.i.i.1, ptr %i.o, align 8, !noalias !1316
  %i.p = getelementptr i8, ptr %i.n, i64 24
  store float %.val14.i.i.1, ptr %i.p, align 8, !noalias !1316
  %i.q = add i64 %i.c, 2                          ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa, label %bb.b

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi i64 [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.q, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.015.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.j, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod7)
  %i.r = add i64 %.sroa.0.015.i.i.epil.init, %.sroa.52.0.copyload ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.r
  %.val13.i.i.epil = load i64, ptr %i.s, align 8, !noalias !1315, !noundef !5
  %.val14.i.i.epil = load float, ptr %i.t, align 4, !noalias !1315, !noundef !5
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.65.0.copyload, i64 %.epil.init ; 2 uses
  store i64 %.val13.i.i.epil, ptr %i.u, align 8, !noalias !1316
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store float %.val14.i.i.epil, ptr %i.v, align 8, !noalias !1316
  %i.w = add i64 %.epil.init, 1
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.q, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteryEIBX_fEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRyRfETyfEuNCINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector11double_sortyfEs_0NCINvNvB1v_8for_each4callB2C_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecB2C_E14extend_trustedINtB2e_3MapBM_B2H_EE0E0E0ECs607s0NAIaWN_7segment.exit.loopexit.unr-lcssa ], [ %i.w, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !1315
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_IBY_INtNtB8_7flatten7FlattenINtNtBc_6option4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEEB1p_EB1p_EINtB1s_7FlatMapIB1O_NtB2G_9MinShouldERB27_NCNvMs2l_B2G_NtB2G_6Filter15iter_conditions0EENCNvB4h_24max_condition_input_size0ENtNtNtBa_6traits8iterator8Iterator4foldjNvYjNtNtBc_3cmp3Ord3maxEB2I_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(192) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef nonnull align 8 dereferenceable(192) %0, i64 192, i1 false)
  %i.b = call noundef i64 @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtB7_7flatten7FlattenINtNtBb_6option4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEEB18_EB18_EINtB1b_7FlatMapIB1x_NtB2p_9MinShouldERB1Q_NCNvMs2l_B2p_NtB2p_6Filter15iter_conditions0EENtNtNtB9_6traits8iterator8Iterator4foldjNCINvNtB7_3map8map_foldRB2n_jjNCNvB40_24max_condition_input_size0NvYjNtNtBb_3cmp3Ord3maxE0EB2r_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.a, i64 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTymEEENCNvMNtNtNtCs607s0NAIaWN_7segment10id_tracker10compressed20external_to_internalNtB2O_28CompressedExternalToInternal8num_iter0EIB1i_IB1M_IB2e_TNtCs4R3jSB693Zs_4uuid4UuidmEEENCNvB2N_9uuid_iter0EENCNvMNtB2Q_25compressed_point_mappingsNtB5V_23CompressedPointMappings13iter_external0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldNtNtB2U_5types15ExtendedPointIduNCINvMNtNtNtNtB2U_5index20struct_payload_index9read_view19condition_converterINtB90_26StructPayloadIndexReadViewNtNtNtB2U_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtB2S_15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB2U_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB94_11field_index16field_index_base11field_index10FieldIndexE19condition_converterBaG_Es3_0NCINvB1k_15filter_map_foldB8m_muNCB8U_s4_0NCINvB6_8map_foldmTmuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtBgy_7HashSetmNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB7i_7collect6ExtendmE6extendIB1i_INtB7X_6FilterINtCsgNzSnKyKfuE_6either6EitherIBY_IBO_INtNtNtCs9XvERIT2X68_9itertools8adaptors8coalesce10CoalesceByINtNtBjH_10merge_join7MergeByINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4KeysymEBl2_NtBkC_8MergeLteEINtBjD_22DedupPred2CoalescePredNtBjD_7DedupEqENtBjD_7NoCountENCNvMNtB2S_14point_mappingsNtBno_13PointMappings13iter_external0EIBO_IBjB_IBkA_IBl3_B51_mEBoA_Bm4_EBmk_Bn4_ENCBnl_s_0EEIBiY_BN_IBO_IBiK_INtNtNtNtB2S_15disk_id_tracker6reader4iter7E2iIterNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileENCNvNtBpC_8mappings11live_filter0ENCNvMs0_Brh_INtBrh_15DiskMappingsRefBqj_E13iter_external0EEEB8S_EBfS_EE0NCINvNvB7e_8for_each4callBgk_NCINvXs1i_NtBgA_3mapINtBty_7HashMapmuBhi_EIBi8_Bgk_E6extendIBO_BiE_Bgp_EE0E0E0E0E0EB2U_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterTymEEENCNvMNtNtNtCs607s0NAIaWN_7segment10id_tracker10compressed20external_to_internalNtB2x_28CompressedExternalToInternal8num_iter0EIB11_IB1v_IB1X_TNtCs4R3jSB693Zs_4uuid4UuidmEEENCNvB2w_9uuid_iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTNtNtB2D_5types15ExtendedPointIdmEB6B_uNCNvMNtB2z_25compressed_point_mappingsNtB7i_23CompressedPointMappings13iter_external0NCINvNtB7_6filter11filter_foldB6B_uNCINvMNtNtNtNtB2D_5index20struct_payload_index9read_view19condition_converterINtB9h_26StructPayloadIndexReadViewNtNtNtB2D_15payload_storage20payload_storage_enum18PayloadStorageEnumNtNtNtB2B_15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB2D_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB9l_11field_index16field_index_base11field_index10FieldIndexE19condition_converterBaX_Es3_0NCINvB13_15filter_map_foldB6B_muNCB9b_s4_0NCIB6g_mTmuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtBgF_7HashSetmNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB5D_7collect6ExtendmE6extendIB11_INtB8F_6FilterINtCsgNzSnKyKfuE_6either6EitherIBP_INtB6i_3MapINtNtNtCs9XvERIT2X68_9itertools8adaptors8coalesce10CoalesceByINtNtBjV_10merge_join7MergeByINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4KeysymEBlg_NtBkQ_8MergeLteEINtBjR_22DedupPred2CoalescePredNtBjR_7DedupEqENtBjR_7NoCountENCNvMNtB2B_14point_mappingsNtBnC_13PointMappings13iter_external0EIBjE_IBjP_IBkO_IBlh_B4K_mEBoP_Bmi_EBmy_Bni_ENCBnz_s_0EEIBj5_IBjE_BO_B7d_EIBjE_IBiR_INtNtNtNtB2B_15disk_id_tracker6reader4iter7E2iIterNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileENCNvNtBq2_8mappings11live_filter0ENCNvMs0_BrH_INtBrH_15DiskMappingsRefBqJ_E13iter_external0EEEB99_EBg9_EE0NCINvNvB5z_8for_each4callBgr_NCINvXs1i_NtBgH_3mapINtBtY_7HashMapmuBhp_EIBif_Bgr_E6extendIBjE_BiL_Bgw_EE0E0E0E0E0E0EB2D_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtNtBc_3ops5range5RangejEINtNtNtBa_7sources4once4OncejEENCNvXs0_NtCs9XvERIT2X68_9itertools12permutationsINtB2m_12PermutationsINtNtNtBc_5slice4iter4IterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtCsexYYUdYSQU6_5alloc3vec3VecfEEEENtNtNtBa_6traits8iterator8Iterator4next0EB5I_4folduNCINvNvB5I_8for_each4callRB3L_NCINvMsk_B59_IB57_B6W_E14extend_trustedBN_E0E0EB3U_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources4once4OncejEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldjRINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtCsexYYUdYSQU6_5alloc3vec3VecfEEuNCNvXs0_NtCs9XvERIT2X68_9itertools12permutationsINtB54_12PermutationsINtNtNtBb_5slice4iter4IterB30_EEB1X_4next0NCINvNvB1X_8for_each4callB2Z_NCINvMsk_B4o_IB4m_B2Z_E14extend_trustedINtB2G_3MapBO_B4W_EE0E0E0EB39_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtNtBc_3ops5range5RangejEINtNtNtBa_7sources4once4OncejEENCNvXs0_NtCs9XvERIT2X68_9itertools12permutationsINtB2m_12PermutationsINtNtNtBc_5slice4iter4IterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtNtB3U_10data_types7vectors21TypedMultiDenseVectorfEEEENtNtNtBa_6traits8iterator8Iterator4next0EB63_4folduNCINvNvB63_8for_each4callRB3L_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7v_3VecB7h_E14extend_trustedBN_E0E0EB3U_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources4once4OncejEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldjRINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtNtB39_10data_types7vectors21TypedMultiDenseVectorfEEuNCNvXs0_NtCs9XvERIT2X68_9itertools12permutationsINtB5p_12PermutationsINtNtNtBb_5slice4iter4IterB30_EEB1X_4next0NCINvNvB1X_8for_each4callB2Z_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7G_3VecB2Z_E14extend_trustedINtB2G_3MapBO_B5h_EE0E0E0EB39_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtNtBc_3ops5range5RangejEINtNtNtBa_7sources4once4OncejEENCNvXs0_NtCs9XvERIT2X68_9itertools12permutationsINtB2m_12PermutationsINtNtNtBc_5slice4iter4IterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorEEENtNtNtBa_6traits8iterator8Iterator4next0EB6a_4folduNCINvNvB6a_8for_each4callRB3L_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7C_3VecB7o_E14extend_trustedBN_E0E0EB3U_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources4once4OncejEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldjRINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorEuNCNvXs0_NtCs9XvERIT2X68_9itertools12permutationsINtB5w_12PermutationsINtNtNtBb_5slice4iter4IterB30_EEB1X_4next0NCINvNvB1X_8for_each4callB2Z_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7N_3VecB2Z_E14extend_trustedINtB2G_3MapBO_B5o_EE0E0E0EB39_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12entry_points10EntryPointENCNCINvMs1_B27_NtB27_11EntryPoints15get_entry_pointNCNCNvMs0_NtB29_12graph_layersNtB4h_11GraphLayers15get_entry_points_00Es_00EENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyB25_jNCB3k_s_0E0EB5t_4foldINtNtBc_3cmp11KeyAndValuejB25_ENvYB6H_NtB6K_3Ord3maxEB2d_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12entry_points10EntryPointENCNCINvMs1_B1Q_NtB1Q_11EntryPoints15get_entry_pointNCNCNvMs0_NtB1S_12graph_layersNtB40_11GraphLayers15get_entry_points_00Es_00EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejB1O_ENCINvNtB7_3map8map_foldB1O_B5I_B5I_NCINvNvB55_10max_by_key3keyB1O_jNCB33_s_0E0NvYB5I_NtB5L_3Ord3maxE0EB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12entry_points10EntryPointENCNCINvMs1_B27_NtB27_11EntryPoints15get_entry_pointNCNvMs_NtB29_20graph_layers_builderNtB4e_18GraphLayersBuilder14link_new_point0Es_00EENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyB25_jNCB3k_s_0E0EB5B_4foldINtNtBc_3cmp11KeyAndValuejB25_ENvYB6P_NtB6S_3Ord3maxEB2d_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtNtNtCs607s0NAIaWN_7segment5index10hnsw_index12entry_points10EntryPointENCNCINvMs1_B1Q_NtB1Q_11EntryPoints15get_entry_pointNCNvMs_NtB1S_20graph_layers_builderNtB3X_18GraphLayersBuilder14link_new_point0Es_00EENtNtNtB9_6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejB1O_ENCINvNtB7_3map8map_foldB1O_B5Q_B5Q_NCINvNvB5d_10max_by_key3keyB1O_jNCB33_s_0E0NvYB5Q_NtB5T_3Ord3maxE0EB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types8GeoPointEENvYTddEINtNtBc_7convert4FromB1J_E4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB33_8for_each4callB2t_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4j_3VecB2t_E14extend_trustedBN_E0E0EB1N_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types8GeoPointEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TddEuNvYB3e_INtNtBb_7convert4FromB1s_E4fromNCINvNvB29_8for_each4callB3e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecB3e_E14extend_trustedINtB2S_3MapBP_B3j_EE0E0E0EB1w_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17on_disk_geo_index6CountsEENvYNtNtB1N_19immutable_geo_index6CountsINtNtBc_7convert4FromB1J_E4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4j_8for_each4callB3d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5z_3VecB3d_E14extend_trustedBN_E0E0EB1T_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17on_disk_geo_index6CountsEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtB1w_19immutable_geo_index6CountsuNvYB3Y_INtNtBb_7convert4FromB1s_E4fromNCINvNvB2T_8for_each4callB3Y_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5N_3VecB3Y_E14extend_trustedINtB3C_3MapBP_B4z_EE0E0E0EB1C_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItermEENvYyINtNtBc_7convert4FrommE4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2j_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3w_3VecyE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmyuNvYyINtNtBb_7convert4FrommE4fromNCINvNvB1v_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3E_3VecyE14extend_trustedINtB2e_3MapBP_B2z_EE0E0E0ECs607s0NAIaWN_7segment(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtCsgNzSnKyKfuE_6either6EitherIBO_INtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemxEL_EEENcNtNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValue3Int0EIBO_IB1T_IB2h_IB2F_DB3e_p4ItemdEL_EEENcNtB43_5Float0EENCNCNvMNtNtNtB49_7segment9read_view8order_byINtB69_15SegmentReadViewNtNtNtNtB49_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB49_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB49_15payload_storage20payload_storage_enum18PayloadStorageEnumB76_NtNtNtB49_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB8l_11field_index16field_index_base11field_index10FieldIndexEB9v_NtB6b_10VectorDataE30filtered_read_by_index_ordereds_00ENCB62_s_0EB3e_8try_folduQNCINvNvB3e_8find_map5checkTB43_mETBeF_NtNtB49_5types15ExtendedPointIdEQNCB64_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowBeL_EEB49_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1345
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.g, ptr %i.e, align 8, !noalias !1345
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveNtNtCseUPaKcRZYeZ_4half8binary163f16NtB1w_22PrimitiveVectorElement20slice_from_float_cow0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB2i_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB50_3VecB2i_E14extend_trustedBN_E0E0EB1A_:bb.a
  %.sroa.03.0.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %spec.select.i.i.i.i, %bb.m ]
  %i.be = or i32 %.sroa.03.0.i.i.i.i, %i.y
  %i.bf = trunc nuw i32 %i.be to i16
  br label %bb.p

bb.o:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i
  %i.bg = tail call fastcc noundef i16 @_RNvNtNtNtCseUPaKcRZYeZ_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.g) #40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i = phi i16 [ %i.bg, %bb.o ], [ %i.x, %bb.e ], [ %i.ad, %bb.h ], [ %i.ay, %bb.l ], [ %i.bf, %bb.n ], [ %spec.select7.i.i.i.i, %bb.i ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %.sroa.0.0.i.i.i, ptr %i.bh, align 2, !noalias !10249
  %i.bi = add i64 %.val10.i, 1                    ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.e
  br i1 %i.bk, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5d_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit, label %bb.c

bb.q:                                             ; preds = %.split.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !10248
  resume { ptr, i32 } %i.bl

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement20slice_from_float_cow0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5d_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bi, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10248
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveNtNtCseUPaKcRZYeZ_4half8binary163f16NtB1w_22PrimitiveVectorElement22from_float_multivector0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3M_8for_each4callB2i_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB52_3VecB2i_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bi, %bb.p ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bj, %bb.p ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10262)
  %i.g = load float, ptr %i.f, align 4, !alias.scope !10263, !noalias !10264, !noundef !5 ; 2 uses
  %i.h = load atomic i64, ptr @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !10265 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.split.i.i.i, label %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, !prof !31

.split.i.i.i:                                     ; preds = %bb.c
  %i.j = invoke noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i unwind label %bb.q, !noalias !10266

.noexc.i:                                         ; preds = %.split.i.i.i
  %i.k = and i128 %i.j, 18014398509481984
  %.not1.i.i.i = icmp eq i128 %i.k, 0
  br i1 %.not1.i.i.i, label %bb.d, label %bb.o

_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.c
  %i.l = and i64 %i.h, 18014398509481984
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i
  %i.m = bitcast float %i.g to i32                ; 5 uses
  %i.n = and i32 %i.m, -2147483648                ; 2 uses
  %i.o = and i32 %i.m, 2139095040                 ; 6 uses
  %i.p = and i32 %i.m, 8388607                    ; 4 uses
  %i.q = icmp eq i32 %i.o, 2139095040
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.p, 0
  %..i.i.i.i = select i1 %i.r, i32 0, i32 512
  %i.s = lshr exact i32 %i.n, 16
  %i.t = lshr i32 %i.p, 13
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = or i32 %i.u, %..i.i.i.i
  %i.w = trunc nuw i32 %i.v to i16
  %i.x = or disjoint i16 %i.w, 31744
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.y = lshr exact i32 %i.n, 16                  ; 4 uses
  %i.z = lshr exact i32 %i.o, 23                  ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.o, 1191182336
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i32 %i.o, 947912704
  br i1 %i.ab, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = trunc nuw i32 %i.y to i16
  %i.ad = or disjoint i16 %i.ac, 31744
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ae = lshr exact i32 %i.o, 13
  %i.af = add nuw nsw i32 %i.ae, 16384
  %i.ag = lshr i32 %i.p, 13
  %i.ah = and i32 %i.m, 4096
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = and i32 %i.m, 12287
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond.not.i.i.i.i = and i1 %i.ai, %i.ak
  %i.al = or disjoint i32 %i.af, %i.ag
  %i.am = or i32 %i.al, %i.y
  %i.an = trunc i32 %i.am to i16
  %i.ao = zext i1 %or.cond.not.i.i.i.i to i16
  %spec.select7.i.i.i.i = add i16 %i.an, %i.ao
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.ap = icmp samesign ult i32 %i.o, 855638016
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = sub nsw i32 126, %i.z
  %i.ar = or disjoint i32 %i.p, 8388608           ; 3 uses
  %i.as = lshr i32 %i.ar, %i.aq                   ; 2 uses
  %i.at = sub nsw i32 29, %i.z
  %i.au = and i32 %i.at, 31                       ; 2 uses
  %i.av = shl nuw i32 1, %i.au
  %i.aw = and i32 %i.av, %i.ar
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ay = trunc nuw i32 %i.y to i16
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.az = shl i32 3, %i.au
  %i.ba = add nuw i32 %i.az, 16777215
  %i.bb = and i32 %i.ba, %i.ar
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.as, %i.bd
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i = phi i32 [ %i.as, %bb.k ], [ %spec.select.i.i.i.i, %bb.m ]
  %i.be = or i32 %.sroa.03.0.i.i.i.i, %i.y
  %i.bf = trunc nuw i32 %i.be to i16
  br label %bb.p

bb.o:                                             ; preds = %_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i
  %i.bg = tail call fastcc noundef i16 @_RNvNtNtNtCseUPaKcRZYeZ_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.g) #40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i = phi i16 [ %i.bg, %bb.o ], [ %i.x, %bb.e ], [ %i.ad, %bb.h ], [ %i.ay, %bb.l ], [ %i.bf, %bb.n ], [ %spec.select7.i.i.i.i, %bb.i ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %.sroa.0.0.i.i.i, ptr %i.bh, align 2, !noalias !10267
  %i.bi = add i64 %.val10.i, 1                    ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.e
  br i1 %i.bk, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit, label %bb.c

bb.q:                                             ; preds = %.split.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !10266
  resume { ptr, i32 } %i.bl

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfNtNtCseUPaKcRZYeZ_4half8binary163f16uNCNvXs_NtNtCs607s0NAIaWN_7segment10data_types9primitiveB2d_NtB2V_22PrimitiveVectorElement22from_float_multivector0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5f_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2Z_.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bi, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10266
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement18slice_to_float_cow0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3a_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4n_3VecfE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.e = shl i64 %.sroa.5.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.f = add i64 %.sroa.5.0.copyload, %i.b
  %i.g = sub i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 2
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load = load <4 x i8>, ptr %i.k, align 1, !alias.scope !10282, !noalias !10283
  %wide.load4 = load <4 x i8>, ptr %i.l, align 1, !alias.scope !10282, !noalias !10283
  %i.m = uitofp <4 x i8> %wide.load to <4 x float>
  %i.n = uitofp <4 x i8> %wide.load4 to <4 x float>
  %i.o = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x float> %i.m, ptr %i.o, align 4, !alias.scope !10284, !noalias !10285
  store <4 x float> %i.n, ptr %i.p, align 4, !alias.scope !10284, !noalias !10285
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !10279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %3 = sub i64 %i.b, %i.c
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.r = phi i64 [ %i.v, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i8, ptr %i.s, align 1, !noalias !10283, !noundef !5
  %i.t = uitofp i8 %.val15.i.prol to float
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.r
  store float %i.t, ptr %i.u, align 4, !noalias !10286
  %i.v = add i64 %i.r, 1                          ; 3 uses
  %i.w = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !10280

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub i64 %.sroa.01.0.i.ph, %i.b
  %i.y = add i64 %i.x, %i.c
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aa = phi i64 [ %i.at, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ab, align 1, !noalias !10283, !noundef !5
  %i.ac = uitofp i8 %.val15.i to float
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  store float %i.ac, ptr %i.ad, align 4, !noalias !10286
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.val15.i.1 = load i8, ptr %i.af, align 1, !noalias !10283, !noundef !5
  %i.ag = uitofp i8 %.val15.i.1 to float
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store float %i.ag, ptr %i.ai, align 4, !noalias !10286
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.val15.i.2 = load i8, ptr %i.ak, align 1, !noalias !10283, !noundef !5
  %i.al = uitofp i8 %.val15.i.2 to float
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store float %i.al, ptr %i.an, align 4, !noalias !10286
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %.val15.i.3 = load i8, ptr %i.ap, align 1, !noalias !10283, !noundef !5
  %i.aq = uitofp i8 %.val15.i.3 to float
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.as = getelementptr i8, ptr %i.ar, i64 12
  store float %i.aq, ptr %i.as, align 4, !noalias !10286
  %i.at = add i64 %i.aa, 4                        ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.d
  br i1 %i.av, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !10281

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement18slice_to_float_cow0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4x_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10283
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement22into_float_multivector0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3e_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4r_3VecfE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22into_float_multivector0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.e = shl i64 %.sroa.5.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.f = add i64 %.sroa.5.0.copyload, %i.b
  %i.g = sub i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 2
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load = load <4 x i8>, ptr %i.k, align 1, !alias.scope !10301, !noalias !10302
  %wide.load4 = load <4 x i8>, ptr %i.l, align 1, !alias.scope !10301, !noalias !10302
  %i.m = uitofp <4 x i8> %wide.load to <4 x float>
  %i.n = uitofp <4 x i8> %wide.load4 to <4 x float>
  %i.o = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x float> %i.m, ptr %i.o, align 4, !alias.scope !10303, !noalias !10304
  store <4 x float> %i.n, ptr %i.p, align 4, !alias.scope !10303, !noalias !10304
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !10298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22into_float_multivector0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %3 = sub i64 %i.b, %i.c
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.r = phi i64 [ %i.v, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i8, ptr %i.s, align 1, !noalias !10302, !noundef !5
  %i.t = uitofp i8 %.val15.i.prol to float
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.r
  store float %i.t, ptr %i.u, align 4, !noalias !10305
  %i.v = add i64 %i.r, 1                          ; 3 uses
  %i.w = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !10299

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub i64 %.sroa.01.0.i.ph, %i.b
  %i.y = add i64 %i.x, %i.c
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22into_float_multivector0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aa = phi i64 [ %i.at, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ab, align 1, !noalias !10302, !noundef !5
  %i.ac = uitofp i8 %.val15.i to float
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  store float %i.ac, ptr %i.ad, align 4, !noalias !10305
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.val15.i.1 = load i8, ptr %i.af, align 1, !noalias !10302, !noundef !5
  %i.ag = uitofp i8 %.val15.i.1 to float
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store float %i.ag, ptr %i.ai, align 4, !noalias !10305
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.val15.i.2 = load i8, ptr %i.ak, align 1, !noalias !10302, !noundef !5
  %i.al = uitofp i8 %.val15.i.2 to float
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store float %i.al, ptr %i.an, align 4, !noalias !10305
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %.val15.i.3 = load i8, ptr %i.ap, align 1, !noalias !10302, !noundef !5
  %i.aq = uitofp i8 %.val15.i.3 to float
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.as = getelementptr i8, ptr %i.ar, i64 12
  store float %i.aq, ptr %i.as, align 4, !noalias !10305
  %i.at = add i64 %i.aa, 4                        ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.d
  br i1 %i.av, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22into_float_multivector0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !10300

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement22into_float_multivector0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4B_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10302
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement23quantization_preprocess0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4s_3VecfE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocess0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.e = shl i64 %.sroa.5.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.f = add i64 %.sroa.5.0.copyload, %i.b
  %i.g = sub i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 2
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load = load <4 x i8>, ptr %i.k, align 1, !alias.scope !10319, !noalias !10320
  %wide.load4 = load <4 x i8>, ptr %i.l, align 1, !alias.scope !10319, !noalias !10320
  %i.m = uitofp <4 x i8> %wide.load to <4 x float>
  %i.n = uitofp <4 x i8> %wide.load4 to <4 x float>
  %i.o = fadd <4 x float> %i.m, splat (float -1.270000e+02)
  %i.p = fadd <4 x float> %i.n, splat (float -1.270000e+02)
  %i.q = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x float> %i.o, ptr %i.q, align 4, !alias.scope !10321, !noalias !10322
  store <4 x float> %i.p, ptr %i.r, align 4, !alias.scope !10321, !noalias !10322
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !10317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocess0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %3 = sub i64 %i.b, %i.c
  %i.t = xor i64 %.sroa.01.0.i.ph, -1
  %i.u = add i64 %i.t, %i.b
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load i8, ptr %i.v, align 1, !noalias !10320, !noundef !5
  %i.w = uitofp i8 %.val15.i.prol to float
  %i.x = fadd float %i.w, -1.270000e+02
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %i.x, ptr %i.y, align 4, !noalias !10323
  %i.z = add i64 %.ph, 1                          ; 2 uses
  %i.aa = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = icmp eq i64 %i.u, %i.c
  br i1 %i.ab, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocess0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.an, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ao, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ad, align 1, !noalias !10320, !noundef !5
  %i.ae = uitofp i8 %.val15.i to float
  %i.af = fadd float %i.ae, -1.270000e+02
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store float %i.af, ptr %i.ag, align 4, !noalias !10323
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.val15.i.1 = load i8, ptr %i.ai, align 1, !noalias !10320, !noundef !5
  %i.aj = uitofp i8 %.val15.i.1 to float
  %i.ak = fadd float %i.aj, -1.270000e+02
  %i.al = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 4
  store float %i.ak, ptr %i.am, align 4, !noalias !10323
  %i.an = add i64 %i.ac, 2                        ; 2 uses
  %i.ao = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.d
  br i1 %i.ap, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocess0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !10318

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocess0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4C_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.an, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10320
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB1x_22PrimitiveVectorElement23quantization_preprocesss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3h_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4u_3VecfE14extend_trustedBN_E0E0EB1B_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4E_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.e = shl i64 %.sroa.5.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.e
  %i.f = add i64 %.sroa.5.0.copyload, %i.b
  %i.g = sub i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 2
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, -8                       ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %wide.load = load <4 x i8>, ptr %i.k, align 1, !alias.scope !10338, !noalias !10339
  %wide.load4 = load <4 x i8>, ptr %i.l, align 1, !alias.scope !10338, !noalias !10339
  %i.m = uitofp <4 x i8> %wide.load to <4 x float>
  %i.n = uitofp <4 x i8> %wide.load4 to <4 x float>
  %i.o = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x float> %i.m, ptr %i.o, align 4, !alias.scope !10340, !noalias !10341
  store <4 x float> %i.n, ptr %i.p, align 4, !alias.scope !10340, !noalias !10341
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !10335

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4E_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %3 = sub i64 %i.b, %i.c
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.r = phi i64 [ %i.v, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i8, ptr %i.s, align 1, !noalias !10339, !noundef !5
  %i.t = uitofp i8 %.val15.i.prol to float
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.r
  store float %i.t, ptr %i.u, align 4, !noalias !10342
  %i.v = add i64 %i.r, 1                          ; 3 uses
  %i.w = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !10336

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub i64 %.sroa.01.0.i.ph, %i.b
  %i.y = add i64 %i.x, %i.c
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4E_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aa = phi i64 [ %i.at, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.au, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.ab, align 1, !noalias !10339, !noundef !5
  %i.ac = uitofp i8 %.val15.i to float
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  store float %i.ac, ptr %i.ad, align 4, !noalias !10342
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.val15.i.1 = load i8, ptr %i.af, align 1, !noalias !10339, !noundef !5
  %i.ag = uitofp i8 %.val15.i.1 to float
  %i.ah = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  store float %i.ag, ptr %i.ai, align 4, !noalias !10342
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.val15.i.2 = load i8, ptr %i.ak, align 1, !noalias !10339, !noundef !5
  %i.al = uitofp i8 %.val15.i.2 to float
  %i.am = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store float %i.al, ptr %i.an, align 4, !noalias !10342
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %.val15.i.3 = load i8, ptr %i.ap, align 1, !noalias !10339, !noundef !5
  %i.aq = uitofp i8 %.val15.i.3 to float
  %i.ar = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.as = getelementptr i8, ptr %i.ar, i64 12
  store float %i.aq, ptr %i.as, align 4, !noalias !10342
  %i.at = add i64 %i.aa, 4                        ; 2 uses
  %i.au = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.av = icmp eq i64 %i.au, %i.d
  br i1 %i.av, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4E_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit, label %scalar.ph, !llvm.loop !10337

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhfuNCNvXs0_NtNtCs607s0NAIaWN_7segment10data_types9primitivehNtB2n_22PrimitiveVectorElement23quantization_preprocesss_0NCINvNvBS_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4E_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2r_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10339
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvMs_NtCs9XvERIT2X68_9itertools11lazy_bufferINtB1w_10LazyBufferIBY_INtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtCsexYYUdYSQU6_5alloc3vec3VecfEEEE6get_at0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4C_8for_each4callRB2w_NCINvMsk_B3U_IB3S_B5F_E14extend_trustedBN_E0E0EB2F_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !11, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjRINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtCsexYYUdYSQU6_5alloc3vec3VecfEEuNCNvMs_NtCs9XvERIT2X68_9itertools11lazy_bufferINtB4h_10LazyBufferIBG_B2e_EE6get_at0NCINvNvBS_8for_each4callB2d_NCINvMsk_B3C_IB3A_B2d_E14extend_trustedINtB1I_3MapBF_B4a_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.u, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.k, align 8, !noalias !10355, !noundef !5 ; 3 uses
  %i.l = load ptr, ptr %i.e, align 8, !noalias !10356, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !10356, !noundef !5 ; 2 uses
  %i.o = icmp ult i64 %.val15.i, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val15.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #39
          to label %.noexc.i unwind label %bb.f, !noalias !10355

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !10356, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.val15.i
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !10357, !noalias !10356, !nonnull !5, !align !11, !noundef !5
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %i.s, ptr %i.t, align 8, !noalias !10358, !captures !37
  %i.u = add i64 %.val10.i, 1                     ; 2 uses
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.j
  br i1 %i.w, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjRINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtCsexYYUdYSQU6_5alloc3vec3VecfEEuNCNvMs_NtCs9XvERIT2X68_9itertools11lazy_bufferINtB4h_10LazyBufferIBG_B2e_EE6get_at0NCINvNvBS_8for_each4callB2d_NCINvMsk_B3C_IB3A_B2d_E14extend_trustedINtB1I_3MapBF_B4a_EE0E0E0EB2n_.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !10355
  resume { ptr, i32 } %i.x

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjRINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtCsexYYUdYSQU6_5alloc3vec3VecfEEuNCNvMs_NtCs9XvERIT2X68_9itertools11lazy_bufferINtB4h_10LazyBufferIBG_B2e_EE6get_at0NCINvNvBS_8for_each4callB2d_NCINvMsk_B3C_IB3A_B2d_E14extend_trustedINtB1I_3MapBF_B4a_EE0E0E0EB2n_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10355
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvMs_NtCs9XvERIT2X68_9itertools11lazy_bufferINtB1w_10LazyBufferIBY_INtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtNtB2F_10data_types7vectors21TypedMultiDenseVectorfEEEE6get_at0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4X_8for_each4callRB2w_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6e_3VecB60_E14extend_trustedBN_E0E0EB2F_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !11, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjRINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtNtB2n_10data_types7vectors21TypedMultiDenseVectorfEEuNCNvMs_NtCs9XvERIT2X68_9itertools11lazy_bufferINtB4C_10LazyBufferIBG_B2e_EE6get_at0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB2d_E14extend_trustedINtB1I_3MapBF_B4v_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.u, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.k, align 8, !noalias !10371, !noundef !5 ; 3 uses
  %i.l = load ptr, ptr %i.e, align 8, !noalias !10372, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !10372, !noundef !5 ; 2 uses
  %i.o = icmp ult i64 %.val15.i, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val15.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #39
          to label %.noexc.i unwind label %bb.f, !noalias !10371

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !10372, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.val15.i
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !10373, !noalias !10372, !nonnull !5, !align !11, !noundef !5
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %i.s, ptr %i.t, align 8, !noalias !10374, !captures !37
  %i.u = add i64 %.val10.i, 1                     ; 2 uses
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.j
  br i1 %i.w, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjRINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtNtB2n_10data_types7vectors21TypedMultiDenseVectorfEEuNCNvMs_NtCs9XvERIT2X68_9itertools11lazy_bufferINtB4C_10LazyBufferIBG_B2e_EE6get_at0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB2d_E14extend_trustedINtB1I_3MapBF_B4v_EE0E0E0EB2n_.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !10371
  resume { ptr, i32 } %i.x

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjRINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemINtNtNtB2n_10data_types7vectors21TypedMultiDenseVectorfEEuNCNvMs_NtCs9XvERIT2X68_9itertools11lazy_bufferINtB4C_10LazyBufferIBG_B2e_EE6get_at0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB2d_E14extend_trustedINtB1I_3MapBF_B4v_EE0E0E0EB2n_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !10371
  ret void
end_hunk_1
