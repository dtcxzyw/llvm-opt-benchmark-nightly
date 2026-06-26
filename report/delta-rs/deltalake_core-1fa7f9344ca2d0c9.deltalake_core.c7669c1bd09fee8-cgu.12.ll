inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCINvNtB11_13expr_rewriter15normalize_sortsBX_INtB8_3VecBX_EE0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B6v_EIB47_NtNtB1P_7convert10InfallibleB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6f_E0E0B5z_ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.q = load i64, ptr %.val.le, align 8, !range !1072, !alias.scope !14581, !noalias !14584, !noundef !10
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.i unwind label %bb.e, !noalias !14584

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !14575
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.a) #44
          to label %.body.i unwind label %bb.f, !noalias !14584

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14584
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body9.i

bb.g:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #44
          to label %.body.i unwind label %bb.h, !noalias !14575

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14575
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.0.i)
  br label %._crit_edge

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i64 64, i1 false), !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14575
  store i64 %i.m, ptr %.sroa.4.024, align 16, !noalias !14584
  %.sroa.67.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false), !noalias !14575
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.sroa.0.i, i64 64, i1 false), !noalias !14586
  %.sroa.9.sroa.4.0..sroa.7.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 112
  store i8 %.sroa.2.0.copyload, ptr %.sroa.9.sroa.4.0..sroa.7.16..sroa_idx.i.sroa_idx.i, align 16, !noalias !14586
  %.sroa.9.sroa.5.0..sroa.7.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 113
  store i8 %.sroa.315.0.copyload, ptr %.sroa.9.sroa.5.0..sroa.7.16..sroa_idx.i.sroa_idx.i, align 1, !noalias !14586
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14575
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.0.i)
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCINvNtNtB11_13expr_rewriter8order_by25rewrite_sort_cols_by_aggsBX_INtB8_3VecBX_EE0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B6v_EIB47_NtNtB1P_7convert10InfallibleB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6f_E0E0B5z_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 6 uses
  %.sroa.42.i = alloca [40 x i8], align 8         ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.9.sroa.0.i = alloca [64 x i8], align 16  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not23 = icmp eq ptr %.promoted, %i.f
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !10, !align !304, !noundef !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.4.024 = phi ptr [ %3, %.lr.ph ], [ %i.y, %bb.j ] ; 9 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.k, i64 112, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 16
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 113
  %.sroa.315.0.copyload = load i8, ptr %.sroa.315.0..sroa_idx, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 3 uses
  store ptr %i.l, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14594
  store ptr %2, ptr %i.d, align 8, !noalias !14594
  store ptr %.sroa.4.024, ptr %i.i, align 8, !noalias !14594
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  %.val.i = load ptr, ptr %.val2, align 8, !noalias !14594, !nonnull !10, !align !1180, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14587
  invoke void @_RNvNtNtCs8VI8w5SIoU4_15datafusion_expr13expr_rewriter8order_by24rewrite_sort_col_by_aggs(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i)
          to label %.noexc.i unwind label %bb.g, !noalias !14594

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14587
  %i.m = load i64, ptr %i.c, align 16, !range !4218, !noalias !14587, !noundef !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !14587
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !14595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14594
  store ptr %2, ptr %i.a, align 8, !noalias !14596
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4.024, ptr %i.p, align 8, !noalias !14596
  %i.q = load i64, ptr %.val.le, align 8, !range !1072, !alias.scope !14600, !noalias !14603, !noundef !10
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.i unwind label %bb.e, !noalias !14603

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, i64 40, i1 false), !noalias !14594
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.a) #44
          to label %.body.i unwind label %bb.f, !noalias !14603

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14603
  unreachable

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.s, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body9.i

bb.g:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #44
          to label %.body.i unwind label %bb.h, !noalias !14594

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14594
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, i64 40, i1 false), !noalias !14594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.0.i)
  br label %._crit_edge

bb.j:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.65.0..sroa_idx.i.i, i64 64, i1 false), !noalias !14594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !14595
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14594
  store i64 %i.m, ptr %.sroa.4.024, align 16, !noalias !14603
  %.sroa.67.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.42.i, i64 40, i1 false), !noalias !14594
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.9.sroa.0.i, i64 64, i1 false), !noalias !14605
  %.sroa.9.sroa.4.0..sroa.7.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 112
  store i8 %.sroa.2.0.copyload, ptr %.sroa.9.sroa.4.0..sroa.7.16..sroa_idx.i.sroa_idx.i, align 16, !noalias !14605
  %.sroa.9.sroa.5.0..sroa.7.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 113
  store i8 %.sroa.315.0.copyload, ptr %.sroa.9.sroa.5.0..sroa.7.16..sroa_idx.i.sroa_idx.i, align 1, !noalias !14605
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.024, i64 128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.0.i)
  %.not = icmp eq ptr %i.l, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCINvXs3_NtB4A_9tree_nodeINtB8_3VecBX_EINtB6E_17TreeNodeContainerNtBZ_4ExprE12map_elementsQNCNCINvNvNtB6E_8TreeNode12transform_up17transform_up_implB7y_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0E00E0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B6v_EIB47_NtNtB1P_7convert10InfallibleB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6f_E0E0B5z_EB9b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [144 x i8], align 16              ; 8 uses
  %i.c = alloca [128 x i8], align 16              ; 5 uses
  %.sroa.63.i = alloca [40 x i8], align 8         ; 9 uses
  %.sroa.8.i = alloca [80 x i8], align 16         ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not18 = icmp eq ptr %.promoted, %i.f
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.4.019 = phi ptr [ %3, %.lr.ph ], [ %i.an, %bb.o ] ; 7 uses
  %i.o = phi ptr [ %.promoted, %.lr.ph ], [ %i.p, %bb.o ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 3 uses
  store ptr %i.p, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14606
  store ptr %2, ptr %i.d, align 8, !noalias !14606
  store ptr %.sroa.4.019, ptr %i.i, align 8, !noalias !14606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) %i.o, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14610)
  call void @llvm.experimental.noalias.scope.decl(metadata !14613)
  call void @llvm.experimental.noalias.scope.decl(metadata !14615)
  %i.q = load ptr, ptr %.val2, align 8, !alias.scope !14613, !noalias !14617, !nonnull !10, !noundef !10 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !833, !noalias !14618, !noundef !10
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14618
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !14613, !noalias !14617, !nonnull !10, !align !304, !noundef !10
  invoke void @_RINvXsm_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4SortINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerNtB6_4ExprE12map_elementsQQNCNCINvNvNtBV_8TreeNode12transform_up17transform_up_implB1X_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0E00EB3A_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address) dereferenceable(128) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.noexc.i unwind label %bb.l, !noalias !14606

.noexc.i:                                         ; preds = %bb.c
  %i.u = load i64, ptr %i.b, align 16, !range !4218, !noalias !14618, !noundef !10 ; 2 uses
  %i.v = icmp eq i64 %i.u, 37
  br i1 %i.v, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.01.0.copyload2.i = load i64, ptr %i.c, align 16, !alias.scope !14619, !noalias !14620
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(80) %i.x, i64 80, i1 false)
  br label %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB8_17TreeNodeContainerNtB1q_4ExprE12map_elementsQNCNCINvNvNtB8_8TreeNode12transform_up17transform_up_implB2x_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0E00E0B4a_.exit.i

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.0..sroa_idx.i, i64 40, i1 false), !noalias !14606
  br label %bb.g

bb.f:                                             ; preds = %.noexc.i
  %i.y = load ptr, ptr %i.k, align 8, !alias.scope !14613, !noalias !14617, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.0..sroa_idx.i, i64 40, i1 false), !noalias !14606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.8.0..sroa_idx.i, i64 80, i1 false), !noalias !14606
  %i.z = load i8, ptr %i.l, align 16, !range !349, !noalias !14618, !noundef !10
  %i.aa = load i8, ptr %i.m, align 1, !range !833, !noalias !14618, !noundef !10
  store i8 %i.aa, ptr %i.q, align 1, !noalias !14618
  %i.ab = load i8, ptr %i.y, align 1, !range !349, !noalias !14618, !noundef !10
  %i.ac = or i8 %i.ab, %i.z
  store i8 %i.ac, ptr %i.y, align 1, !noalias !14618
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14618
  br label %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB8_17TreeNodeContainerNtB1q_4ExprE12map_elementsQNCNCINvNvNtB8_8TreeNode12transform_up17transform_up_implB2x_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0E00E0B4a_.exit.i

_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB8_17TreeNodeContainerNtB1q_4ExprE12map_elementsQNCNCINvNvNtB8_8TreeNode12transform_up17transform_up_implB2x_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0E00E0B4a_.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.01.1.i = phi i64 [ %.sroa.01.0.copyload2.i, %bb.d ], [ %i.u, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14606
  store ptr %2, ptr %i.a, align 8, !noalias !14621
  store ptr %.sroa.4.019, ptr %i.n, align 8, !noalias !14621
  %i.ad = icmp eq i64 %.sroa.01.1.i, 37
  br i1 %i.ad, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB8_17TreeNodeContainerNtB1q_4ExprE12map_elementsQNCNCINvNvNtB8_8TreeNode12transform_up17transform_up_implB2x_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0E00E0B4a_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.af = load i64, ptr %.val.le, align 8, !range !1072, !alias.scope !14625, !noalias !14621, !noundef !10
  %i.ag = icmp eq i64 %i.af, 20
  br i1 %i.ag, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.n unwind label %bb.j, !noalias !14621

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, i64 40, i1 false), !noalias !14606
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.a) #44
          to label %.body.i unwind label %bb.k, !noalias !14621

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14621
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.j
  %eh.lpad-body8.i = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ah, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body8.i

bb.l:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #44
          to label %.body.i unwind label %bb.m, !noalias !14606

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14606
  unreachable

._crit_edge:                                      ; preds = %bb.o, %bb.a, %bb.n
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.019, %bb.n ], [ %3, %bb.a ], [ %i.an, %bb.o ]
  %storemerge = phi i64 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.o ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.am, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %bb.h, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, i64 40, i1 false), !noalias !14606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %._crit_edge

bb.o:                                             ; preds = %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB8_17TreeNodeContainerNtB1q_4ExprE12map_elementsQNCNCINvNvNtB8_8TreeNode12transform_up17transform_up_implB2x_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan18rewrite_expression0E00E0B4a_.exit.i
  store i64 %.sroa.01.1.i, ptr %.sroa.4.019, align 16, !noalias !14621
  %.sroa.67.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.019, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, i64 40, i1 false), !noalias !14606
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.019, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.8.i, i64 80, i1 false), !noalias !14606
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.4.019, i64 128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.not = icmp eq ptr %i.p, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCINvXs3_NtB4A_9tree_nodeINtB8_3VecBX_EINtB6E_17TreeNodeContainerNtBZ_4ExprE12map_elementsQNCNCINvNvNtB6E_8TreeNode12transform_up17transform_up_implB7y_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge18remove_table_alias0E00E0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B6v_EIB47_NtNtB1P_7convert10InfallibleB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6f_E0E0B5z_EB96_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [144 x i8], align 16              ; 8 uses
  %i.c = alloca [128 x i8], align 16              ; 5 uses
  %.sroa.63.i = alloca [40 x i8], align 8         ; 9 uses
  %.sroa.8.i = alloca [80 x i8], align 16         ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not18 = icmp eq ptr %.promoted, %i.f
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 8
end_hunk_0
begin_hunk_1_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB7_21ConvertToDeltaBuilder19into_create_builder0Bb_:bb.a
  %i.es = load i64, ptr %i.dh, align 16, !range !203, !alias.scope !16824, !noalias !16821, !noundef !10 ; 2 uses
  %.not.i329 = icmp eq i64 %i.es, -9223372036854775711
  %i.et = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.8697.sroa.0.0.copyload1197 = load i64, ptr %i.et, align 8, !alias.scope !16826 ; 2 uses
  %.sroa.8697.sroa.8.0..sroa_idx1199 = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.8697.sroa.8.0.copyload1200 = load i64, ptr %.sroa.8697.sroa.8.0..sroa_idx1199, align 16, !alias.scope !16826 ; 2 uses
  %.sroa.8697.sroa.9.0..sroa_idx1202 = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %.sroa.8697.sroa.9.0.copyload1203 = load i64, ptr %.sroa.8697.sroa.9.0..sroa_idx1202, align 8, !alias.scope !16826 ; 2 uses
  %.sroa.8697.sroa.10.0..sroa_idx1205 = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %.sroa.8697.sroa.10.0.copyload1206 = load i64, ptr %.sroa.8697.sroa.10.0..sroa_idx1205, align 16, !alias.scope !16826 ; 2 uses
  %.sroa.8697.sroa.11.0..sroa_idx1207 = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8697.sroa.11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8697.sroa.11.0..sroa_idx1207, i64 56, i1 false), !alias.scope !16826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh)
  br i1 %.not.i329, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %.sroa.71212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.71212.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8697.sroa.11, i64 56, i1 false)
  store i64 %.sroa.8697.sroa.0.0.copyload1197, ptr %i.di, align 8
  %.sroa.41209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %.sroa.8697.sroa.8.0.copyload1200, ptr %.sroa.41209.0..sroa_idx, align 8
  %.sroa.51210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 %.sroa.8697.sroa.9.0.copyload1203, ptr %.sroa.51210.0..sroa_idx, align 8
  %.sroa.61211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i64 %.sroa.8697.sroa.10.0.copyload1206, ptr %.sroa.61211.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.df, ptr noundef nonnull align 8 dereferenceable(224) %i.dn, i64 224, i1 false)
  invoke void @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore12logstore_for(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.di, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.df)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.di) #44
          to label %bb.y unwind label %bb.ad

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.experimental.noalias.scope.decl(metadata !16827)
  %i.ev = load i64, ptr %i.dj, align 16, !range !203, !alias.scope !16830, !noalias !16827, !noundef !10 ; 2 uses
  %.not.i330 = icmp eq i64 %i.ev, -9223372036854775711
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !16832 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.ez = load ptr, ptr %i.ey, align 16, !alias.scope !16832 ; 2 uses
  br i1 %.not.i330, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.di)
          to label %bb.aa unwind label %bb.z

