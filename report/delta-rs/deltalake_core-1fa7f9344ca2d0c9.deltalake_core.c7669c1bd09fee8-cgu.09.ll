inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEENCNvMNtNtNtB21_4file8metadata6writerINtB2Z_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finishs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5d_8for_each4callNtNtB21_5basic11ColumnOrderNCINvMsj_NtB1s_3vecINtB6Q_3VecB6g_E14extend_trustedBN_E0E0EB43_:bb.a
  %.sroa.0.0.i.i.i = select i1 %.not4.i.i.i, ptr null, ptr %i.l
  %i.r = invoke noundef range(i8 0, 3) i8 @_RNvMsd_NtCs4tdlwR1I4n2_7parquet5basicNtB5_11ColumnOrder19sort_order_for_type(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.0.0.i.i.i, i8 noundef %i.p, i8 noundef %i.q)
          to label %bb.d unwind label %bb.e, !noalias !13074

bb.d:                                             ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val15.i
  store i8 %i.r, ptr %i.s, align 1, !noalias !13080
  %i.t = add i64 %.val15.i, 1                     ; 2 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e
  br i1 %i.v, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtB1u_5basic11ColumnOrderuNCNvMNtNtNtB1u_4file8metadata6writerINtB4i_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finishs_0NCINvNvB2n_8for_each4callB3L_NCINvMsj_NtBV_3vecINtB77_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4d_EE0E0E0EB5m_.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !13074
  resume { ptr, i32 } %i.w

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtB1u_5basic11ColumnOrderuNCNvMNtNtNtB1u_4file8metadata6writerINtB4i_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE6finishs_0NCINvNvB2n_8for_each4callB3L_NCINvMsj_NtBV_3vecINtB77_3VecB3L_E14extend_trustedINtB3d_3MapBF_B4d_EE0E0E0EB5m_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.t, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !13074
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEENCNvMNtNtNtB21_4file8metadata6writerINtB2Z_20ThriftMetadataWriterQINtNtB1s_3vec3VechEE6finishs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4t_8for_each4callNtNtB21_5basic11ColumnOrderNCINvMsj_B41_IB3Z_B5w_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtB1u_5basic11ColumnOrderuNCNvMNtNtNtB1u_4file8metadata6writerINtB4i_20ThriftMetadataWriterQINtNtBV_3vec3VechEE6finishs_0NCINvNvB2n_8for_each4callB3L_NCINvMsj_B5k_IB5i_B3L_E14extend_trustedINtB3d_3MapBF_B4d_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.t, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.f, align 8, !noalias !13085, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val16.i, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !noalias !13088, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !56, !noalias !13088, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.j, -9223372036854775808
  %..i.i.i = select i1 %.not.i.i.i, i64 24, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !135, !noalias !13088, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 65
  %i.p = load i8, ptr %i.o, align 1, !range !13068, !noalias !13088, !noundef !4
  %i.q = invoke noundef i8 @_RNvMsc_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_16ColumnDescriptor13physical_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n)
          to label %.noexc.i unwind label %bb.e, !noalias !13085

.noexc.i:                                         ; preds = %bb.c
  %.not4.i.i.i = icmp eq i64 %i.m, -9223372036854775789
  %.sroa.0.0.i.i.i = select i1 %.not4.i.i.i, ptr null, ptr %i.l
  %i.r = invoke noundef range(i8 0, 3) i8 @_RNvMsd_NtCs4tdlwR1I4n2_7parquet5basicNtB5_11ColumnOrder19sort_order_for_type(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.0.0.i.i.i, i8 noundef %i.p, i8 noundef %i.q)
          to label %bb.d unwind label %bb.e, !noalias !13085

