inline.NumInlined: 6795
inline.NumDeleted: 2943
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCINvNtB11_13expr_rewriter15normalize_sortsBX_INtB8_3VecBX_EE0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B6v_EIB47_NtNtB1P_7convert10InfallibleB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6f_E0E0B5z_ECs7p2uQeJxui2_9deltalake:bb.a
  %i.q = load i64, ptr %.val.le, align 8, !range !4302, !alias.scope !6635, !noalias !6638, !noundef !12
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.i unwind label %bb.e, !noalias !6638

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !6629
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.a) #37
          to label %.body.i unwind label %bb.f, !noalias !6638

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !6638
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body9.i

bb.g:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.d) #37
          to label %.body.i unwind label %bb.h, !noalias !6629

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !6629
  unreachable

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.024, %bb.i ], [ %3, %bb.a ], [ %i.y, %bb.j ]
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.a ], [ 0, %bb.j ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.x, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !6629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.0.i)
  br label %._crit_edge

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i64 64, i1 false), !noalias !6629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6629
  store i64 %i.m, ptr %.sroa.4.024, align 16, !noalias !6638
  %.sroa.67.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !6629
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.sroa.0.i, i64 64, i1 false), !noalias !6640
  %.sroa.9.sroa.4.0..sroa.7.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 112
  store i8 %.sroa.2.0.copyload, ptr %.sroa.9.sroa.4.0..sroa.7.16..sroa_idx.i.sroa_idx.i, align 16, !noalias !6640
  %.sroa.9.sroa.5.0..sroa.7.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 113
  store i8 %.sroa.315.0.copyload, ptr %.sroa.9.sroa.5.0..sroa.7.16..sroa_idx.i.sroa_idx.i, align 1, !noalias !6640
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6629
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.0.i)
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCINvNtNtB11_13expr_rewriter8order_by25rewrite_sort_cols_by_aggsBX_INtB8_3VecBX_EE0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B6v_EIB47_NtNtB1P_7convert10InfallibleB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6f_E0E0B5z_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 6 uses
  %.sroa.42.i = alloca [40 x i8], align 8         ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.9.sroa.0.i = alloca [64 x i8], align 16  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not23 = icmp eq ptr %.promoted, %i.f
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !12, !align !375, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.4.024 = phi ptr [ %3, %.lr.ph ], [ %i.y, %bb.j ] ; 9 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.k, i64 112, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 16
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 113
  %.sroa.315.0.copyload = load i8, ptr %.sroa.315.0..sroa_idx, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 3 uses
  store ptr %i.l, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6648
  store ptr %2, ptr %i.d, align 8, !noalias !6648
  store ptr %.sroa.4.024, ptr %i.i, align 8, !noalias !6648
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  %.val.i = load ptr, ptr %.val2, align 8, !noalias !6648, !nonnull !12, !align !815, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6641
  invoke void @_RNvNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter8order_by24rewrite_sort_col_by_aggs(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i)
          to label %.noexc.i unwind label %bb.g, !noalias !6648

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6641
  %i.m = load i64, ptr %i.c, align 16, !range !5659, !noalias !6641, !noundef !12 ; 2 uses
  %i.n = icmp eq i64 %i.m, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !6641
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !6649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6648
  store ptr %2, ptr %i.a, align 8, !noalias !6650
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4.024, ptr %i.p, align 8, !noalias !6650
  %i.q = load i64, ptr %.val.le, align 8, !range !4302, !alias.scope !6654, !noalias !6657, !noundef !12
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.i unwind label %bb.e, !noalias !6657

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, i64 40, i1 false), !noalias !6648
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.a) #37
          to label %.body.i unwind label %bb.f, !noalias !6657

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !6657
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body9.i

