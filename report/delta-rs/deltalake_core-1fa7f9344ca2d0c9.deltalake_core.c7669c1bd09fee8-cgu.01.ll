inline.NumInlined: 11461
inline.NumDeleted: 4051
begin_hunk_0_@_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB26_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0EB3d_:bb.a
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = extractvalue { i64, i64 } %i.g, 1
  %.not.i = icmp uge i64 %i.j, %i.e
  %or.cond.i.not = select i1 %i.i, i1 %.not.i, i1 false
  br i1 %or.cond.i.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10456)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10459
  store ptr %2, ptr %i.d, align 8, !noalias !10459
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.k, align 8, !noalias !10459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10459
  store i64 21, ptr %i.c, align 8, !noalias !10459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10459
  store ptr %i.d, ptr %i.b, align 8, !noalias !10459
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.l, align 8, !noalias !10459
  invoke void @_RNvCs1CPciySG8bN_7stacker5__grow(i64 noundef %i.f, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @16)
          to label %bb.c unwind label %bb.e, !noalias !10456

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !10459 ; 2 uses
  %.not.i1 = icmp eq i64 %.sroa.0.0.copyload.i, 21
  br i1 %.not.i1, label %bb.d, label %_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB19_5error15DataFusionErrorENCINvNvNtB17_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB49_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0EB5g_.exit, !prof !3

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !10456
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i64, ptr %i.c, align 8, !range !30, !alias.scope !10462, !noalias !10459, !noundef !8
  %i.o = and i64 %i.n, 30
  %switch.i.i = icmp eq i64 %i.o, 20
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !10456

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !10456
  unreachable

_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB19_5error15DataFusionErrorENCINvNvNtB17_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB49_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0EB5g_.exit: ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !alias.scope !10456, !noalias !10465
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i64 32, i1 false), !noalias !10465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10459
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4g_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0EB5n_.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10469)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !10466, !noalias !10471 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10473)
  %i.q = load i64, ptr %1, align 16, !range !289, !alias.scope !10476, !noalias !10477, !noundef !8 ; 2 uses
  %i.r = icmp ne i64 %i.q, 35
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.q, 5
  br i1 %i.s, label %bb.i, label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0B3f_.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10479
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.t) #44, !noalias !10477
  store i64 5, ptr %i.a, align 16, !noalias !10479
  %i.v = call noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a), !noalias !10477 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10479
  br label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0B3f_.exit

_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0B3f_.exit: ; preds = %bb.h, %bb.i
  call void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2S_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB3Z_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4g_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0EB5n_.exit

_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4g_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0EB5n_.exit: ; preds = %_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB19_5error15DataFusionErrorENCINvNvNtB17_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB49_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0EB5g_.exit, %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0B3f_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0EB27_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = tail call noundef i64 @_RNvCs121xw9Q1vLn_9recursive22get_minimum_stack_size()
  %i.e = tail call noundef i64 @_RNvCs121xw9Q1vLn_9recursive25get_stack_allocation_size()
  %i.f = tail call { i64, i64 } @_RNvCs1CPciySG8bN_7stacker15remaining_stack(), !noalias !10480 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = extractvalue { i64, i64 } %i.f, 1
  %.not.i = icmp uge i64 %i.i, %i.d
  %or.cond.i.not = select i1 %i.h, i1 %.not.i, i1 false
  br i1 %or.cond.i.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10488
  store ptr %2, ptr %i.c, align 8, !noalias !10488
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.j, align 8, !noalias !10488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10488
  store i64 21, ptr %i.b, align 8, !noalias !10488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10488
  store ptr %i.c, ptr %i.a, align 8, !noalias !10488
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.k, align 8, !noalias !10488
  invoke void @_RNvCs1CPciySG8bN_7stacker5__grow(i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @17)
          to label %bb.c unwind label %bb.e, !noalias !10485

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !10488 ; 2 uses
  %.not.i1 = icmp eq i64 %.sroa.0.0.copyload.i, 21
  br i1 %.not.i1, label %bb.d, label %_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB19_5error15DataFusionErrorENCINvNvNtB17_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0EB4a_.exit, !prof !3

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #41, !noalias !10485
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load i64, ptr %i.b, align 8, !range !30, !alias.scope !10491, !noalias !10488, !noundef !8
  %i.n = and i64 %i.m, 30
  %switch.i.i = icmp eq i64 %i.n, 20
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !10485

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !10485
  unreachable

_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB19_5error15DataFusionErrorENCINvNvNtB17_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0EB4a_.exit: ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !alias.scope !10485, !noalias !10494
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i64 32, i1 false), !noalias !10494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10488
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0EB4h_.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10505)
  %i.p = load i64, ptr %1, align 16, !range !289, !alias.scope !10507, !noalias !10508, !noundef !8 ; 3 uses
  %i.q = icmp ne i64 %i.p, 35
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i64 %i.p, -4
  %i.s = icmp samesign ugt i64 %i.p, 3
  %i.t = select i1 %i.s, i64 %i.r, i64 31
  switch i64 %i.t, label %bb.i [
    i64 1, label %bb.j
    i64 3, label %bb.m
    i64 4, label %bb.k
    i64 7, label %bb.m
    i64 8, label %bb.m
    i64 9, label %bb.m
    i64 17, label %bb.m
    i64 24, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %2, align 8, !alias.scope !10510, !noalias !10511, !nonnull !8, !noundef !8
  store i8 0, ptr %i.u, align 1, !noalias !10512
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !10510, !noalias !10511, !nonnull !8, !align !216, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !10510, !noalias !10511, !noundef !8
  %i.aa = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.x, i64 noundef %i.z), !noalias !10508
  %i.ab = load ptr, ptr %2, align 8, !alias.scope !10510, !noalias !10511, !nonnull !8, !noundef !8 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !range !89, !noalias !10508, !noundef !8
  %3 = select i1 %i.aa, i8 %i.ac, i8 0            ; 2 uses
  store i8 %3, ptr %i.ab, align 1, !noalias !10508
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.n, label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !range !3519, !alias.scope !10507, !noalias !10508, !noundef !8 ; 2 uses
  %i.af = icmp samesign ult i8 %i.ae, 13
  br i1 %i.af, label %switch.lookup, label %bb.l