bb.d:                                             ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val15.i
  store i8 %i.r, ptr %i.s, align 1, !noalias !13091
  %i.t = add i64 %.val15.i, 1                     ; 2 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e
  br i1 %i.v, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtB1u_5basic11ColumnOrderuNCNvMNtNtNtB1u_4file8metadata6writerINtB4i_20ThriftMetadataWriterQINtNtBV_3vec3VechEE6finishs_0NCINvNvB2n_8for_each4callB3L_NCINvMsj_B5k_IB5i_B3L_E14extend_trustedINtB3d_3MapBF_B4d_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !13085
  resume { ptr, i32 } %i.w

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2t_8adapters3map8map_foldRBQ_NtNtB1u_5basic11ColumnOrderuNCNvMNtNtNtB1u_4file8metadata6writerINtB4i_20ThriftMetadataWriterQINtNtBV_3vec3VechEE6finishs_0NCINvNvB2n_8for_each4callB3L_NCINvMsj_B5k_IB5i_B3L_E14extend_trustedINtB3d_3MapBF_B4d_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.t, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !13085
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB35_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5P_8try_folduNCINvNvB5P_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprINtNtNtBc_3ops12control_flow11ControlFlowB9y_ENcNtBaw_5Break0E0Baw_E0IBax_Baw_EEB4c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([416 x i8]) align 16 captures(none) dereferenceable(416) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [408 x i8], align 8     ; 5 uses
  %i.a = alloca [744 x i8], align 8               ; 5 uses
  %i.b = alloca [416 x i8], align 16              ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13099)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !13101, !noalias !13096, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !13101, !noalias !13096 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB6c_B4d_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB78_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB3g_INtB3g_12GenericShuntINtB3e_3MapB3_B71_EIB3S_NtNtBa_7convert10InfallibleB5b_EEB2k_8try_folduNCINvNvB2k_12try_for_each4callB4d_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6b_EB8f_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.48..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 40
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !13104, !noalias !13107, !nonnull !4, !align !8, !noundef !4
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !4, !align !63
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !4
  %i.p = load ptr, ptr %i.k, align 8, !nonnull !4, !align !8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.q = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.r, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr %i.r, ptr %1, align 8, !alias.scope !13101, !noalias !13096
  %.val6.i = load ptr, ptr %i.q, align 8, !noalias !13111, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13104)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13112
  call fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %.val6.i) #46, !noalias !13112
  store i64 70, ptr %i.a, align 8, !noalias !13112
  %i.s = load i8, ptr %i.o, align 1, !range !3, !noalias !13112, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE17sql_select_to_rexB1a_(ptr noalias noundef nonnull sret([416 x i8]) align 16 captures(none) dereferenceable(416) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(744) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.n, i1 noundef zeroext %i.t, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.p), !noalias !13113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13112
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !noalias !13113 ; 3 uses
  %i.u = icmp eq i64 %.sroa.0.0.copyload.i.i, 3
  br i1 %i.u, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4V_B2W_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5R_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5K_EIB2B_NtNtBa_7convert10InfallibleB3U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBap_12try_for_each4callB2W_B5z_NcNtB5z_5Break0E0B5z_E0E0B6Y_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %3, align 8, !range !3294, !alias.scope !13114, !noalias !13117, !noundef !4
  %i.w = icmp eq i64 %i.v, 20
  br i1 %i.w, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4V_B2W_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5R_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5K_EIB2B_NtNtBa_7convert10InfallibleB3U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBap_12try_for_each4callB2W_B5z_NcNtB5z_5Break0E0B5z_E0E0B6Y_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4V_B2W_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5R_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5K_EIB2B_NtNtBa_7convert10InfallibleB3U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBap_12try_for_each4callB2W_B5z_NcNtB5z_5Break0E0B5z_E0E0B6Y_.exit.thread.i unwind label %bb.e, !noalias !13117

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !13113
  resume { ptr, i32 } %i.x

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4V_B2W_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5R_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5K_EIB2B_NtNtBa_7convert10InfallibleB3U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBap_12try_for_each4callB2W_B5z_NcNtB5z_5Break0E0B5z_E0E0B6Y_.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !13113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13111
  br label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4V_B2W_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5R_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5K_EIB2B_NtNtBa_7convert10InfallibleB3U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBap_12try_for_each4callB2W_B5z_NcNtB5z_5Break0E0B5z_E0E0B6Y_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !13111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.4.48..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(368) %i.l, i64 368, i1 false), !noalias !13111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13111
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 4
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4V_B2W_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5R_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5K_EIB2B_NtNtBa_7convert10InfallibleB3U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBap_12try_for_each4callB2W_B5z_NcNtB5z_5Break0E0B5z_E0E0B6Y_.exit.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4V_B2W_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5R_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5K_EIB2B_NtNtBa_7convert10InfallibleB3U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBap_12try_for_each4callB2W_B5z_NcNtB5z_5Break0E0B5z_E0E0B6Y_.exit.thread.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(408) %.sroa.4.i.i.i, i64 408, i1 false), !noalias !13099
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB6c_B4d_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB78_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB3g_INtB3g_12GenericShuntINtB3e_3MapB3_B71_EIB3S_NtNtBa_7convert10InfallibleB5b_EEB2k_8try_folduNCINvNvB2k_12try_for_each4callB4d_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6b_EB8f_.exit

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4V_B2W_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5R_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5K_EIB2B_NtNtBa_7convert10InfallibleB3U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBap_12try_for_each4callB2W_B5z_NcNtB5z_5Break0E0B5z_E0E0B6Y_.exit.i
  %i.y = icmp eq ptr %i.r, %i.d
  br i1 %i.y, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB6c_B4d_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB78_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB3g_INtB3g_12GenericShuntINtB3e_3MapB3_B71_EIB3S_NtNtBa_7convert10InfallibleB5b_EEB2k_8try_folduNCINvNvB2k_12try_for_each4callB4d_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6b_EB8f_.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB6c_B4d_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB78_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_options0NCINvXB3g_INtB3g_12GenericShuntINtB3e_3MapB3_B71_EIB3S_NtNtBa_7convert10InfallibleB5b_EEB2k_8try_folduNCINvNvB2k_12try_for_each4callB4d_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6b_EB8f_.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %storemerge.i = phi i64 [ %.sroa.0.0.copyload.i.i, %.loopexit.i ], [ 4, %bb.a ], [ 4, %bb.f ]
  store i64 %storemerge.i, ptr %0, align 16, !alias.scope !13096, !noalias !13099
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1Z_11ObjectStoreEL_EEB4S_10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtB4o_5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB5y_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8p_8for_each4callB7i_NCINvMsj_NtB4o_3vecINtB9F_3VecB7i_E14extend_trustedBN_E0E0EB33_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3r_11ObjectStoreEL_EEB6k_10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtB5Q_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B70_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5Q_3vecINtB9W_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0EB4v_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13124
  call void @llvm.experimental.noalias.scope.decl(metadata !13128)
  %i.s = load ptr, ptr %i.n, align 8, !noalias !13131, !nonnull !4, !noundef !4
  %i.t = load i64, ptr %i.o, align 8, !noalias !13131, !noundef !4
  %i.u = invoke noundef i64 @_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1p_11ObjectStoreEL_EEB4i_10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtB3O_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4Y_ENtNtB5_6marker4SendEL_EEE000EB2t_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !13133