bb.g:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.d) #37
          to label %.body.i unwind label %bb.h, !noalias !6648

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !6648
  unreachable

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.024, %bb.i ], [ %3, %bb.a ], [ %i.y, %bb.j ]
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.a ], [ 0, %bb.j ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.x, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, i64 40, i1 false), !noalias !6648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6648
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6648
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.0.i)
  br label %._crit_edge

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.65.0..sroa_idx.i.i, i64 64, i1 false), !noalias !6648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !6649
  %5 = and i8 %.sroa.2.0.copyload, 1
  %6 = and i8 %.sroa.315.0.copyload, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6648
  store i64 %i.m, ptr %.sroa.4.024, align 16, !noalias !6657
  %.sroa.67.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, i64 40, i1 false), !noalias !6648
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.sroa.0.i, i64 64, i1 false), !noalias !6659
  %.sroa.9.sroa.4.0..sroa.7.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 112
  store i8 %5, ptr %.sroa.9.sroa.4.0..sroa.7.16..sroa_idx.i.sroa_idx.i, align 16, !noalias !6659
  %.sroa.9.sroa.5.0..sroa.7.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 113
  store i8 %6, ptr %.sroa.9.sroa.5.0..sroa.7.16..sroa_idx.i.sroa_idx.i, align 1, !noalias !6659
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6648
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6648
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.0.i)
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2e_8adapters3map8map_foldBX_buNCNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan6filter10FilterExecNtNtB3W_14execution_plan13ExecutionPlan32benefits_from_input_partitioning0NCINvNvB28_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedINtB3e_3MapBI_B3N_EE0E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not7 = icmp eq ptr %.promoted, %i.c
  br i1 %.not7, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted8 = load i64, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.val3 = phi i64 [ %.promoted8, %.lr.ph ], [ %i.q, %bb.g ] ; 3 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load i64, ptr %i.a, align 8, !range !842, !alias.scope !6664, !noalias !6660, !noundef !12 ; 2 uses
  %switch1.i.i.i = icmp slt i64 %i.j, -9223372036854775806
  br i1 %switch1.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.d, !noalias !6660

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.e, !noalias !6660

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !6660
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

._crit_edge:                                      ; preds = %bb.g, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.q, %bb.g ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val5, ptr %.val4, align 8
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.k, %bb.d ]
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val3, ptr %.val, align 8
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.n = icmp ne i64 %i.j, -9223372036854775807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6660
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %.val3
  %i.p = zext i1 %i.n to i8
  store i8 %i.p, ptr %i.o, align 1, !noalias !6667
  %i.q = add i64 %.val3, 1                        ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2e_8adapters3map8map_foldBX_buNCNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan6memory14LazyMemoryExecNtNtB3W_14execution_plan13ExecutionPlan32benefits_from_input_partitioning0NCINvNvB28_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedINtB3e_3MapBI_B3N_EE0E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not7 = icmp eq ptr %.promoted, %i.c
  br i1 %.not7, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted8 = load i64, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.val3 = phi i64 [ %.promoted8, %.lr.ph ], [ %i.q, %bb.g ] ; 3 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load i64, ptr %i.a, align 8, !range !842, !alias.scope !6676, !noalias !6672, !noundef !12 ; 2 uses
  %switch1.i.i.i = icmp slt i64 %i.j, -9223372036854775806
  br i1 %switch1.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.d, !noalias !6672

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.e, !noalias !6672

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !6672
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