bb.y:                                             ; preds = %bb.v, %bb.z
  %.pn53 = phi { ptr, i32 } [ %i.eu, %bb.v ], [ %i.fa, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %.thread1321

bb.z:                                             ; preds = %bb.ac, %bb.x
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %bb.g

bb.ab:                                            ; preds = %bb.g
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

.thread2062:                                      ; preds = %bb.g
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 760
  store ptr %i.dv, ptr %i.fc, align 8
  %.sroa.8712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8712.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false)
  %.sroa.10713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i8 0, ptr %.sroa.10713.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8715.sroa.9)
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 760
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 832
  br label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bs, %bb.br, %bb.bv, %bb.cd, %bb.ce, %.body, %bb.bn, %.body623, %bb.dp, %bb.cq, %bb.dc, %bb.ct, %bb.cj, %bb.cl, %bb.dy, %bb.mr, %bb.do, %bb.dn, %bb.ak, %bb.ab
  %.pn260.pn = phi { ptr, i32 } [ %.pn256, %bb.dp ], [ %eh.lpad-body, %.body ], [ %i.aej, %bb.mr ], [ %.pn67.pn, %bb.dc ], [ %i.li, %bb.do ], [ %i.lg, %bb.dn ], [ %.pn74.pn, %bb.dy ], [ %.pn256, %.body623 ], [ %.pn58.pn, %bb.ak ], [ %i.ki, %bb.ct ], [ %i.jy, %bb.cq ], [ %i.jr, %bb.cl ], [ %i.fb, %bb.ab ], [ %i.jp, %bb.cj ], [ %i.ii, %bb.bn ], [ %i.il, %bb.br ], [ %i.ir, %bb.bv ], [ %i.in, %bb.bs ], [ %i.jd, %bb.cd ], [ %i.jd, %bb.ce ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !noundef !10 ; 2 uses
  %.not263 = icmp eq ptr %i.fh, null
  br i1 %.not263, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670, label %bb.uk

bb.ac:                                            ; preds = %bb.w
  %.sroa.12.0..sroa_idx694 = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.sroa.12.sroa.0.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx694, align 8, !alias.scope !16833
  %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx694.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %.sroa.12.sroa.6.0.copyload = load i64, ptr %.sroa.12.sroa.6.0..sroa.12.0..sroa_idx694.sroa_idx, align 16, !alias.scope !16833
  %.sroa.12.sroa.7.0..sroa.12.0..sroa_idx694.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.7.0..sroa.12.0..sroa_idx694.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.di)
          to label %.thread1298 unwind label %bb.z

.thread1298:                                      ; preds = %bb.ac
  %i.fi = ptrtoint ptr %i.ez to i64
  %i.fj = ptrtoint ptr %i.ex to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %.thread1307

bb.ad:                                            ; preds = %bb.uy, %bb.uv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672, %bb.uo, %bb.um, %bb.ug, %bb.uf, %bb.ub, %.body648, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633, %bb.ti, %bb.rr, %bb.rq, %.noexc590, %bb.ro, %bb.ot, %bb.nn, %bb.nc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.mw, %bb.ks, %bb.kc, %.body419, %.body458, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit668, %bb.dp, %bb.bv, %bb.uz, %bb.uu, %bb.ur, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670, %bb.uj, %bb.ui, %bb.uh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653, %.body642, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637, %bb.th, %.body444, %bb.hg, %bb.sh, %bb.sf, %bb.ry, %bb.ih, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit596, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit594, %bb.rk, %bb.rg, %bb.re, %bb.pz, %.body505, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit, %.thread1476, %.thread1482, %bb.ni, %bb.nh, %bb.mu, %bb.lh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit423, %.body417, %.body415, %.body379, %bb.ea, %.body, %bb.o, %bb.s, %bb.v
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.thread1307:                                      ; preds = %.thread1298, %bb.ae
  %.sroa.231058.1.ph = phi i64 [ %i.es, %bb.ae ], [ %i.ev, %.thread1298 ]
  %.sroa.58.1.ph = phi i64 [ %.sroa.8697.sroa.8.0.copyload1200, %bb.ae ], [ %i.fi, %.thread1298 ]
  %.sroa.63.1.ph = phi i64 [ %.sroa.8697.sroa.9.0.copyload1203, %bb.ae ], [ %.sroa.12.sroa.0.0.copyload, %.thread1298 ]
  %.sroa.67.1.ph = phi i64 [ %.sroa.8697.sroa.10.0.copyload1206, %bb.ae ], [ %.sroa.12.sroa.6.0.copyload, %.thread1298 ]
  %.sroa.44.sroa.0.1.ph.in = phi i64 [ %.sroa.8697.sroa.0.0.copyload1197, %bb.ae ], [ %i.fj, %.thread1298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8697.sroa.11, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8697.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigEBM_(ptr noalias noundef align 8 dereferenceable(224) %i.dn)
          to label %.thread1307 unwind label %bb.af

.thread1321:                                      ; preds = %bb.af, %bb.s, %bb.y
  %.pn55.pn.ph = phi { ptr, i32 } [ %.pn53, %bb.y ], [ %i.er, %bb.s ], [ %i.fl, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.thread1321

bb.ag:                                            ; preds = %.thread1307, %bb.ah
  %.sroa.44.sroa.17.sroa.0.11319.in.in = phi i64 [ %.sroa.44.sroa.0.1.ph.in, %.thread1307 ], [ %.sroa.8.sroa.8.8.copyload, %bb.ah ] ; 2 uses
  %.sroa.67.11317 = phi i64 [ %.sroa.67.1.ph, %.thread1307 ], [ %.sroa.8.sroa.11.8.copyload, %bb.ah ]
  %.sroa.63.11316 = phi i64 [ %.sroa.63.1.ph, %.thread1307 ], [ %.sroa.8.sroa.10.8.copyload, %bb.ah ]
  %.sroa.58.11315 = phi i64 [ %.sroa.58.1.ph, %.thread1307 ], [ %.sroa.8.sroa.9.8.copyload, %bb.ah ]
  %.sroa.231058.11314 = phi i64 [ %.sroa.231058.1.ph, %.thread1307 ], [ %.sroa.8.sroa.6.8.copyload, %bb.ah ]
  %.sroa.44.sroa.0.11318 = trunc i64 %.sroa.44.sroa.17.sroa.0.11319.in.in to i8
  %.sroa.44.sroa.17.sroa.0.11319.in = lshr i64 %.sroa.44.sroa.17.sroa.0.11319.in.in, 8
  %.sroa.44.sroa.17.sroa.0.11319 = trunc nuw i64 %.sroa.44.sroa.17.sroa.0.11319.in to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621

bb.ah:                                            ; preds = %bb.q
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %.sroa.8.sroa.6.8.copyload = load i64, ptr %i.fm, align 16, !alias.scope !16820
  %.sroa.8.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.sroa.8.sroa.8.8.copyload = load i64, ptr %.sroa.8.sroa.8.8..sroa_idx, align 8, !alias.scope !16820
  %.sroa.8.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %.sroa.8.sroa.9.8.copyload = load i64, ptr %.sroa.8.sroa.9.8..sroa_idx, align 16, !alias.scope !16820
  %.sroa.8.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %.sroa.8.sroa.10.8.copyload = load i64, ptr %.sroa.8.sroa.10.8..sroa_idx, align 8, !alias.scope !16820
  %.sroa.8.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %.sroa.8.sroa.11.8.copyload = load i64, ptr %.sroa.8.sroa.11.8..sroa_idx, align 16, !alias.scope !16820
  %.sroa.8.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.12.8..sroa_idx, i64 56, i1 false), !alias.scope !16820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.sroa.12, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.ag unwind label %bb.aj

bb.ai:                                            ; preds = %.thread1321, %bb.o, %bb.aj
  %.pn58 = phi { ptr, i32 } [ %i.fn, %bb.aj ], [ %.pn41, %bb.o ], [ %.pn55.pn.ph, %.thread1321 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ai, %bb.h
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.ai ], [ %i.ed, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit621: ; preds = %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.sw, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.ag, %bb.dz, %bb.bu
  %.sroa.231058.2 = phi i64 [ -9223372036854775701, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.231058.11314, %bb.ag ], [ %.sroa.231058.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.0.0.i331, %bb.bu ], [ %i.iu, %bb.dz ], [ %.sroa.231058.3, %bb.sw ], [ -9223372036854775702, %bb.cf ]
  %.sroa.58.2 = phi i64 [ undef, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.58.11315, %bb.ag ], [ %.sroa.58.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.3.i.sroa.4.0, %bb.bu ], [ %.sroa.5729.sroa.2.0.copyload, %bb.dz ], [ %.sroa.58.3, %bb.sw ], [ undef, %bb.cf ]
  %.sroa.63.2 = phi i64 [ undef, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.63.11316, %bb.ag ], [ %.sroa.63.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.3.i.sroa.5.0, %bb.bu ], [ %.sroa.5729.sroa.3.0.copyload, %bb.dz ], [ %.sroa.63.3, %bb.sw ], [ undef, %bb.cf ]
  %.sroa.67.2 = phi i64 [ undef, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.67.11317, %bb.ag ], [ %.sroa.67.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.3.i.sroa.6.0, %bb.bu ], [ %.sroa.5729.sroa.4.0.copyload, %bb.dz ], [ %.sroa.67.3, %bb.sw ], [ undef, %bb.cf ]
  %.sroa.44.sroa.0.2 = phi i8 [ undef, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.44.sroa.0.11318, %bb.ag ], [ %.sroa.44.sroa.0.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.44.sroa.0.0.extract.trunc1114, %bb.bu ], [ %.sroa.3728.0.copyload, %bb.dz ], [ %.sroa.44.sroa.0.3, %bb.sw ], [ undef, %bb.cf ]
  %.sroa.44.sroa.17.sroa.0.2 = phi i56 [ undef, %_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.44.sroa.17.sroa.0.11319, %bb.ag ], [ %.sroa.44.sroa.17.sroa.0.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.44.sroa.17.0.extract.trunc1137, %bb.bu ], [ %.sroa.5729.sroa.0.0.copyload, %bb.dz ], [ %.sroa.44.sroa.17.sroa.0.3, %bb.sw ], [ undef, %bb.cf ]
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !noundef !10 ; 2 uses
  %.not266 = icmp eq ptr %i.fq, null
  br i1 %.not266, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit, label %bb.tb

bb.al:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #49
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #49
  unreachable

bb.an:                                            ; preds = %bb.az, %bb.ay
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i, %bb.an
  %i.fs = phi ptr [ %i.ft, %bb.an ], [ %i.gf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.fr, %bb.an ], [ %.pn5.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8715.sroa.9)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_delta21ConvertToDeltaBuilderNtBP_9Operation11pre_execute0EBR_(ptr noundef nonnull align 8 %i.fs) #44
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ad

bb.ao:                                            ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !294, !noalias !16834
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8715.sroa.9)
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  switch i8 %.pre, label %default.unreachable2061 [
    i8 0, label %bb.ap
    i8 1, label %bb.ay
    i8 2, label %bb.az
    i8 3, label %bb.bb
  ]

bb.ap:                                            ; preds = %.thread2062, %bb.ao
  %i.fv = phi ptr [ %i.fe, %.thread2062 ], [ %i.fu, %bb.ao ] ; 3 uses
  %i.fw = phi ptr [ %i.fd, %.thread2062 ], [ %i.ft, %bb.ao ] ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !16834, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i64 16, i1 false), !noalias !16834
  %i.fz = getelementptr i8, ptr %i.fx, i64 320
  %.val10.i = load ptr, ptr %i.fz, align 8, !noalias !16834, !noundef !10 ; 5 uses
  %i.ga = getelementptr i8, ptr %i.fx, i64 328
  %.val11.i = load ptr, ptr %i.ga, align 8, !noalias !16834 ; 5 uses
  %.not.i.i = icmp eq ptr %.val10.i, null
  br i1 %.not.i.i, label %.thread.i, label %bb.aq

