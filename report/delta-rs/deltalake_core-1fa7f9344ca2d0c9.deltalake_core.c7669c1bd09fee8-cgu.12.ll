inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCINvXs3_NtB4A_9tree_nodeINtB8_3VecBX_EINtB6E_17TreeNodeContainerBX_E12map_elementsQNCNCNCINvYBX_NtB6E_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B6v_EIB47_NtNtB1P_7convert10InfallibleB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6f_E0E0B5z_ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.b = alloca [128 x i8], align 16              ; 8 uses
  %.sroa.63.i = alloca [40 x i8], align 8         ; 9 uses
  %.sroa.8.i = alloca [64 x i8], align 16         ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not16 = icmp eq ptr %.promoted, %i.f
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.j, align 8, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.4.017 = phi ptr [ %3, %.lr.ph ], [ %i.ap, %bb.o ] ; 8 uses
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.r, %bb.o ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.q, i64 112, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 3 uses
  store ptr %i.r, ptr %i.g, align 8
  store ptr %2, ptr %i.d, align 16
  store ptr %.sroa.4.017, ptr %i.h, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14455)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14458
  store ptr %2, ptr %i.c, align 8, !noalias !14458
  store ptr %.sroa.4.017, ptr %i.k, align 8, !noalias !14458
  call void @llvm.experimental.noalias.scope.decl(metadata !14460)
  call void @llvm.experimental.noalias.scope.decl(metadata !14463)
  call void @llvm.experimental.noalias.scope.decl(metadata !14465)
  %i.s = load ptr, ptr %.val2, align 8, !alias.scope !14463, !noalias !14467, !nonnull !10, !noundef !10 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !range !833, !noalias !14468, !noundef !10
  %i.u = icmp eq i8 %i.t, 2
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14468
  %i.v = load ptr, ptr %i.l, align 8, !alias.scope !14463, !noalias !14467, !nonnull !10, !align !304, !noundef !10
  invoke void @_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E12map_elementsQQNCNCNCINvYBI_NtBV_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.b, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.noexc.i unwind label %bb.l, !noalias !14469

.noexc.i:                                         ; preds = %bb.c
  %i.w = load i64, ptr %i.b, align 16, !range !4218, !noalias !14468, !noundef !10 ; 2 uses
  %i.x = icmp eq i64 %i.w, 37
  br i1 %i.x, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.01.0.copyload2.i = load i64, ptr %i.i, align 16, !alias.scope !14470, !noalias !14471
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(64) %i.z, i64 64, i1 false)
  br label %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB8_17TreeNodeContainerB1o_E12map_elementsQNCNCNCINvYB1o_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.0..sroa_idx.i, i64 40, i1 false), !noalias !14458
  br label %bb.g

bb.f:                                             ; preds = %.noexc.i
  %i.aa = load ptr, ptr %i.m, align 8, !alias.scope !14463, !noalias !14467, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.0..sroa_idx.i, i64 40, i1 false), !noalias !14458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.0..sroa_idx.i, i64 64, i1 false), !noalias !14458
  %i.ab = load i8, ptr %i.n, align 16, !range !349, !noalias !14468, !noundef !10
  %i.ac = load i8, ptr %i.o, align 1, !range !833, !noalias !14468, !noundef !10
  store i8 %i.ac, ptr %i.s, align 1, !noalias !14468
  %i.ad = load i8, ptr %i.aa, align 1, !range !349, !noalias !14468, !noundef !10
  %i.ae = or i8 %i.ad, %i.ab
  store i8 %i.ae, ptr %i.aa, align 1, !noalias !14468
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14468
  br label %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB8_17TreeNodeContainerB1o_E12map_elementsQNCNCNCINvYB1o_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB8_17TreeNodeContainerB1o_E12map_elementsQNCNCNCINvYB1o_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g, %bb.d
  %.sroa.01.1.i = phi i64 [ %.sroa.01.0.copyload2.i, %bb.d ], [ %i.w, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14458
  store ptr %2, ptr %i.a, align 8, !noalias !14472
  store ptr %.sroa.4.017, ptr %i.p, align 8, !noalias !14472
  %i.af = icmp eq i64 %.sroa.01.1.i, 37
  br i1 %i.af, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB8_17TreeNodeContainerB1o_E12map_elementsQNCNCNCINvYB1o_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.ag, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.ah = load i64, ptr %.val.le, align 8, !range !1072, !alias.scope !14476, !noalias !14472, !noundef !10
  %i.ai = icmp eq i64 %i.ah, 20
  br i1 %i.ai, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.n unwind label %bb.j, !noalias !14472

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, i64 40, i1 false), !noalias !14458
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.a) #44
          to label %.body.i unwind label %bb.k, !noalias !14472

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14472
  unreachable

