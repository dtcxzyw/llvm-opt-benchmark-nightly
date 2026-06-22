inline.NumInlined: 6907
inline.NumDeleted: 2175
begin_hunk_0
@switch.table._RNvXs4_NtCsjhHCjzi9uUI_17datafusion_common6formatNtB5_13ExplainFormatNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.693 = private unnamed_addr constant [4 x ptr] [ptr @430, ptr @431, ptr @432, ptr @433], align 8
@switch.table._RNvXs62_NtCs4lawaffTVVK_9sqlparser3astNtB6_8CastKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt = private unnamed_addr constant [4 x i8] c"\04\07\08\0B", align 8
@switch.table._RNvXs62_NtCs4lawaffTVVK_9sqlparser3astNtB6_8CastKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.694 = private unnamed_addr constant [4 x ptr] [ptr @197, ptr @199, ptr @490, ptr @491], align 8
@switch.table._RNvXsc_NtCs5wg436RVUAP_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\0B\05\04", align 8
@switch.table._RNvXsc_NtCs5wg436RVUAP_24datafusion_physical_plan14execution_planNtB5_12EmissionTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.695 = private unnamed_addr constant [3 x ptr] [ptr @765, ptr @766, ptr @767], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB2U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(352) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = alloca [352 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.c, ptr noundef nonnull align 8 dereferenceable(352) %2, i64 352, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 38, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8
  invoke void @_RNvCs1CPciySG8bN_7stacker5__grow(i64 noundef %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0)
          to label %bb.c unwind label %bb.j

bb.b:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 16 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, 38
  br i1 %.not, label %bb.f, label %bb.d, !prof !3

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %0, align 16
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %i.c, align 8, !range !4, !alias.scope !5, !noundef !8
  %i.g = icmp eq i64 %i.f, 69
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0EECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #47
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.b, %bb.j
  %i.h = phi { ptr, i32 } [ %i.k, %bb.j ], [ %i.e, %bb.b ]
  %i.i = load i64, ptr %i.c, align 8, !range !4, !alias.scope !9, !noundef !8
  %i.j = icmp eq i64 %i.i, 69
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0EECs7p2uQeJxui2_9deltalake.exit5, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0EECs7p2uQeJxui2_9deltalake.exit5 unwind label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(112) %i.b) #48
          to label %bb.h unwind label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_expr_to_logical_expr_internal0EECs7p2uQeJxui2_9deltalake.exit5: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCs1CPciySG8bN_7stacker4growINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB3i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16set_expr_to_plan0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 16 captures(none) dereferenceable(320) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(2712) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [320 x i8], align 16              ; 7 uses
  %i.c = alloca [2712 x i8], align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2712) %i.c, ptr noundef nonnull align 8 dereferenceable(2712) %2, i64 2712, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 37, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8
  invoke void @_RNvCs1CPciySG8bN_7stacker5__grow(i64 noundef %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @8)
          to label %bb.c unwind label %bb.j

bb.b:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 16 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, 37
  br i1 %.not, label %bb.f, label %bb.d, !prof !3

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.0.0.copyload, ptr %0, align 16
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.5.0..sroa_idx, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = load i8, ptr %i.c, align 8, !range !12, !alias.scope !13, !noundef !8
  %i.g = icmp eq i8 %i.f, 9
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16set_expr_to_plan0EECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(2712) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16set_expr_to_plan0EECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16set_expr_to_plan0EECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #47
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.b, %bb.j
  %i.h = phi { ptr, i32 } [ %i.k, %bb.j ], [ %i.e, %bb.b ]
  %i.i = load i8, ptr %i.c, align 8, !range !12, !alias.scope !16, !noundef !8
  %i.j = icmp eq i8 %i.i, 9
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16set_expr_to_plan0EECs7p2uQeJxui2_9deltalake.exit5, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(2712) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16set_expr_to_plan0EECs7p2uQeJxui2_9deltalake.exit5 unwind label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(320) %i.b) #48
          to label %bb.h unwind label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNCNvMNtCsjHlmExTLNuX_14datafusion_sql8set_exprINtNtB19_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16set_expr_to_plan0EECs7p2uQeJxui2_9deltalake.exit5: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(address_is_null) %1, i64 %2, ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !25
  %i.b = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !25 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %2) #47, !noalias !33
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !34
  br label %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit

_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.e
  %.sroa.5.0.i.i = phi ptr [ %i.b, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %2, ptr %0, align 8, !alias.scope !35, !noalias !36
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !35, !noalias !36
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !35, !noalias !36
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.0.val, ptr noundef nonnull %.8.val)
  br label %bb.g

bb.g:                                             ; preds = %_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs7p2uQeJxui2_9deltalake.exit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCINvNtB2f_5utils18find_exprs_in_exprNCINvB4C_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB5J_5slice4iter4IterB2b_EINtNtB5J_6option4IterB2b_EEE0E0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3L_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4S_5slice4iter4IterB1o_EINtNtB4S_6option4IterB1o_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCINvNtB2f_5utils18find_exprs_in_exprNCINvB4C_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB5M_5slice4iter4IterNtB2d_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB7b_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4V_5slice4iter4IterNtB1q_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6k_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCINvNtB2f_5utils18find_exprs_in_exprNCINvB4C_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB5E_INtNtNtB5M_5slice4iter4IterB2b_EINtNtB5M_6option4IterB2b_EEB76_EE0E0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4N_INtNtNtB4V_5slice4iter4IterB1o_EINtNtB4V_6option4IterB1o_EEB6f_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCINvNtB2f_5utils18find_exprs_in_exprNCINvB4C_20find_aggregate_exprsRSB2b_E0E0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsRSB1o_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs5_B3_TINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_17TreeNodeContainerB2b_E14apply_elementsQQNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2b_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQQQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.c, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs9_B3_TRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_20TreeNodeRefContainerB2c_E18apply_ref_elementsNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2c_NCINvNtB2g_5utils18find_exprs_in_exprNCINvB4I_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB5P_5slice4iter4IterB2c_EINtNtB5P_6option4IterB2c_EEE0E0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3J_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4Q_5slice4iter4IterB1o_EINtNtB4Q_6option4IterB1o_EEE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.b, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs9_B3_TRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_20TreeNodeRefContainerB2c_E18apply_ref_elementsNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2c_NCINvNtB2g_5utils18find_exprs_in_exprNCINvB4I_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB5S_5slice4iter4IterNtB2e_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB7h_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3J_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4T_5slice4iter4IterNtB1q_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.b, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs9_B3_TRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_20TreeNodeRefContainerB2c_E18apply_ref_elementsNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2c_NCINvNtB2g_5utils18find_exprs_in_exprNCINvB4I_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB5K_INtNtNtB5S_5slice4iter4IterB2c_EINtNtB5S_6option4IterB2c_EEB7c_EE0E0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3J_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4L_INtNtNtB4T_5slice4iter4IterB1o_EINtNtB4T_6option4IterB1o_EEB6d_EE0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.b, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs9_B3_TRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_20TreeNodeRefContainerB2c_E18apply_ref_elementsNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2c_NCINvNtB2g_5utils18find_exprs_in_exprNCINvB4I_20find_aggregate_exprsRSB2c_E0E0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB3J_20find_aggregate_exprsRSB1o_E0E0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.b, align 8
  store i64 20, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsjhHCjzi9uUI_17datafusion_common9tree_nodeNtB3_17TreeNodeRecursion13visit_siblingNCINvXs9_B3_TRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1C_EINtB3_20TreeNodeRefContainerB2c_E18apply_ref_elementsNCNCNCINvNvNtB3_8TreeNode5apply10apply_implB2c_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXs0_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1o_E14apply_elementsQNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3L_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %3)
end_hunk_0
begin_hunk_1_@_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake:bb.a
  store ptr %i.ce, ptr %i.dq, align 8, !alias.scope !134, !noalias !150
  %.not16.i = icmp eq ptr %i.dr, null
  br i1 %.not16.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit38.i, label %.split69.us.i, !prof !151

.split.us.invoke.i:                               ; preds = %bb.ae, %bb.aa, %bb.k
  %i.ds = phi i64 [ %.sroa.02.011.i.us.i, %bb.k ], [ %.sroa.02.011.i28.i, %bb.ae ], [ %i.dh, %bb.aa ]
  %i.dt = phi ptr [ @10, %bb.k ], [ @11, %bb.ae ], [ @10, %bb.aa ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef range(i64 0, 1152921504606846976) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) #47
          to label %.split.us.cont.i unwind label %.thread168.i, !noalias !143

.split.us.cont.i:                                 ; preds = %.split.us.invoke.i
  unreachable