.thread.i:                                        ; preds = %bb.ap
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr null, ptr %i.gb, align 8, !noalias !16834
  br label %bb.bm

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  %i.gc = atomicrmw add ptr %.val10.i, i64 1 monotonic, align 8, !noalias !16834
  %i.gd = icmp slt i64 %i.gc, 0
  br i1 %i.gd, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i: ; preds = %bb.ax, %.body.i, %bb.as
  %i.ge = phi ptr [ %i.hj, %bb.as ], [ %i.hb, %bb.ax ], [ %i.hb, %.body.i ]
  %i.gf = phi ptr [ %i.hk, %bb.as ], [ %i.hc, %bb.ax ], [ %i.hc, %.body.i ]
  %.pn5.i = phi { ptr, i32 } [ %i.gg, %bb.as ], [ %.pn.i, %bb.ax ], [ %.pn.i, %.body.i ]
  store i8 2, ptr %i.ge, align 8, !noalias !16834
  br label %.body

bb.as:                                            ; preds = %bb.bj
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i

bb.at:                                            ; preds = %bb.aq
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr %.val10.i, ptr %i.gh, align 8, !noalias !16834
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 792
  store ptr %.val11.i, ptr %i.gi, align 8, !noalias !16834
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 800
  store ptr %.val10.i, ptr %i.gj, align 8, !noalias !16834
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 808
  store ptr %.val11.i, ptr %i.gk, align 8, !noalias !16834
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 256 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !16838, !noalias !16834, !noundef !10
  %.not.i14.i = icmp eq ptr %i.gm, null
  br i1 %.not.i14.i, label %bb.au, label %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit.i, !prof !49

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #49
          to label %.noexc.i unwind label %bb.av, !noalias !16834

.noexc.i:                                         ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit.i, %bb.au
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit.i: ; preds = %bb.at
  %i.go = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !range !295, !invariant.load !10, !noalias !16834
  %i.gq = add nsw i64 %i.gp, -1
  %i.gr = and i64 %i.gq, -16
  %i.gs = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.val11.i, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !invariant.load !10, !noalias !16834, !nonnull !10
  %i.gw = invoke { ptr, ptr } %i.gv(ptr noundef nonnull %i.gt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gl, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.x)
          to label %bb.aw unwind label %bb.av, !noalias !16834 ; 2 uses

bb.aw:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit.i
  %i.gx = extractvalue { ptr, ptr } %i.gw, 0
  %i.gy = extractvalue { ptr, ptr } %i.gw, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 816
  store ptr %i.gx, ptr %i.gz, align 8, !noalias !16834
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 824
  store ptr %i.gy, ptr %i.ha, align 8, !noalias !16834
  br label %bb.bb

.body.i:                                          ; preds = %bb.bi, %bb.bh, %bb.ba, %bb.av
  %i.hb = phi ptr [ %i.hj, %bb.bh ], [ %i.hj, %bb.ba ], [ %i.fv, %bb.av ], [ %i.hj, %bb.bi ] ; 2 uses
  %i.hc = phi ptr [ %i.hk, %bb.bh ], [ %i.hk, %bb.ba ], [ %i.fw, %bb.av ], [ %i.hk, %bb.bi ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %i.hv, %bb.bh ], [ %i.hh, %bb.ba ], [ %i.gn, %bb.av ], [ %i.hv, %bb.bi ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16841)
  call void @llvm.experimental.noalias.scope.decl(metadata !16844)
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !16847, !noalias !16834, !nonnull !10, !noundef !10
  %i.hf = atomicrmw sub ptr %i.he, i64 1 release, align 8, !noalias !16848
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i

bb.ax:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hd) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit.i unwind label %bb.bk, !noalias !16849

bb.ay:                                            ; preds = %bb.ao
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #49
          to label %.noexc332 unwind label %bb.an

.noexc332:                                        ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ao
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #49
          to label %.noexc333 unwind label %bb.an

.noexc333:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.bb
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16834
  %.val8.i = load ptr, ptr %i.hl, align 8, !noalias !16834
  %i.hi = getelementptr i8, ptr %1, i64 824
  %.val9.i = load ptr, ptr %i.hi, align 8, !noalias !16834, !nonnull !10, !align !304, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_(ptr %.val8.i, ptr nonnull %.val9.i) #44
          to label %.body.i unwind label %bb.bk, !noalias !16849

bb.bb:                                            ; preds = %bb.aw, %bb.ao
  %i.hj = phi ptr [ %i.fv, %bb.aw ], [ %i.fu, %bb.ao ] ; 7 uses
  %i.hk = phi ptr [ %i.fw, %bb.aw ], [ %i.ft, %bb.ao ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16834
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2g_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bc unwind label %bb.ba, !noalias !16849

bb.bc:                                            ; preds = %bb.bb
  %i.hm = load i64, ptr %i.w, align 16, !range !16850, !noalias !16834, !noundef !10 ; 3 uses
  %i.hn = icmp eq i64 %i.hm, -9223372036854775710
  br i1 %i.hn, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.3.i.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !16834 ; 2 uses
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.3.i.sroa.4.0.copyload = load i64, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 16, !noalias !16834 ; 2 uses
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.3.i.sroa.5.0.copyload = load i64, ptr %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !16834 ; 2 uses
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 16, !noalias !16834 ; 2 uses
  %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx2.i.sroa_idx, i64 56, i1 false), !noalias !16834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16834
  %.val.i = load ptr, ptr %i.hl, align 8, !noalias !16834 ; 5 uses
  %i.ho = getelementptr i8, ptr %1, i64 824
  %.val7.i = load ptr, ptr %i.ho, align 8, !noalias !16834, !nonnull !10, !align !304, !noundef !10 ; 5 uses
  %i.hp = load ptr, ptr %.val7.i, align 8, !invariant.load !10, !noalias !16849 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be
end_hunk_1
begin_hunk_2_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB7_21ConvertToDeltaBuilder19into_create_builder0Bb_:bb.a
bb.ln:                                            ; preds = %bb.ll
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 3 uses
  %i.acq = load ptr, ptr %i.acp, align 8, !alias.scope !17078, !noundef !10 ; 3 uses
  %.not.i467 = icmp eq ptr %i.acq, null
  br i1 %.not.i467, label %bb.lo, label %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit469, !prof !49

bb.lo:                                            ; preds = %bb.ln
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #49
          to label %.noexc468 unwind label %bb.ni

.noexc468:                                        ; preds = %bb.lo
  unreachable

_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit469: ; preds = %bb.ln
  %i.acr = getelementptr i8, ptr %1, i64 608
  %.val314 = load ptr, ptr %i.acr, align 8        ; 2 uses
  %i.acs = atomicrmw add ptr %i.acq, i64 1 monotonic, align 8
  %i.act = icmp slt i64 %i.acs, 0
  br i1 %i.act, label %bb.lp, label %bb.lr

bb.lp:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit469
  call void @llvm.trap()
  unreachable

bb.lq:                                            ; preds = %bb.lr
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %bb.nj

bb.lr:                                            ; preds = %_RNvXs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB5_21ConvertToDeltaBuilderNtB7_9Operation9log_store.exit469
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val314) ]
  invoke void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB5_13CreateBuilder14with_log_store(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ai, ptr noundef nonnull %i.acq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val314)
          to label %bb.ls unwind label %bb.lq

bb.ls:                                            ; preds = %bb.lr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.sroa.01050.0.copyload = load i64, ptr %i.as, align 8
  %.sroa.51051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.51051.0.copyload = load ptr, ptr %.sroa.51051.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.61052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.61052.0.copyload = load i64, ptr %.sroa.61052.0..sroa_idx, align 8 ; 2 uses
  %i.acv = icmp ult i64 %.sroa.61052.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.acv)
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.51051.0.copyload, i64 %.sroa.61052.0.copyload
  store ptr %.sroa.51051.0.copyload, ptr %i.ah, align 8, !alias.scope !17081
  %.sroa.51047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.51051.0.copyload, ptr %.sroa.51047.0..sroa_idx, align 8, !alias.scope !17081
  %.sroa.61048.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.01050.0.copyload, ptr %.sroa.61048.0..sroa_idx, align 8, !alias.scope !17081
  %.sroa.71049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.acw, ptr %.sroa.71049.0..sroa_idx, align 8, !alias.scope !17081
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder12with_columnsNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRB1v_EEEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.lt unwind label %.thread1502

.thread1502:                                      ; preds = %bb.ls
  %i.acx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1482

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 749 ; 2 uses
  store i8 0, ptr %i.acy, align 1
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.acz, i64 48, i1 false)
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.lu unwind label %bb.nh

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder22with_partition_columnsNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterB1F_EEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ag)
          to label %bb.lw unwind label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.ada = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %.thread1498

bb.lw:                                            ; preds = %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 750 ; 2 uses
  store i8 0, ptr %i.adb, align 2
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.adc, i64 24, i1 false)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder12with_actionsINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtBa_6kernel6models6ActionEEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.af)
          to label %bb.lx unwind label %.thread1494

.thread1494:                                      ; preds = %bb.lw
  %i.add = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1482

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.adf = load i8, ptr %i.ade, align 8, !range !294, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !17085)
  %i.adg = getelementptr inbounds nuw i8, ptr %i.am, i64 361
  store i8 %i.adf, ptr %i.adg, align 1, !alias.scope !17088, !noalias !17085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.an, ptr noundef nonnull align 8 dereferenceable(368) %i.am, i64 368, i1 false), !alias.scope !17090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.adh = getelementptr inbounds nuw i8, ptr %1, i64 754
  store i8 0, ptr %i.adh, align 2
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.adi, i64 48, i1 false)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder18with_configurationNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1B_INtNtCsbvkFyIu7lgC_4core6option6OptionB1B_EEEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ae)
          to label %bb.ly unwind label %.thread1488

.thread1488:                                      ; preds = %bb.lx
  %i.adj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1482

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.adk = getelementptr inbounds nuw i8, ptr %1, i64 753
  store i8 0, ptr %i.adk, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ad, ptr noundef nonnull align 8 dereferenceable(88) %i.aco, i64 88, i1 false)
  invoke void @_RNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB5_13CreateBuilder22with_commit_properties(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.ad)
          to label %bb.lz unwind label %.thread1485

.thread1485:                                      ; preds = %bb.ly
  %i.adl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1482

bb.lz:                                            ; preds = %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.adn = load i64, ptr %i.adm, align 8, !range !59, !noundef !10
  %.not111 = icmp eq i64 %i.adn, -9223372036854775808
  br i1 %.not111, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 752
  store i8 0, ptr %i.ado, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.adm, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder15with_table_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.md unwind label %bb.mc