switch.lookup:                                    ; preds = %bb.k
  %i.ag = zext nneg i8 %i.ae to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNCINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1b_5error15DataFusionErrorENCINvNvNtB19_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0E0B4c_, i64 %i.ag
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.l

bb.l:                                             ; preds = %switch.lookup, %bb.k
  %.sroa.0.0.i.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.k ]
  %i.ah = load ptr, ptr %2, align 8, !alias.scope !10510, !noalias !10511, !nonnull !8, !noundef !8 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !range !89, !noalias !10512, !noundef !8
  %i.aj = and i8 %i.ai, %.sroa.0.0.i.i            ; 2 uses
  store i8 %i.aj, ptr %i.ah, align 1, !noalias !10512
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  tail call void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB2T_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0EB4h_.exit

bb.n:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.al, align 8, !alias.scope !10513, !noalias !10516
  store i64 20, ptr %0, align 8, !alias.scope !10513, !noalias !10516
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0EB4h_.exit

bb.o:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.am, align 8, !alias.scope !10513, !noalias !10516
  store i64 20, ptr %0, align 8, !alias.scope !10513, !noalias !10516
  br label %_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0EB4h_.exit

_RINvCs1CPciySG8bN_7stacker10maybe_growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1g_5error15DataFusionErrorENCINvNvNtB1e_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0EB4h_.exit: ; preds = %bb.o, %bb.n, %bb.m, %_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB19_5error15DataFusionErrorENCINvNvNtB17_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0EB4a_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs7_NtCseqDwI8vvjGQ_10serde_json2deINtB8_9SeqAccesspENtNtCs1gOyXocuPRE_10serde_core2de9SeqAccess17next_element_seed16has_next_elementINtNtBa_4read6IoReadRShEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !8, !align !216, !noundef !8 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10519)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 89 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10522)
  %i.n = load i8, ptr %i.i, align 8, !range !89, !alias.scope !10525, !noalias !10526, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10529
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesRShEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k), !noalias !10526
  %i.p = load i8, ptr %i.b, align 8, !range !466, !noalias !10529, !noundef !8
  switch i8 %i.p, label %bb.f [
    i8 2, label %bb.g
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i
  ], !prof !9989

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %i.q = load i8, ptr %i.l, align 1, !noalias !10529, !noundef !8 ; 2 uses
  store i8 1, ptr %i.i, align 8, !alias.scope !10525, !noalias !10526
  store i8 %i.q, ptr %i.j, align 1, !alias.scope !10525, !noalias !10526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10529
  br label %bb.d

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread: ; preds = %bb.b
  %i.r = load i8, ptr %i.j, align 1, !alias.scope !10525, !noalias !10526, !noundef !8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread
  %i.s = phi i8 [ %i.r, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i.thread ], [ %i.q, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  switch i8 %i.s, label %.loopexit38 [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 93, label %.loopexit39
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h), !noalias !10530
  br label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.m, align 8, !noalias !10529, !nonnull !8, !noundef !8
  %i.u = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.t), !noalias !10526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10529
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 2, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10531)
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !10531, !noalias !10534, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %.val2.i = load i64, ptr %i.w, align 8, !alias.scope !10531, !noalias !10534, !noundef !8
  %i.x = call noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val.i, i64 noundef %.val2.i), !noalias !10531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi ptr [ %i.x, %bb.g ], [ %i.u, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.y, align 8
  br label %bb.s

.loopexit39:                                      ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.z, align 1
  br label %bb.s

.loopexit38:                                      ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !89, !noundef !8
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit38
  %i.ad = icmp eq i8 %i.s, 44
  br i1 %i.ad, label %bb.k, label %bb.p, !prof !215

bb.j:                                             ; preds = %.loopexit38
  store i8 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ae, align 1
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !10536)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !10539)
  %i.ah = load i8, ptr %i.i, align 8, !range !89, !alias.scope !10542, !noalias !10543, !noundef !8
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i9.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10546
  call void @_RNvXs_NtCseqDwI8vvjGQ_10serde_json4iterINtB4_15LineColIteratorINtNtCs2pqxYH9ZEk8_3std2io5BytesRShEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k), !noalias !10543
  %i.aj = load i8, ptr %i.a, align 8, !range !466, !noalias !10546, !noundef !8
  switch i8 %i.aj, label %bb.q [
    i8 2, label %bb.r
    i8 0, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i9
  ], !prof !9989

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i9: ; preds = %bb.m
  %i.ak = load i8, ptr %i.af, align 1, !noalias !10546, !noundef !8 ; 2 uses
  store i8 1, ptr %i.i, align 8, !alias.scope !10542, !noalias !10543
  store i8 %i.ak, ptr %i.j, align 1, !alias.scope !10542, !noalias !10543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10546
  br label %bb.n

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i9.thread: ; preds = %bb.l
  %i.al = load i8, ptr %i.j, align 1, !alias.scope !10542, !noalias !10543, !noundef !8
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i9, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i9.thread
  %i.am = phi i8 [ %i.al, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i9.thread ], [ %i.ak, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read4peekCs14kWLkQVSKO_14deltalake_core.exit.i9 ]
  switch i8 %i.am, label %.loopexit [
    i8 32, label %bb.o
    i8 10, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
    i8 93, label %.loopexit37
  ], !prof !10547

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  call void @_RNvXs2_NtCseqDwI8vvjGQ_10serde_json4readINtB5_6IoReadRShENtB5_4Read7discardCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.h), !noalias !10548
  br label %bb.l