.split69.us.i:                                    ; preds = %bb.ab, %bb.l
  %.us-phi71.i = phi ptr [ %i.bj, %bb.l ], [ %i.cx, %bb.ab ]
  %.us-phi72.i = phi i64 [ %i.bk, %bb.l ], [ %i.cy, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !127
  invoke void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription28multiple_values_for_argument(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.us-phi71.i, i64 noundef %.us-phi72.i)
          to label %bb.ac unwind label %.thread168.i, !noalias !143

bb.ac:                                            ; preds = %.split69.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !127
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit46.i

bb.ad:                                            ; preds = %_RNCNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB7_19FunctionDescription36find_keyword_parameter_in_positional0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %i.du = icmp ult i64 %.sroa.02.011.i28.i, %i.r
  call void @llvm.assume(i1 %i.du)
  %i.dv = icmp ult i64 %.sroa.02.011.i28.i, %i.at
  br i1 %i.dv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = icmp samesign ult i64 %.sroa.02.011.i28.i, %6
  br i1 %i.dw, label %bb.ag, label %.split.us.invoke.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !127
  invoke void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription27unexpected_keyword_argument(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noundef nonnull %i.cc)
          to label %bb.aj unwind label %.thread.i, !noalias !143

bb.ag:                                            ; preds = %bb.ae
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.02.011.i28.i ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !134, !noalias !150, !noundef !8
  store ptr %i.ce, ptr %i.dx, align 8, !alias.scope !134, !noalias !150
  %.not14.i = icmp eq ptr %i.dy, null
  br i1 %.not14.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit38.i, label %bb.ah, !prof !151

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !127
  invoke void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription28multiple_values_for_argument(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cy)
          to label %bb.ai unwind label %.thread168.i, !noalias !143

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !127
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit46.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit46.i: ; preds = %bb.ac, %bb.ai, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !127
  br label %bb.t

bb.aj:                                            ; preds = %bb.af
  store i64 1, ptr %i.e, align 8, !alias.scope !167, !noalias !170
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 dereferenceable(56) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit43.i unwind label %.thread.i, !noalias !143

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit43.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !127
  %i.dz = load i64, ptr %i.aa, align 8, !alias.scope !172, !noalias !175, !noundef !8 ; 3 uses
  %i.ea = load i64, ptr %i.i, align 8, !range !177, !alias.scope !172, !noalias !175, !noundef !8
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ak, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit43.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs7QZdtHb2D1i_9aws_sigv4(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread.i, !noalias !143

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit43.i
  %i.ec = load ptr, ptr %i.z, align 8, !alias.scope !172, !noalias !175, !nonnull !8, !noundef !8
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.dz ; 2 uses
  store ptr %i.cx, ptr %i.ed, align 8, !noalias !178
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.cy, ptr %i.ee, align 8, !noalias !143
  %i.ef = add i64 %i.dz, 1
  store i64 %i.ef, ptr %i.aa, align 8, !alias.scope !172, !noalias !175
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit38.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit38.i: ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i, %bb.ag, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !127
  %i.eg = load i64, ptr %i.ab, align 8, !alias.scope !136, !noalias !127, !noundef !8 ; 2 uses
  %i.eh = load i64, ptr %i.ac, align 8, !alias.scope !136, !noalias !127, !noundef !8
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph.split.i, label %select.unfold.i

bb.al:                                            ; preds = %.thread15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %i.cw, i64 56, i1 false), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !127
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit46.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 dereferenceable(56) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit46.i unwind label %.loopexit.split-lp.i, !noalias !143

bb.an:                                            ; preds = %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit.i
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !143
  unreachable

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.q
  %.val1.i.i = load ptr, ptr %i.z, align 8, !noalias !127, !nonnull !8, !noundef !8
  %i.ek = shl nuw i64 %.val.i.i, 4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !143
  br label %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread25

bb.ao:                                            ; preds = %.thread, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread25
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !179, !noalias !184, !noundef !8 ; 4 uses
  %i.en = icmp ult i64 %3, %i.em
  br i1 %i.en, label %bb.ap, label %.loopexit33

bb.ap:                                            ; preds = %bb.ao
  %.not.i12 = icmp ugt i64 %i.em, %6
  br i1 %.not.i12, label %bb.aq, label %.lr.ph.preheader.i, !prof !3

.lr.ph.preheader.i:                               ; preds = %bb.ap
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.em
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %3
  br label %.lr.ph.i13

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %i.em, i64 noundef range(i64 0, 1152921504606846976) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #51, !noalias !186
  unreachable

bb.ar:                                            ; preds = %.lr.ph.i13
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.eo
  br i1 %i.er, label %.loopexit33, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.ar, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.eq, %bb.ar ], [ %i.ep, %.lr.ph.preheader.i ] ; 2 uses
  %i.es = load ptr, ptr %.sroa.0.05.i, align 8, !alias.scope !182, !noalias !187, !noundef !8
  %.not4.i = icmp eq ptr %i.es, null
  br i1 %.not4.i, label %bb.as, label %bb.ar, !prof !3

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.v, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.et, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.az

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread25: ; preds = %bb.q, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ao

bb.as:                                            ; preds = %.lr.ph.i13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription37missing_required_positional_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ev, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.az

.loopexit33:                                      ; preds = %bb.ar, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ew = icmp ugt i64 %i.r, %6
  br i1 %i.ew, label %bb.av, label %bb.at, !prof !3

bb.at:                                            ; preds = %.loopexit33
  %i.ex = sub nuw nsw i64 %6, %i.r
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.r ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !188, !noalias !191, !nonnull !8, !align !144, !noundef !8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !188, !noalias !191, !noundef !8
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %i.fc
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fd, ptr noundef nonnull readonly align 8 %i.ey, ptr noundef nonnull readonly %i.fe), !noalias !194
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !195 ; 4 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.56.0.copyload.i = load ptr, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !195 ; 4 uses
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.67.0.copyload.i = load i64, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !195 ; 6 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !195 ; 3 uses
  %i.ff = icmp ult i64 %.sroa.67.0.copyload.i, %.sroa.8.0.copyload.i
  br i1 %i.ff, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i, label %.loopexit

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i: ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i) ]
  %i.fg = sub nuw i64 %.sroa.8.0.copyload.i, %.sroa.67.0.copyload.i
  %i.fh = freeze i64 %i.fg                        ; 2 uses
  %xtraiter = and i64 %i.fh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %i.fi = add i64 %.sroa.67.0.copyload.i, 1       ; 2 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i8, ptr %i.fk, align 8, !range !196, !noalias !194, !noundef !8
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.au, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !194, !noundef !8
  %.not5.i.prol = icmp eq ptr %i.fo, null
  br i1 %.not5.i.prol, label %.loopexit246, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, !prof !3

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol, %bb.au, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %.sroa.67.012.i.unr = phi i64 [ %.sroa.67.0.copyload.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %i.fi, %bb.au ], [ %i.fi, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol ]
  %i.fp = icmp eq i64 %i.fh, 1
  br i1 %i.fp, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

bb.av:                                            ; preds = %.loopexit33
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef range(i64 0, 1152921504606846976) %6, i64 noundef range(i64 0, 1152921504606846976) %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #51, !noalias !195
  unreachable

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %bb.ax
  %.sroa.67.012.i = phi i64 [ %i.fv, %bb.ax ], [ %.sroa.67.012.i.unr, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit ] ; 4 uses
  %i.fq = add i64 %.sroa.67.012.i, 1              ; 2 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.012.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i8, ptr %i.fs, align 8, !range !196, !noalias !194, !noundef !8
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.ay, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1: ; preds = %bb.ay, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %i.fv = add i64 %.sroa.67.012.i, 2              ; 2 uses
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.fq
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i8, ptr %i.fx, align 8, !range !196, !noalias !194, !noundef !8
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %i.fq
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !194, !noundef !8
  %.not5.i.1 = icmp eq ptr %i.gb, null
  br i1 %.not5.i.1, label %.loopexit246, label %bb.ax, !prof !3

bb.ax:                                            ; preds = %bb.aw, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %exitcond.not.i.1 = icmp eq i64 %i.fv, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

bb.ay:                                            ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.012.i
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !194, !noundef !8
  %.not5.i = icmp eq ptr %i.gd, null
  br i1 %.not5.i, label %.loopexit246, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1, !prof !3

.loopexit246:                                     ; preds = %bb.ay, %bb.aw, %bb.au
  %i.ge = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription34missing_required_keyword_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ge, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ey, i64 noundef %i.ex)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gf, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.az

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %bb.ax, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 0, ptr %0, align 8
  br label %bb.az