.body.i:                                          ; preds = %bb.l, %bb.j
  %eh.lpad-body8.i = phi { ptr, i32 } [ %i.al, %bb.l ], [ %i.aj, %bb.j ]
  resume { ptr, i32 } %eh.lpad-body8.i

bb.l:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.c) #44
          to label %.body.i unwind label %bb.m, !noalias !14458

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14458
  unreachable

._crit_edge:                                      ; preds = %bb.o, %bb.a, %bb.n
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.017, %bb.n ], [ %3, %bb.a ], [ %i.ap, %bb.o ]
  %storemerge = phi i64 [ 1, %bb.n ], [ 0, %bb.a ], [ 0, %bb.o ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.ao, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.n:                                             ; preds = %bb.h, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, i64 40, i1 false), !noalias !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %._crit_edge

bb.o:                                             ; preds = %_RNCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB8_17TreeNodeContainerB1o_E12map_elementsQNCNCNCINvYB1o_NtB8_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0Cs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %.sroa.01.1.i, ptr %.sroa.4.017, align 16, !noalias !14472
  %.sroa.67.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.017, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.67.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.63.i, i64 40, i1 false), !noalias !14458
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.017, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.i, i64 64, i1 false), !noalias !14458
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.4.017, i64 112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %i.r, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB6D_10SimplifierNtNtB11_8simplify15SimplifyContextENtNtB4A_9tree_node16TreeNodeRewriter4f_upsb_0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B6v_EIB47_NtNtB1P_7convert10InfallibleB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6f_E0E0B5z_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [112 x i8], align 16              ; 6 uses
  %i.l = alloca [112 x i8], align 16              ; 8 uses
  %i.m = alloca [64 x i8], align 16               ; 6 uses
  %i.n = alloca [64 x i8], align 16               ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [64 x i8], align 16               ; 9 uses
  %i.w = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.93.i = alloca [24 x i8], align 16        ; 9 uses
  %.sroa.11.sroa.4.i = alloca [64 x i8], align 16 ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.z, align 8        ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %.not69 = icmp eq ptr %.promoted, %i.aa
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.ab, align 8, !nonnull !10, !align !304, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.93.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.at
  %.sroa.0.071 = phi ptr [ %2, %.lr.ph ], [ %7, %bb.at ]
  %.sroa.4.070 = phi ptr [ %3, %.lr.ph ], [ %i.co, %bb.at ]
  %i.af = phi ptr [ %.promoted, %.lr.ph ], [ %i.ag, %bb.at ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112 ; 3 uses
  store ptr %i.ag, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.93.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14479
  store ptr %.sroa.0.071, ptr %i.x, align 8, !noalias !14479
  store ptr %.sroa.4.070, ptr %i.ac, align 8, !noalias !14479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !14479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.w, ptr noundef nonnull align 16 dereferenceable(112) %i.af, i64 112, i1 false)
  %.val.i = load ptr, ptr %.val2, align 8, !noalias !14479 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !14479
  %i.ah = load i64, ptr %i.w, align 16, !range !5593, !alias.scope !14483, !noalias !14486, !noundef !10 ; 2 uses
  %i.ai = icmp ne i64 %i.ah, 35
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 7
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !14488
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.v, ptr noundef nonnull align 16 dereferenceable(64) %i.ak, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14488
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void @_RNvNtCs90oH6M0AZ2B_22datafusion_expr_common5casts24try_cast_literal_to_type(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val.i)
          to label %bb.e unwind label %.loopexit, !noalias !14488

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le67 = load ptr, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.k, ptr noundef nonnull align 16 dereferenceable(112) %i.af, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14488
  store ptr %i.k, ptr %i.g, align 8, !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14488
  store ptr %i.g, ptr %i.f, align 8, !noalias !14488
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !14488
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @215, ptr noundef nonnull %i.f)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.z, !noalias !14488