._crit_edge:                                      ; preds = %bb.g, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.q, %bb.g ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val5, ptr %.val4, align 8
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.k, %bb.d ]
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val3, ptr %.val, align 8
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.n = icmp ne i64 %i.j, -9223372036854775807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6672
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %.val3
  %i.p = zext i1 %i.n to i8
  store i8 %i.p, ptr %i.o, align 1, !noalias !6679
  %i.q = add i64 %.val3, 1                        ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1T_8adapters3map8map_foldBX_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNcNtB3q_6Column0NCINvNvB1N_8for_each4callB3q_NCINvMsj_B8_INtB8_3VecB3q_E14extend_trustedINtB2T_3MapBI_B4a_EE0E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB9_6string6StringEE32forget_allocation_drop_remainingCs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtBN_6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBX_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEE32forget_allocation_drop_remainingB1L_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 80                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBN_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1B_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBI_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEEB1w_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.m, %i.g
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBI_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEEB1w_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i2 = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.0.0.i2
  %i.m = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBH_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEEB1v_(ptr noalias noundef align 8 dereferenceable(80) %i.l)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph4
  %i.n = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %._crit_edge, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.m, %i.g
  br i1 %i.q, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.n, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBH_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEEB1v_(ptr noalias noundef align 8 dereferenceable(80) %i.r) #37
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %.lr.ph4
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBI_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEEB1w_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEE32forget_allocation_drop_remainingCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTjINtNtB7_3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.k = icmp eq i64 %i.m, %i.g
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.0.0.i14 = phi i64 [ %i.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.0.i14
  %i.m = add nuw nsw i64 %.sroa.0.0.i14, 1        ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph16
  %i.q = add i64 %.sroa.0.1.i15, 1                ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.g
  br i1 %i.r, label %._crit_edge, label %.lr.ph16

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.o, %bb.b ]
  %i.t = icmp eq i64 %i.m, %i.g
  br i1 %i.t, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i15 = phi i64 [ %i.q, %bb.d ], [ %i.m, %.body.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.1.i15
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.u) #37
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph16
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE14set_join_wakerCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask18try_set_join_waker(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !12
  tail call void %i.d(ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE14set_join_wakerCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessNtNtB6_3raw7RawTask18try_set_join_waker(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !12
  tail call void %i.d(ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs3_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB5_7LayeredINtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer18OpenTelemetryLayerIBW_NtNtNtB9_6filter3env9EnvFilterNtNtNtB9_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEB2f_E3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2400 x i8]) align 8 captures(none) dereferenceable(2400) initializes((0, 2395)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2336) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2336) %0, ptr noundef nonnull align 8 dereferenceable(2336) %2, i64 2336, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2392
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2393
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2394
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.d, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs3_NtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter3env9EnvFilterNtNtNtB9_8registry7sharded8RegistryE3newCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([2336 x i8]) align 8 captures(none) dereferenceable(2336) initializes((0, 2331)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(1784) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(544) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1784) %0, ptr noundef nonnull align 8 dereferenceable(1784) %1, i64 1784, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1784
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.a, ptr noundef nonnull align 8 dereferenceable(544) %2, i64 544, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2328
  store i8 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2329
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2330
  store i8 1, ptr %i.d, align 2
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEB13_E10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !noundef !12  ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !7934

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.c, ptr %i.f, align 8
  store ptr null, ptr %i.e, align 8
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1K_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEEEBM_EB3I_(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #40
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  store ptr %i.b, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !12
  %.not2 = icmp eq ptr %i.i, null
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  ret void

bb.g:                                             ; preds = %bb.e
  store ptr %i.b, ptr %i.h, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEEB13_E8pop_backCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !12 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.f
  %.sroa.0.0 = phi ptr [ %i.f, %bb.f ], [ null, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.e, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.f = tail call noundef nonnull ptr @_RNvXs6_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtB7_11linked_list4Link8from_rawCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E10push_frontCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !noundef !12  ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !7934

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.c, ptr %i.f, align 8
  store ptr null, ptr %i.e, align 8
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1K_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEEBM_EB3K_(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #40
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  store ptr %i.b, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !12
  %.not2 = icmp eq ptr %i.i, null
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  ret void

bb.g:                                             ; preds = %bb.e
  store ptr %i.b, ptr %i.h, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E6removeCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !12 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !12
  %.not6 = icmp eq ptr %i.f, %1
  br i1 %.not6, label %bb.e, label %bb.j

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = phi ptr [ %i.i, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !12 ; 2 uses
  store ptr %i.i, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.a, align 8, !noundef !12
  store ptr %i.k, ptr %i.j, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noundef !12
  %.not9 = icmp eq ptr %i.m, %1
  br i1 %.not9, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = tail call noundef nonnull ptr @_RNvXs6_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtB7_11linked_list4Link8from_rawCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.a, align 8, !noundef !12
  store ptr %i.o, ptr %i.l, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.g, %bb.c, %bb.h
  %.sroa.0.0 = phi ptr [ %i.n, %bb.h ], [ null, %bb.c ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB13_E8pop_backCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %.not = icmp eq ptr %i.b, null
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE20try_new_with_optionsCs7p2uQeJxui2_9deltalake:bb.a
  %.pn42105 = phi { ptr, i32 } [ %i.ep, %.body60.thread113 ], [ %.pn39.pn, %bb.bt ], [ %i.en, %bb.by ] ; 2 uses
  %.sroa.020.4104 = phi i8 [ %.sroa.020.6, %.body60.thread113 ], [ %.sroa.020.7, %bb.bt ], [ %.sroa.020.6, %bb.by ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8050)
  call void @llvm.experimental.noalias.scope.decl(metadata !8053)
  %i.fa = load ptr, ptr %i.t, align 8, !alias.scope !8056, !nonnull !12, !noundef !12
  %i.fb = atomicrmw sub ptr %i.fa, i64 1 release, align 8, !noalias !8056
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit75

bb.ch:                                            ; preds = %.body60.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit75 unwind label %bb.p

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit75
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %1) #37
          to label %common.resume unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5flushCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [112 x i8], align 8               ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [176 x i8], align 8               ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [96 x i8], align 8                ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 7 uses
  %i.l = alloca [96 x i8], align 8                ; 6 uses
  %i.m = alloca [96 x i8], align 8                ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 10 uses
  %i.o = alloca [96 x i8], align 16               ; 17 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 4 uses
  %i.w = alloca [712 x i8], align 8               ; 4 uses
  %.sroa.18.sroa.16.i.i = alloca [120 x i8], align 8 ; 12 uses
  %.sroa.18.sroa.18.i.i = alloca [16 x i8], align 8 ; 12 uses
  %.sroa.18.sroa.20.i.i = alloca [16 x i8], align 8 ; 12 uses
  %.sroa.18.sroa.22.i.i = alloca [16 x i8], align 8 ; 12 uses
  %.sroa.18.sroa.24.i.i = alloca [16 x i8], align 8 ; 12 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [416 x i8], align 8               ; 43 uses
  %i.z = alloca [416 x i8], align 8               ; 42 uses
  %i.aa = alloca [104 x i8], align 8              ; 5 uses
  %i.ab = alloca [416 x i8], align 8              ; 43 uses
  %i.ac = alloca [416 x i8], align 8              ; 42 uses
  %i.ad = alloca [128 x i8], align 8              ; 4 uses
  %i.ae = alloca [416 x i8], align 8              ; 43 uses
  %i.af = alloca [416 x i8], align 8              ; 42 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [416 x i8], align 8              ; 43 uses
  %i.ai = alloca [416 x i8], align 8              ; 42 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [416 x i8], align 8              ; 30 uses
  %i.al = alloca [416 x i8], align 8              ; 42 uses
  %i.am = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.623.i.i = alloca [32 x i8], align 8      ; 6 uses
  %i.an = alloca [88 x i8], align 8               ; 12 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [416 x i8], align 8              ; 24 uses
  %i.as = alloca [8 x i8], align 8                ; 12 uses
  %i.at = alloca [712 x i8], align 8              ; 51 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 5 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  %i.bi = alloca [8 x i8], align 8                ; 5 uses
  %i.bj = alloca [8 x i8], align 8                ; 5 uses
  %i.bk = alloca [200 x i8], align 8              ; 60 uses
  %i.bl = alloca [8 x i8], align 8                ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 15 uses
  %i.bn = alloca [744 x i8], align 8              ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 10 uses
  %i.bp = alloca [40 x i8], align 8               ; 4 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.17 = alloca [48 x i8], align 8           ; 6 uses
  %i.br = alloca [200 x i8], align 8              ; 30 uses
  %i.bs = alloca [40 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bt, align 8 ; 2 uses
  store i64 -9223372036854775808, ptr %i.bt, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8057)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8060)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bw = load i8, ptr %i.bv, align 8, !range !86, !alias.scope !8063, !noalias !8064, !noundef !12
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !8063, !noalias !8064, !noundef !12 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !8063, !noalias !8064, !noundef !12 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 96076792050570582
  tail call void @llvm.assume(i1 %i.cc)
  %.not.i.i = icmp eq i64 %i.bz, %i.cb
  br i1 %.not.i.i, label %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE29assert_previous_writer_closedCs7p2uQeJxui2_9deltalake.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !8067
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bf, i64 noundef 37, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.thread169

.noexc:                                           ; preds = %bb.d
  %i.cd = load i64, ptr %i.bf, align 8, !range !11, !noalias !8067, !noundef !12
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !13, !noalias !8067, !noundef !12 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  br i1 %i.ce, label %bb.h, label %bb.i, !prof !14

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !8067
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, i64 noundef 40, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc77 unwind label %.thread169

.noexc77:                                         ; preds = %bb.e
  %i.ci = load i64, ptr %i.be, align 8, !range !11, !noalias !8067, !noundef !12
  %i.cj = trunc nuw i64 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !13, !noalias !8067, !noundef !12 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  br i1 %i.cj, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %.noexc77
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !8067
  br label %.invoke

.invoke:                                          ; preds = %bb.h, %bb.f
  %i.co = phi i64 [ %i.cl, %bb.f ], [ %i.cg, %bb.h ]
  %i.cp = phi i64 [ %i.cn, %bb.f ], [ %i.cs, %bb.h ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cp) #36
          to label %.cont unwind label %.thread169

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %.noexc77
  %i.cq = load ptr, ptr %i.cm, align 8, !noalias !8067, !nonnull !12, !noundef !12 ; 2 uses
  %i.cr = icmp samesign ugt i64 %i.cl, 39
  tail call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !8067
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.cq, ptr noundef nonnull align 1 dereferenceable(40) @81, i64 40, i1 false), !noalias !8067
  br label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.cs = load i64, ptr %i.ch, align 8, !noalias !8067
  br label %.invoke

bb.i:                                             ; preds = %.noexc
  %i.ct = load ptr, ptr %i.ch, align 8, !noalias !8067, !nonnull !12, !noundef !12 ; 2 uses
  %i.cu = icmp samesign ugt i64 %i.cg, 36
  tail call void @llvm.assume(i1 %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !8067
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.ct, ptr noundef nonnull align 1 dereferenceable(37) @82, i64 37, i1 false), !noalias !8067
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.12.0.ph.i = phi i64 [ 40, %bb.g ], [ 37, %bb.i ]
  %.sroa.10.0.ph.i = phi ptr [ %i.cq, %bb.g ], [ %i.ct, %bb.i ]
  %.sroa.836.0.ph.i = phi i64 [ %i.cl, %bb.g ], [ %i.cg, %bb.i ] ; 2 uses
  %.sroa.12.sroa.0.0.extract.trunc106 = trunc i64 %.sroa.836.0.ph.i to i16
  %.sroa.12.sroa.8.0.extract.shift111 = lshr i64 %.sroa.836.0.ph.i, 16
  %.sroa.12.sroa.8.0.extract.trunc112 = trunc nuw i64 %.sroa.12.sroa.8.0.extract.shift111 to i48
  br label %bb.as

_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE29assert_previous_writer_closedCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.c
  store i64 %i.bz, ptr %i.bj, align 8, !noalias !8068
  %i.cv = icmp samesign ugt i64 %i.bz, 32767
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE29assert_previous_writer_closedCs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !8069
  store ptr @47, ptr %i.bd, align 8, !noalias !8069
  %.sroa.42.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @_RNvXs4_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impsNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i32.i, align 8, !noalias !8069
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.bj, ptr %i.cw, align 8, !noalias !8069
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !8069
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, ptr noundef nonnull @48, ptr noundef nonnull %i.bd)
          to label %.noexc80 unwind label %.thread169

.noexc80:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !8069
  %.sroa.67.0.copyload.i = load i16, ptr %i.cx, align 8, !noalias !8068
  %.sroa.12.sroa.8.sroa.0.0.copyload = load i48, ptr %i.bu, align 2, !noalias !8057
  %.sroa.15.18..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.15.18.copyload = load ptr, ptr %.sroa.15.18..sroa_idx, align 8, !noalias !8057
  %.sroa.16.18..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.sroa.16.18.copyload = load i64, ptr %.sroa.16.18..sroa_idx, align 8, !noalias !8057
  br label %bb.as

bb.l:                                             ; preds = %_RNvMs1_NtNtCs4tdlwR1I4n2_7parquet4file6writerINtB5_20SerializedFileWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE29assert_previous_writer_closedCs7p2uQeJxui2_9deltalake.exit.i
  %i.cy = trunc nuw nsw i64 %i.bz to i16
  %i.cz = add nuw nsw i64 %i.bz, 1
  store i64 %i.cz, ptr %i.by, align 8, !alias.scope !8057, !noalias !8073
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !8057, !noalias !8073, !nonnull !12, !noundef !12 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 256
  %i.dd = load i8, ptr %i.dc, align 8, !range !86, !noalias !8068, !noundef !12
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !8068
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !8057, !noalias !8073, !nonnull !12, !noundef !12 ; 5 uses
  %i.dk = atomicrmw add ptr %i.dj, i64 1 monotonic, align 8, !noalias !8068
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.dj, ptr %i.bi, align 8, !noalias !8068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !8068
  %i.dm = atomicrmw add ptr %i.db, i64 1 monotonic, align 8, !noalias !8068
  %i.dn = icmp slt i64 %i.dm, 0
  br i1 %i.dn, label %bb.q, label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  store ptr %i.db, ptr %i.bh, align 8, !noalias !8068
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !8068
  %i.do = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2417) 40, i64 noundef range(i64 1, 129) 8) #39, !noalias !8068 ; 8 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.p, label %bb.r, !prof !68

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #36
          to label %.noexc.i unwind label %bb.an, !noalias !8068

