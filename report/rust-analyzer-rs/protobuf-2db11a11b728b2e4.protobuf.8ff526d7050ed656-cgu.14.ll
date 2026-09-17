Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/protobuf-2db11a11b728b2e4.protobuf.8ff526d7050ed656-cgu.14?download=true
inline.NumInlined: 1440
inline.NumDeleted: 808
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect4file5index14MessageIndicesENCNvMs_NtB1r_9generatedNtB2z_23GeneratedFileDescriptor13new_generateds1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3E_8for_each4callNtNtNtB1t_7message9generated26GeneratedMessageDescriptorNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5K_3VecB4H_E14extend_trustedBN_E0E0EB1v_:bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !689
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !687, !noalias !688, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !687, !noalias !688, !noundef !5
  invoke void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapReNtNtNtNtCscmhy3HNZezq_8protobuf7reflect7message9generated30GeneratedMessageDescriptorDataNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE6removeeEBY_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.01.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !685

.noexc.i:                                         ; preds = %bb.d
  %i.y = load i64, ptr %i.a, align 8, !range !6, !noalias !689, !noundef !5
  %.not5.i.i.i = icmp eq i64 %i.y, -1
  br i1 %.not5.i.i.i, label %bb.g, label %bb.f, !prof !4

bb.e:                                             ; preds = %bb.c
  store i64 -1, ptr %i.c, align 8, !noalias !690
  br label %bb.h

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !689
  %i.z = load ptr, ptr %.sroa.4.0.copyload, align 8, !noalias !689, !nonnull !5, !align !8, !noundef !5
  invoke void @_RNvMs1_NtNtNtCscmhy3HNZezq_8protobuf7reflect7message9generatedNtB5_26GeneratedMessageDescriptor3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.sroa.5.0.copyload)
          to label %.noexc15.i unwind label %.loopexit.i, !noalias !685

.noexc15.i:                                       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !689
  br label %bb.h

bb.g:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #25
          to label %.noexc16.i unwind label %.loopexit.split-lp.i, !noalias !685

.noexc16.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc15.i, %bb.e
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !690
  %i.ab = add i64 %.val10.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !685
  %i.ac = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.l
  br i1 %i.ad, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect4file5index14MessageIndicesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB21_8adapters3map8map_foldRBQ_NtNtNtBW_7message9generated26GeneratedMessageDescriptoruNCNvMs_NtBU_9generatedNtB4k_23GeneratedFileDescriptor13new_generateds1_0NCINvNvB1V_8for_each4callB3j_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5Z_3VecB3j_E14extend_trustedINtB2L_3MapBF_B4d_EE0E0E0EBY_.exit, label %bb.c

.loopexit.i:                                      ; preds = %bb.f, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !685
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect4file5index14MessageIndicesENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB21_8adapters3map8map_foldRBQ_NtNtNtBW_7message9generated26GeneratedMessageDescriptoruNCNvMs_NtBU_9generatedNtB4k_23GeneratedFileDescriptor13new_generateds1_0NCINvNvB1V_8for_each4callB3j_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5Z_3VecB3j_E14extend_trustedINtB2L_3MapBF_B4d_EE0E0E0EBY_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ab, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !685
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexENCNvNtNtB1t_7message29is_initialized_is_always_true19message_field_types0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4u_13FlattenCompatppE13iter_try_fold7flattenINtB2r_6EitherINtNtNtBc_5array4iter8IntoIterRNtB1p_22ForwardProtobufTypeBoxKj1_EIB5I_B6b_Kj2_EEuINtNtNtBc_3ops12control_flow11ControlFlowNtB2t_11MessageTypeENCINvNvXsi_B4u_B4H_B3B_8try_fold7flattenB5t_uB71_NCINvNvB3B_8find_map5checkB6b_B7G_QNCNvB2t_22message_field_messages0E0E0E0B71_EB1v_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !712, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !712 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNvNtNtBP_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtBL_22ForwardProtobufTypeBoxKj1_EIB4A_B53_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB3n_11MessageTypeENCB3l_0NCINvNvMsg_NtB2H_7flattenINtB79_13FlattenCompatppE13iter_try_fold7flattenB3i_uB5S_NCINvNvXsi_B79_B7n_B1L_8try_fold7flattenB3i_uB5S_NCINvNvB1L_8find_map5checkB53_B6x_QNCNvB3n_22message_field_messages0E0E0E0E0B5S_EBR_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.42.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.53.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexINtNvNtNtB16_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtB12_22ForwardProtobufTypeBoxKj1_EIB3k_B3N_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB26_11MessageTypeENCB24_0NCINvNvMsg_NtB6_7flattenINtB5U_13FlattenCompatppE13iter_try_fold7flattenB21_uB4D_NCINvNvXsi_B5U_B67_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB21_uB4D_NCINvNvB7l_8find_map5checkB3N_B5i_QNCNvB26_22message_field_messages0E0E0E0E0B18_.exit.i, %.lr.ph.i
  %i.e = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.f, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexINtNvNtNtB16_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtB12_22ForwardProtobufTypeBoxKj1_EIB3k_B3N_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB26_11MessageTypeENCB24_0NCINvNvMsg_NtB6_7flattenINtB5U_13FlattenCompatppE13iter_try_fold7flattenB21_uB4D_NCINvNvXsi_B5U_B67_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB21_uB4D_NCINvNvB7l_8find_map5checkB3N_B5i_QNCNvB26_22message_field_messages0E0E0E0E0B18_.exit.i ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !alias.scope !712
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !714, !alias.scope !715, !noalias !716, !noundef !5 ; 2 uses
  %i.i = add nsw i64 %i.h, -13
  %i.j = icmp samesign ugt i64 %i.h, 12
  %i.k = select i1 %i.j, i64 %i.i, i64 2
  switch i64 %i.k, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  br label %_RNCNvNtNtNtCscmhy3HNZezq_8protobuf7reflect7message29is_initialized_is_always_true19message_field_types0B9_.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  br label %_RNCNvNtNtNtCscmhy3HNZezq_8protobuf7reflect7message29is_initialized_is_always_true19message_field_types0B9_.exit.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  br label %_RNCNvNtNtNtCscmhy3HNZezq_8protobuf7reflect7message29is_initialized_is_always_true19message_field_types0B9_.exit.i.i