.body72.i.i:                                      ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %.body.i.i
  %.pn57.i.i = phi { ptr, i32 } [ %.pn55.i.i, %.body.i.i ], [ %i.bf, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.v) #44
          to label %.thread.i.i unwind label %bb.x, !noalias !14488

.loopexit:                                        ; preds = %bb.c, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i.i

.loopexit.split-lp:                               ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i71.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body72.i.i

bb.e:                                             ; preds = %bb.c
  %i.am = load i128, ptr %i.m, align 16, !range !14489, !noalias !14488, !noundef !10
  %.not.i.i = icmp eq i128 %i.am, 50
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.n, ptr noundef nonnull align 16 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !14488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14488
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr7literal3litNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.l, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(64) %i.n)
          to label %bb.h unwind label %.loopexit, !noalias !14488

bb.g:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le65 = load ptr, ptr %i.an, align 8       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !14488
  store ptr %.val.i, ptr %i.r, align 8, !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !14488
  store ptr %i.v, ptr %i.q, align 8, !noalias !14488
  %.sroa.451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXsh_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.451.0..sroa_idx.i.i, align 8, !noalias !14488
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.ao, align 8, !noalias !14488
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !14488
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @214, ptr noundef nonnull %i.q)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit68.i.i unwind label %.loopexit.split-lp, !noalias !14488

bb.h:                                             ; preds = %bb.f
  %.sroa.01.0.copyload.i = load i64, ptr %i.l, align 16, !noalias !14490 ; 2 uses
  %.sroa.62.0.copyload.i = load i64, ptr %.sroa.62.0..sroa_idx.i, align 8, !noalias !14490 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.93.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.93.0..sroa_idx.i, i64 24, i1 false), !noalias !14479
  %.sroa.11.sroa.0.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !14490 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.11.sroa.4.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i, i64 64, i1 false), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14488
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.v)
          to label %bb.i unwind label %.thread14.i.i.loopexit, !noalias !14488

.thread14.i.i.loopexit:                           ; preds = %bb.h
  %lpad.loopexit20 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread14.i.i.loopexit.split-lp:                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit74.i.i
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14488
  call void @llvm.experimental.noalias.scope.decl(metadata !14491)
  %i.ap = load ptr, ptr %i.ad, align 16, !alias.scope !14494, !noalias !14486, !noundef !10 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.al, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !14495
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.al

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #48
          to label %bb.al unwind label %.loopexit23, !noalias !14479

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit68.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !14488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !14488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !14488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14488
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.m unwind label %bb.l, !noalias !14488

.body.i.i:                                        ; preds = %bb.q, %bb.p, %bb.l
  %.pn55.i.i = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %i.at, %bb.l ], [ %i.bd, %bb.q ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #44
          to label %.body72.i.i unwind label %bb.x, !noalias !14488

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.n, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit68.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.m:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit68.i.i
  %i.au = load i64, ptr %i.c, align 8, !range !343, !noalias !14488, !noundef !10
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !59, !noalias !14488, !noundef !10 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.av, label %bb.n, label %bb.o, !prof !49

bb.n:                                             ; preds = %bb.m
  %i.az = load i64, ptr %i.ay, align 8, !noalias !14488
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #46
          to label %bb.y unwind label %bb.l, !noalias !14488

bb.o:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !14488, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14488
  store i64 %i.ax, ptr %i.p, align 8, !noalias !14488
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ba, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !14488
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14488
  store ptr %i.t, ptr %i.o, align 8, !noalias !14488
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !14488
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.bb, align 8, !noalias !14488
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !14488
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @146, ptr noundef nonnull %i.o)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit69.i.i unwind label %bb.p, !noalias !14488

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #44
          to label %.body.i.i unwind label %bb.x, !noalias !14488

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit69.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !14488
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.q, !noalias !14488

bb.q:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit69.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i.i unwind label %bb.r, !noalias !14488

