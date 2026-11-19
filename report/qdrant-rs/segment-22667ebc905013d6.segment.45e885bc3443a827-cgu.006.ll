Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.006?download=true
inline.NumInlined: 5529
inline.NumDeleted: 3142
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCscWxIONKqP3w_10cgroups_rs2fs9SubsystemENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1L_8adapters3map12map_try_foldBX_BX_B2J_INtNtB1N_6result6ResultB2J_zENCINvMs0_NtBZ_6cgroupNtB4N_6Cgroup4loadReE0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4b_ECs607s0NAIaWN_7segment:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3456
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCscWxIONKqP3w_10cgroups_rs2fs9SubsystemBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1J_zENCINvMs0_NtB11_6cgroupNtB3l_6Cgroup4loadReE0NCINvNtB1O_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs607s0NAIaWN_7segment.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.011, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !3456
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.011, i64 80 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.l, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCscWxIONKqP3w_10cgroups_rs2fs9SubsystemBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1J_zENCINvMs0_NtB11_6cgroupNtB3l_6Cgroup4loadReE0NCINvNtB1O_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs607s0NAIaWN_7segment.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map12map_try_foldNtNtCscWxIONKqP3w_10cgroups_rs2fs9SubsystemBZ_INtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1J_zENCINvMs0_NtB11_6cgroupNtB3l_6Cgroup4loadReE0NCINvNtB1O_16in_place_collect24write_in_place_with_dropBZ_E0E0Cs607s0NAIaWN_7segment.exit ]
  %i.r = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.s = insertvalue { ptr, ptr } %i.r, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters10filter_map15filter_map_foldBX_TNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdBX_EuNCNvMNtNtNtB3K_7segment9read_view6searchINtB4F_15SegmentReadViewNtNtNtNtB3K_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB3K_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB3K_15payload_storage20payload_storage_enum18PayloadStorageEnumB5A_NtNtNtB3K_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB6P_11field_index16field_index_base11field_index10FieldIndexEB7Z_NtB4H_10VectorDataE21process_search_results0_0NCINvNvB1M_8for_each4callB3F_NCINvNvNtB1Q_7collect14default_extend8extenderTINtB8_3VecB3G_EIBdo_BX_EEB3F_E0E0E0EB3K_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 4                 ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.g, align 8        ; 3 uses
  %.not.not12 = icmp eq ptr %.promoted, %i.f
  br i1 %.not.not12, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEECs607s0NAIaWN_7segment.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3475, !noalias !3476, !noundef !7
  %i.k = icmp eq i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load i64, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i.i.i = load i64, ptr %i.m, align 8
  %i.n = zext i64 %.val.i.i.i to i128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !nonnull !7   ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br i1 %i.k, label %_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i.us, label %.lr.ph.split

_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i.us: ; preds = %.lr.ph, %_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i.us
  %i.r = phi ptr [ %i.s, %_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i.us ], [ %.promoted, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.not.us = icmp eq ptr %i.s, %i.f
  br i1 %.not.not.us, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEECs607s0NAIaWN_7segment.exit, label %_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdB1a_EuNCNvMNtNtNtB23_7segment9read_view6searchINtB2Z_15SegmentReadViewNtNtNtNtB23_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB23_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB23_15payload_storage20payload_storage_enum18PayloadStorageEnumB3U_NtNtNtB23_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB59_11field_index16field_index_base11field_index10FieldIndexEB6j_NtB31_10VectorDataE21process_search_results0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvNvNtBaE_7collect14default_extend8extenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecB1Z_EIBcc_B1a_EEB1Y_E0E0E0B23_.exit
  %i.t = phi ptr [ %i.x, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdB1a_EuNCNvMNtNtNtB23_7segment9read_view6searchINtB2Z_15SegmentReadViewNtNtNtNtB23_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB23_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB23_15payload_storage20payload_storage_enum18PayloadStorageEnumB3U_NtNtNtB23_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB59_11field_index16field_index_base11field_index10FieldIndexEB6j_NtB31_10VectorDataE21process_search_results0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvNvNtBaE_7collect14default_extend8extenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecB1Z_EIBcc_B1a_EEB1Y_E0E0E0B23_.exit ], [ %.promoted, %.lr.ph ] ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !noundef !7 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !noundef !7 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.u, ptr %i.c, align 4, !noalias !3476
  store float %i.w, ptr %i.h, align 4, !noalias !3476
  call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  %i.y = zext i32 %i.u to i64
  %i.z = xor i64 %.val5.i.i.i, %i.y
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 6364136223846793005 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %.masked.i.i.i.i.i.i.i = and i128 %i.ab, 18446744073709551615
  %i.ad = xor i128 %i.ac, %.masked.i.i.i.i.i.i.i
  %i.ae = mul nuw i128 %i.ad, %i.n                ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae
  %i.ah = trunc i128 %i.ag to i64                 ; 2 uses
  %i.ai = lshr i64 %i.ah, 57
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %i.ak = insertelement <16 x i8> poison, i8 %i.aj, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.split
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split ], [ %i.bc, %bb.d ]
  %.pn.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.split ], [ %i.bd, %bb.d ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.p ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.am, align 1, !noalias !3477 ; 2 uses
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.al
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.bb, %bb.c ], [ %i.ao, %bb.b ] ; 3 uses
  %i.ap = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = add i64 %.sroa.01.0.i.i.i.i.i, %i.aq
  %i.as = and i64 %i.ar, %i.p
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -32
  %i.aw = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownmINtB2_10EquivalentmE10equivalentCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.lr.ph.i.i.i.i
  br i1 %i.aw, label %bb.e, label %bb.c, !prof !27

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.ax = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.d, label %_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i, !prof !22