bb.mb:                                            ; preds = %bb.md, %bb.lz
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.adq = load i64, ptr %i.adp, align 8, !range !59, !noundef !10
  %.not112 = icmp eq i64 %i.adq, -9223372036854775808
  br i1 %.not112, label %bb.mf, label %bb.me

bb.mc:                                            ; preds = %bb.ma
  %i.adr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.thread1482

bb.md:                                            ; preds = %bb.ma
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ap, ptr noundef nonnull align 8 dereferenceable(368) %i.ab, i64 368, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.mb

bb.me:                                            ; preds = %bb.mb
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 751
  store i8 0, ptr %i.ads, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.adp, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB6_13CreateBuilder12with_commentNtNtCs6Po7BT7Nknu_5alloc6string6StringEBa_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.mh unwind label %bb.mg

bb.mf:                                            ; preds = %bb.mh, %bb.mb
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 688
  %.sroa.111258.368..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.111258, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.111258.368..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.adt, i64 16, i1 false)
  %i.adu = load <2 x i64>, ptr %i.ap, align 16
  %.sroa.51253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.51253.0.copyload = load i64, ptr %.sroa.51253.0..sroa_idx, align 16
  %.sroa.61254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.61254.0.copyload = load i64, ptr %.sroa.61254.0..sroa_idx, align 8 ; 2 uses
  %.sroa.71255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.71255.0.copyload = load i64, ptr %.sroa.71255.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.91256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.sroa.91256.0.copyload = load i64, ptr %.sroa.91256.0..sroa_idx, align 16
  %.sroa.101257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.101257.0..sroa_idx, i64 56, i1 false)
  %.sroa.111258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %.sroa.111258, ptr noundef nonnull align 16 dereferenceable(256) %.sroa.111258.0..sroa_idx, i64 256, i1 false)
  %.sroa.44.sroa.0.0.extract.trunc = trunc i64 %.sroa.61254.0.copyload to i8
  %.sroa.44.sroa.17.0.extract.shift = lshr i64 %.sroa.61254.0.copyload, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.au)
          to label %bb.mk unwind label %bb.mj

bb.mg:                                            ; preds = %bb.me
  %i.adv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.thread1482

bb.mh:                                            ; preds = %bb.me
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ap, ptr noundef nonnull align 8 dereferenceable(368) %i.z, i64 368, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.mf

bb.mi:                                            ; preds = %bb.kx, %.thread1482, %bb.mj
  %.pn122.pn = phi { ptr, i32 } [ %i.acb, %bb.kx ], [ %i.adw, %bb.mj ], [ %.pn113.pn, %.thread1482 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.nm

bb.mj:                                            ; preds = %bb.mf
  %i.adw = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.mk:                                            ; preds = %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.experimental.noalias.scope.decl(metadata !17091)
  call void @llvm.experimental.noalias.scope.decl(metadata !17094)
  %i.adx = load ptr, ptr %i.aw, align 8, !alias.scope !17097, !nonnull !10, !noundef !10
  %i.ady = atomicrmw sub ptr %i.adx, i64 1 release, align 8, !noalias !17097
  %i.adz = icmp eq i64 %i.ady, 1
  br i1 %i.adz, label %bb.ml, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477

bb.ml:                                            ; preds = %bb.mk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477 unwind label %bb.mm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500: ; preds = %bb.nm, %bb.nn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit, %bb.mm
  %.pn126 = phi { ptr, i32 } [ %i.aea, %bb.mm ], [ %.pn85, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn122.pn.pn, %bb.nn ], [ %.pn122.pn.pn, %bb.nm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit

bb.mm:                                            ; preds = %bb.nl, %bb.ml
  %i.aea = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477: ; preds = %bb.mk, %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 808
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aeb)
          to label %bb.mo unwind label %bb.mn

bb.mn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477
  %i.aec = landingpad { ptr, i32 }
          cleanup
  br label %.body458

bb.mo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit477
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit479 unwind label %bb.eo

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit479: ; preds = %bb.mo
  store i8 0, ptr %i.acy, align 1
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.abb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit481 unwind label %bb.mp

bb.mp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit479
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit481: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit479
  store i8 0, ptr %i.adb, align 2
  store i8 0, ptr %i.abe, align 1
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 746
  store i8 0, ptr %i.aee, align 2
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17098)
  call void @llvm.experimental.noalias.scope.decl(metadata !17101)
  %i.aeg = load ptr, ptr %i.aef, align 8, !alias.scope !17104, !nonnull !10, !noundef !10
  %i.aeh = atomicrmw sub ptr %i.aeg, i64 1 release, align 8, !noalias !17104
  %i.aei = icmp eq i64 %i.aeh, 1
  br i1 %i.aei, label %bb.mq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483

bb.mq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit481
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aef) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483 unwind label %bb.mr

bb.mr:                                            ; preds = %bb.sw, %bb.mq
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit481, %bb.mq
  call void @llvm.experimental.noalias.scope.decl(metadata !17105)
  %i.aek = load ptr, ptr %i.acp, align 8, !alias.scope !17105, !noundef !10 ; 2 uses
  %i.ael = icmp eq ptr %i.aek, null
  br i1 %i.ael, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit, label %bb.ms

bb.ms:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483
  %i.aem = atomicrmw sub ptr %i.aek, i64 1 release, align 8, !noalias !17108
  %i.aen = icmp eq i64 %i.aem, 1
  br i1 %i.aen, label %bb.mt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit

bb.mt:                                            ; preds = %bb.ms
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.acp) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit unwind label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aep) #44
          to label %bb.mv unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit: ; preds = %bb.ms, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit483, %bb.mt
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aeq)
          to label %bb.my unwind label %bb.mx

bb.mv:                                            ; preds = %bb.mx, %bb.mu
  %.pn116 = phi { ptr, i32 } [ %i.aeu, %bb.mx ], [ %i.aeo, %bb.mu ] ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.aes = load ptr, ptr %i.aer, align 8, !alias.scope !17113, !noundef !10
  %i.aet = icmp eq ptr %i.aes, null
  br i1 %i.aet, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aer)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ad

bb.mx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit
  %i.aeu = landingpad { ptr, i32 }
          cleanup
  br label %bb.mv

bb.my:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEEB1F_.exit
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.aew = load ptr, ptr %i.aev, align 8, !alias.scope !17116, !noundef !10
  %i.aex = icmp eq ptr %i.aew, null
  br i1 %i.aex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aev)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487 unwind label %bb.na

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.mv, %bb.mw, %bb.na
  %.pn118 = phi { ptr, i32 } [ %i.aez, %bb.na ], [ %.pn116, %bb.mw ], [ %.pn116, %bb.mv ]
  %i.aey = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aey)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489 unwind label %bb.ad

bb.na:                                            ; preds = %bb.mz
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487: ; preds = %bb.my, %bb.mz
  %i.afa = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.afa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491 unwind label %bb.nd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.nd
  %.pn120 = phi { ptr, i32 } [ %i.afg, %bb.nd ], [ %.pn118, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17119)
  %i.afc = load ptr, ptr %i.afb, align 8, !alias.scope !17119, !noundef !10 ; 2 uses
  %i.afd = icmp eq ptr %i.afc, null
  br i1 %i.afd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.nb

bb.nb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489
  %i.afe = atomicrmw sub ptr %i.afc, i64 1 release, align 8, !noalias !17122
  %i.aff = icmp eq i64 %i.afe, 1
  br i1 %i.aff, label %bb.nc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.nc:                                            ; preds = %bb.nb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.afb) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.ad

bb.nd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit487
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17127)
  %i.afi = load ptr, ptr %i.afh, align 8, !alias.scope !17127, !noundef !10 ; 2 uses
  %i.afj = icmp eq ptr %i.afi, null
  br i1 %i.afj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496, label %bb.ne

bb.ne:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491
  %i.afk = atomicrmw sub ptr %i.afi, i64 1 release, align 8, !noalias !17130
  %i.afl = icmp eq i64 %i.afk, 1
  br i1 %i.afl, label %bb.nf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496

bb.nf:                                            ; preds = %bb.ne
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.afh) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496 unwind label %bb.ng

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit: ; preds = %bb.ux, %bb.uw, %bb.uy, %bb.ua, %.body656, %bb.ub, %bb.nb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489, %bb.nc, %bb.ng
  %.pn281 = phi { ptr, i32 } [ %i.afo, %bb.ng ], [ %.pn120, %bb.nb ], [ %.pn279, %bb.ua ], [ %.pn120, %bb.nc ], [ %.pn120, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit489 ], [ %.pn279, %bb.ub ], [ %.pn279, %.body656 ], [ %.pn260.pn, %bb.uy ], [ %.pn260.pn, %bb.uw ], [ %.pn260.pn, %bb.ux ]
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 751
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 747
  store i8 0, ptr %i.afn, align 1
  store i32 0, ptr %i.afm, align 1
  store i8 2, ptr %i.dq, align 8
  resume { ptr, i32 } %.pn281

bb.ng:                                            ; preds = %bb.ue, %bb.nf
  %i.afo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496: ; preds = %bb.ne, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit491, %bb.nf
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 747
  store i8 0, ptr %3, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496.a: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496
  %.sroa.231058.5 = phi i64 [ %.sroa.231058.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664 ], [ %.sroa.51253.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496 ]
  %.sroa.58.5 = phi i64 [ %.sroa.58.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664 ], [ %.sroa.71255.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496 ]
  %.sroa.63.5 = phi i64 [ %.sroa.63.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664 ], [ %.sroa.8.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496 ]
  %.sroa.67.5 = phi i64 [ %.sroa.67.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664 ], [ %.sroa.91256.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496 ]
  %.sroa.44.sroa.0.5 = phi i8 [ %.sroa.44.sroa.0.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664 ], [ %.sroa.44.sroa.0.0.extract.trunc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496 ]
  %.sroa.44.sroa.17.sroa.0.5 = phi i64 [ %6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664 ], [ %.sroa.44.sroa.17.0.extract.shift, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496 ]
  %4 = phi <2 x i64> [ <i64 -9223372036854775808, i64 undef>, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664 ], [ %i.adu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496 ]
  %.sink2257 = getelementptr inbounds nuw i8, ptr %1, i64 751
  store i32 0, ptr %.sink2257, align 1
  store <2 x i64> %4, ptr %0, align 16
  %.sroa.231058.0..sroa_idx1059 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.231058.5, ptr %.sroa.231058.0..sroa_idx1059, align 16
  %.sroa.44.0..sroa_idx1062 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.44.sroa.17.0.insert.shift = shl nuw i64 %.sroa.44.sroa.17.sroa.0.5, 8
  %.sroa.44.sroa.0.0.insert.ext = zext i8 %.sroa.44.sroa.0.5 to i64
  %.sroa.44.sroa.0.0.insert.insert = or disjoint i64 %.sroa.44.sroa.17.0.insert.shift, %.sroa.44.sroa.0.0.insert.ext
  store i64 %.sroa.44.sroa.0.0.insert.insert, ptr %.sroa.44.0..sroa_idx1062, align 8
  %.sroa.58.0..sroa_idx1072 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.58.5, ptr %.sroa.58.0..sroa_idx1072, align 16
  %.sroa.63.0..sroa_idx1085 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.63.5, ptr %.sroa.63.0..sroa_idx1085, align 8
  %.sroa.67.0..sroa_idx1094 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.67.5, ptr %.sroa.67.0..sroa_idx1094, align 16
  %.sroa.70.0..sroa_idx1103 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70.0..sroa_idx1103, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.70, i64 56, i1 false)
  %.sroa.71.0..sroa_idx1105 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.71.0..sroa_idx1105, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.111258, i64 272, i1 false)
  br label %common.ret

bb.nh:                                            ; preds = %bb.lt
  %i.afp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create13CreateBuilderEBM_(ptr noalias noundef align 8 dereferenceable(368) %i.ak) #44
          to label %.thread1498 unwind label %bb.ad

bb.ni:                                            ; preds = %bb.lo
  %i.afq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create13CreateBuilderEBM_(ptr noalias noundef align 8 dereferenceable(368) %i.ai) #44
          to label %bb.nj unwind label %bb.ad