.noexc.i:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.o
  store ptr %i.df, ptr %i.do, align 8, !noalias !8068
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dg, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !8073
  %.sroa.338.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr %i.dh, ptr %.sroa.338.0..sroa_idx.i, align 8, !noalias !8073
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store ptr %i.de, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8073
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store i8 %i.dd, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8074)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !8077, !noundef !12 ; 9 uses
  %i.ds = icmp ult i64 %i.dr, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !8079, !noalias !8080, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !8081
  store ptr %i.dj, ptr %i.bc, align 8, !noalias !8081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !8081
  store ptr %i.db, ptr %i.bb, align 8, !noalias !8081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !8081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !8081
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, i64 noundef %i.dr, i1 noundef zeroext false, i64 noundef 8, i64 noundef 416)
          to label %bb.t unwind label %bb.s, !noalias !8077

bb.s:                                             ; preds = %bb.u, %bb.r
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.dw = load i64, ptr %i.ax, align 8, !range !11, !noalias !8081, !noundef !12
  %i.dx = trunc nuw i64 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !13, !noalias !8081, !noundef !12 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  br i1 %i.dx, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !8081
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.dz, i64 %i.eb) #36
          to label %bb.aj unwind label %bb.s, !noalias !8077

bb.v:                                             ; preds = %bb.t
  %i.ec = load ptr, ptr %i.ea, align 8, !noalias !8081, !nonnull !12, !noundef !12 ; 2 uses
  %i.ed = icmp samesign ule i64 %i.dr, %i.dz
  tail call void @llvm.assume(i1 %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !8081
  store i64 %i.dz, ptr %i.ba, align 8, !noalias !8081
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.ec, ptr %i.ee, align 8, !noalias !8081
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 0, ptr %i.ef, align 8, !noalias !8081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !8081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !8081
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, i64 noundef %i.dr, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.y unwind label %bb.x, !noalias !8077

bb.w:                                             ; preds = %bb.ab, %bb.x
  %.pn3.i.i = phi { ptr, i32 } [ %i.eg, %bb.x ], [ %.pn.i.i, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata19ColumnChunkMetaDataEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ba) #37
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ak, !noalias !8077

bb.x:                                             ; preds = %bb.z, %bb.v
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  %i.eh = load i64, ptr %i.aw, align 8, !range !11, !noalias !8081, !noundef !12
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !range !13, !noalias !8081, !noundef !12 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  br i1 %i.ei, label %bb.z, label %bb.aa, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.em = load i64, ptr %i.el, align 8, !noalias !8081
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ek, i64 %i.em) #36
          to label %bb.aj unwind label %bb.x, !noalias !8077