bb.az:                                            ; preds = %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipNtNtNtBa_5types5tuple21BorrowedTupleIteratorINtNtB1V_6copied6CopiedINtNtNtB1Z_5slice4iter4IterINtNtBa_8instance8BorrowedNtNtB2I_3any5PyAnyEEEEECs7p2uQeJxui2_9deltalake.exit.thread, %bb.as, %.loopexit246, %bb.e, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription28extract_arguments_tuple_dictNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 %4, i64 noundef range(i64 0, 1152921504606846976) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 10 uses
  %i.c = alloca [8 x i8], align 8                 ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 3 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 15 uses
  %i.l = alloca [64 x i8], align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = alloca [64 x i8], align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = alloca [64 x i8], align 8                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [56 x i8], align 8            ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.u = icmp eq ptr %2, null
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgbCypRs12E4_4pyo33err17panic_after_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %2, ptr %i.t, align 8
  %i.v = icmp eq ptr %3, null
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !noundef !8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo35types5tupleINtNtB9_8instance8BorrowedNtB5_7PyTupleE13iter_borrowed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noundef nonnull %2)
  %.sroa.04.sroa.0.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  %.sroa.04.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.04.sroa.4.0.copyload = load i64, ptr %.sroa.04.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.04.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.04.sroa.5.0.copyload = load i64, ptr %.sroa.04.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  br i1 %i.y, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.z = call i64 @llvm.usub.sat.i64(i64 %.sroa.04.sroa.5.0.copyload, i64 %.sroa.04.sroa.4.0.copyload)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ay
  %.sroa.4.075 = phi i64 [ %i.fh, %bb.ay ], [ %.sroa.04.sroa.4.0.copyload, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.074 = phi i64 [ %i.fg, %bb.ay ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.7.073 = phi i64 [ %i.aa, %bb.ay ], [ %i.x, %.lr.ph.preheader ]
  %i.aa = add i64 %.sroa.7.073, -1                ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.074, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.sroa.0.0.copyload) ]
  %i.ab = call noundef nonnull ptr @_RNvMs8_NtNtCsgbCypRs12E4_4pyo35types5tupleNtB5_21BorrowedTupleIterator8get_item(ptr noundef nonnull %.sroa.04.sroa.0.0.copyload, i64 noundef %.sroa.4.075), !noalias !197
  %exitcond108.not = icmp eq i64 %.sroa.10.074, %5
  br i1 %exitcond108.not, label %bb.az, label %bb.ay

._crit_edge:                                      ; preds = %.lr.ph, %bb.ay, %bb.c
  %i.ac = call noundef i64 @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !204 ; 2 uses
  %.not.i = icmp ugt i64 %i.ac, %i.x
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !3

bb.e:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription29too_many_positional_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  br label %bb.ax

bb.f:                                             ; preds = %._crit_edge
  store i64 0, ptr %i.p, align 8
  br i1 %i.v, label %bb.am, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo35types4dictINtNtB9_8instance8BorrowedNtB5_6PyDictE13iter_borrowed(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !213
  store i64 0, ptr %i.k, align 8, !noalias !213
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8, !noalias !213
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  store i64 0, ptr %i.ag, align 8, !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !216
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !220
  store ptr null, ptr %i.c, align 8, !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !220
  store ptr null, ptr %i.b, align 8, !noalias !220
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !217, !noalias !213, !nonnull !8, !noundef !8
  %i.aj = call noundef i32 @PyDict_Next(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #50, !noalias !213
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !213
  br label %bb.l

.lr.ph.i:                                         ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !208, !noalias !223, !nonnull !8, !align !144 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription28extract_arguments_tuple_dictNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake:bb.a
  store ptr %i.bf, ptr %i.cp, align 8, !alias.scope !211, !noalias !245
  %.not16.i = icmp eq ptr %i.cq, null
  br i1 %.not16.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit40.i, label %bb.z, !prof !151

.invoke151.i:                                     ; preds = %bb.ac, %bb.x
  %i.cr = phi i64 [ %i.cg, %bb.x ], [ %.sroa.02.011.i30.i, %bb.ac ]
  %i.cs = phi ptr [ @10, %bb.x ], [ @11, %bb.ac ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef range(i64 0, 1152921504606846976) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs) #47
          to label %.cont152.i unwind label %.thread118.i, !noalias !223

.cont152.i:                                       ; preds = %.invoke151.i
  unreachable

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !213
  invoke void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription28multiple_values_for_argument(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bx)
          to label %bb.aa unwind label %.thread118.i, !noalias !223

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !213
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit48.i

bb.ab:                                            ; preds = %_RNCNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB7_19FunctionDescription36find_keyword_parameter_in_positional0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ct = icmp ult i64 %.sroa.02.011.i30.i, %i.x
  call void @llvm.assume(i1 %i.ct)
  %i.cu = icmp ult i64 %.sroa.02.011.i30.i, %i.ay
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = icmp samesign ult i64 %.sroa.02.011.i30.i, %5
  br i1 %i.cv, label %bb.ae, label %.invoke151.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !213
  invoke void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription27unexpected_keyword_argument(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noundef nonnull %i.bd)
          to label %bb.ah unwind label %.thread.i, !noalias !223

bb.ae:                                            ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.02.011.i30.i ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !211, !noalias !245, !noundef !8
  store ptr %i.bf, ptr %i.cw, align 8, !alias.scope !211, !noalias !245
  %.not14.i = icmp eq ptr %i.cx, null
  br i1 %.not14.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit40.i, label %bb.af, !prof !151

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !213
  invoke void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription28multiple_values_for_argument(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bx)
          to label %bb.ag unwind label %.thread118.i, !noalias !223

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !213
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit48.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit48.i: ; preds = %bb.aa, %bb.ag, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !213
  br label %bb.q

bb.ah:                                            ; preds = %bb.ad
  store i64 1, ptr %i.g, align 8, !alias.scope !246, !noalias !249
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 dereferenceable(56) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit45.i unwind label %.thread.i, !noalias !223

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit45.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !213
  %i.cy = load i64, ptr %i.ag, align 8, !alias.scope !251, !noalias !254, !noundef !8 ; 3 uses
  %i.cz = load i64, ptr %i.k, align 8, !range !177, !alias.scope !251, !noalias !254, !noundef !8
  %i.da = icmp eq i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.ai, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit45.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs7QZdtHb2D1i_9aws_sigv4(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i unwind label %.thread.i, !noalias !223

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit45.i
  %i.db = load ptr, ptr %i.af, align 8, !alias.scope !251, !noalias !254, !nonnull !8, !noundef !8
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.cy ; 2 uses
  store ptr %i.bw, ptr %i.dc, align 8, !noalias !256
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %i.bx, ptr %i.dd, align 8, !noalias !223
  %i.de = add i64 %i.cy, 1
  store i64 %i.de, ptr %i.ag, align 8, !alias.scope !251, !noalias !254
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit40.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit40.i: ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i, %bb.ae, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !213
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !259
  store ptr null, ptr %i.c, align 8, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !259
  store ptr null, ptr %i.b, align 8, !noalias !259
  %i.df = load ptr, ptr %i.j, align 8, !alias.scope !257, !noalias !213, !nonnull !8, !noundef !8
  %i.dg = call noundef i32 @PyDict_Next(ptr noundef nonnull %i.df, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #50, !noalias !223
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %._crit_edge.i, label %bb.i

bb.aj:                                            ; preds = %.thread14.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(56) %i.bv, i64 56, i1 false), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !213
  br i1 %i.bu, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit48.i

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 dereferenceable(56) %i.am)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit48.i unwind label %.loopexit.split-lp.i, !noalias !223

bb.al:                                            ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultReNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit.i
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !223
  unreachable

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n
  %.val1.i.i = load ptr, ptr %i.af, align 8, !noalias !213, !nonnull !8, !noundef !8
  %i.dj = shl nuw i64 %.val.i.i, 4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !223
  br label %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread33

bb.am:                                            ; preds = %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread33, %bb.f
  %i.dk = call noundef i64 @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types5tupleINtNtB8_8instance5BoundNtB4_7PyTupleENtB4_14PyTupleMethods3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !260, !noalias !265, !noundef !8 ; 4 uses
  %i.dn = icmp ult i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.an, label %.loopexit41

bb.an:                                            ; preds = %bb.am
  %.not.i21 = icmp ugt i64 %i.dm, %5
  br i1 %.not.i21, label %bb.ao, label %.lr.ph.preheader.i, !prof !3

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dm
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dk
  br label %.lr.ph.i22

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.dk, i64 noundef %i.dm, i64 noundef range(i64 0, 1152921504606846976) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #51, !noalias !267
  unreachable

bb.ap:                                            ; preds = %.lr.ph.i22
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.do
  br i1 %i.dr, label %.loopexit41, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.ap, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.dq, %bb.ap ], [ %i.dp, %.lr.ph.preheader.i ] ; 2 uses
  %i.ds = load ptr, ptr %.sroa.0.05.i, align 8, !alias.scope !263, !noalias !268, !noundef !8
  %.not4.i = icmp eq ptr %i.ds, null
  br i1 %.not4.i, label %bb.aq, label %bb.ap, !prof !3

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.s, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.9, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.ax

_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread33: ; preds = %bb.n, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.am

bb.aq:                                            ; preds = %.lr.ph.i22
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription37missing_required_positional_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.du, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 1152921504606846976) %5)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dv, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false)
  br label %bb.ax