.noexc.i:                                         ; preds = %bb.c
  %i.v = add i64 %i.u, -1                         ; 5 uses
  %i.w = load i64, ptr %i.o, align 8, !noalias !13134, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %.invoke

bb.d:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.p, align 8, !noalias !13134, !noundef !4 ; 2 uses
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB8_11ObjectStoreEL_EEB31_10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB2x_5boxed3BoxDNtNtNtB3W_6future6future6Futurep6OutputINtNtB3W_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3G_ENtNtB3W_6marker4SendEL_EEE00B1c_.exit.i.i, label %.invoke

.invoke:                                          ; preds = %bb.d, %.noexc.i
  %i.aa = phi i64 [ %i.w, %.noexc.i ], [ %i.y, %bb.d ]
  %i.ab = phi ptr [ @221, %.noexc.i ], [ @222, %bb.d ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #39
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !13133

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB8_11ObjectStoreEL_EEB31_10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB2x_5boxed3BoxDNtNtNtB3W_6future6future6Futurep6OutputINtNtB3W_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3G_ENtNtB3W_6marker4SendEL_EEE00B1c_.exit.i.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !13134, !nonnull !4, !noundef !4
  %i.ad = load ptr, ptr %i.n, align 8, !noalias !13134, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !alias.scope !13135, !noalias !13136, !noundef !4
  %i.ah = load i64, ptr %i.ae, align 8, !noalias !13136, !noundef !4 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !13135, !noalias !13136, !noundef !4
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !13136, !noundef !4
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.al)
  invoke void @_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.af, i64 noundef %i.ai, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.e unwind label %.loopexit.i, !noalias !13133

bb.e:                                             ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB8_11ObjectStoreEL_EEB31_10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB2x_5boxed3BoxDNtNtNtB3W_6future6future6Futurep6OutputINtNtB3W_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3G_ENtNtB3W_6marker4SendEL_EEE00B1c_.exit.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !13137
  %i.ap = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13124
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m
  br i1 %i.ar, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3r_11ObjectStoreEL_EEB6k_10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtB5Q_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B70_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5Q_3vecINtB9W_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0EB4v_.exit, label %bb.c

.loopexit.i:                                      ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB8_11ObjectStoreEL_EEB31_10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB2x_5boxed3BoxDNtNtNtB3W_6future6future6Futurep6OutputINtNtB3W_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3G_ENtNtB3W_6marker4SendEL_EEE00B1c_.exit.i.i, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !13133
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3r_11ObjectStoreEL_EEB6k_10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtB5Q_5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B70_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5Q_3vecINtB9W_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0EB4v_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ap, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !13133
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_3aws8AmazonS3NtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3M_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6T_8for_each4callB5M_NCINvMsj_NtB4j_3vecINtB89_3VecB5M_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_3aws8AmazonS3NtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5e_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5L_3vecINtB8q_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13145
  call void @llvm.experimental.noalias.scope.decl(metadata !13149)
  %i.s = load ptr, ptr %i.n, align 8, !noalias !13152, !nonnull !4, !noundef !4
  %i.t = load i64, ptr %i.o, align 8, !noalias !13152, !noundef !4
  %i.u = invoke noundef i64 @_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_3aws8AmazonS3NtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3c_ENtNtB5_6marker4SendEL_EEE000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !13154

.noexc.i:                                         ; preds = %bb.c
  %i.v = add i64 %i.u, -1                         ; 5 uses
  %i.w = load i64, ptr %i.o, align 8, !noalias !13155, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %.invoke

bb.d:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.p, align 8, !noalias !13155, !noundef !4 ; 2 uses
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3aws8AmazonS3NtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB29_6future6future6Futurep6OutputINtNtB29_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB1T_ENtNtB29_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.invoke

.invoke:                                          ; preds = %bb.d, %.noexc.i
  %i.aa = phi i64 [ %i.w, %.noexc.i ], [ %i.y, %bb.d ]
  %i.ab = phi ptr [ @221, %.noexc.i ], [ @222, %bb.d ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #39
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !13154

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3aws8AmazonS3NtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB29_6future6future6Futurep6OutputINtNtB29_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB1T_ENtNtB29_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !13155, !nonnull !4, !noundef !4
  %i.ad = load ptr, ptr %i.n, align 8, !noalias !13155, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !alias.scope !13156, !noalias !13157, !noundef !4
  %i.ah = load i64, ptr %i.ae, align 8, !noalias !13157, !noundef !4 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !13156, !noalias !13157, !noundef !4
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !13157, !noundef !4
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.al)
  invoke void @_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.af, i64 noundef %i.ai, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.e unwind label %.loopexit.i, !noalias !13154