bb.p:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 7, ptr %i.c, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10549)
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 64
end_hunk_0
begin_hunk_1_@_RNCINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1b_5error15DataFusionErrorENCINvNvNtB19_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB3p_5utils18find_exprs_in_exprNCINvB49_20find_aggregate_exprsRSB3l_E0E0E0E0Cs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !22903, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !22903, !noundef !8
  %i.n = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.k, i64 noundef %i.m), !noalias !22901
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22903
  call fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f) #44, !noalias !22901
  %i.o = load i64, ptr %i.l, align 8, !alias.scope !22904, !noalias !22907, !noundef !8 ; 3 uses
  %i.p = load i64, ptr %.val.i, align 8, !range !231, !alias.scope !22904, !noalias !22907, !noundef !8
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.f, !noalias !22909

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a) #42
          to label %common.resume unwind label %bb.g, !noalias !22901

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !22901
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.r, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.e, %bb.d
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !22904, !noalias !22907, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.t, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.u, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !22901
  %i.v = add i64 %i.o, 1
  store i64 %i.v, ptr %i.l, align 8, !alias.scope !22904, !noalias !22907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22903
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  call void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsRSBK_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1m_5utils18find_exprs_in_exprNCINvB26_20find_aggregate_exprsRSB1i_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.w, align 8
  store i64 20, ptr %i.b, align 8
  br label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1m_5utils18find_exprs_in_exprNCINvB26_20find_aggregate_exprsRSB1i_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1m_5utils18find_exprs_in_exprNCINvB26_20find_aggregate_exprsRSB1i_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !8, !align !216, !noundef !8 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !range !30, !alias.scope !22910, !noundef !8
  %i.aa = and i64 %i.z, 30
  %switch.i = icmp eq i64 %i.aa, 20
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.j

bb.j:                                             ; preds = %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1m_5utils18find_exprs_in_exprNCINvB26_20find_aggregate_exprsRSB1i_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #48
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1m_5utils18find_exprs_in_exprNCINvB26_20find_aggregate_exprsRSB1i_E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1b_5error15DataFusionErrorENCINvNvNtB19_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4b_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0E0B5i_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !216, !noundef !8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !align !216, !noundef !8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22916)
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !22913, !noalias !22918 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22920)
  %i.g = load i64, ptr %i.f, align 16, !range !289, !alias.scope !22923, !noalias !22924, !noundef !8 ; 2 uses
  %i.h = icmp ne i64 %i.g, 35
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 5
  br i1 %i.i, label %bb.c, label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0B3f_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22926
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call fastcc void @_RNvXs7_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.j) #44, !noalias !22924
  store i64 5, ptr %i.a, align 16, !noalias !22926
  %i.l = call noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val.i, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a), !noalias !22924 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22926
  br label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0B3f_.exit

_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0B3f_.exit: ; preds = %bb.b, %bb.c
  call void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2S_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB3Z_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !align !216, !noundef !8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !range !30, !alias.scope !22927, !noundef !8
  %i.p = and i64 %i.o, 30
  %switch.i = icmp eq i64 %i.p, 20
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0B3f_.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  resume { ptr, i32 } %i.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB28_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E0B3f_.exit, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1b_5error15DataFusionErrorENCINvNvNtB19_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0E0B4c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !216, !noundef !8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !216, !noundef !8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.k, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22938)
  %i.f = load i64, ptr %i.e, align 16, !range !289, !alias.scope !22940, !noalias !22941, !noundef !8 ; 3 uses
  %i.g = icmp ne i64 %i.f, 35
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -4
  %i.i = icmp samesign ugt i64 %i.f, 3
  %i.j = select i1 %i.i, i64 %i.h, i64 31
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.d
    i64 3, label %bb.g
    i64 4, label %bb.e
    i64 7, label %bb.g
    i64 8, label %bb.g
    i64 9, label %bb.g
    i64 17, label %bb.g
    i64 24, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !22944, !noalias !22945, !nonnull !8, !noundef !8
  store i8 0, ptr %i.k, align 1, !noalias !22946
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !22944, !noalias !22945, !nonnull !8, !align !216, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !22944, !noalias !22945, !noundef !8
  %i.q = tail call noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.p), !noalias !22941
  %i.r = load ptr, ptr %i.c, align 8, !alias.scope !22944, !noalias !22945, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !range !89, !noalias !22941, !noundef !8
  %1 = select i1 %i.q, i8 %i.s, i8 0              ; 2 uses
  store i8 %1, ptr %i.r, align 1, !noalias !22941
  %2 = trunc nuw i8 %1 to i1
  br i1 %2, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.u = load i8, ptr %i.t, align 8, !range !3519, !alias.scope !22940, !noalias !22941, !noundef !8 ; 2 uses
  %i.v = icmp samesign ult i8 %i.u, 13
  br i1 %i.v, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.e
  %i.w = zext nneg i8 %i.u to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNCINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1b_5error15DataFusionErrorENCINvNvNtB19_8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0E0B4c_, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e
  %.sroa.0.0.i.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.e ]
  %i.x = load ptr, ptr %i.c, align 8, !alias.scope !22944, !noalias !22945, !nonnull !8, !noundef !8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !range !89, !noalias !22946, !noundef !8
  %i.z = and i8 %i.y, %.sroa.0.0.i.i              ; 2 uses
  store i8 %i.z, ptr %i.x, align 1, !noalias !22946
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB2T_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0B29_.exit

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %i.ab, align 8
  store i64 20, ptr %i.a, align 8
  br label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0B29_.exit

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 2, ptr %i.ac, align 8
  store i64 20, ptr %i.a, align 8
  br label %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0B29_.exit

