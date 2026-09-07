Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.10?download=true
inline.NumInlined: 6560
inline.NumDeleted: 2964
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1A_13RawDeltaTable21get_active_partitionss7_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2M_8for_each4callTB1n_INtNtBc_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEENCINvMsj_NtB4k_3vecINtB53_3VecB3P_E14extend_trustedBN_E0E0EB1A_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !7047
  unreachable

_RNvXsz_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_7MapDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %_RNvXs1p_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_7MapTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !7048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !7048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %i.l, i64 88, i1 false), !noalias !7028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exitthread-pre-split.i.i.i

bb.an:                                            ; preds = %.body.i.i.i.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !7018
  unreachable

_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.thread.i.i.i: ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.noexc18.i unwind label %bb.c, !noalias !7015

.noexc18.i:                                       ; preds = %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7016
  br label %bb.as

_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exitthread-pre-split.i.i.i: ; preds = %_RNvXsz_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_7MapDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.0.0.copyload4.pr.i.i.i = load i64, ptr %i.o, align 16, !noalias !7049
  br label %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.i.i.i

_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.i.i.i: ; preds = %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exitthread-pre-split.i.i.i, %_RNvXsu_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_9ArrayDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i, %_RNvXsD_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_10StructDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i, %bb.w, %bb.u, %bb.p
  %.sroa.0.0.copyload4.i.i.i = phi i64 [ %.sroa.0.0.copyload4.pr.i.i.i, %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exitthread-pre-split.i.i.i ], [ -9223372036854775793, %_RNvXsu_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_9ArrayDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ -9223372036854775802, %bb.p ], [ -9223372036854775797, %bb.u ], [ -9223372036854775794, %_RNvXsD_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_10StructDataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i.i ], [ -9223372036854775795, %bb.w ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.am, i64 88, i1 false), !noalias !7049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7020
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.r)
          to label %.noexc19.i unwind label %bb.c, !noalias !7015

.noexc19.i:                                       ; preds = %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_000Bb_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7016
  %.not3.i.i.i = icmp eq i64 %.sroa.0.0.copyload4.i.i.i, -9223372036854775792
  br i1 %.not3.i.i.i, label %bb.as, label %bb.ap

bb.ao:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7016
  br label %bb.as

bb.ap:                                            ; preds = %.noexc19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.57.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.i.i.i, i64 88, i1 false), !noalias !7016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7016
  store i64 %.sroa.0.0.copyload4.i.i.i, ptr %i.p, align 16, !noalias !7016
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.p)
          to label %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_00s_0Bb_.exit.i.i.i unwind label %bb.aq, !noalias !7016

bb.aq:                                            ; preds = %bb.ap
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.p) #51
          to label %bb.at unwind label %bb.ar, !noalias !7050

bb.ar:                                            ; preds = %bb.aq
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !7050
  unreachable

_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_00s_0Bb_.exit.i.i.i: ; preds = %bb.ap
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.p)
          to label %.noexc20.i unwind label %bb.c, !noalias !7015

.noexc20.i:                                       ; preds = %_RNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBb_13RawDeltaTable21get_active_partitionss7_00s_0Bb_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7016
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.q, align 8, !noalias !7016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !7051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7016
  br label %bb.as