bb.e:                                             ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3aws8AmazonS3NtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB29_6future6future6Futurep6OutputINtNtB29_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB1T_ENtNtB29_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !13158
  %i.ap = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13145
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m
  br i1 %i.ar, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_3aws8AmazonS3NtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5e_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5L_3vecINtB8q_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

.loopexit.i:                                      ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3aws8AmazonS3NtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB29_6future6future6Futurep6OutputINtNtB29_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB1T_ENtNtB29_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !13154
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_3aws8AmazonS3NtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5e_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5L_3vecINtB8q_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ap, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !13154
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_3gcp18GoogleCloudStorageNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3X_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB74_8for_each4callB5X_NCINvMsj_NtB4u_3vecINtB8k_3VecB5X_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_3gcp18GoogleCloudStorageNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5p_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5W_3vecINtB8B_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13166
  call void @llvm.experimental.noalias.scope.decl(metadata !13170)
  %i.s = load ptr, ptr %i.n, align 8, !noalias !13173, !nonnull !4, !noundef !4
  %i.t = load i64, ptr %i.o, align 8, !noalias !13173, !noundef !4
  %i.u = invoke noundef i64 @_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_3gcp18GoogleCloudStorageNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3n_ENtNtB5_6marker4SendEL_EEE000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !13175

.noexc.i:                                         ; preds = %bb.c
  %i.v = add i64 %i.u, -1                         ; 5 uses
  %i.w = load i64, ptr %i.o, align 8, !noalias !13176, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %.invoke

bb.d:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.p, align 8, !noalias !13176, !noundef !4 ; 2 uses
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3gcp18GoogleCloudStorageNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2k_6future6future6Futurep6OutputINtNtB2k_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB24_ENtNtB2k_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.invoke

.invoke:                                          ; preds = %bb.d, %.noexc.i
  %i.aa = phi i64 [ %i.w, %.noexc.i ], [ %i.y, %bb.d ]
  %i.ab = phi ptr [ @221, %.noexc.i ], [ @222, %bb.d ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #39
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !13175

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3gcp18GoogleCloudStorageNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2k_6future6future6Futurep6OutputINtNtB2k_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB24_ENtNtB2k_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !13176, !nonnull !4, !noundef !4
  %i.ad = load ptr, ptr %i.n, align 8, !noalias !13176, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !alias.scope !13177, !noalias !13178, !noundef !4
  %i.ah = load i64, ptr %i.ae, align 8, !noalias !13178, !noundef !4 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !13177, !noalias !13178, !noundef !4
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !13178, !noundef !4
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.al)
  invoke void @_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.af, i64 noundef %i.ai, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.e unwind label %.loopexit.i, !noalias !13175

bb.e:                                             ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3gcp18GoogleCloudStorageNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2k_6future6future6Futurep6OutputINtNtB2k_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB24_ENtNtB2k_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !13179
  %i.ap = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13166
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m
  br i1 %i.ar, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_3gcp18GoogleCloudStorageNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5p_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5W_3vecINtB8B_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

.loopexit.i:                                      ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3gcp18GoogleCloudStorageNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2k_6future6future6Futurep6OutputINtNtB2k_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB24_ENtNtB2k_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !13175
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_3gcp18GoogleCloudStorageNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5p_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5W_3vecINtB8B_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ap, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !13175
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_4http9HttpStoreNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3O_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6V_8for_each4callB5O_NCINvMsj_NtB4l_3vecINtB8b_3VecB5O_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_4http9HttpStoreNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5g_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5N_3vecINtB8s_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13184)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13187
  call void @llvm.experimental.noalias.scope.decl(metadata !13191)
  %i.s = load ptr, ptr %i.n, align 8, !noalias !13194, !nonnull !4, !noundef !4
  %i.t = load i64, ptr %i.o, align 8, !noalias !13194, !noundef !4
  %i.u = invoke noundef i64 @_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_4http9HttpStoreNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3e_ENtNtB5_6marker4SendEL_EEE000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !13196

.noexc.i:                                         ; preds = %bb.c
  %i.v = add i64 %i.u, -1                         ; 5 uses
  %i.w = load i64, ptr %i.o, align 8, !noalias !13197, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %.invoke

bb.d:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.p, align 8, !noalias !13197, !noundef !4 ; 2 uses
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_4http9HttpStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB1V_ENtNtB2b_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.invoke

.invoke:                                          ; preds = %bb.d, %.noexc.i
  %i.aa = phi i64 [ %i.w, %.noexc.i ], [ %i.y, %bb.d ]
  %i.ab = phi ptr [ @221, %.noexc.i ], [ @222, %bb.d ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #39
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !13196

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_4http9HttpStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB1V_ENtNtB2b_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !13197, !nonnull !4, !noundef !4
  %i.ad = load ptr, ptr %i.n, align 8, !noalias !13197, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !alias.scope !13198, !noalias !13199, !noundef !4
  %i.ah = load i64, ptr %i.ae, align 8, !noalias !13199, !noundef !4 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !13198, !noalias !13199, !noundef !4
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !13199, !noundef !4
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.al)
  invoke void @_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.af, i64 noundef %i.ai, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.e unwind label %.loopexit.i, !noalias !13196