bb.aa:                                            ; preds = %bb.y
  %i.en = load ptr, ptr %i.el, align 8, !noalias !8081, !nonnull !12, !noundef !12
  %i.eo = icmp samesign ule i64 %i.dr, %i.ek
  tail call void @llvm.assume(i1 %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !8081
  store i64 %i.ek, ptr %i.az, align 8, !noalias !8081
  %i.ep = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.en, ptr %i.ep, align 8, !noalias !8081
  %i.eq = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 0, ptr %i.eq, align 8, !noalias !8081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !8081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !8081
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, i64 noundef %i.dr, i1 noundef zeroext false, i64 noundef 8, i64 noundef 208)
          to label %bb.ad unwind label %bb.ac, !noalias !8077

bb.ab:                                            ; preds = %bb.ag, %bb.ac
  %.pn.i.i = phi { ptr, i32 } [ %i.er, %bb.ac ], [ %i.fc, %bb.ag ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs4tdlwR1I4n2_7parquet12bloom_filter4SbbfEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.az) #37
          to label %bb.w unwind label %bb.ak, !noalias !8077

bb.ac:                                            ; preds = %bb.ae, %bb.aa
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  %i.es = load i64, ptr %i.av, align 8, !range !11, !noalias !8081, !noundef !12
  %i.et = trunc nuw i64 %i.es to i1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !13, !noalias !8081, !noundef !12 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  br i1 %i.et, label %bb.ae, label %bb.af, !prof !14