.thread1498:                                      ; preds = %bb.nh, %bb.lv
  %.pn100.pn.ph = phi { ptr, i32 } [ %i.ada, %bb.lv ], [ %i.afp, %bb.nh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1482

bb.nj:                                            ; preds = %bb.ni, %bb.lq
  %.pn931465 = phi { ptr, i32 } [ %i.afq, %bb.ni ], [ %i.acu, %bb.lq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread1476

.thread1482:                                      ; preds = %bb.mc, %bb.mg, %.thread1502, %.thread1498, %.thread1494, %.thread1488, %.thread1485, %bb.la, %.thread1476
  %.pn113.pn = phi { ptr, i32 } [ %.pn1131479, %.thread1476 ], [ %i.acx, %.thread1502 ], [ %i.ach, %bb.la ], [ %i.adv, %bb.mg ], [ %.pn100.pn.ph, %.thread1498 ], [ %i.adl, %.thread1485 ], [ %i.adj, %.thread1488 ], [ %i.adr, %bb.mc ], [ %i.add, %.thread1494 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.au) #44
          to label %bb.mi unwind label %bb.ad

.thread1476:                                      ; preds = %bb.lj, %bb.lm, %bb.nj
  %.pn1131479 = phi { ptr, i32 } [ %.pn931465, %bb.nj ], [ %.pn91, %bb.lj ], [ %i.acn, %bb.lm ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.as) #44
          to label %.thread1482 unwind label %bb.ad

bb.nk:                                            ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.sroa.44.sroa.0.0.extract.trunc1117 = trunc i64 %.sroa.81039.sroa.0.0.copyload1164 to i8
  %.sroa.44.sroa.17.0.extract.shift1142 = lshr i64 %.sroa.81039.sroa.0.0.copyload1164, 8
  %.sroa.44.sroa.17.0.extract.trunc1143 = trunc nuw i64 %.sroa.44.sroa.17.0.extract.shift1142 to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.experimental.noalias.scope.decl(metadata !17135)
  call void @llvm.experimental.noalias.scope.decl(metadata !17138)
  %i.afr = load ptr, ptr %i.aw, align 8, !alias.scope !17141, !nonnull !10, !noundef !10
  %i.afs = atomicrmw sub ptr %i.afr, i64 1 release, align 8, !noalias !17141
  %i.aft = icmp eq i64 %i.afs, 1
  br i1 %i.aft, label %bb.nl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498

bb.nl:                                            ; preds = %bb.nk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498 unwind label %bb.mm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit498: ; preds = %bb.nk, %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit608

bb.nm:                                            ; preds = %bb.mi, %bb.kv
  %.pn122.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %bb.mi ], [ %i.abz, %bb.kv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17142)
  call void @llvm.experimental.noalias.scope.decl(metadata !17145)
  %i.afu = load ptr, ptr %i.aw, align 8, !alias.scope !17148, !nonnull !10, !noundef !10
  %i.afv = atomicrmw sub ptr %i.afu, i64 1 release, align 8, !noalias !17148
  %i.afw = icmp eq i64 %i.afv, 1
  br i1 %i.afw, label %bb.nn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500

bb.nn:                                            ; preds = %bb.nm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500 unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.kr, %bb.ks, %bb.kp
  %.pn85 = phi { ptr, i32 } [ %i.abq, %bb.kp ], [ %i.abs, %bb.ks ], [ %i.abs, %bb.kr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500

bb.no:                                            ; preds = %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %.sroa.44.sroa.0.0.extract.trunc1116 = trunc i64 %.sroa.81033.sroa.0.0.copyload1177 to i8
  %.sroa.44.sroa.17.0.extract.shift1140 = lshr i64 %.sroa.81033.sroa.0.0.copyload1177, 8
  %.sroa.44.sroa.17.0.extract.trunc1141 = trunc nuw i64 %.sroa.44.sroa.17.0.extract.shift1140 to i56
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit608

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.kc, %bb.kg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500, %bb.km
  %.pn238.pn = phi { ptr, i32 } [ %.pn236, %bb.kc ], [ %i.abl, %bb.km ], [ %.pn126, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit500 ], [ %i.aba, %bb.kg ]
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 808
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.afx) #44
          to label %.body458 unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666: ; preds = %bb.uf, %bb.np, %.body448
  %.pn234 = phi { ptr, i32 } [ %i.aga, %bb.np ], [ %.pn232, %.body448 ], [ %.pn232, %bb.uf ]
  %i.afy = getelementptr inbounds nuw i8, ptr %1, i64 748
  store i8 0, ptr %i.afy, align 4
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 1744
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.afz) #44
          to label %bb.kc unwind label %bb.ad

bb.np:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit589, %bb.ke
  %i.aga = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666

bb.nq:                                            ; preds = %bb.ke
  %i.agb = extractvalue { i64, i64 } %i.aaz, 0
  %i.agc = extractvalue { i64, i64 } %i.aaz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aay, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i453 = getelementptr inbounds nuw i8, ptr %1, i64 1600
  store i64 %i.agb, ptr %.sroa.4.0..sroa_idx.i453, align 8, !alias.scope !17149
  %.sroa.5.0..sroa_idx.i454 = getelementptr inbounds nuw i8, ptr %1, i64 1608
  store i64 %i.agc, ptr %.sroa.5.0..sroa_idx.i454, align 8, !alias.scope !17149
  %i.agd = getelementptr inbounds nuw i8, ptr %1, i64 748
  store i8 1, ptr %i.agd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aax)
          to label %_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %bb.rl

_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.nq
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17152
  store i64 0, ptr %i.g, align 8, !noalias !17152
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !17152
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !17152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17152
  %i.agg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1610612768, ptr %i.agg, align 8, !noalias !17152
  %.sroa.4.0..sroa_idx.i.i502 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i502, align 4, !noalias !17152
  %.sroa.5.0..sroa_idx.i.i503 = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i503, align 2, !noalias !17152
  store ptr %i.g, ptr %i.f, align 8, !noalias !17152
  %i.agh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @224, ptr %i.agh, align 8, !noalias !17152
  %i.agi = invoke noundef zeroext i1 @_RNvXs3_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.nt unwind label %bb.ns, !noalias !17159

bb.ns:                                            ; preds = %bb.nu, %_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %i.agj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #44
          to label %.body505 unwind label %bb.nv, !noalias !17159

bb.nt:                                            ; preds = %_RNvXs9_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  br i1 %i.agi, label %bb.nu, label %bb.nw, !prof !49

bb.nu:                                            ; preds = %bb.nt
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @810, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @244, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @812) #46
          to label %.noexc.i.i504 unwind label %bb.ns, !noalias !17159

.noexc.i.i504:                                    ; preds = %bb.nu
  unreachable

bb.nv:                                            ; preds = %bb.ns
  %i.agk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17159
  unreachable

.body505:                                         ; preds = %bb.ns
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cm) #44
          to label %bb.rl unwind label %bb.ad

bb.nw:                                            ; preds = %bb.nt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agf, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !17160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17152
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i508 unwind label %bb.nx

bb.nx:                                            ; preds = %bb.nw
end_hunk_2
begin_hunk_3_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtB7_21ConvertToDeltaBuilder19into_create_builder0Bb_:bb.a
bb.ti:                                            ; preds = %.body627
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aqf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633 unwind label %bb.ad

bb.tj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i626
  %i.aqi = landingpad { ptr, i32 }
          cleanup
  br label %.body627

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit630: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i626
  %i.aqj = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.aqk = load ptr, ptr %i.aqj, align 8, !alias.scope !17333, !noundef !10
  %i.aql = icmp eq ptr %i.aqk, null
  br i1 %i.aql, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635, label %bb.tk

bb.tk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit630
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aqj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635 unwind label %bb.tl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633: ; preds = %.body627, %bb.ti, %bb.tl
  %.pn269 = phi { ptr, i32 } [ %i.aqn, %bb.tl ], [ %.pn267, %bb.ti ], [ %.pn267, %.body627 ]
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aqm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637 unwind label %bb.ad

bb.tl:                                            ; preds = %bb.tk
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit630, %bb.tk
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aqo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit639 unwind label %bb.tm

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633, %bb.tm
  %.pn271 = phi { ptr, i32 } [ %i.aqq, %bb.tm ], [ %.pn269, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit633 ]
  %i.aqp = getelementptr inbounds nuw i8, ptr %1, i64 456
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aqp) #44
          to label %.body642 unwind label %bb.ad

bb.tm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635
  %i.aqq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit639: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit635
  %i.aqr = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 4 uses
  %i.aqs = load i64, ptr %i.aqr, align 8, !range !59, !alias.scope !17336, !noundef !10
  %i.aqt = icmp eq i64 %i.aqs, -9223372036854775808
  br i1 %i.aqt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645, label %bb.tn

bb.tn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit639
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i641 unwind label %bb.to

bb.to:                                            ; preds = %bb.tn
  %i.aqu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqr)
          to label %.body642 unwind label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.aqv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i641: ; preds = %bb.tn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqr)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645 unwind label %bb.tq

.body642:                                         ; preds = %bb.tq, %bb.to, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637
  %.pn273 = phi { ptr, i32 } [ %.pn271, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit637 ], [ %i.aqx, %bb.tq ], [ %i.aqu, %bb.to ]
  %i.aqw = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.aqw) #44
          to label %.body648 unwind label %bb.ad

bb.tq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i641
  %i.aqx = landingpad { ptr, i32 }
          cleanup
  br label %.body642

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit639, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i641
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %i.aqz = load i64, ptr %i.aqy, align 8, !range !59, !alias.scope !17339, !noundef !10
  %i.ara = icmp eq i64 %i.aqz, -9223372036854775808
  br i1 %i.ara, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651, label %bb.tr

bb.tr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i647 unwind label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.arb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqy)
          to label %.body648 unwind label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.arc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i647: ; preds = %bb.tr
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aqy)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651 unwind label %bb.tu

.body648:                                         ; preds = %bb.tu, %bb.ts, %.body642
  %.pn275 = phi { ptr, i32 } [ %.pn273, %.body642 ], [ %i.are, %bb.tu ], [ %i.arb, %bb.ts ]
  %i.ard = getelementptr inbounds nuw i8, ptr %1, i64 552
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ard)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653 unwind label %bb.ad

bb.tu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i647
  %i.are = landingpad { ptr, i32 }
          cleanup
  br label %.body648

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit645, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i647
  %i.arf = getelementptr inbounds nuw i8, ptr %1, i64 552
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.arf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit655 unwind label %bb.tv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653: ; preds = %.body648, %bb.tv
  %.pn277 = phi { ptr, i32 } [ %i.arg, %bb.tv ], [ %.pn275, %.body648 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.fo) #44
          to label %.body656 unwind label %bb.ad

bb.tv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651
  %i.arg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit655: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit651
  %i.arh = getelementptr inbounds nuw i8, ptr %1, i64 368
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.arh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.tw

bb.tw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit655
  %i.ari = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fo) #44
          to label %.body656 unwind label %bb.tz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit655
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i unwind label %bb.tx

bb.tx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.arj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fo)
          to label %.body656 unwind label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.ark = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.fo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit unwind label %bb.uc

bb.tz:                                            ; preds = %bb.tw
  %i.arl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

.body656:                                         ; preds = %bb.uc, %bb.tx, %bb.tw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653
  %.pn279 = phi { ptr, i32 } [ %.pn277, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit653 ], [ %i.arr, %bb.uc ], [ %i.arj, %bb.tx ], [ %i.ari, %bb.tw ] ; 3 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17342)
  %i.arn = load ptr, ptr %i.arm, align 8, !alias.scope !17342, !noundef !10 ; 2 uses
  %i.aro = icmp eq ptr %i.arn, null
  br i1 %i.aro, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.ua

bb.ua:                                            ; preds = %.body656
  %i.arp = atomicrmw sub ptr %i.arn, i64 1 release, align 8, !noalias !17345
  %i.arq = icmp eq i64 %i.arp, 1
  br i1 %i.arq, label %bb.ub, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.ub:                                            ; preds = %bb.ua
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.arm) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.ad

bb.uc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i
  %i.arr = landingpad { ptr, i32 }
          cleanup
  br label %.body656

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i
  %i.ars = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17350)
  %i.art = load ptr, ptr %i.ars, align 8, !alias.scope !17350, !noundef !10 ; 2 uses
  %i.aru = icmp eq ptr %i.art, null
  br i1 %i.aru, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664, label %bb.ud