bb.e:                                             ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_4http9HttpStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB1V_ENtNtB2b_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !13200
  %i.ap = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13187
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m
  br i1 %i.ar, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_4http9HttpStoreNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5g_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5N_3vecINtB8s_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

.loopexit.i:                                      ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_4http9HttpStoreNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2b_6future6future6Futurep6OutputINtNtB2b_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB1V_ENtNtB2b_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !13196
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_4http9HttpStoreNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5g_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5N_3vecINtB8s_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ap, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !13196
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_5azure14MicrosoftAzureNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3V_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB72_8for_each4callB5V_NCINvMsj_NtB4s_3vecINtB8i_3VecB5V_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_5azure14MicrosoftAzureNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5n_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5U_3vecINtB8z_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13208
  call void @llvm.experimental.noalias.scope.decl(metadata !13212)
  %i.s = load ptr, ptr %i.n, align 8, !noalias !13215, !nonnull !4, !noundef !4
  %i.t = load i64, ptr %i.o, align 8, !noalias !13215, !noundef !4
  %i.u = invoke noundef i64 @_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_5azure14MicrosoftAzureNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3l_ENtNtB5_6marker4SendEL_EEE000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !13217

.noexc.i:                                         ; preds = %bb.c
  %i.v = add i64 %i.u, -1                         ; 5 uses
  %i.w = load i64, ptr %i.o, align 8, !noalias !13218, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %.invoke

bb.d:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.p, align 8, !noalias !13218, !noundef !4 ; 2 uses
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_5azure14MicrosoftAzureNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2i_6future6future6Futurep6OutputINtNtB2i_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB22_ENtNtB2i_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.invoke

.invoke:                                          ; preds = %bb.d, %.noexc.i
  %i.aa = phi i64 [ %i.w, %.noexc.i ], [ %i.y, %bb.d ]
  %i.ab = phi ptr [ @221, %.noexc.i ], [ @222, %bb.d ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #39
          to label %.cont unwind label %.loopexit.split-lp.i, !noalias !13217

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_5azure14MicrosoftAzureNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2i_6future6future6Futurep6OutputINtNtB2i_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB22_ENtNtB2i_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !noalias !13218, !nonnull !4, !noundef !4
  %i.ad = load ptr, ptr %i.n, align 8, !noalias !13218, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.v
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !alias.scope !13219, !noalias !13220, !noundef !4
  %i.ah = load i64, ptr %i.ae, align 8, !noalias !13220, !noundef !4 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !13219, !noalias !13220, !noundef !4
  %i.al = sub i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !13220, !noundef !4
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.al)
  invoke void @_RINvMNtCs9Ct3XQYJhun_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.af, i64 noundef %i.ai, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.e unwind label %.loopexit.i, !noalias !13217

bb.e:                                             ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_5azure14MicrosoftAzureNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2i_6future6future6Futurep6OutputINtNtB2i_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB22_ENtNtB2i_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !13221
  %i.ap = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13208
  %i.aq = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m
  br i1 %i.ar, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_5azure14MicrosoftAzureNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5n_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5U_3vecINtB8z_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

.loopexit.i:                                      ; preds = %_RNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_5azure14MicrosoftAzureNtB8_11ObjectStore10get_ranges00NtB8_5ErrorINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2i_6future6future6Futurep6OutputINtNtB2i_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB22_ENtNtB2i_6marker4SendEL_EEE00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %.invoke
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !13217
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesuNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_5azure14MicrosoftAzureNtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorINtNtBb_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBb_6future6future6Futurep6OutputINtNtBb_6result6ResultB2H_B5n_ENtNtBb_6marker4SendEL_EEE00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtB5U_3vecINtB8z_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ap, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !13217
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB2r_14LogDataHandler10pick_stats0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2x_6errors15DeltaTableErrorEEB4c_8try_folduNCINvNvB4c_12try_for_each4callINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB1r_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB7t_ENcNtB8q_5Break0E0B8q_E0IB8r_B8q_EEB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 16 dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [96 x i8], align 16               ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.10.i.i = alloca [72 x i8], align 8       ; 6 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !13231, !noalias !13226, !nonnull !4, !noundef !4 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !13231, !noalias !13226, !nonnull !4, !noundef !4
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtBN_5array5ArrayEL_ENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5u_B3z_EENCNvMNtNtNtNtB4z_6kernel8snapshot8log_data10datafusionNtB6q_14LogDataHandler10pick_stats0NCINvXB2C_INtB2C_12GenericShuntINtB2A_3MapB3_B6j_EIB3e_NtNtBa_7convert10InfallibleB4v_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3z_B68_NcNtB68_5Break0E0B68_E0E0B5t_EB4z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.l, ptr %1, align 8, !alias.scope !13231, !noalias !13226
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13237)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %.val.i.i = load ptr, ptr %i.k, align 8, !noalias !13239, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13240)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13243
  %i.m = load ptr, ptr %.val.i.i, align 8, !noalias !13243, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !13243, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !58, !invariant.load !4, !noalias !13243
  %i.r = add nsw i64 %i.q, -1
  %i.s = and i64 %i.r, -16
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13243
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13250
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !13251, !noalias !13252, !nonnull !4, !noundef !4 ; 4 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8, !noalias !13250
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.b, align 8, !noalias !13250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13250
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g)
          to label %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.e, !noalias !13252

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !13253
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %common.resume.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #45
          to label %common.resume.i.i unwind label %bb.g, !noalias !13252

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !13252
  unreachable