bb.r:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14488
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit69.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.l, !noalias !14488
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_INtNtNtB1P_3ops12control_flow11ControlFlowIB47_B2L_zEB2L_ENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB6D_10SimplifierNtNtB11_8simplify15SimplifyContextENtNtB4A_9tree_node16TreeNodeRewriter4f_upsb_0NCINvXB3w_INtB3w_12GenericShuntINtB3u_3MapBI_B6v_EIB47_NtNtB1P_7convert10InfallibleB4w_EEB1H_8try_foldB2L_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6f_E0E0B5z_ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body72.i.i unwind label %bb.t, !noalias !14488

bb.t:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14488
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i71.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit74.i.i unwind label %.loopexit.split-lp, !noalias !14488

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit74.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i71.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.93.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !14479
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(64) %i.v)
          to label %bb.u unwind label %.thread14.i.i.loopexit.split-lp, !noalias !14488

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit74.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !14488
  call void @llvm.experimental.noalias.scope.decl(metadata !14502)
  %i.bh = load ptr, ptr %i.ad, align 16, !alias.scope !14505, !noalias !14486, !noundef !10 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !14506
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #48
          to label %.thread unwind label %.loopexit.split-lp24, !noalias !14479

bb.x:                                             ; preds = %bb.ak, %bb.ae, %.body79.i.i, %.body84.i.i, %bb.p, %.body.i.i, %.body72.i.i
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14486
  unreachable

bb.y:                                             ; preds = %bb.ac, %bb.n
  unreachable

.body84.i.i:                                      ; preds = %bb.ah, %.body79.i.i, %bb.z
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body79.i.i ], [ %i.bm, %bb.z ], [ %i.bz, %bb.ah ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.k) #44
          to label %bb.aq unwind label %bb.x, !noalias !14488

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i83.i.i, %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body84.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !14488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14488
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ab unwind label %bb.aa, !noalias !14488

.body79.i.i:                                      ; preds = %bb.af, %bb.ae, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %i.bw, %bb.ae ], [ %i.bn, %bb.aa ], [ %i.bx, %bb.af ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #44
          to label %.body84.i.i unwind label %bb.x, !noalias !14488

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i78.i.i, %bb.ac, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body79.i.i

bb.ab:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bo = load i64, ptr %i.b, align 8, !range !343, !noalias !14488, !noundef !10
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !59, !noalias !14488, !noundef !10 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.ac, label %bb.ad, !prof !49

bb.ac:                                            ; preds = %bb.ab
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !14488
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bt) #46
          to label %bb.y unwind label %bb.aa, !noalias !14488

bb.ad:                                            ; preds = %bb.ab
  %i.bu = load ptr, ptr %i.bs, align 8, !noalias !14488, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14488
  store i64 %i.br, ptr %i.e, align 8, !noalias !14488
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bu, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !14488
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !noalias !14488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14488
  store ptr %i.i, ptr %i.d, align 8, !noalias !14488
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !noalias !14488
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.bv, align 8, !noalias !14488
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.445.0..sroa_idx.i.i, align 8, !noalias !14488
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @146, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit76.i.i unwind label %bb.ae, !noalias !14488

bb.ae:                                            ; preds = %bb.ad
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #44
          to label %.body79.i.i unwind label %bb.x, !noalias !14488

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit76.i.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14488
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i78.i.i unwind label %bb.af, !noalias !14488

bb.af:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit76.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body79.i.i unwind label %bb.ag, !noalias !14488

bb.ag:                                            ; preds = %bb.af
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14488
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i78.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit76.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit81.i.i unwind label %bb.aa, !noalias !14488

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit81.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i78.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14488
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i83.i.i unwind label %bb.ah, !noalias !14488

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit81.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body84.i.i unwind label %bb.ai, !noalias !14488

bb.ai:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14488
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i83.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit81.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit86.i.i unwind label %bb.z, !noalias !14488

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit86.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i83.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.93.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !14479
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.k)
          to label %.noexc6.i unwind label %.loopexit.split-lp24, !noalias !14479

.noexc6.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit86.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14488
  br label %.thread