_RNCNvNtNtNtCscmhy3HNZezq_8protobuf7reflect7message29is_initialized_is_always_true19message_field_types0B9_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.11.0.i.i = phi ptr [ undef, %bb.d ], [ undef, %bb.e ], [ %i.n, %bb.f ]
  %.sroa.8.0.i.i = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.g, %bb.f ]
  %.sroa.5.0.i.i = phi i64 [ 1, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ]
  %.sink.i.i.i = phi i64 [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.f ]
  store i64 %.sink.i.i.i, ptr %2, align 8, !alias.scope !717, !noalias !718
  store i64 0, ptr %.sroa.42.0..8.val.sroa_idx.i.i, align 8, !alias.scope !717, !noalias !718
  store i64 %.sroa.5.0.i.i, ptr %.sroa.53.0..8.val.sroa_idx.i.i, align 8, !alias.scope !717, !noalias !718
  store ptr %.sroa.8.0.i.i, ptr %.sroa.6.0..8.val.sroa_idx.i.i, align 8, !alias.scope !717, !noalias !718
  store ptr %.sroa.11.0.i.i, ptr %.sroa.7.0..8.val.sroa_idx.i.i, align 8, !alias.scope !717, !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !719
  store ptr %1, ptr %i.a, align 8, !noalias !720
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_RNCNvNtNtNtCscmhy3HNZezq_8protobuf7reflect7message29is_initialized_is_always_true19message_field_types0B9_.exit.i.i
  %i.o = call noundef align 8 ptr @_RNvXNvNtNtNtCscmhy3HNZezq_8protobuf7reflect7message29is_initialized_is_always_true19message_field_typesINtB2_6EitherINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterRNtNtNtB8_5field5index22ForwardProtobufTypeBoxKj1_EIB1R_B2A_Kj2_EENtNtNtNtB1X_4iter6traits8iterator8Iterator4nextBa_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2), !noalias !721 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexINtNvNtNtB16_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtB12_22ForwardProtobufTypeBoxKj1_EIB3k_B3N_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB26_11MessageTypeENCB24_0NCINvNvMsg_NtB6_7flattenINtB5U_13FlattenCompatppE13iter_try_fold7flattenB21_uB4D_NCINvNvXsi_B5U_B67_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB21_uB4D_NCINvNvB7l_8find_map5checkB3N_B5i_QNCNvB26_22message_field_messages0E0E0E0E0B18_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call { i64, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index22ForwardProtobufTypeBoxNtNtNtB1W_7message29is_initialized_is_always_true11MessageTypeQNCNvB35_22message_field_messages0E0INtB7_5FnMutTuB1P_EE8call_mutB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o), !noalias !721 ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0        ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i64 %i.q, 2
  br i1 %.not7.i.i.i.i.i, label %bb.g, label %bb.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexINtNvNtNtB16_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtB12_22ForwardProtobufTypeBoxKj1_EIB3k_B3N_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB26_11MessageTypeENCB24_0NCINvNvMsg_NtB6_7flattenINtB5U_13FlattenCompatppE13iter_try_fold7flattenB21_uB4D_NCINvNvXsi_B5U_B67_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB21_uB4D_NCINvNvB7l_8find_map5checkB3N_B5i_QNCNvB26_22message_field_messages0E0E0E0E0B18_.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !719
  %i.r = icmp eq ptr %i.f, %i.c
  br i1 %i.r, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNvNtNtBP_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtBL_22ForwardProtobufTypeBoxKj1_EIB4A_B53_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB3n_11MessageTypeENCB3l_0NCINvNvMsg_NtB2H_7flattenINtB79_13FlattenCompatppE13iter_try_fold7flattenB3i_uB5S_NCINvNvXsi_B79_B7n_B1L_8try_fold7flattenB3i_uB5S_NCINvNvB1L_8find_map5checkB53_B6x_QNCNvB3n_22message_field_messages0E0E0E0E0B5S_EBR_.exit, label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.s = extractvalue { i64, ptr } %i.p, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !719
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNvNtNtBP_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtBL_22ForwardProtobufTypeBoxKj1_EIB4A_B53_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB3n_11MessageTypeENCB3l_0NCINvNvMsg_NtB2H_7flattenINtB79_13FlattenCompatppE13iter_try_fold7flattenB3i_uB5S_NCINvNvXsi_B79_B7n_B1L_8try_fold7flattenB3i_uB5S_NCINvNvB1L_8find_map5checkB53_B6x_QNCNvB3n_22message_field_messages0E0E0E0E0B5S_EBR_.exit

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNvNtNtBP_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtBL_22ForwardProtobufTypeBoxKj1_EIB4A_B53_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB3n_11MessageTypeENCB3l_0NCINvNvMsg_NtB2H_7flattenINtB79_13FlattenCompatppE13iter_try_fold7flattenB3i_uB5S_NCINvNvXsi_B79_B7n_B1L_8try_fold7flattenB3i_uB5S_NCINvNvB1L_8find_map5checkB53_B6x_QNCNvB3n_22message_field_messages0E0E0E0E0B5S_EBR_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexINtNvNtNtB16_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtB12_22ForwardProtobufTypeBoxKj1_EIB3k_B3N_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB26_11MessageTypeENCB24_0NCINvNvMsg_NtB6_7flattenINtB5U_13FlattenCompatppE13iter_try_fold7flattenB21_uB4D_NCINvNvXsi_B5U_B67_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB21_uB4D_NCINvNvB7l_8find_map5checkB3N_B5i_QNCNvB26_22message_field_messages0E0E0E0E0B18_.exit.i, %bb.a, %bb.i
  %.sroa.3.0.i = phi ptr [ %i.s, %bb.i ], [ undef, %bb.a ], [ undef, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexINtNvNtNtB16_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtB12_22ForwardProtobufTypeBoxKj1_EIB3k_B3N_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB26_11MessageTypeENCB24_0NCINvNvMsg_NtB6_7flattenINtB5U_13FlattenCompatppE13iter_try_fold7flattenB21_uB4D_NCINvNvXsi_B5U_B67_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB21_uB4D_NCINvNvB7l_8find_map5checkB3N_B5i_QNCNvB26_22message_field_messages0E0E0E0E0B18_.exit.i ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.i ], [ 2, %bb.a ], [ 2, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5field5index10FieldIndexINtNvNtNtB16_7message29is_initialized_is_always_true19message_field_types6EitherINtNtNtBa_5array4iter8IntoIterRNtB12_22ForwardProtobufTypeBoxKj1_EIB3k_B3N_Kj2_EEuINtNtNtBa_3ops12control_flow11ControlFlowNtB26_11MessageTypeENCB24_0NCINvNvMsg_NtB6_7flattenINtB5U_13FlattenCompatppE13iter_try_fold7flattenB21_uB4D_NCINvNvXsi_B5U_B67_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB21_uB4D_NCINvNvB7l_8find_map5checkB3N_B5i_QNCNvB26_22message_field_messages0E0E0E0E0B18_.exit.i ]
  %i.t = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.u = insertvalue { i64, ptr } %i.t, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.u
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTjRNtNtCscmhy3HNZezq_8protobuf10descriptor20FieldDescriptorProtoEENCNvMs0_NtNtNtB1u_7reflect4file5indexNtB2z_20FileDescriptorCommon24index_message_and_innerss0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Z_8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5c_3VecjE14extend_trustedBN_E0E0EB1u_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTjRNtNtCscmhy3HNZezq_8protobuf10descriptor20FieldDescriptorProtoEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldRBQ_juNCNvMs0_NtNtNtBX_7reflect4file5indexNtB3s_20FileDescriptorCommon24index_message_and_innerss0_0NCINvNvB1U_8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5p_3VecjE14extend_trustedINtB2K_3MapBF_B3k_EE0E0E0EBX_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 272
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = lshr exact i64 %i.d, 1
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %i.i = and i64 %i.d, -16
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep3 = getelementptr i8, ptr %i.j, i64 -8
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.k = and i64 %i.e, 3                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 4, i64 %i.k
  %n.vec = sub nsw i64 %i.e, %i.m                 ; 3 uses
  %3 = add i64 %.sroa.5.0.copyload, %n.vec
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.vec = load <4 x i64>, ptr %i.o, align 8, !alias.scope !736, !noalias !737
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec4 = load <4 x i64>, ptr %i.q, align 8, !alias.scope !736, !noalias !737
  %strided.vec5 = shufflevector <4 x i64> %wide.vec4, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.r = getelementptr [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i64> %strided.vec, ptr %i.r, align 8, !alias.scope !738, !noalias !739
  store <2 x i64> %strided.vec5, ptr %i.s, align 8, !alias.scope !738, !noalias !739
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %scalar.ph.preheader, label %vector.body, !llvm.loop !733

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %3, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.u = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i64, ptr %i.w, align 8, !noalias !737, !noundef !5
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.v
  store i64 %.val15.i.prol, ptr %i.x, align 8, !noalias !742
  %i.y = add i64 %i.v, 1                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !734

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTjRNtNtCscmhy3HNZezq_8protobuf10descriptor20FieldDescriptorProtoEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldRBQ_juNCNvMs0_NtNtNtBX_7reflect4file5indexNtB3s_20FileDescriptorCommon24index_message_and_innerss0_0NCINvNvB1U_8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5p_3VecjE14extend_trustedINtB2K_3MapBF_B3k_EE0E0E0EBX_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.ad, align 8, !noalias !737, !noundef !5
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store i64 %.val15.i, ptr %i.ae, align 8, !noalias !742
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val15.i.1 = load i64, ptr %i.ag, align 8, !noalias !737, !noundef !5
  %i.ah = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  store i64 %.val15.i.1, ptr %i.ai, align 8, !noalias !742
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.val15.i.2 = load i64, ptr %i.ak, align 8, !noalias !737, !noundef !5
  %i.al = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.am = getelementptr i8, ptr %i.al, i64 16
  store i64 %.val15.i.2, ptr %i.am, align 8, !noalias !742
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.val15.i.3 = load i64, ptr %i.ao, align 8, !noalias !737, !noundef !5
  %i.ap = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  store i64 %.val15.i.3, ptr %i.aq, align 8, !noalias !742
  %i.ar = add i64 %i.ac, 4                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTjRNtNtCscmhy3HNZezq_8protobuf10descriptor20FieldDescriptorProtoEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldRBQ_juNCNvMs0_NtNtNtBX_7reflect4file5indexNtB3s_20FileDescriptorCommon24index_message_and_innerss0_0NCINvNvB1U_8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5p_3VecjE14extend_trustedINtB2K_3MapBF_B3k_EE0E0E0EBX_.exit, label %scalar.ph, !llvm.loop !735

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTjRNtNtCscmhy3HNZezq_8protobuf10descriptor20FieldDescriptorProtoEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB20_8adapters3map8map_foldRBQ_juNCNvMs0_NtNtNtBX_7reflect4file5indexNtB3s_20FileDescriptorCommon24index_message_and_innerss0_0NCINvNvB1U_8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5p_3VecjE14extend_trustedINtB2K_3MapBF_B3k_EE0E0E0EBX_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !737
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCNvMs1_NtNtCscmhy3HNZezq_8protobuf7reflect4fileNtB1x_14FileDescriptor11public_deps0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2M_8for_each4callB2b_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB42_3VecB2b_E14extend_trustedBN_E0E0EB1B_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlNtNtNtCscmhy3HNZezq_8protobuf7reflect4file14FileDescriptoruNCNvMs1_B2f_B2d_11public_deps0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4f_3VecB2d_E14extend_trustedINtB1I_3MapBF_B3a_EE0E0E0EB2j_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.af, %bb.h ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.h ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i32, ptr %i.l, align 4, !noalias !752, !noundef !5
  %i.m = load i64, ptr %i.e, align 8, !range !9, !noalias !753, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = load ptr, ptr %i.k, align 8, !noalias !753, !nonnull !5, !noundef !5
  %..i.i.i = select i1 %i.n, i64 16, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %..i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !753, !noundef !5 ; 2 uses
  %i.s = sext i32 %.val15.i to i64                ; 3 uses
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !753, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.s ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !9, !noalias !753, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = trunc nuw i64 %i.x to i1
  br i1 %i.z, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #25
          to label %.noexc.i unwind label %bb.i, !noalias !752

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !753, !nonnull !5, !noundef !5
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !753
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.d ], [ 1, %bb.f ]
  %.sroa.5.0.i.i.i = load ptr, ptr %i.y, align 8, !noalias !753, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store i64 %.sroa.01.0.i.i.i, ptr %i.ad, align 8, !noalias !754
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %i.ae, align 8, !noalias !754
  %i.af = add i64 %.val10.i, 1                    ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.j
  br i1 %i.ah, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlNtNtNtCscmhy3HNZezq_8protobuf7reflect4file14FileDescriptoruNCNvMs1_B2f_B2d_11public_deps0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4f_3VecB2d_E14extend_trustedINtB1I_3MapBF_B3a_EE0E0E0EB2j_.exit, label %bb.c