.loopexit41:                                      ; preds = %bb.ap, %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dw = icmp ugt i64 %i.x, %5
  br i1 %i.dw, label %bb.at, label %bb.ar, !prof !3

bb.ar:                                            ; preds = %.loopexit41
  %i.dx = sub nuw nsw i64 %5, %i.x
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.x ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !269, !noalias !272, !nonnull !8, !align !144, !noundef !8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !269, !noalias !272, !noundef !8
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %5
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ed, ptr noundef nonnull readonly align 8 %i.dy, ptr noundef nonnull readonly %i.ee), !noalias !275
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !276 ; 4 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.56.0.copyload.i = load ptr, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !276 ; 4 uses
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.67.0.copyload.i = load i64, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !276 ; 6 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !276 ; 3 uses
  %i.ef = icmp ult i64 %.sroa.67.0.copyload.i, %.sroa.8.0.copyload.i
  br i1 %i.ef, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i, label %.loopexit

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i: ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.56.0.copyload.i) ]
  %i.eg = sub nuw i64 %.sroa.8.0.copyload.i, %.sroa.67.0.copyload.i
  %i.eh = freeze i64 %i.eg                        ; 2 uses
  %xtraiter = and i64 %i.eh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %i.ei = add i64 %.sroa.67.0.copyload.i, 1       ; 2 uses
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load i8, ptr %i.ek, align 8, !range !196, !noalias !275, !noundef !8
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.as, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.0.copyload.i
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !275, !noundef !8
  %.not5.i.prol = icmp eq ptr %i.eo, null
  br i1 %.not5.i.prol, label %.loopexit213, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, !prof !3

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol, %bb.as, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i
  %.sroa.67.012.i.unr = phi i64 [ %.sroa.67.0.copyload.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph.i ], [ %i.ei, %bb.as ], [ %i.ei, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol ]
  %i.ep = icmp eq i64 %i.eh, 1
  br i1 %i.ep, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

bb.at:                                            ; preds = %.loopexit41
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.x, i64 noundef range(i64 0, 1152921504606846976) %5, i64 noundef range(i64 0, 1152921504606846976) %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #51, !noalias !276
  unreachable

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %bb.av
  %.sroa.67.012.i = phi i64 [ %i.ev, %bb.av ], [ %.sroa.67.012.i.unr, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit ] ; 4 uses
  %i.eq = add i64 %.sroa.67.012.i, 1              ; 2 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.67.012.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load i8, ptr %i.es, align 8, !range !196, !noalias !275, !noundef !8
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.aw, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1: ; preds = %bb.aw, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %i.ev = add i64 %.sroa.67.012.i, 2              ; 2 uses
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.eq
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load i8, ptr %i.ex, align 8, !range !196, !noalias !275, !noundef !8
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %i.eq
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !275, !noundef !8
  %.not5.i.1 = icmp eq ptr %i.fb, null
  br i1 %.not5.i.1, label %.loopexit213, label %bb.av, !prof !3

bb.av:                                            ; preds = %bb.au, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1
  %exitcond.not.i.1 = icmp eq i64 %i.ev, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i.1, label %.loopexit, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i

bb.aw:                                            ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.56.0.copyload.i, i64 %.sroa.67.012.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !275, !noundef !8
  %.not5.i = icmp eq ptr %i.fd, null
  br i1 %.not5.i, label %.loopexit213, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.1, !prof !3

.loopexit213:                                     ; preds = %bb.aw, %bb.au, %bb.as
  %i.fe = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @_RNvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB5_19FunctionDescription34missing_required_keyword_arguments(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.fe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dy, i64 noundef %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ff, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  br label %bb.ax

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument31KeywordOnlyParameterDescriptionEIBX_INtNtBb_6option6OptionINtNtB1s_8instance8BorrowedNtNtNtB1s_5types3any5PyAnyEEEEINtB5_7ZipImplBW_B2H_E4nextCs7p2uQeJxui2_9deltalake.exit.i.prol.loopexit, %bb.av, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.e, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread, %bb.aq, %.loopexit213, %.loopexit
  %.sink = phi i64 [ 1, %bb.e ], [ 1, %_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription13handle_kwargsNtB6_13NoVarkeywordsNtNtNtNtBa_5types4dict13borrowed_iter16BorrowedDictIterECs7p2uQeJxui2_9deltalake.exit.thread ], [ 1, %bb.aq ], [ 1, %.loopexit213 ], [ 0, %.loopexit ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.ay:                                            ; preds = %bb.d
  %i.fg = add nuw nsw i64 %.sroa.10.074, 1
  %i.fh = add nuw i64 %.sroa.4.075, 1
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.10.074
  store ptr %i.ab, ptr %i.fi, align 8
  %i.fj = icmp eq i64 %i.aa, 0
  br i1 %i.fj, label %._crit_edge, label %.lr.ph

bb.az:                                            ; preds = %bb.d
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAlias7try_newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [336 x i8], align 16              ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 10 uses
  %i.i = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.718 = alloca [40 x i8], align 8          ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [48 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 2 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [8 x i8], align 8                 ; 12 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [56 x i8], align 8                ; 15 uses
  %i.y = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(56) %2, i64 56, i1 false), !alias.scope !277
  %.sink18.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sink18.i.sroa.gep87 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sink15.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sink15.i.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.z)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body66.thread, %.body66
  %.sroa.032.0 = phi i1 [ %.sroa.032.4, %.body66 ], [ %.sroa.032.2124, %.body66.thread ]
  %.pn57 = phi { ptr, i32 } [ %.pn53, %.body66 ], [ %.pn55125, %.body66.thread ] ; 3 uses
  br i1 %.sroa.032.0, label %bb.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEECs7p2uQeJxui2_9deltalake.exit85

.body66:                                          ; preds = %.body59
  br i1 %.sroa.031.2, label %.body66.thread, label %bb.b

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body66.thread

bb.d:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !8, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  invoke void @_RNvNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder20unique_field_aliases(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aj, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 2 uses
  %.not3.not.not.i.not147 = icmp eq i64 %i.aj, 0
  br i1 %.not3.not.not.i.not147, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %.not3.not.not.i.not = icmp eq ptr %i.al, %i.ak
  br i1 %.not3.not.not.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.am = phi ptr [ %i.al, %bb.f ], [ %i.ah, %bb.e ] ; 2 uses
  %.val.i = load i64, ptr %i.am, align 8, !range !37, !noalias !284, !noundef !8
  %.not.i = icmp eq i64 %.val.i, -9223372036854775808
  br i1 %.not.i, label %bb.f, label %bb.h

.body59:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs7p2uQeJxui2_9deltalake.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs7p2uQeJxui2_9deltalake.exit.thread, %bb.cb, %bb.r, %bb.g
  %.sroa.031.2 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs7p2uQeJxui2_9deltalake.exit ], [ true, %bb.r ], [ true, %bb.g ], [ true, %bb.cb ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs7p2uQeJxui2_9deltalake.exit.thread ]
  %.sroa.032.4 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs7p2uQeJxui2_9deltalake.exit ], [ false, %bb.r ], [ %.sroa.032.5, %bb.g ], [ false, %bb.cb ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs7p2uQeJxui2_9deltalake.exit.thread ] ; 2 uses
  %.pn53 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs7p2uQeJxui2_9deltalake.exit ], [ %i.bc, %bb.r ], [ %i.an, %bb.g ], [ %.pn49.pn.pn96, %bb.cb ], [ %.pn49.pn.pn96, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6fields6FieldsECs7p2uQeJxui2_9deltalake.exit.thread ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtBL_6string6StringEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.w) #48
          to label %.body66 unwind label %bb.bs

bb.g:                                             ; preds = %bb.bm, %bb.k, %bb.m, %bb.l, %bb.j, %bb.h
  %.sroa.032.5 = phi i1 [ false, %bb.bm ], [ true, %bb.h ], [ false, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body59

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
end_hunk_2
begin_hunk_3_@_RINvMsn_NtCsgbCypRs12E4_4pyo38instanceINtB6_2PyNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE3newTBJ_NtBL_10StructTypeEEBN_:bb.a
          to label %common.resume unwind label %bb.e, !noalias !972

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #47
          to label %bb.d unwind label %bb.b, !noalias !974

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !972
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.n, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.u, %bb.l ], [ %lpad.thr_comm.i, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RNvXs1_NtCsbvkFyIu7lgC_4core7convertTNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaNtBB_10StructTypeEINtB5_4IntoINtNtCsgbCypRs12E4_4pyo312pyclass_init18PyClassInitializerBz_EE4intoBD_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(144) %1, i64 144, i1 false), !noalias !979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !975
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1m_NtCs7p2uQeJxui2_9deltalake6schemaNtB8_8PySchemaNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !980
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.thread.i.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.i.i, !prof !151

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.i.i: ; preds = %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertTNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaNtBB_10StructTypeEINtB5_4IntoINtNtCsgbCypRs12E4_4pyo312pyclass_init18PyClassInitializerBz_EE4intoBD_.exit
  invoke void @_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE8try_initB1p_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noundef nonnull align 8 @_RNvNvXs1m_NtCs7p2uQeJxui2_9deltalake6schemaNtB8_8PySchemaNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT)
          to label %.noexc.i unwind label %bb.n, !noalias !975