_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0B29_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !8, !align !216, !noundef !8 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !30, !alias.scope !22947, !noundef !8
  %i.ag = and i64 %i.af, 30
  %switch.i = icmp eq i64 %i.ag, 20
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.j

bb.j:                                             ; preds = %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0B29_.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #48
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  resume { ptr, i32 } %i.ah

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E0B29_.exit, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1b_5error15DataFusionErrorENCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB19_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0E0B3X_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.9 = alloca [31 x i8], align 1            ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !216, !noundef !8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !align !473, !noundef !8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22950
  call void @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB5_23FindFilesExprPropertiesNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node15TreeNodeVisitor6f_down(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 16 dereferenceable(128) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f), !noalias !22955
  %i.g = load i64, ptr %i.a, align 8, !range !43, !noalias !22950, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 20
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i8, ptr %i.h, align 8, !noalias !22950 ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.619.0..sroa_idx.i, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22950
  br label %_RNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0B1U_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22950
  switch i8 %i.i, label %default.unreachable.i [
    i8 0, label %_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion14visit_childrenNCNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE00EB2H_.exit.i
    i8 1, label %_RNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0B1U_.exit
    i8 2, label %bb.e
  ]

default.unreachable.i:                            ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  br label %_RNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0B1U_.exit

_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion14visit_childrenNCNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE00EB2H_.exit.i: ; preds = %bb.d
  call void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvYBK_B11_5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB2E_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 16 dereferenceable(128) %i.d), !noalias !22955
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !22950 ; 2 uses
  %.not32.i = icmp eq i64 %.pr.i, 20
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !noalias !22950 ; 2 uses
  br i1 %.not32.i, label %_RNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0B1U_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion14visit_childrenNCNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE00EB2H_.exit.i
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.628.0..sroa_idx.i, i64 31, i1 false)
  br label %_RNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0B1U_.exit

_RNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0B1U_.exit: ; preds = %_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion14visit_childrenNCNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE00EB2H_.exit.i, %bb.e, %bb.d, %bb.c, %bb.f
  %.sroa.6.0 = phi i8 [ %i.i, %bb.c ], [ %.pre.i, %bb.f ], [ %.pre.i, %_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion14visit_childrenNCNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE00EB2H_.exit.i ], [ %i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.g, %bb.c ], [ %.pr.i, %bb.f ], [ 20, %_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion14visit_childrenNCNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB3_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE00EB2H_.exit.i ], [ 20, %bb.e ], [ 20, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22950
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !align !216, !noundef !8 ; 8 uses
  %i.l = load i64, ptr %i.k, align 8, !range !30, !alias.scope !22956, !noundef !8
  %i.m = and i64 %i.l, 30
  %switch.i = icmp eq i64 %i.m, 20
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

bb.g:                                             ; preds = %_RNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0B1U_.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #48
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %.sroa.6.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, i64 31, i1 false)
  resume { ptr, i32 } %i.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtB1s_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE0B1U_.exit, %bb.g
  store i64 %.sroa.0.0, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %.sroa.6.0, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, i64 31, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB3k_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE16set_expr_to_plan0E0B4t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 16              ; 5 uses
  %i.b = alloca [2712 x i8], align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !216, !noundef !8 ; 3 uses
  %.sroa.0.0.copyload = load i8, ptr %i.c, align 8 ; 2 uses
  store i8 9, ptr %i.c, align 8
  %.not = icmp eq i8 %.sroa.0.0.copyload, 9
  br i1 %.not, label %bb.e, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2711) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 1 dereferenceable(2711) %.sroa.5.0..sroa_idx, i64 2711, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE16set_expr_to_plan0B1e_(ptr noalias noundef align 16 captures(address) dereferenceable(320) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(2712) %i.b) #44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !473, !noundef !8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 16, !range !4, !alias.scope !22959, !noundef !8
  switch i64 %i.f, label %bb.c [
    i64 37, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit
    i64 36, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(320) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #48
  unreachable
end_hunk_1
begin_hunk_2_@_RNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_8Snapshot7try_new0B8_:bb.a

bb.bu:                                            ; preds = %.body78.i, %.loopexit.split-lp.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bv, %bb.bt, %bb.bp, %bb.ai
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !23920
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bt, %bb.bs
  %.pn21.pn.i = phi { ptr, i32 } [ %.pn21.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ez, %bb.bt ], [ %i.ez, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !23916
  call void @llvm.experimental.noalias.scope.decl(metadata !23985)
  call void @llvm.experimental.noalias.scope.decl(metadata !23988)
  %i.fj = load ptr, ptr %i.r, align 8, !alias.scope !23991, !noalias !23916, !nonnull !8, !noundef !8
  %i.fk = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !23992
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.bv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.bu, !noalias !23920

bb.bw:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !23916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.997.sroa.9.i, i64 24, i1 false), !noalias !23916
  call void @llvm.experimental.noalias.scope.decl(metadata !23993)
  call void @llvm.experimental.noalias.scope.decl(metadata !23996)
  %i.fm = load ptr, ptr %i.k, align 8, !alias.scope !23999, !noalias !23916, !nonnull !8, !noundef !8
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !24000
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i

bb.bx:                                            ; preds = %bb.bw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i unwind label %bb.by, !noalias !23920

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.by, %bb.bp, %.body45.i
  %.pn21.i = phi { ptr, i32 } [ %i.fp, %bb.by ], [ %.pn19.i, %.body45.i ], [ %.pn19.i, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.997.sroa.9.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.by:                                            ; preds = %bb.bx
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.997.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !23916
  call void @llvm.experimental.noalias.scope.decl(metadata !24001)
  call void @llvm.experimental.noalias.scope.decl(metadata !24004)
  %i.fq = load ptr, ptr %i.r, align 8, !alias.scope !24007, !noalias !23916, !nonnull !8, !noundef !8
  %i.fr = atomicrmw sub ptr %i.fq, i64 1 release, align 8, !noalias !24008
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i unwind label %bb.ca, !noalias !23920

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ai, %bb.am, %.body.i.i.i, %bb.ax, %bb.ay, %bb.ae, %bb.da, %bb.ca, %bb.bv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ft = phi ptr [ %i.cy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.cy, %bb.ca ], [ %i.cy, %bb.bv ], [ %i.ch, %bb.ae ], [ %i.cy, %bb.da ], [ %i.cy, %bb.ay ], [ %i.cy, %bb.ax ], [ %i.cy, %.body.i.i.i ], [ %i.cy, %bb.am ], [ %i.cy, %bb.ai ]
  %i.fu = phi ptr [ %i.cz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.cz, %bb.ca ], [ %i.cz, %bb.bv ], [ %i.ci, %bb.ae ], [ %i.cz, %bb.da ], [ %i.cz, %bb.ay ], [ %i.cz, %bb.ax ], [ %i.cz, %.body.i.i.i ], [ %i.cz, %bb.am ], [ %i.cz, %bb.ai ]
  %.pn32.pn.i = phi { ptr, i32 } [ %.pn21.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.fw, %bb.ca ], [ %.pn21.pn.i, %bb.bv ], [ %i.cv, %bb.ae ], [ %.pn30.i, %bb.da ], [ %i.dt, %bb.ay ], [ %i.dt, %bb.ax ], [ %i.di, %.body.i.i.i ], [ %i.de, %bb.am ], [ %i.cx, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23916
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.fv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit.i unwind label %bb.bu, !noalias !23920

bb.ca:                                            ; preds = %bb.bz
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i: ; preds = %bb.ba, %bb.cy, %bb.bz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i
  %.sroa.6.1.i = phi ptr [ %.sroa.997.sroa.0.0.copyload125.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i ], [ %.sroa.997.sroa.0.0.copyload125.i, %bb.bz ], [ %.sroa.4.i.sroa.0.0.copyload.i, %bb.ba ], [ %.sroa.6.2176.i, %bb.cy ]
  %.sroa.0103.1.i = phi i64 [ -9223372036854775741, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i ], [ -9223372036854775741, %bb.bz ], [ -9223372036854775722, %bb.ba ], [ %.sroa.0103.2178.i, %bb.cy ]
  %i.fx = phi <2 x ptr> [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit52.i ], [ undef, %bb.bz ], [ undef, %bb.ba ], [ %i.kn, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23916
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 384
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.fy)
          to label %bb.dd unwind label %bb.dc, !noalias !23920

bb.cb:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !24009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23939
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i = load ptr, ptr %i.fz, align 8, !noalias !23916, !nonnull !8, !noundef !8 ; 9 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val37.i = load i64, ptr %i.ga, align 8, !noalias !23916, !noundef !8 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24010)
  call void @llvm.experimental.noalias.scope.decl(metadata !24013)
  %i.gb = icmp ugt i64 %.val37.i, 23
  br i1 %i.gb, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gc = icmp eq i64 %.val37.i, 23
  br i1 %i.gc, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !24016)
  %i.gd = icmp ult i64 %.val37.i, 38
  br i1 %i.gd, label %.lr.ph.split.us.i.i.i.i.i, label %bb.ce

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %bb.cd
  %i.ge = load i128, ptr %.val.i, align 1
  %i.gf = xor i128 %i.ge, 43072362355690950656158319865334099790
  %i.gg = getelementptr i8, ptr %.val.i, i64 7
  %i.gh = load i128, ptr %i.gg, align 1
  %i.gi = xor i128 %i.gh, 154763657356728356358779844745476251763
  %i.gj = or i128 %i.gf, %i.gi
  %i.gk = icmp ne i128 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.us.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i
  %.in.i.i.i.i66 = phi i64 [ %i.gx, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i ], [ %.val37.i, %.lr.ph.split.us.i.i.i.i.i ]
  %.pn.i.i.i.i65 = phi ptr [ %i.gn, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i ], [ %.val.i, %.lr.ph.split.us.i.i.i.i.i ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i65, i64 1 ; 3 uses
  %i.go = load i128, ptr %i.gn, align 1
  %i.gp = xor i128 %i.go, 43072362355690950656158319865334099790
  %i.gq = getelementptr i8, ptr %i.gn, i64 7
  %i.gr = load i128, ptr %i.gq, align 1
  %i.gs = xor i128 %i.gr, 154763657356728356358779844745476251763
  %i.gt = or i128 %i.gp, %i.gs
  %i.gu = icmp ne i128 %i.gt, 0
  %i.gv = zext i1 %i.gu to i32
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i: ; preds = %.lr.ph
  %i.gx = add nsw i64 %.in.i.i.i.i66, -1          ; 2 uses
  %.not28.i.i.i.i.i = icmp ugt i64 %i.gx, 23
  br i1 %.not28.i.i.i.i.i, label %.lr.ph, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24019
  store ptr %.val.i, ptr %i.d, align 8, !noalias !24019
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.val37.i, ptr %i.gy, align 8, !noalias !24019
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @369, i64 1), ptr %i.gz, align 8, !noalias !24019
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 22, ptr %i.ha, align 8, !noalias !24019
  %i.hb = icmp ult i64 %.val37.i, 87
  br i1 %i.hb, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ci, %bb.ce
  %.sroa.06.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.ce ], [ %i.iq, %bb.ci ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i.i = phi i8 [ 0, %bb.ce ], [ %.sroa.014.2.3.i.i.i.i, %bb.ci ] ; 2 uses
  %i.hc = add i64 %.sroa.06.0.lcssa.i.i.i.i, 38
  %i.hd = icmp uge i64 %i.hc, %.val37.i
  %i.he = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.i to i1 ; 2 uses
  %or.cond338.i.i.i.i = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %or.cond338.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph40.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ce, %bb.ci
  %.sroa.06.036.i.i.i.i = phi i64 [ %i.iq, %bb.ci ], [ 0, %bb.ce ] ; 7 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.06.036.i.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load <16 x i8>, ptr %i.hf, align 1, !alias.scope !24020, !noalias !24021
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 22
  %.sroa.02.0.copyload.i.i.i.i.i = load <16 x i8>, ptr %i.hg, align 1, !alias.scope !24020, !noalias !24021
  %i.hh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.i, splat (i8 78)
  %i.hi = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i.i.i, splat (i8 116)
  %i.hj = and <16 x i1> %i.hh, %i.hi
  %i.hk = bitcast <16 x i1> %i.hj to i16          ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i.i = load <16 x i8>, ptr %i.hl, align 1, !alias.scope !24020, !noalias !24021
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hf, i64 38
  %.sroa.02.0.copyload.i.1.i.i.i.i = load <16 x i8>, ptr %i.hm, align 1, !alias.scope !24020, !noalias !24021
  %i.hn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.i, splat (i8 78)
  %i.ho = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i.i.i, splat (i8 116)
  %i.hp = and <16 x i1> %i.hn, %i.ho
  %i.hq = bitcast <16 x i1> %i.hp to i16          ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i.i = load <16 x i8>, ptr %i.hr, align 1, !alias.scope !24020, !noalias !24021
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 54
  %.sroa.02.0.copyload.i.2.i.i.i.i = load <16 x i8>, ptr %i.hs, align 1, !alias.scope !24020, !noalias !24021
  %i.ht = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.i, splat (i8 78)
  %i.hu = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i.i.i, splat (i8 116)
  %i.hv = and <16 x i1> %i.ht, %i.hu
  %i.hw = bitcast <16 x i1> %i.hv to i16          ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i.i = load <16 x i8>, ptr %i.hx, align 1, !alias.scope !24020, !noalias !24021
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hf, i64 70
  %.sroa.02.0.copyload.i.3.i.i.i.i = load <16 x i8>, ptr %i.hy, align 1, !alias.scope !24020, !noalias !24021
  %i.hz = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.i, splat (i8 78)
  %i.ia = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i.i.i, splat (i8 116)
  %i.ib = and <16 x i1> %i.hz, %i.ia
  %i.ic = bitcast <16 x i1> %i.ib to i16          ; 2 uses
  %i.id = icmp eq i16 %i.hk, 0
  br i1 %i.id, label %.preheader30.1.i.i.i.i, label %bb.cj

.preheader30.1.i.i.i.i:                           ; preds = %.noexc61.i, %.lr.ph.i.i.i.i
  %.sroa.014.2.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i ], [ %i.iv, %.noexc61.i ] ; 3 uses
  %i.ie = icmp eq i16 %i.hq, 0
  br i1 %i.ie, label %.preheader30.2.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.preheader30.1.i.i.i.i
  %i.if = or disjoint i64 %.sroa.06.036.i.i.i.i, 16
  %i.ig = trunc nuw i8 %.sroa.014.2.i.i.i.i to i1
  %i.ih = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.if, i16 noundef %i.hq, i1 noundef zeroext %i.ig) #44
          to label %.noexc58.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !23920