bb.ae:                                            ; preds = %bb.ad
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !8081
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ev, i64 %i.ex) #36
          to label %bb.aj unwind label %bb.ac, !noalias !8077

bb.af:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %i.ew, align 8, !noalias !8081, !nonnull !12, !noundef !12
  %i.ez = icmp samesign ule i64 %i.dr, %i.ev
  tail call void @llvm.assume(i1 %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !8081
  store i64 %i.ev, ptr %i.ay, align 8, !noalias !8081
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ey, ptr %i.fa, align 8, !noalias !8081
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 0, ptr %i.fb, align 8, !noalias !8081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !8081
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, i64 noundef %i.dr, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
          to label %bb.ah unwind label %bb.ag, !noalias !8077

bb.ag:                                            ; preds = %bb.ai, %bb.af
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ay) #37
          to label %bb.ab unwind label %bb.ak, !noalias !8077

bb.ah:                                            ; preds = %bb.af
  %i.fd = load i64, ptr %i.au, align 8, !range !11, !noalias !8081, !noundef !12
  %i.fe = trunc nuw i64 %i.fd to i1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !13, !noalias !8081, !noundef !12 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  br i1 %i.fe, label %bb.ai, label %bb.at, !prof !14

bb.ai:                                            ; preds = %bb.ah
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !8081
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.fg, i64 %i.fi) #36
          to label %bb.aj unwind label %bb.ag, !noalias !8077