common.resume.i.i:                                ; preds = %bb.r, %bb.k, %bb.f, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.au, %bb.r ], [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.ap, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !13251, !noalias !13252, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.w, ptr %i.af, align 8, !alias.scope !13245, !noalias !13258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !13258
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.ae, ptr %i.ag, align 8, !alias.scope !13245, !noalias !13258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13250
  call void @_RNvXs4_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_extDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_NtB5_22ExpressionEvaluatorExt14evaluate_arrowBb_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c), !noalias !13259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13243
  %i.ah = load i64, ptr %i.d, align 16, !range !236, !noalias !13259, !noundef !4 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ah, -9223372036854775743
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.i.sroa.0.0.copyload3.i.i = load ptr, ptr %i.ai, align 8, !noalias !13259 ; 3 uses
  %.sroa.6.i.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.i.sroa.6.0.copyload6.i.i = load ptr, ptr %.sroa.6.i.sroa.6.0..sroa_idx5.i.i, align 16, !noalias !13259 ; 5 uses
  br i1 %.not.i.i.i, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_RNvXs8_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB5_11RecordBatchNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  store ptr %.sroa.6.i.sroa.0.0.copyload3.i.i, ptr %i.e, align 8, !noalias !13243
  %.sroa.6.i.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.6.i.sroa.6.0.copyload6.i.i, ptr %.sroa.6.i.sroa.6.0..sroa_idx7.i.i, align 8, !noalias !13243
  %.sroa.6.i.sroa.7.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.7.0..sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !13259
  %i.aj = load i64, ptr %.sroa.6.i.sroa.7.0..sroa_idx10.i.i, align 8, !noalias !13243, !noundef !4
  %.not19.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not19.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %.sroa.6.i.sroa.6.0.copyload6.i.i, align 8, !noalias !13260, !nonnull !4, !noundef !4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.6.i.sroa.6.0.copyload6.i.i, i64 8
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBY_B1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB54_3VecB4w_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core:bb.a
.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !15185, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.l ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !15185, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !15185, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !58, !invariant.load !4, !noalias !15185
  %i.x = add nsw i64 %i.w, -1
  %i.y = and i64 %i.x, -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !15188
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.u, ptr %i.ac, align 8, !noalias !15188
  %i.ad = add i64 %.val15.i, 1                    ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.j
  br i1 %i.af, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBG_BR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !15182
  resume { ptr, i32 } %i.ag

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBG_BR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ad, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !15182
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3X_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_B3l_IB3j_B50_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !8, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecBR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_B4B_IB4z_B3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ad, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.k, align 8, !noalias !15195, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.l = load i64, ptr %i.e, align 8, !noalias !15198, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !15198, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #39
          to label %.noexc.i unwind label %bb.f, !noalias !15195

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !15198, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.l ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !15198, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !15198, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !58, !invariant.load !4, !noalias !15198
  %i.x = add nsw i64 %i.w, -1
  %i.y = and i64 %i.x, -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !15201
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.u, ptr %i.ac, align 8, !noalias !15201
  %i.ad = add i64 %.val15.i, 1                    ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.j
  br i1 %i.af, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecBR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_B4B_IB4z_B3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !15195
  resume { ptr, i32 } %i.ag

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecBR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_B4B_IB4z_B3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ad, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !15195
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB46_8for_each4callNtNtB1s_12table_source27TableProviderFilterPushDownNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB67_3VecB59_E14extend_trustedBN_E0E0EB2m_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6n_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.62.0.copyload) ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.l, align 8, !noalias !15208, !nonnull !4, !align !63, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15211
  %i.m = load i8, ptr %.sroa.62.0.copyload, align 1, !range !3, !noalias !15211, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  invoke void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %.val16.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %.sroa.01.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.5.0.copyload, i1 noundef zeroext %i.n)
          to label %.noexc.i unwind label %bb.f, !noalias !15208

.noexc.i:                                         ; preds = %bb.c
  %i.o = load i8, ptr %i.k, align 8, !range !4997, !noalias !15211, !noundef !4
  %i.p = load i64, ptr %i.a, align 16, !range !15216, !alias.scope !15217, !noalias !15211, !noundef !4
  %i.q = icmp eq i64 %i.p, 16
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.a)
          to label %bb.e unwind label %bb.f, !noalias !15208