.noexc.i:                                         ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.i.i
  %.pre.i.i = load i64, ptr %i.c, align 8, !range !145, !noalias !975
  %i.j = trunc nuw i64 %.pre.i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.j, label %bb.f, label %.noexc._crit_edge.i, !prof !956

.noexc._crit_edge.i:                              ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.k, align 8, !noalias !975
  br label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.thread.i.i

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 6) #47
          to label %.noexc2.i unwind label %bb.n, !noalias !975

.noexc2.i:                                        ; preds = %bb.f
  unreachable

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.thread.i.i: ; preds = %.noexc._crit_edge.i, %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertTNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaNtBB_10StructTypeEINtB5_4IntoINtNtCsgbCypRs12E4_4pyo312pyclass_init18PyClassInitializerBz_EE4intoBD_.exit
  %i.l = phi ptr [ %.pre.i, %.noexc._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs1m_NtCs7p2uQeJxui2_9deltalake6schemaNtB8_8PySchemaNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %_RNvXs1_NtCsbvkFyIu7lgC_4core7convertTNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaNtBB_10StructTypeEINtB5_4IntoINtNtCsgbCypRs12E4_4pyo312pyclass_init18PyClassInitializerBz_EE4intoBD_.exit ]
  %i.m = load ptr, ptr %i.l, align 8, !noalias !975, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !975
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.n = load i64, ptr %i.d, align 8, !range !986, !alias.scope !983, !noalias !987, !noundef !8 ; 4 uses
  %.not.i.i = icmp eq i64 %i.n, -9223372036854775807
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !983, !noalias !987 ; 5 uses
  br i1 %.not.i.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.thread.i.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !989
  store i64 %i.n, ptr %i.b, align 8, !noalias !996
  %.sroa.415.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %.sroa.415.0..sroa_idx16.i.i, align 8, !noalias !996
  %.sroa.5.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx20.i.i, ptr noundef nonnull readonly align 8 dereferenceable(128) %.sroa.5.0..sroa_idx.i.i, i64 128, i1 false), !noalias !987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !989
  invoke void @_RNvXNtNtCsgbCypRs12E4_4pyo35impl_12pyclass_initINtB2_23PyNativeTypeInitializerNtNtNtB6_5types3any5PyAnyEINtB2_12PyObjectInitB1e_E15into_new_objectCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull %i.m)
          to label %bb.j unwind label %bb.l, !noalias !989

bb.i:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.q = load i64, ptr %i.a, align 8, !range !145, !noalias !989, !noundef !8
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.010.0.copyload.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !989 ; 6 uses
  br i1 %i.r, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !989
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i.i.i.i, i64 16
  store i64 %i.n, ptr %i.t, align 8, !noalias !996
  %.sroa.415.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i.i.i.i, i64 24
  store ptr %i.p, ptr %.sroa.415.0..sroa_idx18.i.i, align 8, !noalias !996
  %.sroa.5.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx21.i.i, ptr noundef nonnull readonly align 8 dereferenceable(128) %.sroa.5.0..sroa_idx.i.i, i64 128, i1 false), !noalias !987
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i.i.i.i, i64 160
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !989
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b)
          to label %common.resume unwind label %bb.m, !noalias !989

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !989
  unreachable

bb.n:                                             ; preds = %bb.f, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsgbCypRs12E4_4pyo312pyclass_init18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaEEB1G_(ptr noalias noundef align 8 dereferenceable(144) %i.d) #48
          to label %common.resume unwind label %bb.o, !noalias !975

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !975
  unreachable

bb.p:                                             ; preds = %bb.j
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511.0..sroa_idx.i.i.i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !989
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.b), !noalias !975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !975
  br label %bb.r

bb.q:                                             ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.thread.i.i, %bb.i, %bb.k
  %.sroa.6.0.ph.sink.i.ph.i.sink.i.ph = phi ptr [ %.sroa.010.0.copyload.i.i.i.i, %bb.k ], [ %i.p, %bb.i ], [ %i.p, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_.exit.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !975
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.ph.sink.i.ph.i.sink.i.ph) ]
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.6.0.ph.sink.i.ph.i.sink.i.ph.sink = phi ptr [ %.sroa.6.0.ph.sink.i.ph.i.sink.i.ph, %bb.q ], [ %.sroa.010.0.copyload.i.i.i.i, %bb.p ]
  %storemerge = phi i64 [ 0, %bb.q ], [ 1, %bb.p ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.sink.i.ph.i.sink.i.ph.sink, ptr %i.x, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [152 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !997
  %i.d = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !997 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !3

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #47
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000E0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 dereferenceable(152) %i.b) #48
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.t, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils13GLOBAL_TRACER, i64 56) acquire, align 8
  %i.i = icmp eq i8 %i.h, 0                       ; 2 uses
  %i.j = load ptr, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils13GLOBAL_TRACER, align 8, !nonnull !8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils13GLOBAL_TRACER, i64 8), align 8, !nonnull !8, !align !144
  %.sroa.3.0 = select i1 %i.i, ptr @26, ptr %i.k
  %.sroa.01.0 = select i1 %i.i, ptr @_RNvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils11NOOP_TRACER, ptr %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !8, !nonnull !8
  %i.n = tail call { ptr, ptr } %i.m(ptr noundef nonnull %.sroa.01.0, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.p, ptr %i.q, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50
  %i.r = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #50 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.i, !prof !3

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #47
          to label %.noexc4 unwind label %bb.g

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6future6future3MapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIB1O_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EB3k_EL_EENCINvNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utils12trace_futureTjINtNtB4_6result6ResultINtNtB1S_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000Es_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #48
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.p, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = insertvalue { ptr, ptr } poison, ptr %i.r, 0
  %i.x = insertvalue { ptr, ptr } %i.w, ptr @27, 1
  ret { ptr, ptr } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan24check_default_invariantsNtNtB4_6memory14LazyMemoryExecECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [48 x i8], align 8               ; 9 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 10 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 9 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [8 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 0, ptr %i.ak, align 8, !alias.scope !1000
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.am, align 8, !alias.scope !1000
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %i.an, align 8, !alias.scope !1000
  store i64 0, ptr %i.al, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.ak, align 8, !alias.scope !1003 ; 2 uses
  %i.ap = icmp eq i64 %.val2.i, 0
  br i1 %i.ap, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val3.i = load ptr, ptr %i.am, align 8, !alias.scope !1008, !nonnull !8, !noundef !8
  %i.aq = shl nuw i64 %.val2.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !1009
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.ak, align 8, !alias.scope !1003 ; 2 uses
  %i.ar = icmp eq i64 %.val.i, 0
  br i1 %i.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i = load ptr, ptr %i.am, align 8, !alias.scope !1008, !nonnull !8, !noundef !8
  %i.as = shl nuw i64 %.val.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !1012
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs7p2uQeJxui2_9deltalake.exit

common.resume:                                    ; preds = %bb.ar, %bb.as, %bb.am, %bb.an, %bb.ah, %bb.ai, %bb.aa, %bb.ag, %bb.al, %bb.aq, %bb.ab, %bb.ac, %bb.u, %bb.v, %bb.p, %bb.q, %bb.k, %bb.l, %bb.f, %bb.g, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.dr, %bb.am ], [ %i.ao, %bb.b ], [ %i.aw, %bb.f ], [ %i.bg, %bb.k ], [ %i.bx, %bb.p ], [ %i.cn, %bb.u ], [ %i.de, %bb.ab ], [ %i.dd, %bb.aa ], [ %i.dl, %bb.ah ], [ %i.ao, %bb.c ], [ %i.aw, %bb.g ], [ %i.bg, %bb.l ], [ %i.bx, %bb.q ], [ %i.cn, %bb.v ], [ %i.de, %bb.ac ], [ %i.dw, %bb.aq ], [ %i.dq, %bb.al ], [ %i.dk, %bb.ag ], [ %i.dl, %bb.ai ], [ %i.dr, %bb.an ], [ %i.dx, %bb.as ], [ %i.dx, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan6memory14LazyMemoryExecNtNtB6_14execution_plan13ExecutionPlan21maintains_input_orderCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %1)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !8 ; 2 uses
  store i64 %i.au, ptr %i.aj, align 8
  %i.av = icmp sgt i64 %i.au, -1
  call void @llvm.assume(i1 %i.av)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i156 = load i64, ptr %i.ai, align 8, !alias.scope !1015 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i156, 0
  br i1 %i.ax, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val3.i157 = load ptr, ptr %i.ay, align 8, !alias.scope !1020, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i157, i64 noundef %.val2.i156, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !1021
  br label %common.resume

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs7p2uQeJxui2_9deltalake.exit
  %.val.i158 = load i64, ptr %i.ai, align 8, !alias.scope !1015 ; 2 uses
  %i.az = icmp eq i64 %.val.i158, 0
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.val1.i159 = load ptr, ptr %i.ba, align 8, !alias.scope !1020, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i159, i64 noundef %.val.i158, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !1024
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.aj, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.al, ptr %i.ag, align 8
  %i.bb = load i64, ptr %i.aj, align 8, !noundef !8
  %i.bc = load i64, ptr %i.al, align 8, !noundef !8
  %.not = icmp eq i64 %i.bb, %i.bc
  br i1 %.not, label %bb.j, label %.split134

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan6memory14LazyMemoryExecNtNtB6_14execution_plan13ExecutionPlan23required_input_orderingCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noundef !8 ; 2 uses
  store i64 %i.be, ptr %i.aa, align 8
  %i.bf = icmp ult i64 %i.be, 288230376151711744
  call void @llvm.assume(i1 %i.bf)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEENtNtNtBK_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i160 = load i64, ptr %i.z, align 8, !alias.scope !1027 ; 2 uses
  %i.bh = icmp eq i64 %.val2.i160, 0
  br i1 %i.bh, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val3.i161 = load ptr, ptr %i.bi, align 8, !alias.scope !1032, !nonnull !8, !noundef !8
  %i.bj = shl nuw i64 %.val2.i160, 5
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i161, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !1033
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %.val.i162 = load i64, ptr %i.z, align 8, !alias.scope !1027 ; 2 uses
  %i.bk = icmp eq i64 %.val.i162, 0
  br i1 %i.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEEECs7p2uQeJxui2_9deltalake.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i163 = load ptr, ptr %i.bl, align 8, !alias.scope !1032, !nonnull !8, !noundef !8
  %i.bm = shl nuw i64 %.val.i162, 5
end_hunk_3
begin_hunk_4_@_RNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0B8_:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !144, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.g, align 8, !align !1574, !noundef !8 ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.h, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.i = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.i, align 8, !align !144, !noundef !8 ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.j, align 8           ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24388)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = shl nuw nsw i64 %.val11, 3               ; 3 uses
  %i.m = icmp eq i64 %.val11, 0
  br i1 %i.m, label %_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !24391
  %i.n = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24391 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull readonly align 8 %.val10, i64 %i.l, i1 false), !noalias !24398
  br label %_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i