bb.aj:                                            ; preds = %bb.ai, %bb.ae, %bb.z, %bb.u
  unreachable

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.am, %bb.al, %bb.ag, %bb.ab, %bb.w
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !8077
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.w, %bb.s
  %.pn5.i.i = phi { ptr, i32 } [ %i.dv, %bb.s ], [ %.pn3.i.i, %bb.w ]
  %i.fk = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !8082
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs7p2uQeJxui2_9deltalake.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bb) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ak, !noalias !8077

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata16RowGroupMetaDataEEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8087)
  call void @llvm.experimental.noalias.scope.decl(metadata !8090)
  %i.fm = load ptr, ptr %i.bc, align 8, !alias.scope !8093, !noalias !8081, !nonnull !12, !noundef !12
  %i.fn = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !8094
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs7p2uQeJxui2_9deltalake.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ak, !noalias !8077

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceTQINtNtNtCs4tdlwR1I4n2_7parquet4file6writer12TrackedWriteINtNtB17_3vec3VechEENtNtB2d_8metadata16RowGroupMetaDataIB32_IBH_NtNtB2f_12bloom_filter4SbbfEEIB32_IBH_NtNtNtB2d_10page_index12column_index19ColumnIndexMetaDataEEIB32_IBH_NtNtB4J_12offset_index19OffsetIndexMetaDataEEEEp6OutputINtNtB4_6result6ResultuNtNtB2f_6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.do, ptr nonnull @80) #37
          to label %.thread164 unwind label %bb.ak, !noalias !8077

bb.an:                                            ; preds = %bb.p
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !8095
  %i.fr = icmp eq i64 %i.fq, 1
  br i1 %i.fr, label %bb.ao, label %.noexc34.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh) #42
          to label %.noexc34.i unwind label %bb.ap, !noalias !8068

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !8068
  unreachable

.noexc34.i:                                       ; preds = %bb.ao, %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !8100)
  call void @llvm.experimental.noalias.scope.decl(metadata !8103)
  %i.ft = load ptr, ptr %i.bi, align 8, !alias.scope !8106, !noalias !8068, !nonnull !12, !noundef !12
  %i.fu = atomicrmw sub ptr %i.ft, i64 1 release, align 8, !noalias !8107
  %i.fv = icmp eq i64 %i.fu, 1
  br i1 %i.fv, label %bb.aq, label %.thread164

bb.aq:                                            ; preds = %.noexc34.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16SchemaDescriptorE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi) #42
          to label %.thread164 unwind label %bb.ap, !noalias !8068

bb.ar:                                            ; preds = %bb.a
  store i64 8, ptr %0, align 8
  br label %bb.lj

.thread169:                                       ; preds = %.invoke, %bb.k, %bb.d, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread164

bb.as:                                            ; preds = %bb.j, %.noexc80
  %.sroa.12.sroa.8.sroa.0.0.ph = phi i48 [ %.sroa.12.sroa.8.sroa.0.0.copyload, %.noexc80 ], [ %.sroa.12.sroa.8.0.extract.trunc112, %bb.j ]
  %.sroa.12.sroa.0.0.ph = phi i16 [ %.sroa.67.0.copyload.i, %.noexc80 ], [ %.sroa.12.sroa.0.0.extract.trunc106, %bb.j ]
  %.sroa.16.0.ph = phi i64 [ %.sroa.16.18.copyload, %.noexc80 ], [ %.sroa.12.0.ph.i, %bb.j ]
  %.sroa.15.0.ph = phi ptr [ %.sroa.15.18.copyload, %.noexc80 ], [ %.sroa.10.0.ph.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %.sroa.12.sroa.8.0.insert.ext = zext i48 %.sroa.12.sroa.8.sroa.0.0.ph to i64
  %.sroa.12.sroa.8.0.insert.shift = shl nuw i64 %.sroa.12.sroa.8.0.insert.ext, 16
  %.sroa.12.sroa.0.0.insert.ext = zext i16 %.sroa.12.sroa.0.0.ph to i64
  %.sroa.12.sroa.0.0.insert.insert = or disjoint i64 %.sroa.12.sroa.8.0.insert.shift, %.sroa.12.sroa.0.0.insert.ext
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  store i64 0, ptr %0, align 8
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.sroa.0.0.insert.insert, ptr %.sroa.2146.0..sroa_idx, align 8
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.15.0.ph, ptr %.sroa.3147.0..sroa_idx, align 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.0.ph, ptr %.sroa.4148.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.bs)
  br label %bb.lj

bb.at:                                            ; preds = %bb.ah
  %i.fw = load ptr, ptr %i.fh, align 8, !noalias !8081, !nonnull !12, !noundef !12
  %i.fx = icmp samesign ule i64 %i.dr, %i.fg
  tail call void @llvm.assume(i1 %i.fx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8081
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !8057
  %.sroa.17.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !8057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !8081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !8081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !8081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !8081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !8081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !8068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !8068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  store i64 %i.dz, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.ec, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 88 ; 2 uses
  store i64 %i.fg, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store ptr %i.fw, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 112 ; 2 uses
  store ptr %i.dj, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 120
  store ptr %i.db, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 128 ; 3 uses
  store ptr %1, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 168
  store i64 %i.du, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 176
  store ptr %i.do, ptr %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 184
  store ptr @80, ptr %.sroa.5.sroa.13.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 192
  store i16 %i.cy, ptr %.sroa.5.sroa.14.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %i.bs, i64 40, i1 false)
  invoke void @_RNvMsb_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB5_19ArrowRowGroupWriter5close(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.bp)
          to label %bb.au unwind label %.thread202