.noexc58.i:                                       ; preds = %bb.cf
  %3 = zext i1 %i.ih to i8
  %4 = or i8 %.sroa.014.2.i.i.i.i, %3
  br label %.preheader30.2.i.i.i.i

.preheader30.2.i.i.i.i:                           ; preds = %.noexc58.i, %.preheader30.1.i.i.i.i
  %.sroa.014.2.1.i.i.i.i = phi i8 [ %.sroa.014.2.i.i.i.i, %.preheader30.1.i.i.i.i ], [ %4, %.noexc58.i ] ; 3 uses
  %i.ii = icmp eq i16 %i.hw, 0
  br i1 %i.ii, label %.preheader30.3.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.preheader30.2.i.i.i.i
  %i.ij = or disjoint i64 %.sroa.06.036.i.i.i.i, 32
  %i.ik = trunc nuw i8 %.sroa.014.2.1.i.i.i.i to i1
  %i.il = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.ij, i16 noundef %i.hw, i1 noundef zeroext %i.ik) #44
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !23920

.noexc59.i:                                       ; preds = %bb.cg
  %5 = zext i1 %i.il to i8
  %6 = or i8 %.sroa.014.2.1.i.i.i.i, %5
  br label %.preheader30.3.i.i.i.i

.preheader30.3.i.i.i.i:                           ; preds = %.noexc59.i, %.preheader30.2.i.i.i.i
  %.sroa.014.2.2.i.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i.i, %.preheader30.2.i.i.i.i ], [ %6, %.noexc59.i ] ; 3 uses
  %i.im = icmp eq i16 %i.ic, 0
  br i1 %i.im, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.preheader30.3.i.i.i.i
  %i.in = or disjoint i64 %.sroa.06.036.i.i.i.i, 48
  %i.io = trunc nuw i8 %.sroa.014.2.2.i.i.i.i to i1
  %i.ip = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.in, i16 noundef %i.ic, i1 noundef zeroext %i.io) #44
          to label %.noexc60.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !23920

.noexc60.i:                                       ; preds = %bb.ch
  %7 = zext i1 %i.ip to i8
  %8 = or i8 %.sroa.014.2.2.i.i.i.i, %7
  br label %bb.ci