bb.i:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !752
  resume { ptr, i32 } %i.ai

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlNtNtNtCscmhy3HNZezq_8protobuf7reflect4file14FileDescriptoruNCNvMs1_B2f_B2d_11public_deps0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4f_3VecB2d_E14extend_trustedINtB1I_3MapBF_B3a_EE0E0E0EB2j_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.af, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !752
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtNtCscmhy3HNZezq_8protobuf7reflect4file14FileDescriptorEENvMB1O_B1L_6unwrapENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB27_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB27_E0INtNtBc_6result6ResultB45_zEEB2d_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCscmhy3HNZezq_8protobuf7reflect4file14FileDescriptorEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1z_ENCINvNtNtB2D_8adapters3map12map_try_foldBX_B1z_B3m_INtNtB12_6result6ResultB3m_zENvMB10_BX_6unwrapNCINvNtB8_16in_place_collect24write_in_place_with_dropB1z_E0E0B4Q_EB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCscmhy3HNZezq_8protobuf10descriptor19FileDescriptorProtoENcNtINtNtBc_6option6OptionB1L_E4Some0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2O_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB4E_E0INtNtBc_6result6ResultB43_zEEB1P_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCscmhy3HNZezq_8protobuf10descriptor19FileDescriptorProtoENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtB24_6option6OptionBX_EENCINvNtNtB22_8adapters3map12map_try_foldBX_B3A_B30_INtNtB24_6result6ResultB30_zENcNtB3A_4Some0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3A_E0E0B4R_EB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums9generated27GeneratedEnumDescriptorDataENCNvMs_NtNtB1R_4file9generatedNtB3f_23GeneratedFileDescriptor13new_generateds_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4q_8for_each4callTReB1L_ENCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5L_7HashMapB5u_B1L_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtB4u_7collect6ExtendB5t_E6extendBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums9generated27GeneratedEnumDescriptorDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2q_8adapters3map8map_foldBX_TReBX_EuNCNvMs_NtNtB13_4file9generatedNtB4c_23GeneratedFileDescriptor13new_generateds_0NCINvNvB2k_8for_each4callB3X_NCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5Z_7HashMapB3Y_BX_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtB2o_7collect6ExtendB3X_E6extendINtB3q_3MapBI_B45_EE0E0E0EB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect7message9generated30GeneratedMessageDescriptorDataENCNvMs_NtNtB1R_4file9generatedNtB3k_23GeneratedFileDescriptor13new_generated0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4t_8for_each4callTReB1L_ENCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5O_7HashMapB5x_B1L_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtB4x_7collect6ExtendB5w_E6extendBN_E0E0EB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCscmhy3HNZezq_8protobuf7reflect7message9generated30GeneratedMessageDescriptorDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2v_8adapters3map8map_foldBX_TReBX_EuNCNvMs_NtNtB13_4file9generatedNtB4h_23GeneratedFileDescriptor13new_generated0NCINvNvB2p_8for_each4callB42_NCINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB62_7HashMapB43_BX_NtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateEINtNtB2t_7collect6ExtendB42_E6extendINtB3v_3MapBI_B4a_EE0E0E0EB15_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyNtNtCscmhy3HNZezq_8protobuf10descriptor15DescriptorProtoNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @39, i64 16, i1 false)
  ret void
}
end_hunk_0