.thread202:                                       ; preds = %bb.ll, %bb.at, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer16ArrowColumnChunkENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread
  %lpad.thr_comm200 = landingpad { ptr, i32 }
          cleanup
  br label %.thread190

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %i.fy = load i64, ptr %i.bq, align 8, !range !969, !noundef !12 ; 2 uses
  %.not70 = icmp eq i64 %i.fy, 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.044.0.copyload = load i64, ptr %i.fz, align 8 ; 3 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.545.0.copyload = load ptr, ptr %.sroa.545.0..sroa_idx, align 8 ; 5 uses
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.646.0.copyload = load i64, ptr %.sroa.646.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br i1 %.not70, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i64 %i.fy, ptr %0, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.044.0.copyload, ptr %.sroa.256.0..sroa_idx, align 8
  %.sroa.357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.545.0.copyload, ptr %.sroa.357.0..sroa_idx, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.646.0.copyload, ptr %.sroa.458.0..sroa_idx, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet4file6writer24SerializedRowGroupWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(200) %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.lj

bb.aw:                                            ; preds = %bb.au
  %i.ga = icmp ult i64 %.sroa.646.0.copyload, 12397005425880076
  call void @llvm.assume(i1 %i.ga)
  %.idx = mul nuw nsw i64 %.sroa.646.0.copyload, 744
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.545.0.copyload, i64 %.idx ; 2 uses
  %i.gc = icmp sgt i64 %.sroa.044.0.copyload, -1
  call void @llvm.assume(i1 %i.gc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %.sroa.545.0.copyload, ptr %i.bo, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store ptr %.sroa.545.0.copyload, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %.sroa.044.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.gb, ptr %.sroa.813.0..sroa_idx, align 8
  %i.gd = icmp eq i64 %.sroa.646.0.copyload, 0
  br i1 %i.gd, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer16ArrowColumnChunkENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer16ArrowColumnChunkENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer16ArrowColumnChunkENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.lr.ph: ; preds = %bb.aw
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bn, i64 712 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.br, i64 152 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.2288.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %.sroa.3289.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  %.sroa.4290.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ar, i64 352 ; 4 uses
  %.sroa.4104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.4108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %i.ar, i64 392
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ar, i64 376 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.6113.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.3207.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.gs = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ar, i64 344
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ar, i64 348
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ar, i64 408
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ar, i64 384
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ar, i64 368
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ar, i64 248 ; 2 uses
  %.sroa.0208.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.0208.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.0208.sroa.19.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.0208.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.0208.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %.sroa.18.sroa.17.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  %.sroa.18.sroa.19.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 248
  %.sroa.18.sroa.21.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 272
  %.sroa.18.sroa.23.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 296
  %.sroa.18.sroa.25.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 320
  %.sroa.18.sroa.27.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 328
  %.sroa.18.sroa.29.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 336
  %.sroa.18.sroa.31.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 344
  %.sroa.18.sroa.32.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 348
  %.sroa.18.sroa.33.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  %.sroa.18.sroa.34.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 360
  %.sroa.18.sroa.35.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 368
  %.sroa.18.sroa.36.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 376
  %.sroa.18.sroa.37.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 384
  %.sroa.18.sroa.38.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 392
  %.sroa.18.sroa.39.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 400
  %.sroa.18.sroa.40.0..sroa.18.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 408
  %.sroa.0208.sroa.16.0..sroa_idx650.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.0208.sroa.17.0..sroa_idx672.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.0208.sroa.18.0..sroa_idx694.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.0208.sroa.19.0..sroa_idx716.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.0208.sroa.20.0..sroa_idx738.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.sroa.0208.sroa.21.0..sroa_idx760.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %.sroa.0208.sroa.22.0..sroa_idx782.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %.sroa.0208.sroa.23.0..sroa_idx804.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %.sroa.0208.sroa.24.0..sroa_idx826.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %.sroa.16.0..sroa_idx209.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %.sroa.17.0..sroa_idx233.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %.sroa.18.0..sroa_idx257.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %.sroa.18.sroa.16.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %.sroa.18.sroa.17.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 224
  %.sroa.18.sroa.18.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  %.sroa.18.sroa.19.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %.sroa.18.sroa.20.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  %.sroa.18.sroa.21.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  %.sroa.18.sroa.22.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 280
  %.sroa.18.sroa.23.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 296
  %.sroa.18.sroa.24.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 304
  %.sroa.18.sroa.25.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 320
  %.sroa.18.sroa.26.0..sroa.18.0..sroa_idx257.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 324
end_hunk_2