bb.ud:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit
  %i.arv = atomicrmw sub ptr %i.art, i64 1 release, align 8, !noalias !17353
  %i.arw = icmp eq i64 %i.arv, 1
  br i1 %i.arw, label %bb.ue, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664

bb.ue:                                            ; preds = %bb.ud
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ars) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664 unwind label %bb.ng

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit664: ; preds = %bb.ud, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit, %bb.ue
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 747
  store i8 0, ptr %5, align 1
  %6 = zext i56 %.sroa.44.sroa.17.sroa.0.2 to i64
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit496.a

bb.uf:                                            ; preds = %.body448
  %i.arx = getelementptr inbounds nuw i8, ptr %1, i64 1568
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.arx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit666 unwind label %bb.ad

bb.ug:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit372
  %i.ary = getelementptr inbounds nuw i8, ptr %1, i64 1456
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ary)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit668 unwind label %bb.ad

bb.uh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 784
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.arz) #44
          to label %.body615 unwind label %bb.ad

bb.ui:                                            ; preds = %.body615
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 760
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.asa) #44
          to label %.body618 unwind label %bb.ad

bb.uj:                                            ; preds = %bb.ew
  %i.asb = getelementptr inbounds nuw i8, ptr %1, i64 720
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.asb) #44
          to label %.body623 unwind label %bb.ad

bb.uk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.asc = getelementptr inbounds nuw i8, ptr %1, i64 747
  %i.asd = load i8, ptr %i.asc, align 1, !range !349, !noundef !10
  %i.ase = trunc nuw i8 %i.asd to i1
  br i1 %i.ase, label %bb.ul, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670: ; preds = %bb.ul, %bb.um, %bb.uk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.asf = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.asf) #44
          to label %bb.un unwind label %bb.ad

bb.ul:                                            ; preds = %bb.uk
  %i.asg = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !17358
  %i.ash = icmp eq i64 %i.asg, 1
  br i1 %i.ash, label %bb.um, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670

bb.um:                                            ; preds = %bb.ul
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fg) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670 unwind label %bb.ad

bb.un:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit670
  %i.asi = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.asj = load ptr, ptr %i.asi, align 8, !alias.scope !17363, !noundef !10
  %i.ask = icmp eq ptr %i.asj, null
  br i1 %i.ask, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.asi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672 unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672: ; preds = %bb.un, %bb.uo
  %i.asl = getelementptr inbounds nuw i8, ptr %1, i64 504
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.asl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit674 unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit674: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs14kWLkQVSKO_14deltalake_core.exit672
  %i.asm = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.asn = load i64, ptr %i.asm, align 8, !range !59, !noundef !10
  %.not264 = icmp eq i64 %i.asn, -9223372036854775808
  br i1 %.not264, label %bb.uq, label %bb.up

bb.up:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit674
  %i.aso = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.asp = load i8, ptr %i.aso, align 8, !range !349, !noundef !10
  %i.asq = trunc nuw i8 %i.asp to i1
  br i1 %i.asq, label %bb.ur, label %bb.uq

bb.uq:                                            ; preds = %bb.ur, %bb.up, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit674
  %i.asr = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.ass = load i64, ptr %i.asr, align 8, !range !59, !noundef !10
  %.not265 = icmp eq i64 %i.ass, -9223372036854775808
  br i1 %.not265, label %bb.ut, label %bb.us

bb.ur:                                            ; preds = %bb.up
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.asm) #44
          to label %bb.uq unwind label %bb.ad

bb.us:                                            ; preds = %bb.uq
  %i.ast = getelementptr inbounds nuw i8, ptr %1, i64 751
  %i.asu = load i8, ptr %i.ast, align 1, !range !349, !noundef !10
  %i.asv = trunc nuw i8 %i.asu to i1
  br i1 %i.asv, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %bb.uu, %bb.us, %bb.uq
  %i.asw = getelementptr inbounds nuw i8, ptr %1, i64 754
  %i.asx = load i8, ptr %i.asw, align 2, !range !349, !noundef !10
  %i.asy = trunc nuw i8 %i.asx to i1
  br i1 %i.asy, label %bb.uv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676

bb.uu:                                            ; preds = %bb.us
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.asr) #44
          to label %bb.ut unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676: ; preds = %bb.uv, %bb.ut
  %i.asz = getelementptr inbounds nuw i8, ptr %1, i64 753
  %i.ata = load i8, ptr %i.asz, align 1, !range !349, !noundef !10
  %i.atb = trunc nuw i8 %i.ata to i1
  br i1 %i.atb, label %bb.uz, label %bb.uw

bb.uv:                                            ; preds = %bb.ut
  %i.atc = getelementptr inbounds nuw i8, ptr %1, i64 552
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.atc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676 unwind label %bb.ad

bb.uw:                                            ; preds = %bb.uz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676
  %i.atd = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17366)
  %i.ate = load ptr, ptr %i.atd, align 8, !alias.scope !17366, !noundef !10 ; 2 uses
  %i.atf = icmp eq ptr %i.ate, null
  br i1 %i.atf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  %i.atg = atomicrmw sub ptr %i.ate, i64 1 release, align 8, !noalias !17369
  %i.ath = icmp eq i64 %i.atg, 1
  br i1 %i.ath, label %bb.uy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.uy:                                            ; preds = %bb.ux
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.atd) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.ad

bb.uz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit676
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.ff) #44
          to label %bb.uw unwind label %bb.ad
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMs3_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtB7_12RequestStateNtNtB7_5store19ParquetObjectReaderE13begin_request0Cs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [24 x i8], align 8            ; 3 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 3 uses
  %.sroa.3 = alloca [24 x i8], align 8            ; 3 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !294, !noundef !10
  switch i8 %i.d, label %default.unreachable30 [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable30:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = invoke { ptr, ptr } @_RNvXs0_NtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5storeNtB5_19ParquetObjectReaderNtB7_15AsyncFileReader15get_byte_ranges(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.body

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = extractvalue { ptr, ptr } %i.f, 0
  %i.i = extractvalue { ptr, ptr } %i.f, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.i, ptr %i.k, align 8
  br label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.l, %bb.g ], [ %i.x, %bb.o ], [ %i.x, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader5store19ParquetObjectReaderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %1) #44
          to label %bb.t unwind label %bb.v

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #49
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #49
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val5 = load ptr, ptr %i.n, align 8
  %i.m = getelementptr i8, ptr %1, i64 128
  %.val6 = load ptr, ptr %i.m, align 8, !nonnull !10, !align !304, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB11_3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val5, ptr nonnull %.val6) #44
          to label %.body unwind label %bb.v