bb.c:                                             ; preds = %.noexc
  %i.ba = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.bb = and i16 %i.ba, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bc = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.bd = add i64 %.sroa.01.0.i.i.i.i.i, %i.bc
  br label %bb.b

bb.e:                                             ; preds = %.noexc
  %i.be = getelementptr inbounds i8, ptr %i.au, i64 -24
  %.sroa.05.0.copyload.i.i = load i8, ptr %i.be, align 8, !noalias !3476 ; 2 uses
  %.not11.i.i = icmp eq i8 %.sroa.05.0.copyload.i.i, 2
  br i1 %.not11.i.i, label %_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i, label %bb.f

_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i: ; preds = %._crit_edge.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdB1a_EuNCNvMNtNtNtB23_7segment9read_view6searchINtB2Z_15SegmentReadViewNtNtNtNtB23_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB23_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB23_15payload_storage20payload_storage_enum18PayloadStorageEnumB3U_NtNtNtB23_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB59_11field_index16field_index_base11field_index10FieldIndexEB6j_NtB31_10VectorDataE21process_search_results0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvNvNtBaE_7collect14default_extend8extenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecB1Z_EIBcc_B1a_EEB1Y_E0E0E0B23_.exit

bb.f:                                             ; preds = %bb.e
  %.sroa.46.0..sroa.03.0.4.sroa_idx.i.i = getelementptr inbounds i8, ptr %i.au, i64 -23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.44.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.46.0..sroa.03.0.4.sroa_idx.i.i, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 %.sroa.05.0.copyload.i.i, ptr %i.b, align 8
  store i32 %i.u, ptr %.sroa.55.0..sroa_idx.i, align 8
  store float %i.w, ptr %.sroa.66.0..sroa_idx.i, align 4
  invoke void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core4iter6traits7collectTINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEIBQ_NtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEEINtB5_6ExtendTB1m_B2e_EE10extend_oneB1q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3478
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdB1a_EuNCNvMNtNtNtB23_7segment9read_view6searchINtB2Z_15SegmentReadViewNtNtNtNtB23_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB23_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB23_15payload_storage20payload_storage_enum18PayloadStorageEnumB3U_NtNtNtB23_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB59_11field_index16field_index_base11field_index10FieldIndexEB6j_NtB31_10VectorDataE21process_search_results0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvNvNtBaE_7collect14default_extend8extenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecB1Z_EIBcc_B1a_EEB1Y_E0E0E0B23_.exit

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdB1a_EuNCNvMNtNtNtB23_7segment9read_view6searchINtB2Z_15SegmentReadViewNtNtNtNtB23_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB23_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB23_15payload_storage20payload_storage_enum18PayloadStorageEnumB3U_NtNtNtB23_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB59_11field_index16field_index_base11field_index10FieldIndexEB6j_NtB31_10VectorDataE21process_search_results0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvNvNtBaE_7collect14default_extend8extenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecB1Z_EIBcc_B1a_EEB1Y_E0E0E0B23_.exit: ; preds = %_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i, %.noexc7
  %.not.not = icmp eq ptr %i.x, %i.f
  br i1 %.not.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEECs607s0NAIaWN_7segment.exit, label %.lr.ph.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEECs607s0NAIaWN_7segment.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map15filter_map_foldNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdB1a_EuNCNvMNtNtNtB23_7segment9read_view6searchINtB2Z_15SegmentReadViewNtNtNtNtB23_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtB23_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB23_15payload_storage20payload_storage_enum18PayloadStorageEnumB3U_NtNtNtB23_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB59_11field_index16field_index_base11field_index10FieldIndexEB6j_NtB31_10VectorDataE21process_search_results0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Y_NCINvNvNtBaE_7collect14default_extend8extenderTINtNtCsexYYUdYSQU6_5alloc3vec3VecB1Z_EIBcc_B1a_EEB1Y_E0E0E0B23_.exit, %_RNCNvMNtNtNtCs607s0NAIaWN_7segment7segment9read_view6searchINtB6_15SegmentReadViewNtNtNtNtBa_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumINtNtNtNtBa_5index20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBa_15payload_storage20payload_storage_enum18PayloadStorageEnumB1i_NtNtNtBa_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtNtB2w_11field_index16field_index_base11field_index10FieldIndexEB3F_NtB8_10VectorDataE21process_search_results0_0Ba_.exit.thread.i.us, %bb.a
  %i.bf = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.bh, ptr %i.d, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bf, ptr %i.bi, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i, %bb.f
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  %.val5 = load ptr, ptr %0, align 8, !alias.scope !3479, !nonnull !7, !noundef !7
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.bj, align 8, !alias.scope !3479, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3480
  store i64 %.val6, ptr %i.a, align 8, !noalias !3480
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val5, ptr %i.bk, align 8, !noalias !3480
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEECs607s0NAIaWN_7segment.exit unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEECs607s0NAIaWN_7segment.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3480
  resume { ptr, i32 } %lpad.loopexit.split-lp26

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNvXs_NtNtB1S_8adapters4takeINtB3E_4TakepEB1M_8try_fold5checkBX_B2Q_INtNtB1U_6result6ResultB2Q_zENCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0INtNtNtB1U_3ops12control_flow11ControlFlowB4E_B2Q_EECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef readnone captures(none) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 9 uses
  %.promoted18 = ptrtoaddr ptr %.promoted to i64  ; 3 uses
  %.promoted14 = load i64, ptr %4, align 8
  %.promoted14.fr = freeze i64 %.promoted14       ; 7 uses
  %i.e = add i64 %.promoted14.fr, -1              ; 2 uses
  %i.f = sub i64 %i.c, %.promoted18               ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.g) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.h, 54
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.a
  %i.i = sub i64 %i.c, %.promoted18
  %i.j = and i64 %i.i, 7
  %ident.check = icmp ne i64 %i.j, 0
  %6 = add i64 %.promoted14.fr, -1
  %7 = sub i64 %i.c, %.promoted18
  %8 = lshr i64 %7, 3
  %umin = tail call i64 @llvm.umin.i64(i64 %6, i64 %8)
  %mul = shl nuw i64 %umin, 3
  %9 = getelementptr i8, ptr %3, i64 %mul
  %10 = icmp ult ptr %9, %3
  %11 = or i1 %ident.check, %10
  br i1 %11, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.k = lshr i64 %i.f, 3
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.k)
  %i.m = shl nuw i64 %i.l, 3
  %i.n = add i64 %i.m, 8                          ; 2 uses
  %i.o = getelementptr i8, ptr %3, i64 %i.n
  %i.p = getelementptr i8, ptr %.promoted, i64 %i.n
  %bound0 = icmp ult ptr %3, %i.p
  %bound1 = icmp ult ptr %.promoted, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2305843009213693950      ; 3 uses
  %i.q = sub i64 %.promoted14.fr, %n.vec
  %i.r = shl nuw i64 %n.vec, 3                    ; 2 uses
  %i.s = getelementptr i8, ptr %.promoted, i64 %i.r
  %i.t = getelementptr i8, ptr %3, i64 %i.r
  %i.u = add i64 %.promoted14.fr, -1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = phi i64 [ %i.u, %vector.ph ], [ %i.aa, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 3 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.w
  %i.x = getelementptr i8, ptr %.promoted, i64 %i.w
  %next.gep21 = getelementptr i8, ptr %3, i64 %i.w
  %wide.vec26 = load <4 x float>, ptr %next.gep, align 4, !alias.scope !3488
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %i.z = add i64 %i.v, -1
  store <4 x float> %wide.vec26, ptr %next.gep21, align 4, !alias.scope !3489, !noalias !3490
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aa = add i64 %i.v, -2
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %scalar.ph.preheader.loopexit, label %vector.body, !llvm.loop !3486

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  store ptr %i.y, ptr %i.d, align 8
  store i64 %i.z, ptr %4, align 8, !noalias !3490
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %vector.scevcheck, %bb.a
  %.ph = phi i64 [ %.promoted14.fr, %vector.memcheck ], [ %.promoted14.fr, %vector.scevcheck ], [ %.promoted14.fr, %bb.a ], [ %i.q, %scalar.ph.preheader.loopexit ]
  %.ph27 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %vector.scevcheck ], [ %.promoted, %bb.a ], [ %i.s, %scalar.ph.preheader.loopexit ]
  %.sroa.4.0.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %vector.scevcheck ], [ %3, %bb.a ], [ %i.t, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.ac = phi i64 [ %i.ai, %bb.b ], [ %.ph, %scalar.ph.preheader ]
  %i.ad = phi ptr [ %i.ah, %bb.b ], [ %.ph27, %scalar.ph.preheader ] ; 4 uses
  %.sroa.4.0 = phi ptr [ %i.al, %bb.b ], [ %.sroa.4.0.ph, %scalar.ph.preheader ] ; 4 uses
  %.not = icmp eq ptr %i.ad, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = load float, ptr %i.af, align 4, !noundef !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.d, align 8
  %i.ai = add i64 %i.ac, -1                       ; 3 uses
  store i64 %i.ai, ptr %4, align 8, !noalias !3490
  store i32 %i.ae, ptr %.sroa.4.0, align 4, !noalias !3490
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.0, i64 4
  store float %i.ag, ptr %i.aj, align 4, !noalias !3490
  %i.ak = icmp eq i64 %i.ai, 0
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.4.0, i64 8 ; 2 uses
  br i1 %i.ak, label %bb.c, label %scalar.ph, !llvm.loop !3487

bb.c:                                             ; preds = %scalar.ph, %bb.b
  %.sroa.4.0.lcssa.sink = phi ptr [ %i.al, %bb.b ], [ %.sroa.4.0, %scalar.ph ]
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %scalar.ph ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.an, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB25_8adapters3map12map_try_foldBX_INtNtB27_6result6ResultBX_NtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEB33_INtNtNtB27_3ops12control_flow11ControlFlowIB4p_B33_zEB33_ERDINtNtB64_8function2FnTBX_EEp6OutputB4o_EL_NCINvXB3O_INtB3O_12GenericShuntINtB3M_3MapBI_B6V_EIB4p_zB4O_EEB1Z_8try_foldB33_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6F_E0E0B5Z_EB4U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.f
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !7, !align !14, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.4.020 = phi ptr [ %3, %.lr.ph ], [ %i.t, %bb.j ] ; 5 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  store ptr %i.l, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3497
  store ptr %2, ptr %i.d, align 8, !noalias !3497
  store ptr %.sroa.4.020, ptr %i.i, align 8, !noalias !3497
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core3ops8function5implsRDINtB6_2FnTNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorEEp6OutputINtNtBa_6result6ResultBY_NtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEL_INtB6_5FnMutBX_E8call_mutB2E_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.c unwind label %bb.g, !noalias !3497

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3497
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !3497 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3497
  store ptr %2, ptr %i.a, align 8, !noalias !3498
  store ptr %.sroa.4.020, ptr %i.j, align 8, !noalias !3498
  %.not.i.i.i = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %.not.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %.sroa.9.16..sroa_idx.i.le = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEEEB1q_(ptr noalias nofree noundef align 8 dereferenceable(96) %.val.le)
          to label %bb.i unwind label %bb.e, !noalias !3498

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !3498
  %.sroa.59.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.59.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.16..sroa_idx.i, i64 48, i1 false), !noalias !3497
  %.sroa.611.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.611.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.16..sroa_idx.i.le, i64 40, i1 false), !noalias !3497
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #20
          to label %.body.i unwind label %bb.f, !noalias !3498

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3498
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector12SparseVectorEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #20
          to label %.body.i unwind label %bb.h, !noalias !3497

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3497
  unreachable

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.020, %bb.i ], [ %3, %bb.a ], [ %i.t, %bb.j ]
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.a ], [ 0, %bb.j ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.d
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !3498
  %.sroa.59.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.59.0..8.val.sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.16..sroa_idx.i, i64 48, i1 false), !noalias !3497
  %.sroa.611.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.611.0..8.val.sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.16..sroa_idx.i.le, i64 40, i1 false), !noalias !3497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._crit_edge

bb.j:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.020, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.16..sroa_idx.i, i64 48, i1 false), !noalias !3497
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.020, i64 48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB26_8adapters3map12map_try_foldBX_INtNtB28_6result6ResultBX_NtNtNtB13_6common15operation_error14OperationErrorEB34_INtNtNtB28_3ops12control_flow11ControlFlowIB4q_B34_zEB34_ERDINtNtB5N_8function2FnTBX_EEp6OutputB4p_EL_NCINvXB3P_INtB3P_12GenericShuntINtB3N_3MapBI_B6E_EIB4q_zB4P_EEB20_8try_foldB34_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6o_E0E0B5I_EB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