bb.ci:                                            ; preds = %.noexc60.i, %.preheader30.3.i.i.i.i
  %.sroa.014.2.3.i.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i.i, %.preheader30.3.i.i.i.i ], [ %8, %.noexc60.i ] ; 2 uses
  %i.iq = add i64 %.sroa.06.036.i.i.i.i, 64       ; 2 uses
  %i.ir = add i64 %.sroa.06.036.i.i.i.i, 150
  %i.is = icmp uge i64 %i.ir, %.val37.i
  %i.it = trunc nuw i8 %.sroa.014.2.3.i.i.i.i to i1
  %or.cond.i.i.i.i = select i1 %i.is, i1 true, i1 %i.it
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.iu = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %.sroa.06.036.i.i.i.i, i16 noundef %i.hk, i1 noundef zeroext false) #44
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !23920

.noexc61.i:                                       ; preds = %bb.cj
  %i.iv = zext i1 %i.iu to i8
  br label %.preheader30.1.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ck, %.preheader.i.i.i.i
  %.sroa.014.3.lcssa.i.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %.sroa.014.4.i.i.i.i, %bb.ck ] ; 2 uses
  %.lcssa.i.i.i.i = phi i1 [ %i.he, %.preheader.i.i.i.i ], [ %i.jo, %bb.ck ]
  %i.iw = add i64 %.val37.i, -38                  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.iw ; 2 uses
  %.sroa.0.0.copyload.i58.i.i.i.i = load <16 x i8>, ptr %i.ix, align 1, !alias.scope !24020, !noalias !24024
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 22
  %.sroa.02.0.copyload.i59.i.i.i.i = load <16 x i8>, ptr %i.iy, align 1, !alias.scope !24020, !noalias !24024
  %i.iz = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i.i.i, splat (i8 78)
  %i.ja = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i.i.i, splat (i8 116)
  %i.jb = and <16 x i1> %i.iz, %i.ja
  %i.jc = bitcast <16 x i1> %i.jb to i16          ; 2 uses
  %i.jd = icmp eq i16 %i.jc, 0
  br i1 %i.jd, label %bb.cm, label %bb.cn

.lr.ph40.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %bb.ck
  %.sroa.06.139.i.i.i.i = phi i64 [ %i.jl, %bb.ck ], [ %.sroa.06.0.lcssa.i.i.i.i, %.preheader.i.i.i.i ] ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.06.139.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i.i.i = load <16 x i8>, ptr %i.je, align 1, !alias.scope !24020, !noalias !24027
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 22
  %.sroa.02.0.copyload.i61.i.i.i.i = load <16 x i8>, ptr %i.jf, align 1, !alias.scope !24020, !noalias !24027
  %i.jg = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i.i.i, splat (i8 78)
  %i.jh = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i.i.i, splat (i8 116)
  %i.ji = and <16 x i1> %i.jg, %i.jh
  %i.jj = bitcast <16 x i1> %i.ji to i16          ; 2 uses
  %i.jk = icmp eq i16 %i.jj, 0
  br i1 %i.jk, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.noexc62.i, %.lr.ph40.i.i.i.i
  %.sroa.014.4.i.i.i.i = phi i8 [ 0, %.lr.ph40.i.i.i.i ], [ %i.jq, %.noexc62.i ] ; 2 uses
  %i.jl = add i64 %.sroa.06.139.i.i.i.i, 16
  %i.jm = add i64 %.sroa.06.139.i.i.i.i, 54
  %i.jn = icmp uge i64 %i.jm, %.val37.i
  %i.jo = trunc nuw i8 %.sroa.014.4.i.i.i.i to i1 ; 2 uses
  %or.cond3.i.i.i.i = or i1 %i.jn, %i.jo
  br i1 %or.cond3.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph40.i.i.i.i

bb.cl:                                            ; preds = %.lr.ph40.i.i.i.i
  %i.jp = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %.sroa.06.139.i.i.i.i, i16 noundef %i.jj, i1 noundef zeroext false) #44
          to label %.noexc62.i unwind label %.loopexit.i, !noalias !23920

.noexc62.i:                                       ; preds = %bb.cl
  %i.jq = zext i1 %i.jp to i8
  br label %bb.ck

bb.cm:                                            ; preds = %.noexc63.i, %._crit_edge.i.i.i.i
  %.sroa.014.5.i.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %10, %.noexc63.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24019
  %i.jr = trunc nuw i8 %.sroa.014.5.i.i.i.i to i1
  br i1 %i.jr, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i

bb.cn:                                            ; preds = %._crit_edge.i.i.i.i
  %i.js = invoke fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i64 noundef %i.iw, i16 noundef %i.jc, i1 noundef zeroext %.lcssa.i.i.i.i) #44
          to label %.noexc63.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !23920

.noexc63.i:                                       ; preds = %bb.cn
  %9 = zext i1 %i.js to i8
  %10 = or i8 %.sroa.014.3.lcssa.i.i.i.i, %9
  br label %bb.cm

.loopexit.i:                                      ; preds = %bb.cl
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.cj, %bb.ch, %bb.cg, %bb.cf
  %lpad.loopexit186.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.cn
  %lpad.loopexit.split-lp187.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit186.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp187.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #42
          to label %.body42.i unwind label %bb.bu, !noalias !23920

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.cc
  %i.jt = load i128, ptr %.val.i, align 1
  %i.ju = xor i128 43072362355690950656158319865334099790, %i.jt
  %i.jv = getelementptr i8, ptr %.val.i, i64 7
  %i.jw = load i128, ptr %i.jv, align 1
  %i.jx = xor i128 154763657356728356358779844745476251763, %i.jw
  %i.jy = or i128 %i.ju, %i.jx
  %i.jz = icmp ne i128 %i.jy, 0
  %i.ka = zext i1 %i.jz to i32
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.cm, %bb.cc
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.co, !noalias !23920