bb.h:                                             ; preds = %bb.a, %bb.d
end_hunk_3
begin_hunk_4_@_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_EsC_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_EsC_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19733, !noalias !19738, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19733, !noalias !19738, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19733, !noalias !19738, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_EsD_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !19741, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_EsD_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptionlEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(144) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_EsD_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19744, !noalias !19749, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19744, !noalias !19749, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19744, !noalias !19749, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_EsE_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 16 dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19752)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19755
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load ptr, ptr %i.c, align 16, !alias.scope !19752, !noalias !19757, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_EsE_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtBaf_5Break0E0Baf_E0IBag_Baf_EEB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(144) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !19757
  %i.e = load i64, ptr %i.b, align 8, !range !1239, !noalias !19755, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 3
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8o_ENcNtB9M_5Break0E0B9M_EB2g_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8o_ENcNtB9M_5Break0E0B9M_EB2g_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8o_ENcNtB9M_5Break0E0B9M_EB2g_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19755
  br label %bb.c

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8o_ENcNtB9M_5Break0E0B9M_EB2g_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !19752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19755
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8o_ENcNtB9M_5Break0E0B9M_EB2g_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8o_ENcNtB9M_5Break0E0B9M_EB2g_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8o_ENcNtB9M_5Break0E0B9M_EB2g_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 2, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8o_ENcNtB9M_5Break0E0B9M_EB2g_.exit.thread ], [ 2, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2e_11transaction5stateNtB3g_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB4w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7c_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8o_ENcNtB9M_5Break0E0B9M_EB2g_.exit ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_EsE_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19758, !noalias !19763, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19758, !noalias !19763, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19758, !noalias !19763, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esa_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !19766, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Esa_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptionaEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(144) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esa_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19769, !noalias !19774, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19769, !noalias !19774, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19769, !noalias !19774, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esb_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !19777, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Esb_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptionsEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(144) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esb_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19780, !noalias !19785, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19780, !noalias !19785, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19780, !noalias !19785, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esc_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !19788, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Esc_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptionlEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(144) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esc_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19791, !noalias !19796, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19791, !noalias !19796, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19791, !noalias !19796, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esd_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !19799, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Esd_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptionxEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(144) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esd_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19802, !noalias !19807, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19802, !noalias !19807, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19802, !noalias !19807, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Ese_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !19810, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Ese_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptionhEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(144) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Ese_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19813, !noalias !19818, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19813, !noalias !19818, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19813, !noalias !19818, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esf_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !19821, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Esf_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptiontEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(144) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esf_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19824, !noalias !19829, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19824, !noalias !19829, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19824, !noalias !19829, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esg_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !19832, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Esg_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptionmEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(144) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esg_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19835, !noalias !19840, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !19835, !noalias !19840, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19835, !noalias !19840, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esh_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !19843, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1X_11transaction5stateNtB2Z_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4d_11ScalarValue13iter_to_arrayB1n_Esh_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4f_5error15DataFusionErrorEEB5B_8try_folduNCINvNvB5B_12try_for_each4callINtNtBc_6option6OptionyEINtNtNtBc_3ops12control_flow11ControlFlowB8R_ENcNtB9f_5Break0E0B9f_E0IB9g_B9f_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(144) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB2d_11transaction5stateNtB3f_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4t_11ScalarValue13iter_to_arrayB1D_Esh_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvMNtNtB1W_11transaction5stateNtB2Y_12AddContainer15get_prune_stats0EENCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4c_11ScalarValue13iter_to_arrayB1m_Esh_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !19846, !noalias !19851, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
end_hunk_4
begin_hunk_5_@_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_EsC_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_EsC_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20243, !noalias !20248, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20243, !noalias !20248, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20243, !noalias !20248, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_EsD_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20251, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_EsD_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptionlEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(112) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_EsD_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20254, !noalias !20259, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20254, !noalias !20259, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20254, !noalias !20259, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_EsE_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 16 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20265
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 16, !alias.scope !20262, !noalias !20267, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_EsE_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtBaL_5Break0E0BaL_E0IBaM_BaL_EEB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(112) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !20267
  %i.e = load i64, ptr %i.b, align 8, !range !1239, !noalias !20265, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 3
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB47_6scalarNtB5t_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7I_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8U_ENcNtBai_5Break0E0Bai_EB2g_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB47_6scalarNtB5t_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7I_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8U_ENcNtBai_5Break0E0Bai_EB2g_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB47_6scalarNtB5t_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7I_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8U_ENcNtBai_5Break0E0Bai_EB2g_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20265
  br label %bb.c

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB47_6scalarNtB5t_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7I_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8U_ENcNtBai_5Break0E0Bai_EB2g_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !20262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20265
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB47_6scalarNtB5t_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7I_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8U_ENcNtBai_5Break0E0Bai_EB2g_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB47_6scalarNtB5t_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7I_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8U_ENcNtBai_5Break0E0Bai_EB2g_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB47_6scalarNtB5t_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7I_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8U_ENcNtBai_5Break0E0Bai_EB2g_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 2, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB47_6scalarNtB5t_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7I_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8U_ENcNtBai_5Break0E0Bai_EB2g_.exit.thread ], [ 2, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB47_6scalarNtB5t_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7I_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8U_ENcNtBai_5Break0E0Bai_EB2g_.exit ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_EsE_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20268, !noalias !20273, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20268, !noalias !20273, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20268, !noalias !20273, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esa_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20276, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_Esa_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptionaEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(112) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esa_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20279, !noalias !20284, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20279, !noalias !20284, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20279, !noalias !20284, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esb_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20287, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_Esb_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptionsEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(112) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esb_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20290, !noalias !20295, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20290, !noalias !20295, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20290, !noalias !20295, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esc_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20298, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_Esc_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptionlEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(112) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esc_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20301, !noalias !20306, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20301, !noalias !20306, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20301, !noalias !20306, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esd_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20309, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_Esd_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptionxEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(112) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esd_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20312, !noalias !20317, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20312, !noalias !20317, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20312, !noalias !20317, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Ese_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20320, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_Ese_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptionhEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(112) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Ese_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20323, !noalias !20328, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20323, !noalias !20328, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20323, !noalias !20328, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esf_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20331, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_Esf_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptiontEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(112) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esf_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20334, !noalias !20339, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20334, !noalias !20339, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20334, !noalias !20339, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esg_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20342, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_Esg_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptionmEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(112) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esg_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20345, !noalias !20350, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20345, !noalias !20350, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20345, !noalias !20350, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esh_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20353, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3Q_6scalarNtB5c_11ScalarValue13iter_to_arrayB1n_Esh_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB67_8try_folduNCINvNvB67_12try_for_each4callINtNtBc_6option6OptionyEINtNtNtBc_3ops12control_flow11ControlFlowB9n_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(112) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB46_6scalarNtB5s_11ScalarValue13iter_to_arrayB1D_Esh_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts0EENCINvMs3_NtB3P_6scalarNtB5b_11ScalarValue13iter_to_arrayB1m_Esh_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20356, !noalias !20361, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
end_hunk_5
begin_hunk_6_@_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_EsC_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_EsC_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20752, !noalias !20757, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20752, !noalias !20757, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20752, !noalias !20757, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_EsD_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20760, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_EsD_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptionlEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_EsD_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20763, !noalias !20768, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20763, !noalias !20768, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20763, !noalias !20768, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_EsE_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 16 dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20771)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20774
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 16, !alias.scope !20771, !noalias !20776, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_EsE_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtBaM_5Break0E0BaM_E0IBaN_BaM_EEB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(128) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !20776
  %i.e = load i64, ptr %i.b, align 8, !range !1239, !noalias !20774, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 3
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB47_6scalarNtB5u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7J_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8V_ENcNtBaj_5Break0E0Baj_EB2g_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB47_6scalarNtB5u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7J_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8V_ENcNtBaj_5Break0E0Baj_EB2g_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB47_6scalarNtB5u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7J_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8V_ENcNtBaj_5Break0E0Baj_EB2g_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20774
  br label %bb.c

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB47_6scalarNtB5u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7J_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8V_ENcNtBaj_5Break0E0Baj_EB2g_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !20771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20774
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB47_6scalarNtB5u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7J_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8V_ENcNtBaj_5Break0E0Baj_EB2g_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB47_6scalarNtB5u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7J_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8V_ENcNtBaj_5Break0E0Baj_EB2g_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB47_6scalarNtB5u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7J_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8V_ENcNtBaj_5Break0E0Baj_EB2g_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 2, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB47_6scalarNtB5u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7J_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8V_ENcNtBaj_5Break0E0Baj_EB2g_.exit.thread ], [ 2, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableIBZ_INtNtNtB7_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2e_11transaction5stateNtB3i_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB47_6scalarNtB5u_11ScalarValue13iter_to_arrayB1E_EsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB47_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB7J_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB8V_ENcNtBaj_5Break0E0Baj_EB2g_.exit ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_EsE_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20777, !noalias !20782, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20777, !noalias !20782, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20777, !noalias !20782, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_EsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esa_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20785, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_Esa_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptionaEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esa_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20788, !noalias !20793, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20788, !noalias !20793, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20788, !noalias !20793, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esb_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20796, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_Esb_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptionsEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esb_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20799, !noalias !20804, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20799, !noalias !20804, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20799, !noalias !20804, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esc_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20807, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_Esc_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptionlEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esc_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20810, !noalias !20815, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20810, !noalias !20815, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20810, !noalias !20815, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esd_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20818, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_Esd_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptionxEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esd_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20821, !noalias !20826, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20821, !noalias !20826, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20821, !noalias !20826, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Ese_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20829, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_Ese_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptionhEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Ese_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20832, !noalias !20837, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20832, !noalias !20837, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20832, !noalias !20837, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Ese_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esf_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20840, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_Esf_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptiontEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esf_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20843, !noalias !20848, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20843, !noalias !20848, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20843, !noalias !20848, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esg_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20851, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_Esg_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptionmEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esg_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20854, !noalias !20859, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i = load ptr, ptr %i.e, align 16, !alias.scope !20854, !noalias !20859, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !20854, !noalias !20859, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 272
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esh_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2f_(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !20862, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1X_11transaction5stateNtB31_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3Q_6scalarNtB5d_11ScalarValue13iter_to_arrayB1n_Esh_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3Q_5error15DataFusionErrorEEB68_8try_folduNCINvNvB68_12try_for_each4callINtNtBc_6option6OptionyEINtNtNtBc_3ops12control_flow11ControlFlowB9o_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EEB1Z_(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableIBY_INtNtNtB6_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2d_11transaction5stateNtB3h_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB46_6scalarNtB5t_11ScalarValue13iter_to_arrayB1D_Esh_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB46_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableIBN_INtNtNtBb_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB1W_11transaction5stateNtB30_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB3P_6scalarNtB5c_11ScalarValue13iter_to_arrayB1m_Esh_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Y_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !20865, !noalias !20870, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
end_hunk_6
begin_hunk_7_@_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsC_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsC_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21261, !noalias !21266, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21261, !noalias !21266, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21261, !noalias !21266, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsC_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsD_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !21269, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEsD_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptionlEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsD_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21272, !noalias !21277, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21272, !noalias !21277, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21272, !noalias !21277, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsD_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsE_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 16 dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21280)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21283
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 16, !alias.scope !21280, !noalias !21285, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEsE_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB8E_5Break0E0B8E_E0IB8F_B8E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(128) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d), !noalias !21285
  %i.e = load i64, ptr %i.b, align 8, !range !1239, !noalias !21283, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 3
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2u_B2s_13iter_to_arrayINtB1J_3VecB2s_EEsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5B_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB6N_ENcNtB8b_5Break0E0B8b_ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2u_B2s_13iter_to_arrayINtB1J_3VecB2s_EEsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5B_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB6N_ENcNtB8b_5Break0E0B8b_ECs14kWLkQVSKO_14deltalake_core.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2u_B2s_13iter_to_arrayINtB1J_3VecB2s_EEsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5B_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB6N_ENcNtB8b_5Break0E0B8b_ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21283
  br label %bb.c

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2u_B2s_13iter_to_arrayINtB1J_3VecB2s_EEsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5B_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB6N_ENcNtB8b_5Break0E0B8b_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !noalias !21280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21283
  %.not = icmp eq i64 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2u_B2s_13iter_to_arrayINtB1J_3VecB2s_EEsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5B_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB6N_ENcNtB8b_5Break0E0B8b_ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2u_B2s_13iter_to_arrayINtB1J_3VecB2s_EEsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5B_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB6N_ENcNtB8b_5Break0E0B8b_ECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2u_B2s_13iter_to_arrayINtB1J_3VecB2s_EEsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5B_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB6N_ENcNtB8b_5Break0E0B8b_ECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 2, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2u_B2s_13iter_to_arrayINtB1J_3VecB2s_EEsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5B_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB6N_ENcNtB8b_5Break0E0B8b_ECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ 2, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtB3_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2u_B2s_13iter_to_arrayINtB1J_3VecB2s_EEsE_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2w_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5B_12try_for_each4callINtNtB7_6option6OptionNtNtCs7xHNgVo2C7m_12arrow_buffer8interval20IntervalMonthDayNanoEINtNtNtB7_3ops12control_flow11ControlFlowB6N_ENcNtB8b_5Break0E0B8b_ECs14kWLkQVSKO_14deltalake_core.exit ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsE_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21286, !noalias !21291, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21286, !noalias !21291, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21286, !noalias !21291, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsE_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsa_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !21294, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEsa_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptionaEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsa_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21297, !noalias !21302, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21297, !noalias !21302, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21297, !noalias !21302, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsa_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsb_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !21305, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEsb_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptionsEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsb_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21308, !noalias !21313, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21308, !noalias !21313, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21308, !noalias !21313, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsb_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsc_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !21316, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEsc_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptionlEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsc_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21319, !noalias !21324, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21319, !noalias !21324, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21319, !noalias !21324, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsc_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsd_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !21327, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEsd_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptionxEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsd_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21330, !noalias !21335, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21330, !noalias !21335, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21330, !noalias !21335, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsd_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEse_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !21338, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEse_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptionhEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEse_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21341, !noalias !21346, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21341, !noalias !21346, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21341, !noalias !21346, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEse_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsf_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !21349, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEsf_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptiontEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsf_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21352, !noalias !21357, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21352, !noalias !21357, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21352, !noalias !21357, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsf_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsg_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !21360, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEsg_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptionmEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsg_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21363, !noalias !21368, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
    i6 -14, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21363, !noalias !21368, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val10.i.i = load ptr, ptr %i.f, align 8, !alias.scope !21363, !noalias !21368, !nonnull !10, !noundef !10
  %i.g = ptrtoint ptr %.val10.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, %.sroa.0.0.i.i
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.b
  br label %bb.c

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsg_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.sink13.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i.i.sink, ptr %i.m, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsh_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !21371, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2d_B2b_13iter_to_arrayINtB1s_3VecB2b_EEsh_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2f_5error15DataFusionErrorEEB40_8try_folduNCINvNvB40_12try_for_each4callINtNtBc_6option6OptionyEINtNtNtBc_3ops12control_flow11ControlFlowB7g_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2t_B2r_13iter_to_arrayINtB1I_3VecB2r_EEsh_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2v_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(128) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_8peekable8PeekableINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENCINvMs3_B2c_B2a_13iter_to_arrayINtB1r_3VecB2a_EEsh_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 16, !range !534, !alias.scope !21374, !noalias !21379, !noundef !10
  %trunc.i.i = trunc nuw i128 %i.d to i6
  switch i6 %trunc.i.i, label %bb.d [
    i6 -13, label %bb.c
end_hunk_7
begin_hunk_8_@_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1i_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2y_8logstore11get_actions0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2y_6errors15DeltaTableErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2y_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21660)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21663
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !21660, !noalias !21665, !nonnull !10, !align !1180, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB12_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2i_8logstore11get_actions0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB2i_6errors15DeltaTableErrorEEB3G_8try_folduNCINvNvB3G_12try_for_each4callB2c_INtNtNtBc_3ops12control_flow11ControlFlowB2c_ENcNtB71_5Break0E0B71_E0IB72_B71_EEB2i_(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d), !noalias !21665
  %i.e = load i64, ptr %i.b, align 8, !range !5063, !noalias !21663, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 11
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1j_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2z_8logstore11get_actions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4callB2t_INtNtNtB7_3ops12control_flow11ControlFlowB2t_ENcNtB6y_5Break0E0B6y_EB2z_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1j_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2z_8logstore11get_actions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4callB2t_INtNtNtB7_3ops12control_flow11ControlFlowB2t_ENcNtB6y_5Break0E0B6y_EB2z_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1j_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2z_8logstore11get_actions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4callB2t_INtNtNtB7_3ops12control_flow11ControlFlowB2t_ENcNtB6y_5Break0E0B6y_EB2z_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21663
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1r_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1j_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2z_8logstore11get_actions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4callB2t_INtNtNtB7_3ops12control_flow11ControlFlowB2t_ENcNtB6y_5Break0E0B6y_EB2z_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx7, i64 264, i1 false), !noalias !21660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21663
  %.not = icmp eq i64 %i.e, 10
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1r_.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1j_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2z_8logstore11get_actions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4callB2t_INtNtNtB7_3ops12control_flow11ControlFlowB2t_ENcNtB6y_5Break0E0B6y_EB2z_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6, i64 264, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1r_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEEB1r_.exit: ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1j_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2z_8logstore11get_actions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4callB2t_INtNtNtB7_3ops12control_flow11ControlFlowB2t_ENcNtB6y_5Break0E0B6y_EB2z_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1j_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2z_8logstore11get_actions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4callB2t_INtNtNtB7_3ops12control_flow11ControlFlowB2t_ENcNtB6y_5Break0E0B6y_EB2z_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 10, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1j_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2z_8logstore11get_actions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4callB2t_INtNtNtB7_3ops12control_flow11ControlFlowB2t_ENcNtB6y_5Break0E0B6y_EB2z_.exit.thread ], [ 10, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1j_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2z_8logstore11get_actions0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB2z_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5i_12try_for_each4callB2t_INtNtNtB7_3ops12control_flow11ControlFlowB2t_ENcNtB6y_5Break0E0B6y_EB2z_.exit ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtCseqDwI8vvjGQ_10serde_json2de18StreamDeserializerNtNtB1i_4read9SliceReadNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNvNtB2y_8logstore11get_actions0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2y_6errors15DeltaTableErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !1180, !noundef !10
  %i.c = load i64, ptr %i.b, align 16, !range !203, !noundef !10
  %.not = icmp eq i64 %i.c, -9223372036854775711
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt16TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !21666, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt16TypeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1w_5error15DataFusionErrorEEB3i_8try_folduNCINvNvB3i_12try_for_each4callINtNtBc_6option6OptiontEINtNtB12_12control_flow11ControlFlowB6y_ENcNtB6W_5Break0E0B6W_E0IB6X_B6W_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt16TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8, !alias.scope !21669, !noalias !21672, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !alias.scope !21672, !noalias !21669, !noundef !10
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt32TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !21674, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt32TypeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1w_5error15DataFusionErrorEEB3i_8try_folduNCINvNvB3i_12try_for_each4callINtNtBc_6option6OptionmEINtNtB12_12control_flow11ControlFlowB6y_ENcNtB6W_5Break0E0B6W_E0IB6X_B6W_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt32TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8, !alias.scope !21669, !noalias !21672, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !alias.scope !21672, !noalias !21669, !noundef !10
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt64TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !21677, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt64TypeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1w_5error15DataFusionErrorEEB3i_8try_folduNCINvNvB3i_12try_for_each4callINtNtBc_6option6OptionyEINtNtB12_12control_flow11ControlFlowB6y_ENcNtB6W_5Break0E0B6W_E0IB6X_B6W_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt64TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8, !alias.scope !21669, !noalias !21672, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !alias.scope !21672, !noalias !21669, !noundef !10
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !21680, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1w_5error15DataFusionErrorEEB3f_8try_folduNCINvNvB3f_12try_for_each4callINtNtBc_6option6OptionaEINtNtB12_12control_flow11ControlFlowB6v_ENcNtB6T_5Break0E0B6T_E0IB6U_B6T_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8, !alias.scope !21669, !noalias !21672, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !alias.scope !21672, !noalias !21669, !noundef !10
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int16TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !21683, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int16TypeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1w_5error15DataFusionErrorEEB3g_8try_folduNCINvNvB3g_12try_for_each4callINtNtBc_6option6OptionsEINtNtB12_12control_flow11ControlFlowB6w_ENcNtB6U_5Break0E0B6U_E0IB6V_B6U_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i16, i16 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i16 %i.e, 3
  %i.f = extractvalue { i16, i16 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i16 2, i16 %i.e ; 2 uses
  %i.g = insertvalue { i16, i16 } poison, i16 %spec.select5.i, 0
  %.not = icmp eq i16 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i16 undef, i16 %i.f
  %i.h = insertvalue { i16, i16 } %i.g, i16 %.sroa.3.0, 1
  ret { i16, i16 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int16TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8, !alias.scope !21669, !noalias !21672, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !alias.scope !21672, !noalias !21669, !noundef !10
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !21686, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i32, i32 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1w_5error15DataFusionErrorEEB3g_8try_folduNCINvNvB3g_12try_for_each4callINtNtBc_6option6OptionlEINtNtB12_12control_flow11ControlFlowB6w_ENcNtB6U_5Break0E0B6U_E0IB6V_B6U_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 3
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i32 2, i32 %i.e ; 2 uses
  %i.g = insertvalue { i32, i32 } poison, i32 %spec.select5.i, 0
  %.not = icmp eq i32 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i32 undef, i32 %i.f
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8, !alias.scope !21669, !noalias !21672, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !alias.scope !21672, !noalias !21669, !noundef !10
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int64TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !21689, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i64, i64 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int64TypeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1w_5error15DataFusionErrorEEB3g_8try_folduNCINvNvB3g_12try_for_each4callINtNtBc_6option6OptionxEINtNtB12_12control_flow11ControlFlowB6w_ENcNtB6U_5Break0E0B6U_E0IB6V_B6U_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.e, 3
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i64 2, i64 %i.e ; 2 uses
  %i.g = insertvalue { i64, i64 } poison, i64 %spec.select5.i, 0
  %.not = icmp eq i64 %spec.select5.i, 2
  %.sroa.3.0 = select i1 %.not, i64 undef, i64 %i.f
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int64TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8, !alias.scope !21669, !noalias !21672, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !alias.scope !21672, !noalias !21669, !noundef !10
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i8, i8 } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !21692, !nonnull !10, !align !304, !noundef !10
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1w_5error15DataFusionErrorEEB3g_8try_folduNCINvNvB3g_12try_for_each4callINtNtBc_6option6OptionhEINtNtB12_12control_flow11ControlFlowB6w_ENcNtB6U_5Break0E0B6U_E0IB6V_B6U_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0          ; 2 uses
  %.not.i = icmp eq i8 %i.e, 3
  %i.f = extractvalue { i8, i8 } %i.d, 1
  %spec.select5.i = select i1 %.not.i, i8 2, i8 %i.e ; 2 uses
  %1 = insertvalue { i8, i8 } poison, i8 %spec.select5.i, 0
  %.not = icmp eq i8 %spec.select5.i, 2
  %.sroa.0.0 = select i1 %.not, i8 undef, i8 %i.f
  %i.g = insertvalue { i8, i8 } %1, i8 %.sroa.0.0, 1
  ret { i8, i8 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9UInt8TypeE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1M_5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8, !alias.scope !21669, !noalias !21672, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !alias.scope !21672, !noalias !21669, !noundef !10
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1R_6errors15DeltaTableErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21698
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !21695, !noalias !21700, !nonnull !10, !align !1180, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1B_6errors15DeltaTableErrorEEB32_8try_folduNCINvNvB32_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB12_12control_flow11ControlFlowB6j_ENcNtB72_5Break0E0B72_E0IB73_B72_EEB1B_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d), !noalias !21700
  %i.e = load i64, ptr %i.b, align 16, !range !6540, !noalias !21698, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 38
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1S_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4E_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1j_12control_flow11ControlFlowB5Q_ENcNtB6z_5Break0E0B6z_EB1S_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1S_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4E_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1j_12control_flow11ControlFlowB5Q_ENcNtB6z_5Break0E0B6z_EB1S_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1S_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4E_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1j_12control_flow11ControlFlowB5Q_ENcNtB6z_5Break0E0B6z_EB1S_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21698
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1S_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4E_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1j_12control_flow11ControlFlowB5Q_ENcNtB6z_5Break0E0B6z_EB1S_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx7, i64 104, i1 false), !noalias !21695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21698
  %.not = icmp eq i64 %i.e, 37
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1S_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4E_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1j_12control_flow11ControlFlowB5Q_ENcNtB6z_5Break0E0B6z_EB1S_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1S_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4E_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1j_12control_flow11ControlFlowB5Q_ENcNtB6z_5Break0E0B6z_EB1S_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1S_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4E_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1j_12control_flow11ControlFlowB5Q_ENcNtB6z_5Break0E0B6z_EB1S_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 37, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1S_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4E_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1j_12control_flow11ControlFlowB5Q_ENcNtB6z_5Break0E0B6z_EB1S_.exit.thread ], [ 37, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1S_6errors15DeltaTableErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4E_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1j_12control_flow11ControlFlowB5Q_ENcNtB6z_5Break0E0B6z_EB1S_.exit ]
  store i64 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter26try_construct_early_filter0s0_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1R_6errors15DeltaTableErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !1180, !noundef !10
  %i.c = load i64, ptr %i.b, align 16, !range !203, !noundef !10
  %.not = icmp eq i64 %i.c, -9223372036854775711
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i64, ptr %i.d, align 8, !alias.scope !21669, !noalias !21672, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.e, align 8, !alias.scope !21672, !noalias !21669, !noundef !10
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val1, i64 %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %spec.select.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB38_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nexts_00EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3e_(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21701
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !21701, !nonnull !10, !align !304, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB2S_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nexts_00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5h_8try_folduNCINvNvB5h_12try_for_each4callB1n_INtNtNtBc_3ops12control_flow11ControlFlowB1n_ENcNtB94_5Break0E0B94_E0IB95_B94_EEB2Y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
  %i.e = load i64, ptr %i.b, align 8, !range !343, !noalias !21701, !noundef !10
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !21701
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !21701
  %.sroa.0.0.i = select i1 %i.f, ptr %i.h, ptr null ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21701
  %.not.not = icmp eq ptr %.sroa.0.0.i, null
  %spec.select = select i1 %.not.not, ptr undef, ptr %i.j
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %spec.select, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB38_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nexts_00EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !304, !noundef !10
  %i.c = load i64, ptr %i.b, align 8, !range !1072, !noundef !10
  %.not = icmp eq i64 %i.c, 20
  %.val = load ptr, ptr %1, align 8, !nonnull !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !10
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %.sink = select i1 %.not, i64 %i.h, i64 0
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.j, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB34_16DeltaWriterErrorEENtNtNtB4_6traits8iterator8Iterator4nextB36_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 16               ; 6 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21704)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21707
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !21704, !noalias !21709, !nonnull !10, !align !1180, !noundef !10
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtB2O_16DeltaWriterErrorEEB4c_8try_folduNCINvNvB4c_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtBc_3ops12control_flow11ControlFlowB7l_ENcNtB8l_5Break0E0B8l_E0IB8m_B8l_EEB2Q_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 16 dereferenceable(96) %i.d), !noalias !21709
  %i.e = load i64, ptr %i.b, align 16, !range !4776, !noalias !21707, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.e, -9223372036854775791
  br i1 %.not.i, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB35_16DeltaWriterErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtB7_3ops12control_flow11ControlFlowB6S_ENcNtB7S_5Break0E0B7S_EB37_.exit.thread, label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB35_16DeltaWriterErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtB7_3ops12control_flow11ControlFlowB6S_ENcNtB7S_5Break0E0B7S_EB37_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB35_16DeltaWriterErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtB7_3ops12control_flow11ControlFlowB6S_ENcNtB7S_5Break0E0B7S_EB37_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21707
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB35_16DeltaWriterErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtB7_3ops12control_flow11ControlFlowB6S_ENcNtB7S_5Break0E0B7S_EB37_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx7, i64 88, i1 false), !noalias !21704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21707
  %.not = icmp eq i64 %i.e, -9223372036854775792
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB35_16DeltaWriterErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtB7_3ops12control_flow11ControlFlowB6S_ENcNtB7S_5Break0E0B7S_EB37_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB35_16DeltaWriterErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtB7_3ops12control_flow11ControlFlowB6S_ENcNtB7S_5Break0E0B7S_EB37_.exit, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB35_16DeltaWriterErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtB7_3ops12control_flow11ControlFlowB6S_ENcNtB7S_5Break0E0B7S_EB37_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ -9223372036854775792, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB35_16DeltaWriterErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtB7_3ops12control_flow11ControlFlowB6S_ENcNtB7S_5Break0E0B7S_EB37_.exit.thread ], [ -9223372036854775792, %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB35_16DeltaWriterErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5G_12try_for_each4callNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtB7_3ops12control_flow11ControlFlowB6S_ENcNtB7S_5Break0E0B7S_EB37_.exit ]
  store i64 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB34_16DeltaWriterErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB36_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !align !1180, !noundef !10
  %i.c = load i64, ptr %i.b, align 16, !range !10155, !noundef !10
  %.not = icmp eq i64 %i.c, -9223372036854775700
  %.val = load ptr, ptr %1, align 8, !nonnull !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !10
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %.sink = select i1 %.not, i64 %i.h, i64 0
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_8