_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i: ; preds = %bb.f, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.c ]
  store i64 %.val11, ptr %i.k, align 8, !alias.scope !24388, !noalias !24399
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !24388, !noalias !24399
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !24388, !noalias !24399
  %i.p = icmp eq i64 %.val11, -9223372036854775808
  %i.q = select i1 %i.p, ptr null, ptr %i.k
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.k, align 8, !alias.scope !24388, !noalias !24399
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i
  %.not.i15 = phi ptr [ null, %bb.g ], [ %i.q, %_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i ]
  %i.s = load <2 x i64>, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load <2 x ptr>, ptr %i.t, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !24400
  %i.v = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24400 ; 9 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.noexc.i, label %bb.k, !prof !3

.noexc.i:                                         ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #47
          to label %.noexc19 unwind label %bb.j

.noexc19:                                         ; preds = %.noexc.i
  unreachable

bb.j:                                             ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  store <2 x i64> %i.s, ptr %i.v, align 8, !noalias !24408
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i17, align 8, !noalias !24408
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store <2 x ptr> %i.u, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !24409
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %..i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !24410
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 %.5.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !24411
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr %.not.i15, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !24411
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr @424, ptr %i.z, align 8
  br label %bb.o

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.u, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.u ], [ %i.ab, %bb.n ], [ %i.ao, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.x, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #48
          to label %.body21 unwind label %bb.af

.body21:                                          ; preds = %bb.ac, %bb.ad, %bb.y, %bb.x, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bh, %bb.ac ], [ %.pn, %.body ], [ %i.r, %bb.h ], [ %i.ay, %bb.y ], [ %i.bh, %bb.ad ], [ %i.ay, %bb.x ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #51
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #51
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %i.ad, align 8
  %i.ac = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.ac, align 8, !nonnull !8, !align !144, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val6, ptr nonnull %.val7) #48
          to label %.body unwind label %bb.af

bb.o:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ae = load i64, ptr %i.a, align 8, !range !15719, !noundef !8 ; 3 uses
  %i.af = icmp eq i64 %i.ae, 21
  br i1 %i.af, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %.sroa.345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load <2 x ptr>, ptr %.sroa.345.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.ad, align 8            ; 5 uses
  %i.ah = getelementptr i8, ptr %1, i64 152
  %.val5 = load ptr, ptr %i.ah, align 8, !nonnull !8, !align !144, !noundef !8 ; 5 uses
  %i.ai = load ptr, ptr %.val5, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ai(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !177, !invariant.load !8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !428, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) %i.an) #50
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !177, !invariant.load !8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !428, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) %i.at) #50
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.t
  %.not.i20 = icmp eq i64 %i.ae, 20
  br i1 %.not.i20, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.au = extractelement <2 x ptr> %i.ag, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = extractelement <2 x ptr> %i.ag, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.aw = load i64, ptr %3, align 8, !range !37, !alias.scope !24412, !noundef !8
  %i.ax = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %3, align 8, !alias.scope !24415 ; 2 uses
  %i.az = icmp eq i64 %.val2.i.i, 0
  br i1 %i.az, label %.body21, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !24420, !nonnull !8, !noundef !8
  %i.bb = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24421
  br label %.body21

bb.z:                                             ; preds = %bb.w
  %.val.i.i = load i64, ptr %3, align 8, !alias.scope !24415 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i, 0
  br i1 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split: ; preds = %bb.z, %bb.ae
  %.val.i.i26.sink = phi i64 [ %.val.i.i26, %bb.ae ], [ %.val.i.i, %bb.z ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val1.i.i27 = load ptr, ptr %i.bd, align 8, !nonnull !8, !noundef !8
  %i.be = shl nuw i64 %.val.i.i26.sink, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i27, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split, %bb.ae, %bb.aa, %bb.z, %bb.v
  store i64 %i.ae, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ag, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bf = load i64, ptr %4, align 8, !range !37, !alias.scope !24424, !noundef !8
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i23 = load i64, ptr %4, align 8, !alias.scope !24427 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i.i23, 0
  br i1 %i.bi, label %.body21, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i.i24 = load ptr, ptr %i.bj, align 8, !alias.scope !24432, !nonnull !8, !noundef !8
  %i.bk = shl nuw i64 %.val2.i.i23, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i24, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24433
  br label %.body21

bb.ae:                                            ; preds = %bb.ab
  %.val.i.i26 = load i64, ptr %4, align 8, !alias.scope !24427 ; 2 uses
  %i.bl = icmp eq i64 %.val.i.i26, 0
  br i1 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split

bb.af:                                            ; preds = %bb.n, %.body
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0B8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !4364, !noundef !8
  switch i8 %i.k, label %default.unreachable58 [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
  ]

default.unreachable58:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body41

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @120, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.g, %bb.d
  %.pn13 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.p, %bb.f ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #48
          to label %.body41 unwind label %bb.w

bb.d:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #48
          to label %.body unwind label %bb.w

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !24436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.553.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.555.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @22, ptr noundef nonnull %i.a)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35 unwind label %bb.d

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35:     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !24440 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i, 0
  br i1 %i.q, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24447, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24448
  br label %.body

bb.h:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !24440 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i, 0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24447, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24451
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i36 = load i64, ptr %i.f, align 8, !alias.scope !24454 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i36, 0
  br i1 %i.t, label %.body41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i37 = load ptr, ptr %i.u, align 8, !alias.scope !24461, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i37, i64 noundef %.val2.i.i36, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24462
  br label %.body41

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %.val.i.i39 = load i64, ptr %i.f, align 8, !alias.scope !24454 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i39, 0
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i40 = load ptr, ptr %i.w, align 8, !alias.scope !24461, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i40, i64 noundef %.val.i.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24465
  br label %bb.n

.body41:                                          ; preds = %bb.k, %bb.j, %.body, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.l, %bb.b ], [ %.pn13, %.body ], [ %i.s, %bb.j ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #48
          to label %.body44 unwind label %bb.w

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.h, align 8, !alias.scope !24468 ; 2 uses
  %i.y = icmp eq i64 %.val2.i, 0
  br i1 %i.y, label %.body44, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val3.i = load ptr, ptr %i.z, align 8, !alias.scope !24473, !nonnull !8, !noundef !8
  %i.aa = mul nuw i64 %.val2.i, 112
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 16) #50, !noalias !24474
  br label %.body44