bb.as:                                            ; preds = %.noexc20.i, %bb.ao, %.noexc19.i, %.noexc18.i
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %.noexc20.i ], [ -9223372036854775808, %bb.ao ], [ -9223372036854775808, %.noexc19.i ], [ -9223372036854775808, %.noexc18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 4 uses
  store ptr %.val16.i, ptr %i.ci, align 8, !noalias !7052
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %.val17.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !7052
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !7052
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.64.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !7051
  %i.cj = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.ck = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %i.ac
  br i1 %i.cl, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_TBQ_INtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEuNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3v_13RawDeltaTable21get_active_partitionss7_00NCINvNvBT_8for_each4callB2g_NCINvMsj_NtB2K_3vecINtB5h_3VecB2g_E14extend_trustedINtB1J_3MapBF_B3l_EE0E0E0EB3v_.exit, label %bb.d

bb.at:                                            ; preds = %bb.aq, %.body.i.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.c ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.cg, %bb.aq ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !7015
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_TBQ_INtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEuNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3v_13RawDeltaTable21get_active_partitionss7_00NCINvNvBT_8for_each4callB2g_NCINvMsj_NtB2K_3vecINtB5h_3VecB2g_E14extend_trustedINtB1J_3MapBF_B3l_EE0E0E0EB3v_.exit: ; preds = %bb.as, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.cj, %bb.as ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7015
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s3_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !7066
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !7066
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !7067, !noalias !7068, !nonnull !24, !noundef !24
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !7067, !noalias !7068
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss2_0NCINvNvB2k_4find5checkB3R_QNCB4I_s3_0E0E0B3W_EB1y_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !7067, !noalias !7068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7069
  store ptr %i.g, ptr %i.a, align 8, !noalias !7070
  %i.j = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBW_13RawDeltaTable21get_active_partitionss3_0INtB7_5FnMutTRRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !7065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7069
  br i1 %i.j, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss2_0NCINvNvB2k_4find5checkB3R_QNCB4I_s3_0E0E0B3W_EB1y_.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss2_0NCINvNvB2k_4find5checkB3R_QNCB4I_s3_0E0E0B3W_EB1y_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s5_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7083)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !7084
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !7084
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !7085, !noalias !7086, !nonnull !24, !noundef !24
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !7085, !noalias !7086
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss4_0NCINvNvB2k_4find5checkB3R_QNCB4I_s5_0E0E0B3W_EB1y_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !7085, !noalias !7086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7087
  store ptr %i.g, ptr %i.a, align 8, !noalias !7088
  %i.j = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBW_13RawDeltaTable21get_active_partitionss5_0INtB7_5FnMutTRRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !7083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7087
  br i1 %i.j, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss4_0NCINvNvB2k_4find5checkB3R_QNCB4I_s5_0E0E0B3W_EB1y_.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss4_0NCINvNvB2k_4find5checkB3R_QNCB4I_s5_0E0E0B3W_EB1y_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %2 = add i64 %i.i, -1
  %i.l = icmp eq i64 %2, %i.j
  br i1 %i.l, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.m = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.n, align 1, !noalias !7097, !noundef !24 ; 2 uses
  %i.o = load i8, ptr %i.e, align 1, !noalias !7098, !noundef !24
  %i.p = icmp eq i8 %.val16.i, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.g, align 1, !noalias !7098, !noundef !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.q, %bb.d ], [ %.val16.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.m
  store i8 %.sroa.0.0.i.i.i, ptr %i.r, align 1, !noalias !7099
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.val16.i.1 = load i8, ptr %i.t, align 1, !noalias !7097, !noundef !24 ; 2 uses
  %i.u = load i8, ptr %i.e, align 1, !noalias !7098, !noundef !24
  %i.v = icmp eq i8 %.val16.i.1, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.g, align 1, !noalias !7098, !noundef !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.w, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.m
  %i.y = getelementptr i8, ptr %i.x, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.y, align 1, !noalias !7099
  %i.z = add i64 %i.m, 2                          ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ab, align 1, !noalias !7097, !noundef !24 ; 2 uses
  %i.ac = load i8, ptr %i.e, align 1, !noalias !7098, !noundef !24
  %i.ad = icmp eq i8 %.val16.i.epil, %i.ac
  br i1 %i.ad, label %bb.h, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.ae = load i8, ptr %i.g, align 1, !noalias !7098, !noundef !24
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.ae, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.af, align 1, !noalias !7099
  %i.ag = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.unr-lcssa ], [ %i.ag, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7097
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB1A_9TableScan7try_newNtNtCs6Po7BT7Nknu_5alloc6string6StringE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3w_8for_each4callTINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtB2U_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvMsj_NtB2U_3vecINtB7g_3VecB4z_E14extend_trustedBN_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.01.i.i = alloca [56 x i8], align 8       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !24, !align !30, !noundef !24 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !24, !align !30, !noundef !24
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.j = icmp eq ptr %i.c, %i.e
  br i1 %i.j, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjTINtNtBb_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEuNCNCINvMsi_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5d_9TableScan7try_newNtNtB3O_6string6StringE00NCINvNvBS_8for_each4callB2d_NCINvMsj_NtB3O_3vecINtB7t_3VecB2d_E14extend_trustedINtB1I_3MapBF_B52_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink18.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink18.i.sroa.gep3.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink15.i.sroa.gep4.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.x, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.be, %bb.x ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bf, %bb.x ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.01.0.i
  %.val16.i = load i64, ptr %i.u, align 8, !noalias !7115 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7118)
  %i.v = load i64, ptr %i.g, align 8, !range !33, !alias.scope !7118, !noalias !7119, !noundef !24 ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !alias.scope !7118, !noalias !7119, !nonnull !24, !noundef !24 ; 4 uses
  %i.x = load i64, ptr %i.p, align 8, !alias.scope !7118, !noalias !7119, !noundef !24 ; 3 uses
  %i.y = atomicrmw add ptr %i.w, i64 1 monotonic, align 8, !noalias !7120
  %i.z = icmp slt i64 %i.y, 0                     ; 3 uses
  switch i64 %i.v, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.i, label %bb.h