bb.co:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body42.i unwind label %bb.cp, !noalias !23920

bb.cp:                                            ; preds = %bb.co
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !23920
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread166.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ct unwind label %bb.cs, !noalias !23920

_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %.lr.ph, %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.cm, %.lr.ph.split.us.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i68.i unwind label %bb.cq, !noalias !23920

bb.cq:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body42.i unwind label %bb.cr, !noalias !23920

bb.cr:                                            ; preds = %bb.cq
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !23920
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i68.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core3stre8containsReECs14kWLkQVSKO_14deltalake_core.exit.thread.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit72.i unwind label %bb.cs, !noalias !23920

.body42.i:                                        ; preds = %bb.cs, %bb.cq, %bb.co, %.loopexit.split-lp.i, %bb.bc
  %.pn26.i = phi { ptr, i32 } [ %i.ed, %bb.bc ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ke, %bb.cq ], [ %i.kc, %bb.co ], [ %i.kg, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23916
  br label %.body78.i

bb.cs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i68.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.body42.i

bb.ct:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23916
  %.sroa.0132.0.copyload.i = load i64, ptr %i.o, align 16, !noalias !23916
  %.sroa.5133.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !23916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4.0..sroa_idx4.i, i64 64, i1 false), !noalias !23916
  %i.kh = load <2 x ptr>, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx4.sroa_idx.i, align 16, !noalias !23916
  br label %bb.cy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit72.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24030
  store i64 0, ptr %i.c, align 8, !noalias !24030
  %.sroa.42.0..sroa_idx.i.i73.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i73.i, align 8, !noalias !24030
  %.sroa.53.0..sroa_idx.i.i74.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i74.i, align 8, !noalias !24030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24030
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.ki, align 8, !noalias !24030
  %.sroa.4.0..sroa_idx.i.i75.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i75.i, align 4, !noalias !24030
  %.sroa.5.0..sroa_idx.i.i76.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i76.i, align 2, !noalias !24030
  store ptr %i.c, ptr %i.b, align 8, !noalias !24030
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1212, ptr %i.kj, align 8, !noalias !24030
  %i.kk = invoke noundef zeroext i1 @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.cv unwind label %bb.cu, !noalias !24037

bb.cu:                                            ; preds = %bb.cw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit72.i
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body78.i unwind label %bb.cx, !noalias !24037

bb.cv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit72.i
  br i1 %i.kk, label %bb.cw, label %bb.cz, !prof !3

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1213, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @517, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1215) #41
          to label %.noexc.i.i77.i unwind label %bb.cu, !noalias !24037

.noexc.i.i77.i:                                   ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %bb.cu
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !24037
  unreachable

bb.cy:                                            ; preds = %bb.cz, %bb.ct
  %.sroa.0103.2178.i = phi i64 [ -9223372036854775735, %bb.cz ], [ %.sroa.0132.0.copyload.i, %bb.ct ]
  %.sroa.6.2176.i = phi ptr [ %.sroa.0122.0.copyload.i, %bb.cz ], [ %.sroa.5133.0.copyload.i, %bb.ct ]
  %i.kn = phi <2 x ptr> [ undef, %bb.cz ], [ %i.kh, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !23916
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i

bb.cz:                                            ; preds = %bb.cv
  %.sroa.0122.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !24038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i.i73.i, i64 16, i1 false), !noalias !23916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24030
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.o)
          to label %bb.cy unwind label %bb.db, !noalias !23920

bb.da:                                            ; preds = %.body78.i, %bb.db
  %.pn30.i = phi { ptr, i32 } [ %i.ko, %bb.db ], [ %.pn28.ph.i, %.body78.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !23916
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.db:                                            ; preds = %bb.cz
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.body78.i:                                        ; preds = %bb.cu, %.body42.i
  %.pn28.ph.i = phi { ptr, i32 } [ %.pn26.i, %.body42.i ], [ %i.kl, %bb.cu ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.o) #42
          to label %bb.da unwind label %bb.bu, !noalias !23920

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit.i: ; preds = %bb.dc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.kp = phi ptr [ %i.cy, %bb.dc ], [ %i.ft, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.kq = phi ptr [ %i.cz, %bb.dc ], [ %i.fu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.pn35.i = phi { ptr, i32 } [ %i.kr, %bb.dc ], [ %.pn32.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  store i8 2, ptr %i.kp, align 8, !noalias !23916
  br label %.body31

bb.dc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit.i

bb.dd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit48.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i
  %.sroa.6.0.i = phi ptr [ %.sroa.0127.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit48.i ], [ %.sroa.6.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i ]
  %.sroa.0103.0.i = phi i64 [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit48.i ], [ %.sroa.0103.1.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i ] ; 2 uses
  %i.ks = phi <2 x ptr> [ %i.fh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit48.i ], [ %i.fx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit54.i ]
  store i64 %.sroa.0103.0.i, ptr %0, align 16, !alias.scope !23920, !noalias !24039
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !23920, !noalias !24039
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10.i, i64 64, i1 false), !noalias !24039
  %.sroa.11110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x ptr> %i.ks, ptr %.sroa.11110.0..sroa_idx.i, align 16, !alias.scope !23920, !noalias !24039
  store i8 1, ptr %i.cy, align 8, !noalias !23916
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.592.sroa.0.i)
  %i.kt = icmp eq i64 %.sroa.0103.0.i, -9223372036854775710
  br i1 %i.kt, label %bb.de, label %bb.df

common.ret:                                       ; preds = %bb.dh, %bb.de
  %storemerge = phi i8 [ 1, %bb.dh ], [ 3, %bb.de ]
  store i8 %storemerge, ptr %i.z, align 8
  ret void

bb.de:                                            ; preds = %.thread, %bb.dd
end_hunk_2