bb.q:                                             ; preds = %bb.n
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !24468 ; 2 uses
  %i.ab = icmp eq i64 %.val.i, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i = load ptr, ptr %i.ac, align 8, !alias.scope !24473, !nonnull !8, !noundef !8
  %i.ad = mul nuw i64 %.val.i, 112
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #50, !noalias !24477
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

.body44:                                          ; preds = %bb.p, %bb.o, %.body41
  %.pn21 = phi { ptr, i32 } [ %.pn15, %.body41 ], [ %i.x, %bb.o ], [ %i.x, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i) #48
          to label %.body50 unwind label %bb.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
end_hunk_4
begin_hunk_5_@_RNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0B8_:bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !144, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.g, align 8, !align !1574, !noundef !8 ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.h, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.i = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.i, align 8, !align !144, !noundef !8 ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.j, align 8           ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24600)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = shl nuw nsw i64 %.val11, 3               ; 3 uses
  %i.m = icmp eq i64 %.val11, 0
  br i1 %i.m, label %_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !24603
  %i.n = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24603 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull readonly align 8 %.val10, i64 %i.l, i1 false), !noalias !24610
  br label %_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i

_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i: ; preds = %bb.f, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.c ]
  store i64 %.val11, ptr %i.k, align 8, !alias.scope !24600, !noalias !24611
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !24600, !noalias !24611
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !24600, !noalias !24611
  %i.p = icmp eq i64 %.val11, -9223372036854775808
  %i.q = select i1 %i.p, ptr null, ptr %i.k
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.k, align 8, !alias.scope !24600, !noalias !24611
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i
  %.not.i15 = phi ptr [ null, %bb.g ], [ %i.q, %_RNCNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Ba_.exit.i ]
  %i.s = load <2 x i64>, ptr %i.f, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !24612
  %i.t = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24612 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.noexc.i, label %bb.k, !prof !3

.noexc.i:                                         ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #47
          to label %.noexc19 unwind label %bb.j

.noexc19:                                         ; preds = %.noexc.i
  unreachable

bb.j:                                             ; preds = %.noexc.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  store <2 x i64> %i.s, ptr %i.t, align 8, !noalias !24619
  %.sroa.5.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i17, align 8, !noalias !24619
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %..i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !24620
  %.sroa.7.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %.5.i, ptr %.sroa.7.0..sroa_idx.i18, align 8, !noalias !24621
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %.not.i15, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !24621
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr @289, ptr %i.x, align 8
  br label %bb.o

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.u, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.u ], [ %i.z, %bb.n ], [ %i.am, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.v, %bb.j ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #48
          to label %.body21 unwind label %bb.af

.body21:                                          ; preds = %bb.ac, %bb.ad, %bb.y, %bb.x, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bf, %bb.ac ], [ %.pn, %.body ], [ %i.r, %bb.h ], [ %i.aw, %bb.y ], [ %i.bf, %bb.ad ], [ %i.aw, %bb.x ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #51
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #51
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %i.ab, align 8
  %i.aa = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.aa, align 8, !nonnull !8, !align !144, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val6, ptr nonnull %.val7) #48
          to label %.body unwind label %bb.af

bb.o:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ac = load i64, ptr %i.a, align 8, !range !15719, !noundef !8 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 21
  br i1 %i.ad, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %.sroa.345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load <2 x ptr>, ptr %.sroa.345.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.af = getelementptr i8, ptr %1, i64 152
  %.val5 = load ptr, ptr %i.af, align 8, !nonnull !8, !align !144, !noundef !8 ; 5 uses
  %i.ag = load ptr, ptr %.val5, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ag(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !177, !invariant.load !8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !428, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) %i.al) #50
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !177, !invariant.load !8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !428, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) %i.ar) #50
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.t
  %.not.i20 = icmp eq i64 %i.ac, 20
  br i1 %.not.i20, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.as = extractelement <2 x ptr> %i.ae, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = extractelement <2 x ptr> %i.ae, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.au = load i64, ptr %3, align 8, !range !37, !alias.scope !24622, !noundef !8
  %i.av = icmp eq i64 %i.au, -9223372036854775808
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %3, align 8, !alias.scope !24625 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ax, label %.body21, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !24630, !nonnull !8, !noundef !8
  %i.az = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24631
  br label %.body21

bb.z:                                             ; preds = %bb.w
  %.val.i.i = load i64, ptr %3, align 8, !alias.scope !24625 ; 2 uses
  %i.ba = icmp eq i64 %.val.i.i, 0
  br i1 %i.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split: ; preds = %bb.z, %bb.ae
  %.val.i.i26.sink = phi i64 [ %.val.i.i26, %bb.ae ], [ %.val.i.i, %bb.z ]
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val1.i.i27 = load ptr, ptr %i.bb, align 8, !nonnull !8, !noundef !8
  %i.bc = shl nuw i64 %.val.i.i26.sink, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i27, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split, %bb.ae, %bb.aa, %bb.z, %bb.v
  store i64 %i.ac, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ae, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bd = load i64, ptr %4, align 8, !range !37, !alias.scope !24634, !noundef !8
  %i.be = icmp eq i64 %i.bd, -9223372036854775808
  br i1 %i.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i23 = load i64, ptr %4, align 8, !alias.scope !24637 ; 2 uses
  %i.bg = icmp eq i64 %.val2.i.i23, 0
  br i1 %i.bg, label %.body21, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i.i24 = load ptr, ptr %i.bh, align 8, !alias.scope !24642, !nonnull !8, !noundef !8
  %i.bi = shl nuw i64 %.val2.i.i23, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i24, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24643
  br label %.body21

bb.ae:                                            ; preds = %bb.ab
  %.val.i.i26 = load i64, ptr %4, align 8, !alias.scope !24637 ; 2 uses
  %i.bj = icmp eq i64 %.val.i.i26, 0
  br i1 %i.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split

bb.af:                                            ; preds = %bb.n, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtCs7p2uQeJxui2_9deltalake10datafusion17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0B8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !4364, !noundef !8
  switch i8 %i.k, label %default.unreachable58 [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
  ]

default.unreachable58:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body41

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @120, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.g, %bb.d
  %.pn13 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.p, %bb.f ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #48
          to label %.body41 unwind label %bb.w

bb.d:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #48
          to label %.body unwind label %bb.w

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !24646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.553.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.555.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @22, ptr noundef nonnull %i.a)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35 unwind label %bb.d

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35:     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !24650 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i, 0
  br i1 %i.q, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24657, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24658
  br label %.body

bb.h:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !24650 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i, 0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24657, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24661
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i36 = load i64, ptr %i.f, align 8, !alias.scope !24664 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i36, 0
  br i1 %i.t, label %.body41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i37 = load ptr, ptr %i.u, align 8, !alias.scope !24671, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i37, i64 noundef %.val2.i.i36, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24672
  br label %.body41

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %.val.i.i39 = load i64, ptr %i.f, align 8, !alias.scope !24664 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i39, 0
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i40 = load ptr, ptr %i.w, align 8, !alias.scope !24671, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i40, i64 noundef %.val.i.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24675
  br label %bb.n

.body41:                                          ; preds = %bb.k, %bb.j, %.body, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.l, %bb.b ], [ %.pn13, %.body ], [ %i.s, %bb.j ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #48
          to label %.body44 unwind label %bb.w

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.h, align 8, !alias.scope !24678 ; 2 uses
  %i.y = icmp eq i64 %.val2.i, 0
  br i1 %i.y, label %.body44, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val3.i = load ptr, ptr %i.z, align 8, !alias.scope !24683, !nonnull !8, !noundef !8
  %i.aa = mul nuw i64 %.val2.i, 112
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 16) #50, !noalias !24684
  br label %.body44

bb.q:                                             ; preds = %bb.n
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !24678 ; 2 uses
  %i.ab = icmp eq i64 %.val.i, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i = load ptr, ptr %i.ac, align 8, !alias.scope !24683, !nonnull !8, !noundef !8
  %i.ad = mul nuw i64 %.val.i, 112
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #50, !noalias !24687
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

.body44:                                          ; preds = %bb.p, %bb.o, %.body41
  %.pn21 = phi { ptr, i32 } [ %.pn15, %.body41 ], [ %i.x, %bb.o ], [ %i.x, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i) #48
          to label %.body50 unwind label %bb.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
end_hunk_5
begin_hunk_6_@_RNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scan21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0Cs7p2uQeJxui2_9deltalake:bb.a
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !4347, !noundef !8
  switch i8 %i.c, label %default.unreachable52 [
    i8 0, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.o
  ]