bb.e:                                             ; preds = %bb.d, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15211
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val15.i
  store i8 %i.o, ptr %i.r, align 1, !noalias !15222
  %i.s = add i64 %.val15.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.j
  br i1 %i.u, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6n_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit, label %bb.c

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !15208
  resume { ptr, i32 } %i.v

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6n_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !15208
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB2g_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider25supports_filters_pushdown0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtNtB1s_12table_source27TableProviderFilterPushDownNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7a_3VecB6c_E14extend_trustedBN_E0E0EB2m_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB3W_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7q_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 2, i64 %i.e, i1 false), !noalias !15227
  %i.f = add i64 %.sroa.5.0.copyload, %i.e
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB3W_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7q_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB3W_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7q_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.f, %bb.b ], [ %.sroa.5.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !15236
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtB1s_19interval_arithmetic8IntervalINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [112 x i8], align 16    ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15240)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !15242, !noalias !15237, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !15242, !noalias !15237 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.4.56..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !alias.scope !15242, !noalias !15237
  %.val5.i = load ptr, ptr %i.g, align 8, !noalias !15245, !nonnull !4, !align !63, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15245
  call void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB2_12Distribution5range(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val5.i), !noalias !15246
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.a, align 16, !noalias !15246 ; 3 uses
  %i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 50
  br i1 %i.i, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8, !range !3294, !alias.scope !15249, !noalias !15252, !noundef !4
  %i.k = icmp eq i64 %i.j, 20
  br i1 %i.k, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i unwind label %bb.e, !noalias !15252

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15246
  resume { ptr, i32 } %i.l

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15245
  br label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.56..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !15245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.i.i.i, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15245
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 51
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.4.i.i.i, i64 112, i1 false), !noalias !15240
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.m = icmp eq ptr %i.h, %i.c
  br i1 %i.m, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %storemerge.i = phi i128 [ %.sroa.0.0.copyload.i.i, %.loopexit.i ], [ 51, %bb.a ], [ 51, %bb.f ]
  store i128 %storemerge.i, ptr %0, align 16, !alias.scope !15237, !noalias !15240
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5r_8try_folduNCINvNvB5r_12try_for_each4callNtNtB1s_19interval_arithmetic8IntervalINtNtNtBc_3ops12control_flow11ControlFlowB9a_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [112 x i8], align 16    ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15259)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !15261, !noalias !15256, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !15261, !noalias !15256 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.4.56..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !alias.scope !15261, !noalias !15256
  %.val5.i = load ptr, ptr %i.g, align 8, !noalias !15264, !nonnull !4, !align !63, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15264
  call void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB2_12Distribution5range(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val5.i), !noalias !15265
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.a, align 16, !noalias !15265 ; 3 uses
  %i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 50
  br i1 %i.i, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8, !range !3294, !alias.scope !15268, !noalias !15271, !noundef !4
  %i.k = icmp eq i64 %i.j, 20
  br i1 %i.k, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i unwind label %bb.e, !noalias !15271

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15265
  resume { ptr, i32 } %i.l

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15264
  br label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.56..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !15264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.i.i.i, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15264
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 51
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.4.i.i.i, i64 112, i1 false), !noalias !15259
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.m = icmp eq ptr %i.h, %i.c
  br i1 %i.m, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %storemerge.i = phi i128 [ %.sroa.0.0.copyload.i.i, %.loopexit.i ], [ 51, %bb.a ], [ 51, %bb.f ]
  store i128 %storemerge.i, ptr %0, align 16, !alias.scope !15256, !noalias !15259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterReENCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitionsNtB1y_15PartitionFilterINtNtBc_7convert7TryFromTB1n_B1n_RSB1n_EE8try_from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3L_8for_each4callNtNtCs6Po7BT7Nknu_5alloc6string6StringNCINvMsj_NtB4S_3vecINtB5z_3VecB4O_E14extend_trustedBN_E0E0EB1E_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRBQ_NtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitionsNtB31_15PartitionFilterINtNtBb_7convert7TryFromTBQ_BQ_RSBQ_EE8try_from0NCINvNvBT_8for_each4callB2g_NCINvMsj_NtB2k_3vecINtB5L_3VecB2g_E14extend_trustedINtB1J_3MapBF_B2T_EE0E0E0EB37_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.r, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val16.i = load ptr, ptr %i.i, align 8, !noalias !15275, !nonnull !4, !noundef !4
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val17.i = load i64, ptr %i.j, align 8, !noalias !15275, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15278
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val17.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !15275