.thread.i.i:                                      ; preds = %.thread14.i.i.loopexit, %.thread14.i.i.loopexit.split-lp, %.body72.i.i
  %.pn5910.i.i = phi { ptr, i32 } [ %.pn57.i.i, %.body72.i.i ], [ %lpad.loopexit20, %.thread14.i.i.loopexit ], [ %lpad.loopexit.split-lp21, %.thread14.i.i.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14513)
  %i.cb = load ptr, ptr %i.ad, align 16, !alias.scope !14516, !noalias !14486, !noundef !10 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %.thread.i.i
  %i.cd = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !14517
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #48
          to label %bb.aq unwind label %bb.x, !noalias !14486

.loopexit23:                                      ; preds = %bb.k
  %lpad.loopexit25 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp24:                             ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit86.i.i
  %lpad.loopexit.split-lp26 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.thread:                                          ; preds = %bb.u, %bb.v, %bb.w, %.noexc6.i
  %.val57 = phi ptr [ %.val.le65, %bb.u ], [ %.val.le65, %bb.v ], [ %.val.le65, %bb.w ], [ %.val.le67, %.noexc6.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14479
  %5 = load ptr, ptr %i.x, align 8, !noalias !14479, !noundef !10 ; 2 uses
  %6 = load ptr, ptr %i.ac, align 8, !noalias !14479, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14479
  store ptr %5, ptr %i.a, align 8, !noalias !14524
  store ptr %6, ptr %i.ae, align 8, !noalias !14524
  br label %bb.am

bb.al:                                            ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !14479
  %7 = load ptr, ptr %i.x, align 8, !noalias !14479, !noundef !10 ; 4 uses
  %8 = load ptr, ptr %i.ac, align 8, !noalias !14479, !noundef !10 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14479
  store ptr %7, ptr %i.a, align 8, !noalias !14528
  store ptr %8, ptr %i.ae, align 8, !noalias !14528
  %i.cf = icmp eq i64 %.sroa.01.0.copyload.i, 37
  br i1 %i.cf, label %.loopexit28, label %bb.at

.loopexit28:                                      ; preds = %bb.al
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.cg, align 8
  br label %bb.am

bb.am:                                            ; preds = %.loopexit28, %.thread
  %.val56 = phi ptr [ %.val57, %.thread ], [ %.val.le, %.loopexit28 ] ; 9 uses
  %9 = phi ptr [ %6, %.thread ], [ %8, %.loopexit28 ]
  %10 = phi ptr [ %5, %.thread ], [ %7, %.loopexit28 ]
  %.sroa.11.sroa.0.0.i16 = phi i64 [ undef, %.thread ], [ %.sroa.11.sroa.0.0.copyload.i, %.loopexit28 ] ; 2 uses
  %.sroa.62.0.i15 = phi i64 [ 6, %.thread ], [ %.sroa.62.0.copyload.i, %.loopexit28 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val56) ]
  %i.ch = load i64, ptr %.val56, align 8, !range !1072, !alias.scope !14530, !noalias !14528, !noundef !10
  %i.ci = icmp eq i64 %i.ch, 20
  br i1 %i.ci, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val56)
          to label %bb.as unwind label %bb.ao, !noalias !14528

bb.ao:                                            ; preds = %bb.an
  %i.cj = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.62.0.i15, ptr %.val56, align 8, !noalias !14533
  %.sroa.6.sroa.6.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val56, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6.0..8.val.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.93.i, i64 24, i1 false), !noalias !14479
  %.sroa.6.sroa.7.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val56, i64 32
  store i64 %.sroa.11.sroa.0.0.i16, ptr %.sroa.6.sroa.7.0..8.val.sroa_idx.i, align 8, !noalias !14533
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.a) #44
          to label %.body.i unwind label %bb.ap, !noalias !14528

bb.ap:                                            ; preds = %bb.ao
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14528
  unreachable

.body.i:                                          ; preds = %bb.aq, %bb.ao
  %eh.lpad-body12.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.aq ], [ %i.cj, %bb.ao ]
  resume { ptr, i32 } %eh.lpad-body12.i

