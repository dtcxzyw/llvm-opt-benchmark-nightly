Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.002?download=true
inline.NumInlined: 8609
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENCNvMNtNtNtNtNtB1u_5index10hnsw_index4hnsw9read_view6searchINtB2v_17HNSWIndexReadViewNtNtNtNtB1u_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtB1u_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB4X_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB2B_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtB1u_15payload_storage20payload_storage_enum18PayloadStorageEnumB3L_B4T_NtNtNtNtB2B_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultzNtNtNtB1u_6common15operation_error14OperationErrorEEBaR_8try_folduNCINvNvBaR_12try_for_each4callINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetEINtNtNtBc_3ops12control_flow11ControlFlowBe0_ENcNtBfm_5Break0E0Bfm_E0IBfn_Bfm_EEB1u_:bb.a

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterRNtNtNtCs607s0NAIaWN_7segment10data_types7vectors11QueryVectorENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslmvYCXbQjWR_6common5types17ScoredPointOffsetENtNtNtBQ_6common15operation_error14OperationErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5P_B3D_EENCNvMNtNtNtNtNtBQ_5index10hnsw_index4hnsw9read_view6searchINtB6L_17HNSWIndexReadViewNtNtNtNtBQ_10id_tracker15id_tracker_base12tracker_enum13IdTrackerEnumNtNtNtBQ_14vector_storage19vector_storage_base17VectorStorageEnumNtNtNtB9b_9quantized17quantized_vectors16QuantizedVectorsINtNtNtB6R_20struct_payload_index9read_view26StructPayloadIndexReadViewNtNtNtBQ_15payload_storage20payload_storage_enum18PayloadStorageEnumB80_B97_NtNtNtNtB6R_11field_index16field_index_base11field_index10FieldIndexEE25search_vectors_with_graph0NCINvXB2G_INtB2G_12GenericShuntINtB2E_3MapB3_B6E_EIB3i_zB4Z_EEB1K_8try_folduNCINvNvB1K_12: ; preds = %bb.i, %bb.a, %.loopexit.i
  %storemerge.i = phi i64 [ %storemerge.i.i16.i, %.loopexit.i ], [ -2, %bb.a ], [ -2, %bb.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !8727, !noalias !8728
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1z_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4calljNCINvMsk_B3s_IB3q_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ag, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ah, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load ptr, ptr %i.k, align 8, !alias.scope !8764, !noalias !8765, !nonnull !5, !noundef !5
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val16.i = load i64, ptr %i.l, align 8, !alias.scope !8764, !noalias !8765, !noundef !5
  %i.m = load i32, ptr %.sroa.4.0.copyload, align 4, !noalias !8766, !noundef !5
  %i.n = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !8766, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8767
  %i.o = zext i32 %i.m to i64
  store i64 %i.o, ptr %i.a, align 8, !noalias !8767
  store i64 0, ptr %i.j, align 8, !noalias !8767
  invoke fastcc void @_RNvXs_NtCs5tRDsWtv0pR_6wyhash6traitsNtB4_6WyHashNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val15.i, i64 noundef %.val16.i) #40
          to label %bb.d unwind label %bb.e, !noalias !8768

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8, !alias.scope !8769, !noalias !8770
  %.promoted76.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !8769, !noalias !8770
  %i.q = xor i64 %i.p, -6884282663029611473
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw i128 %i.r, 16646288086500911140  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = add i64 %.promoted76.i.i.i.i.i.i.i.i.i.i, 1
  %i.v = xor i64 %i.u, -1493879189771267739
  %.masked.i.i.i.i = and i128 %i.s, 18446744073709551612
  %i.w = xor i128 %i.t, %.masked.i.i.i.i
  %i.x = zext i64 %i.v to i128
  %i.y = mul nuw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8767
  %.masked.i.i.i = and i128 %i.y, 18446744073709551615
  %i.aa = xor i128 %i.z, %.masked.i.i.i
  %i.ab = zext i64 %i.n to i128
  %i.ac = mul nuw i128 %i.aa, %i.ab
  %i.ad = lshr i128 %i.ac, 64
  %i.ae = trunc nuw i128 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i64 %i.ae, ptr %i.af, align 8, !noalias !8771
  %i.ag = add i64 %.val10.i, 1                    ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.i
  br i1 %i.ai, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !8768
  resume { ptr, i32 } %i.aj

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ag, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8768
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReERNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB45_8for_each4calljNCINvMsk_B3t_IB3r_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8781)
  %i.h = icmp eq ptr %i.b, %i.d
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val13.i = load ptr, ptr %i.a, align 8, !alias.scope !8781, !nonnull !5, !align !11, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val14.i = load i64, ptr %i.o, align 8, !alias.scope !8781, !noundef !5
  store i64 %.val14.i, ptr %.val13.i, align 8, !noalias !8781
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %i.q = invoke noundef i64 @_RNvXs_NtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBW_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsReuINtNtCsexYYUdYSQU6_5alloc3vec3VecB2G_EE0INtB6_5FnMutTRB2G_EE8call_mutCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !8782)
  call void @llvm.experimental.noalias.scope.decl(metadata !8783)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !8784, !noalias !8785, !noundef !5
  %i.s = load i64, ptr %i.n, align 8, !alias.scope !8784, !noalias !8785, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store i64 %i.q, ptr %i.t, align 8, !noalias !8786
  %i.u = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !8784, !noalias !8785
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.l
  br i1 %i.w, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %.val11.i = load ptr, ptr %i.a, align 8, !alias.scope !8781, !nonnull !5, !align !11, !noundef !5
  store i64 %i.u, ptr %.val11.i, align 8
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !8781, !nonnull !5, !align !11, !noundef !5
  %.val10.i = load i64, ptr %i.n, align 8, !alias.scope !8781, !noundef !5
  store i64 %.val10.i, ptr %.val.i, align 8
  resume { ptr, i32 } %i.x

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRoENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1z_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4calljNCINvMsk_B3s_IB3q_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ad, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.j, align 8, !alias.scope !8805, !noalias !8806, !nonnull !5, !align !32, !noundef !5
  %i.k = load i32, ptr %.sroa.4.0.copyload, align 4, !noalias !8807, !noundef !5
  %i.l = load i64, ptr %.sroa.52.0.copyload, align 8, !noalias !8807, !noundef !5
  %i.m = zext i32 %i.k to i64
  %.val.i.i.i.i.i.i = load i128, ptr %.val15.i, align 16, !noalias !8808, !noundef !5 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.a = trunc i128 %.val.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i = lshr i128 %.val.i.i.i.i.i.i, 96
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw nsw i128 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i to i64
  %2 = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.a, i64 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.a, i64 32)
  %3 = xor i64 %2, %i.m
  %4 = xor i64 %3, -6884282663029611473
  %sh.diff.i.i.i.i.i.i.i.i = lshr i128 %.val.i.i.i.i.i.i, 32
  %tr.sh.diff.i.i.i.i.i.i.i.i = trunc i128 %sh.diff.i.i.i.i.i.i.i.i to i64
  %i.n = and i64 %tr.sh.diff.i.i.i.i.i.i.i.i, -4294967296
  %i.o = or disjoint i64 %i.n, %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i
  %i.p = xor i64 %i.o, -8161530843051276573
  %i.q = zext i64 %4 to i128
  %i.r = zext i64 %i.p to i128
  %i.s = mul nuw i128 %i.r, %i.q                  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %.masked.i.i.i.i = and i128 %i.s, 18446744073709551615
  %i.u = xor i128 %i.t, %.masked.i.i.i.i
  %i.v = mul nuw i128 %i.u, 16952864883938283893  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %.masked.i.i.i = and i128 %i.v, 18446744073709551615
  %i.x = xor i128 %i.w, %.masked.i.i.i
  %i.y = zext i64 %i.l to i128
  %i.z = mul nuw i128 %i.x, %i.y
  %i.aa = lshr i128 %i.z, 64
  %i.ab = trunc nuw i128 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !8809
  %i.ad = add i64 %i.i, 1                         ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.h
  br i1 %i.af, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ad, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8810
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRoERNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB45_8for_each4calljNCINvMsk_B3t_IB3r_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8820)
  %i.h = icmp eq ptr %i.b, %i.d
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val13.i = load ptr, ptr %i.a, align 8, !alias.scope !8820, !nonnull !5, !align !11, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val14.i = load i64, ptr %i.o, align 8, !alias.scope !8820, !noundef !5
  store i64 %.val14.i, ptr %.val13.i, align 8, !noalias !8820
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %i.q = invoke noundef i64 @_RNvXs_NtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBW_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsRouINtNtCsexYYUdYSQU6_5alloc3vec3VecB2G_EE0INtB6_5FnMutTRB2G_EE8call_mutCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !8821)
  call void @llvm.experimental.noalias.scope.decl(metadata !8822)
  %i.r = load ptr, ptr %i.m, align 8, !alias.scope !8823, !noalias !8824, !noundef !5
  %i.s = load i64, ptr %i.n, align 8, !alias.scope !8823, !noalias !8824, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store i64 %i.q, ptr %i.t, align 8, !noalias !8825
  %i.u = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !8823, !noalias !8824
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.l
  br i1 %i.w, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %.val11.i = load ptr, ptr %i.a, align 8, !alias.scope !8820, !nonnull !5, !align !11, !noundef !5
  store i64 %i.u, ptr %.val11.i, align 8
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !8820, !nonnull !5, !align !11, !noundef !5
  %.val10.i = load i64, ptr %i.n, align 8, !alias.scope !8820, !noundef !5
  store i64 %.val10.i, ptr %.val.i, align 8
  resume { ptr, i32 } %i.x

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRoENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRxENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1z_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4calljNCINvMsk_B3s_IB3q_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ad, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.j, align 8, !alias.scope !8844, !noalias !8845, !nonnull !5, !align !11, !noundef !5
  %i.k = load i32, ptr %.sroa.4.0.copyload, align 4, !noalias !8846, !noundef !5
  %i.l = load i64, ptr %.sroa.52.0.copyload, align 8, !noalias !8846, !noundef !5
  %i.m = zext i32 %i.k to i64
  %.val.i.i.i.i.i.i = load i64, ptr %.val15.i, align 8, !noalias !8847, !noundef !5 ; 2 uses
  %i.n = xor i64 %i.m, -6884282663029611473
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.val.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i, i64 32)
  %i.p = xor i64 %i.o, -1800455987208640293
  %i.q = zext i64 %i.n to i128
  %i.r = zext i64 %i.p to i128
  %i.s = mul nuw i128 %i.r, %i.q                  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %.masked.i.i.i.i = and i128 %i.s, 18446744073709551615
  %i.u = xor i128 %i.t, %.masked.i.i.i.i
  %i.v = mul nuw i128 %i.u, 16952864883938283885  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %.masked.i.i.i = and i128 %i.v, 18446744073709551615
  %i.x = xor i128 %i.w, %.masked.i.i.i
  %i.y = zext i64 %i.l to i128
  %i.z = mul nuw i128 %i.x, %i.y
  %i.aa = lshr i128 %i.z, 64
  %i.ab = trunc nuw i128 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !8848
  %i.ad = add i64 %i.i, 1                         ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.h
  br i1 %i.af, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2r_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4j_IB4h_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ad, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !8849
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRxERNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB1A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB1n_uINtNtCsexYYUdYSQU6_5alloc3vec3VecB1n_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB45_8for_each4calljNCINvMsk_B3t_IB3r_jE14extend_trustedBN_E0E0ECs607s0NAIaWN_7segment(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8859)
  %i.h = icmp eq ptr %i.b, %i.d
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val13.i = load ptr, ptr %i.a, align 8, !alias.scope !8859, !nonnull !5, !align !11, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val14.i = load i64, ptr %i.o, align 8, !alias.scope !8859, !noundef !5
  store i64 %.val14.i, ptr %.val13.i, align 8, !noalias !8859
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_juRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2s_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsBQ_uINtNtCsexYYUdYSQU6_5alloc3vec3VecBQ_EE0NCINvNvBT_8for_each4calljNCINvMsk_B4k_IB4i_jE14extend_trustedINtB1J_3MapBF_B2i_EE0E0E0ECs607s0NAIaWN_7segment.exit

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %i.q = invoke noundef i64 @_RNvXs_NtNtNtCskKLDkoKarTP_4core3ops8function5implsRNCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtBW_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsRxuINtNtCsexYYUdYSQU6_5alloc3vec3VecB2G_EE0INtB6_5FnMutTRB2G_EE8call_mutCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.e unwind label %bb.g
end_hunk_0