bb.f:                                             ; preds = %bb.c
  br i1 %i.z, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.o, %bb.h
  %.sink18.i.sroa.phi.i.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i.i, %bb.o ], [ %.sink18.i.sroa.gep3.i.i.i, %bb.h ]
  %.sink16.i.i.i.i = phi ptr [ %i.ae, %bb.o ], [ %i.w, %bb.h ]
  %.sink15.i.sroa.phi.i.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i.i, %bb.o ], [ %.sink15.i.sroa.gep4.i.i.i, %bb.h ]
  %.sink13.i.i.i.i = phi i64 [ %i.af, %bb.o ], [ %i.x, %bb.h ]
  %.sink12.ph.i.i.i.i = phi i64 [ 40, %bb.o ], [ 24, %bb.h ]
  %.sink10.ph.i.i.i.i = phi ptr [ %i.ai, %bb.o ], [ %i.aa, %bb.h ]
  %.sink9.ph.i.i.i.i = phi i64 [ 48, %bb.o ], [ 32, %bb.h ]
  %.sink7.ph.i.i.i.i = phi i64 [ %i.aj, %bb.o ], [ %i.ab, %bb.h ]
  store ptr %.sink16.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i, align 8, !alias.scope !7117, !noalias !7121
  store i64 %.sink13.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i, align 8, !alias.scope !7117, !noalias !7121
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.q, align 8, !alias.scope !7118, !noalias !7119, !nonnull !24, !noundef !24 ; 2 uses
  %i.ab = load i64, ptr %i.r, align 8, !alias.scope !7118, !noalias !7119, !noundef !24
  %i.ac = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !7120
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %.sink.split.i.i.i.i

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.q, align 8, !alias.scope !7118, !noalias !7119, !nonnull !24, !noundef !24 ; 2 uses
  %i.af = load i64, ptr %i.r, align 8, !alias.scope !7118, !noalias !7119, !noundef !24
  %i.ag = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !noalias !7120
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.s, align 8, !alias.scope !7118, !noalias !7119, !nonnull !24, !noundef !24 ; 2 uses
  %i.aj = load i64, ptr %i.t, align 8, !alias.scope !7118, !noalias !7119, !noundef !24
  %i.ak = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !noalias !7120
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.p, label %bb.o

end_hunk_0