bb.aq:                                            ; preds = %.loopexit23, %.loopexit.split-lp24, %bb.ak, %bb.aj, %.thread.i.i, %.body84.i.i
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %.pn.pn.i.i, %.body84.i.i ], [ %.pn5910.i.i, %bb.ak ], [ %.pn5910.i.i, %bb.aj ], [ %.pn5910.i.i, %.thread.i.i ], [ %lpad.loopexit25, %.loopexit23 ], [ %lpad.loopexit.split-lp26, %.loopexit.split-lp24 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.x) #44
          to label %.body.i unwind label %bb.ar, !noalias !14479

bb.ar:                                            ; preds = %bb.aq
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14479
  unreachable

._crit_edge:                                      ; preds = %bb.at, %bb.a, %bb.as
  %.sroa.0.0.lcssa.sink = phi ptr [ %10, %bb.as ], [ %2, %bb.a ], [ %7, %bb.at ]
  %.sroa.4.0.lcssa.sink = phi ptr [ %9, %bb.as ], [ %3, %bb.a ], [ %i.co, %bb.at ]
  %storemerge = phi i64 [ 1, %bb.as ], [ 0, %bb.a ], [ 0, %bb.at ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.lcssa.sink, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.cn, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.as:                                            ; preds = %bb.am, %bb.an
  store i64 %.sroa.62.0.i15, ptr %.val56, align 8, !noalias !14533
  %.sroa.6.sroa.6.0..8.val.sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.val56, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6.0..8.val.sroa_idx6.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.93.i, i64 24, i1 false), !noalias !14479
  %.sroa.6.sroa.7.0..8.val.sroa_idx8.i = getelementptr inbounds nuw i8, ptr %.val56, i64 32
  store i64 %.sroa.11.sroa.0.0.i16, ptr %.sroa.6.sroa.7.0..8.val.sroa_idx8.i, align 8, !noalias !14533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.93.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.4.i)
  br label %._crit_edge

bb.at:                                            ; preds = %bb.al
  store i64 %.sroa.01.0.copyload.i, ptr %8, align 16, !noalias !14528
  %.sroa.67.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.62.0.copyload.i, ptr %.sroa.67.16..sroa_idx.i.i, align 8, !noalias !14533
  %.sroa.6.sroa.6.0..sroa.67.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6.0..sroa.67.16..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.93.i, i64 24, i1 false), !noalias !14479
  %.sroa.6.sroa.7.0..sroa.67.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %.sroa.11.sroa.0.0.copyload.i, ptr %.sroa.6.sroa.7.0..sroa.67.16..sroa_idx.i.sroa_idx.i, align 8, !noalias !14533
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.11.sroa.4.i, i64 64, i1 false), !noalias !14479
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14479
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.93.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.4.i)
  %.not = icmp eq ptr %i.ag, %i.aa
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_12try_for_each4callBX_INtNtB1P_6result6ResultuNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvNtB11_5utils30group_window_expr_by_sort_keysINtB8_3VecBX_EE0E0B3j_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [112 x i8], align 16              ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [112 x i8], align 16              ; 11 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.q, align 8        ; 2 uses
  %.not28 = icmp eq ptr %.promoted, %i.p
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %i.y = phi ptr [ %.promoted, %.lr.ph ], [ %i.z, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.n, ptr noundef nonnull align 16 dereferenceable(112) %i.y, i64 112, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 3 uses
  store ptr %i.z, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14534
  %i.aa = load i64, ptr %i.n, align 16, !range !5593, !alias.scope !14538, !noalias !14541, !noundef !10 ; 2 uses
  %i.ab = icmp ne i64 %i.aa, 35
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.aa, 27
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.r, align 8, !alias.scope !14538, !noalias !14541, !nonnull !10, !noundef !10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14543
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14543
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !14543, !nonnull !10, !noundef !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !14543, !noundef !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !14543, !nonnull !10, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.al = load i64, ptr %i.ak, align 16, !noalias !14543, !noundef !10
  invoke void @_RNvNtCs8VI8w5SIoU4_15datafusion_expr5utils17generate_sort_key(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.af, i64 noundef %i.ah, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.aj, i64 noundef %i.al)
          to label %bb.e unwind label %.body54.thread13.i.i.loopexit, !noalias !14543

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14543
  store ptr %i.n, ptr %i.h, align 8, !noalias !14543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14543
  store ptr %i.h, ptr %i.d, align 8, !noalias !14543
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !14543
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @151, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %.body54.thread13.i.i.loopexit.split-lp, !noalias !14541

.thread16.i.i:                                    ; preds = %.thread20.i.i
  br i1 %.sroa.013.3.lpad-body24.i.i, label %.thread.i.i, label %.body54.thread10.i.i

.body54.thread13.i.i.loopexit:                    ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.body54.thread13.i.i.loopexit.split-lp:           ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i66.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.e:                                             ; preds = %bb.c
  %i.am = load i64, ptr %i.l, align 8, !range !1072, !noalias !14543, !noundef !10 ; 2 uses
  %.not.i.i = icmp eq i64 %i.am, 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !14543
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.623.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.623.0.copyload.i.i = load i64, ptr %.sroa.623.0..sroa_idx.i.i, align 8, !noalias !14543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14543
  br label %bb.ai

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !14543
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %i.an = load ptr, ptr %i.t, align 8, !noalias !14543, !nonnull !10, !noundef !10 ; 2 uses
  %i.ao = load i64, ptr %i.u, align 8, !noalias !14543, !noundef !10 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ao, 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14544)
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.ar = load i64, ptr %i.v, align 8, !alias.scope !14544, !noalias !14547, !noundef !10 ; 2 uses
  %i.as = load ptr, ptr %i.w, align 8, !alias.scope !14544, !noalias !14547, !nonnull !10
  br label %bb.h