default.unreachable52:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !144, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr i8, ptr %1, i64 88
  %.val8 = load ptr, ptr %i.g, align 8, !align !1574, !noundef !8 ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 96
  %.val9 = load i64, ptr %i.h, align 8
  %.not.i = icmp eq ptr %.val8, null              ; 2 uses
  %..i = select i1 %.not.i, ptr inttoptr (i64 16 to ptr), ptr %.val8
  %.5.i = select i1 %.not.i, i64 0, i64 %.val9
  %i.i = getelementptr i8, ptr %1, i64 104
  %.val10 = load ptr, ptr %i.i, align 8, !align !144, !noundef !8 ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 112
  %.val11 = load i64, ptr %i.j, align 8           ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24810)
  %.not.i14 = icmp eq ptr %.val10, null
  br i1 %.not.i14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = shl nuw nsw i64 %.val11, 3               ; 3 uses
  %i.m = icmp eq i64 %.val11, 0
  br i1 %i.m, label %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scan21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !noalias !24813
  %i.n = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24813 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.l) #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull readonly align 8 %.val10, i64 %i.l, i1 false), !noalias !24820
  br label %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scan21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i

_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scan21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.f, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.c ]
  store i64 %.val11, ptr %i.k, align 8, !alias.scope !24810, !noalias !24821
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !24810, !noalias !24821
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 %.val11, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !24810, !noalias !24821
  %i.p = icmp eq i64 %.val11, -9223372036854775808
  %i.q = select i1 %i.p, ptr null, ptr %i.k
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.k, align 8, !alias.scope !24810, !noalias !24821
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.i:                                             ; preds = %bb.g, %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scan21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i
  %.not.i15 = phi ptr [ null, %bb.g ], [ %i.q, %_RNCNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scan21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args00Cs7p2uQeJxui2_9deltalake.exit.i ]
  %.val12 = load i64, ptr %i.f, align 8, !range !145, !noundef !8
  %i.s = getelementptr i8, ptr %1, i64 80
  %.val13 = load i64, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !8, !align !144, !noundef !8
  %i.x = invoke { ptr, ptr } @_RNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB5_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider4scan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.e, ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.not.i15, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %..i, i64 noundef %.5.i, i64 noundef %.val12, i64 %.val13)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.z = extractvalue { ptr, ptr } %i.x, 0
  %i.aa = extractvalue { ptr, ptr } %i.x, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.aa, ptr %i.ac, align 8
  br label %bb.o

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.u, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.u ], [ %i.ae, %bb.n ], [ %i.ar, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.y, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad) #48
          to label %.body18 unwind label %bb.af

.body18:                                          ; preds = %bb.ac, %bb.ad, %bb.y, %bb.x, %bb.h, %.body
  %.pn3 = phi { ptr, i32 } [ %i.bk, %bb.ac ], [ %.pn, %.body ], [ %i.r, %bb.h ], [ %i.bb, %bb.y ], [ %i.bk, %bb.ad ], [ %i.bb, %bb.x ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn3

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #51
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #51
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %i.ag, align 8
  %i.af = getelementptr i8, ptr %1, i64 152
  %.val7 = load ptr, ptr %i.af, align 8, !nonnull !8, !align !144, !noundef !8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr %.val6, ptr nonnull %.val7) #48
          to label %.body unwind label %bb.af

bb.o:                                             ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.ah = load i64, ptr %i.a, align 8, !range !15719, !noundef !8 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 21
  br i1 %i.ai, label %bb.q, label %bb.r

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, %bb.q
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit ], [ 3, %bb.q ]
  store i8 %storemerge, ptr %i.b, align 8
  ret void

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 21, ptr %0, align 8
  br label %common.ret

bb.r:                                             ; preds = %bb.p
  %.sroa.342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load <2 x ptr>, ptr %.sroa.342.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ak = getelementptr i8, ptr %1, i64 152
  %.val5 = load ptr, ptr %i.ak, align 8, !nonnull !8, !align !144, !noundef !8 ; 5 uses
  %i.al = load ptr, ptr %.val5, align 8, !invariant.load !8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.al(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !177, !invariant.load !8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !428, !invariant.load !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) %i.aq) #50
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit

bb.u:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !177, !invariant.load !8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !428, !invariant.load !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) %i.aw) #50
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.t
  %.not.i17 = icmp eq i64 %i.ah, 20
  br i1 %.not.i17, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  %i.ax = extractelement <2 x ptr> %i.aj, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ay = extractelement <2 x ptr> %i.aj, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.az = load i64, ptr %3, align 8, !range !37, !alias.scope !24822, !noundef !8
  %i.ba = icmp eq i64 %i.az, -9223372036854775808
  br i1 %i.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %3, align 8, !alias.scope !24825 ; 2 uses
  %i.bc = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bc, label %.body18, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !24830, !nonnull !8, !noundef !8
  %i.be = shl nuw i64 %.val2.i.i, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24831
  br label %.body18

bb.z:                                             ; preds = %bb.w
  %.val.i.i = load i64, ptr %3, align 8, !alias.scope !24825 ; 2 uses
  %i.bf = icmp eq i64 %.val.i.i, 0
  br i1 %i.bf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split: ; preds = %bb.z, %bb.ae
  %.val.i.i23.sink = phi i64 [ %.val.i.i23, %bb.ae ], [ %.val.i.i, %bb.z ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val1.i.i24 = load ptr, ptr %i.bg, align 8, !nonnull !8, !noundef !8
  %i.bh = shl nuw i64 %.val.i.i23.sink, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i24, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split, %bb.ae, %bb.aa, %bb.z, %bb.v
  store i64 %i.ah, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.aj, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  br label %common.ret

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.bi = load i64, ptr %4, align 8, !range !37, !alias.scope !24834, !noundef !8
  %i.bj = icmp eq i64 %i.bi, -9223372036854775808
  br i1 %i.bj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i20 = load i64, ptr %4, align 8, !alias.scope !24837 ; 2 uses
  %i.bl = icmp eq i64 %.val2.i.i20, 0
  br i1 %i.bl, label %.body18, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i.i21 = load ptr, ptr %i.bm, align 8, !alias.scope !24842, !nonnull !8, !noundef !8
  %i.bn = shl nuw i64 %.val2.i.i20, 3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i21, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #50, !noalias !24843
  br label %.body18

bb.ae:                                            ; preds = %bb.ab
  %.val.i.i23 = load i64, ptr %4, align 8, !alias.scope !24837 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i23, 0
  br i1 %i.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEEECs7p2uQeJxui2_9deltalake.exit.sink.split

bb.af:                                            ; preds = %bb.n, %.body
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scan21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.22 = alloca [24 x i8], align 8           ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !range !4364, !noundef !8
  switch i8 %i.k, label %default.unreachable58 [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
  ]

default.unreachable58:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body41

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr12table_sourceNtB2_9TableTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @120, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.g, %bb.d
  %.pn13 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.p, %bb.f ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #48
          to label %.body41 unwind label %bb.w

bb.d:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #48
          to label %.body unwind label %bb.w

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !24846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.553.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.555.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @22, ptr noundef nonnull %i.a)
          to label %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35 unwind label %bb.d

_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35:     ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !alias.scope !24850 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i, 0
  br i1 %i.q, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val3.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24857, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24858
  br label %.body

bb.h:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format.exit35
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !24850 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i, 0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24857, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24861
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i36 = load i64, ptr %i.f, align 8, !alias.scope !24864 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i36, 0
  br i1 %i.t, label %.body41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i37 = load ptr, ptr %i.u, align 8, !alias.scope !24871, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i37, i64 noundef %.val2.i.i36, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24872
  br label %.body41

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %.val.i.i39 = load i64, ptr %i.f, align 8, !alias.scope !24864 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i39, 0
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i40 = load ptr, ptr %i.w, align 8, !alias.scope !24871, !nonnull !8, !noundef !8
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i40, i64 noundef %.val.i.i39, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !24875
  br label %bb.n

.body41:                                          ; preds = %bb.k, %bb.j, %.body, %bb.b
  %.pn15 = phi { ptr, i32 } [ %i.l, %bb.b ], [ %.pn13, %.body ], [ %i.s, %bb.j ], [ %i.s, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #48
          to label %.body44 unwind label %bb.w

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.h, align 8, !alias.scope !24878 ; 2 uses
  %i.y = icmp eq i64 %.val2.i, 0
  br i1 %i.y, label %.body44, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val3.i = load ptr, ptr %i.z, align 8, !alias.scope !24883, !nonnull !8, !noundef !8
  %i.aa = mul nuw i64 %.val2.i, 112
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 16) #50, !noalias !24884
  br label %.body44

bb.q:                                             ; preds = %bb.n
  %.val.i = load i64, ptr %i.h, align 8, !alias.scope !24878 ; 2 uses
  %i.ab = icmp eq i64 %.val.i, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i = load ptr, ptr %i.ac, align 8, !alias.scope !24883, !nonnull !8, !noundef !8
  %i.ad = mul nuw i64 %.val.i, 112
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #50, !noalias !24887
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit

.body44:                                          ; preds = %bb.p, %bb.o, %.body41
  %.pn21 = phi { ptr, i32 } [ %.pn15, %.body41 ], [ %i.x, %bb.o ], [ %i.x, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i) #48
          to label %.body50 unwind label %bb.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
end_hunk_6