.noexc.i:                                         ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !range !18, !noalias !15278, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
end_hunk_1
begin_hunk_2_@_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.at, ptr %i.f, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @444, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @372, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @443)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.e, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef 8, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.d, align 8
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @446, i64 noundef 20, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.c, align 8
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @447, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.b, align 8
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.t:                                             ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @449, i64 noundef 26)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 24)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.a, align 8
  %i.bg = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @451, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.aj, %bb.i ], [ %i.ak, %bb.j ], [ %i.am, %bb.k ], [ %i.ao, %bb.l ], [ %i.aq, %bb.m ], [ %i.as, %bb.n ], [ %i.au, %bb.o ], [ %i.aw, %bb.p ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bc, %bb.s ], [ %i.bd, %bb.t ], [ %i.be, %bb.u ], [ %i.bg, %bb.v ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !2326, !noundef !4 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !2326, !noundef !4
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %bb.p, %bb.w, %bb.a, %bb.o, %bb.n, %bb.m, %bb.an, %bb.am, %bb.ak, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.l, %bb.k, %bb.ab, %bb.j, %bb.i, %bb.h, %bb.x, %bb.b, %bb.ao, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.ak ], [ %i.ds, %bb.y ], [ %.mux, %bb.w ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bo, %bb.n ], [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ah, %bb.g ], [ false, %bb.x ], [ %i.dv, %bb.z ], [ true, %bb.h ], [ %i.dy, %bb.aa ], [ false, %bb.j ], [ %i.eg, %bb.ac ], [ true, %bb.i ], [ true, %bb.ab ], [ %i.ej, %bb.ad ], [ true, %bb.k ], [ %i.em, %bb.ae ], [ true, %bb.an ], [ %i.er, %bb.af ], [ true, %bb.l ], [ false, %bb.o ], [ false, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %i.fd, %bb.ag ], [ false, %bb.m ], [ %i.fi, %bb.ah ], [ false, %bb.q ], [ %i.fn, %bb.ai ], [ false, %bb.r ], [ %i.fs, %bb.aj ], [ false, %bb.s ], [ false, %bb.u ], [ %i.ga, %bb.al ], [ false, %bb.t ], [ false, %bb.am ], [ %i.gl, %bb.ao ], [ false, %bb.p ], [ true, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.ew, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr2969 = phi ptr [ %i.ev, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr68 = phi ptr [ %i.et, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.o
    i8 34, label %bb.p
    i8 35, label %bb.q
    i8 36, label %bb.r
    i8 37, label %bb.s
    i8 38, label %bb.t
    i8 39, label %bb.u
    i8 40, label %bb.v
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !1086, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !1086, !noundef !4
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.w, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !1086, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !1086, !noundef !4
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !1086, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !1086, !noundef !4
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !1086, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !1086, !noundef !4
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !4997, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !4997, !noundef !4
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !4
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.z

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.aa

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !4
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.ab, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val20 = load i64, ptr %i.bh, align 8, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val22 = load i64, ptr %i.bi, align 8, !noundef !4
  %i.bj = icmp eq i64 %.val20, %.val22
  br i1 %i.bj, label %bb.n, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val.a = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val21 = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.a, i64 16
  %i.bo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 %i.bn, ptr noundef nonnull readonly align 8 %i.bm, i64 noundef range(i64 0, 1152921504606846976) %.val20)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val24 = load i64, ptr %i.bp, align 8, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val26 = load i64, ptr %i.bq, align 8, !noundef !4
  %i.br = icmp eq i64 %.val24, %.val26
  br i1 %i.br, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val23.a = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val25 = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val23.a, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 %i.bv, ptr noundef nonnull readonly align 8 %i.bu, i64 noundef range(i64 0, 576460752303423488) %.val24)
  br i1 %i.bw, label %bb.af, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #46
  br i1 %i.cb, label %tailrecurse, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !4
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.ag, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !4
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.ah, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !noundef !4
  %i.cq = icmp eq i8 %i.cn, %i.cp
  br i1 %i.cq, label %bb.ai, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !4
  %i.cv = icmp eq i8 %i.cs, %i.cu
  br i1 %i.cv, label %bb.aj, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !range !3, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !3, !noundef !4
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.ak, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %bb.an, label %bb.am

bb.w:                                             ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.dh, null                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noundef !4 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null                 ; 2 uses
  %brmerge = or i1 %.not, %i.dk
  %.mux = and i1 %.not, %i.dk
  br i1 %brmerge, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.dn = load i64, ptr %i.dl, align 8, !noundef !4 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !noundef !4
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.y, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.dr, ptr nonnull %i.dq, i64 %i.dn)
  %i.ds = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dv = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.du)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.dy = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dx)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ef)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ej = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ei)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.em = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.el)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !range !3, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !3, !noundef !4
  %i.er = icmp eq i8 %i.eo, %i.eq
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ew = load i8, ptr %i.et, align 8, !range !2326, !noundef !4 ; 2 uses
  %i.ex = load i8, ptr %i.ev, align 8, !range !2326, !noundef !4
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fc = load i8, ptr %i.fb, align 2, !noundef !4
  %i.fd = icmp eq i8 %i.fa, %i.fc
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.ff = load i8, ptr %i.fe, align 2, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fh = load i8, ptr %i.fg, align 2, !noundef !4
  %i.fi = icmp eq i8 %i.ff, %i.fh
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fm = load i8, ptr %i.fl, align 2, !noundef !4
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fp = load i8, ptr %i.fo, align 2, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fr = load i8, ptr %i.fq, align 2, !noundef !4
  %i.fs = icmp eq i8 %i.fp, %i.fr
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fz)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.gd = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gc)
  br i1 %i.gd, label %bb.an, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.v, %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gi = icmp eq ptr %i.gf, %i.gh
  br i1 %i.gi, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ao
end_hunk_2