bb.h:                                             ; preds = %_RNCNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils30group_window_expr_by_sort_keysINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_4expr4ExprEE00Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i, %.lr.ph.i.i.i
  %i.at = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.au, %_RNCNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils30group_window_expr_by_sort_keysINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_4expr4ExprEE00Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noalias !14549, !noundef !10
  %i.ax = icmp eq i64 %i.aw, %i.ar
  br i1 %i.ax, label %bb.i, label %_RNCNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils30group_window_expr_by_sort_keysINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_4expr4ExprEE00Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !14549, !nonnull !10, !noundef !10
  %i.ba = invoke noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.az, ptr noundef nonnull %i.as, i64 noundef %i.ar)
          to label %.noexc.i.i unwind label %.thread26.i.i, !noalias !14543

.noexc.i.i:                                       ; preds = %bb.i
  br i1 %i.ba, label %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBV_NtB1u_4ExprEEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvNtB1w_5utils30group_window_expr_by_sort_keysB2e_E00ECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %_RNCNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils30group_window_expr_by_sort_keysINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_4expr4ExprEE00Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i

_RNCNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils30group_window_expr_by_sort_keysINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_4expr4ExprEE00Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i: ; preds = %.noexc.i.i, %bb.h
  %i.bb = icmp eq ptr %i.au, %i.ap
  br i1 %i.bb, label %.loopexit.i.i, label %bb.h

.thread26.i.i:                                    ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.thread20.i.i

_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBV_NtB1u_4ExprEEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvNtB1w_5utils30group_window_expr_by_sort_keysB2e_E00ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.k, ptr noundef nonnull align 16 dereferenceable(112) %i.n, i64 112, i1 false), !noalias !14541
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !14550, !noalias !14553, !noundef !10 ; 3 uses
  %i.bg = load i64, ptr %i.bd, align 8, !range !312, !alias.scope !14550, !noalias !14553, !noundef !10
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBV_NtB1u_4ExprEEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvNtB1w_5utils30group_window_expr_by_sort_keysB2e_E00ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %bb.n unwind label %bb.k, !noalias !14553

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.k) #44
          to label %.thread20.i.i unwind label %bb.l, !noalias !14543

bb.l:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !14543
  unreachable

.loopexit.i.i:                                    ; preds = %_RNCNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils30group_window_expr_by_sort_keysINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_4expr4ExprEE00Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !14543
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14543
  %i.bk = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 112, i64 noundef range(i64 8, 17) 16) #41, !noalias !14543 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.m, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i, !prof !49

bb.m:                                             ; preds = %.loopexit.i.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #46
          to label %.noexc52.i.i unwind label %bb.r, !noalias !14543

.noexc52.i.i:                                     ; preds = %bb.m
  unreachable
end_hunk_1
