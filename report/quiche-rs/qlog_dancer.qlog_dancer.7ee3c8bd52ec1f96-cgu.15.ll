Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.15?download=true
inline.NumInlined: 1411
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1C_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1G_5coord5ShiftE20split_by_breakpointsllRSlB4e_Es_0ENCINvMB1C_NtB1C_4Rect10split_gridIBO_B11_NCB1v_0EBX_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5l_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6y_3VeclE14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(ptr poison, !24759, !DIExpression(), !24628)
    #dbg_value(ptr poison, !24765, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24632)
    #dbg_value(ptr poison, !24771, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !24632)
    #dbg_declare(ptr poison, !24769, !DIExpression(), !24633)
    #dbg_value(i32 %.val27.i.i, !24770, !DIExpression(), !24632)
    #dbg_value(ptr poison, !24773, !DIExpression(DW_OP_deref, DW_OP_deref), !24636)
    #dbg_value(i32 %.val27.i.i, !24777, !DIExpression(), !24636)
  %i.n = load ptr, ptr %i.b, align 8, !dbg !24834, !noalias !24779, !nonnull !3744, !align !10455, !noundef !3744
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !24834
  %i.p = load i32, ptr %i.o, align 4, !dbg !24834, !noalias !24779, !noundef !3744
  %i.q = add i32 %i.p, %.val27.i.i, !dbg !24835
    #dbg_value(ptr poison, !24780, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24643)
    #dbg_declare(ptr poison, !24785, !DIExpression(), !24644)
    #dbg_value(i32 %i.q, !24784, !DIExpression(), !24643)
    #dbg_value(ptr poison, !24789, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !24647)
    #dbg_value(ptr poison, !24794, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24647)
    #dbg_value(i32 %i.q, !24793, !DIExpression(), !24647)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.l, !dbg !24836
  store i32 %i.q, ptr %i.r, align 4, !dbg !24837, !noalias !24798
    #dbg_value(i64 %.sroa.01.0.i.i, !24727, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !24614)
    #dbg_value(i64 %.sroa.01.0.i.i, !24745, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !24608)
    #dbg_value(i64 %.sroa.01.0.i.i, !24751, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !24622)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i, !dbg !24831
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4, !dbg !24831
  %.val27.i.i.1 = load i32, ptr %i.t, align 4, !dbg !24833, !noalias !24753, !noundef !3744
    #dbg_declare(ptr poison, !24758, !DIExpression(), !24629)
    #dbg_declare(ptr poison, !24769, !DIExpression(), !24633)
    #dbg_value(i32 %.val27.i.i.1, !24770, !DIExpression(), !24632)
    #dbg_value(i32 %.val27.i.i.1, !24777, !DIExpression(), !24636)
  %i.u = load ptr, ptr %i.b, align 8, !dbg !24834, !noalias !24779, !nonnull !3744, !align !10455, !noundef !3744
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4, !dbg !24834
  %i.w = load i32, ptr %i.v, align 4, !dbg !24834, !noalias !24779, !noundef !3744
  %i.x = add i32 %i.w, %.val27.i.i.1, !dbg !24835
    #dbg_declare(ptr poison, !24785, !DIExpression(), !24644)
    #dbg_value(i32 %i.x, !24784, !DIExpression(), !24643)
    #dbg_value(i32 %i.x, !24793, !DIExpression(), !24647)
  %i.y = getelementptr [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.l, !dbg !24836
  %i.z = getelementptr i8, ptr %i.y, i64 4, !dbg !24836
  store i32 %i.x, ptr %i.z, align 4, !dbg !24837, !noalias !24798
  %i.aa = add i64 %i.l, 2, !dbg !24838            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.i, 2, !dbg !24839 ; 2 uses
    #dbg_value(i64 %i.ab, !24727, !DIExpression(), !24614)
    #dbg_value(i64 %i.ab, !24745, !DIExpression(), !24608)
  %niter.next.1 = add i64 %niter, 2, !dbg !24840  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !24840
  br i1 %niter.ncmp.1, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, label %bb.c, !dbg !24840

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.ac = and i64 %i.i, 4, !dbg !24840
  %lcmp.mod.not = icmp eq i64 %i.ac, 0, !dbg !24840
  br i1 %lcmp.mod.not, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.epil.preheader, !dbg !24840

.epil.preheader:                                  ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.aa, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.j to i1, !dbg !24840
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !24840
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24745, !DIExpression(), !24608)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24727, !DIExpression(), !24614)
    #dbg_value(ptr %i.c, !24750, !DIExpression(), !24622)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24751, !DIExpression(), !24622)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.epil.init, !dbg !24831
  %.val27.i.i.epil = load i32, ptr %i.ad, align 4, !dbg !24833, !noalias !24753, !noundef !3744
    #dbg_value(ptr poison, !24754, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24628)
    #dbg_value(ptr poison, !24760, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32), !24628)
    #dbg_declare(ptr poison, !24758, !DIExpression(), !24629)
    #dbg_value(ptr poison, !24759, !DIExpression(), !24628)
    #dbg_value(ptr poison, !24765, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24632)
    #dbg_value(ptr poison, !24771, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !24632)
    #dbg_declare(ptr poison, !24769, !DIExpression(), !24633)
    #dbg_value(i32 %.val27.i.i.epil, !24770, !DIExpression(), !24632)
    #dbg_value(ptr poison, !24773, !DIExpression(DW_OP_deref, DW_OP_deref), !24636)
    #dbg_value(i32 %.val27.i.i.epil, !24777, !DIExpression(), !24636)
  %i.ae = load ptr, ptr %i.b, align 8, !dbg !24834, !noalias !24779, !nonnull !3744, !align !10455, !noundef !3744
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4, !dbg !24834
  %i.ag = load i32, ptr %i.af, align 4, !dbg !24834, !noalias !24779, !noundef !3744
  %i.ah = add i32 %i.ag, %.val27.i.i.epil, !dbg !24835
    #dbg_value(ptr poison, !24780, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24643)
    #dbg_declare(ptr poison, !24785, !DIExpression(), !24644)
    #dbg_value(i32 %i.ah, !24784, !DIExpression(), !24643)
    #dbg_value(ptr poison, !24789, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !24647)
    #dbg_value(ptr poison, !24794, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24647)
    #dbg_value(i32 %i.ah, !24793, !DIExpression(), !24647)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.epil.init, !dbg !24836
  store i32 %i.ah, ptr %i.ai, align 4, !dbg !24837, !noalias !24798
  %i.aj = add i64 %.epil.init, 1, !dbg !24838
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24727, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24614)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24745, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24608)
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %.epil.preheader, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.aa, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %i.aj, %.epil.preheader ], !dbg !24841
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !24841, !noalias !24753
  ret void, !dbg !24842
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1C_14TriangleMarkerTdlElEINtB1E_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2F_ENCINvMs6_NtNtB1G_7drawing4areaINtB4N_11DrawingAreaB31_INtNtNtNtB1G_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5D_8ranged1d5types7numeric14RangedCoordf64NtB6n_14RangedCoordi32EE4drawB2i_NtB1E_16BackendCoordOnlyE0EE0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8l_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9B_3VecB9o_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24845 {
bb.a:
    #dbg_declare(ptr %0, !24982, !DIExpression(), !24988)
    #dbg_declare(ptr poison, !24983, !DIExpression(), !24989)
    #dbg_declare(ptr %1, !24984, !DIExpression(), !24990)
    #dbg_declare(ptr %1, !24991, !DIExpression(), !25003)
  %i.a = load ptr, ptr %0, align 8, !dbg !25145, !nonnull !3744, !noundef !3744 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25145
  %i.c = load ptr, ptr %i.b, align 8, !dbg !25145, !nonnull !3744, !noundef !3744 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25146
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !dbg !25146 ; 5 uses
    #dbg_value(ptr %.sroa.01.0.copyload, !24997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25004)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25146
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !25146 ; 5 uses
    #dbg_value(ptr %.sroa.42.0.copyload, !24997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25004)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25146
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !25146 ; 5 uses
    #dbg_value(ptr %.sroa.53.0.copyload, !24997, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25004)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !25147 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !25005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25013)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25147
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25147 ; 7 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !25005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25013)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25147
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !25147 ; 4 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !25005, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25013)
    #dbg_value(ptr %.sroa.01.0.copyload, !25005, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25013)
    #dbg_value(ptr %.sroa.42.0.copyload, !25005, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25013)
    #dbg_value(ptr %.sroa.53.0.copyload, !25005, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25013)
    #dbg_value(ptr %i.a, !25008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24850)
    #dbg_value(ptr %i.c, !25008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24850)
    #dbg_declare(ptr poison, !25009, !DIExpression(), !24851)
    #dbg_value(ptr %.sroa.0.0.copyload, !25014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24862)
    #dbg_value(i64 %.sroa.4.0.copyload, !25014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24862)
    #dbg_value(ptr %.sroa.5.0.copyload, !25014, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24862)
    #dbg_value(ptr %.sroa.01.0.copyload, !25014, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24862)
    #dbg_value(ptr %.sroa.42.0.copyload, !25014, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !24862)
    #dbg_value(ptr %.sroa.53.0.copyload, !25014, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !24862)
    #dbg_value(ptr %i.a, !25020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24863)
    #dbg_value(ptr %i.c, !25020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24863)
    #dbg_declare(ptr poison, !25021, !DIExpression(), !24864)
    #dbg_declare(ptr poison, !25024, !DIExpression(), !24865)
    #dbg_value(i64 4, !25032, !DIExpression(), !24873)
    #dbg_value(i64 1, !25042, !DIExpression(), !24876)
    #dbg_value(ptr %i.c, !25023, !DIExpression(), !24877)
    #dbg_value(ptr poison, !25045, !DIExpression(), !24880)
    #dbg_value(ptr poison, !25046, !DIExpression(), !24881)
  %i.e = icmp eq ptr %i.a, %i.c, !dbg !25148
  br i1 %i.e, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !25149

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !25025, !DIExpression(), !24882)
    #dbg_value(i64 0, !25043, !DIExpression(), !24876)
    #dbg_value(ptr %i.c, !25028, !DIExpression(), !24883)
    #dbg_value(ptr %i.c, !25039, !DIExpression(), !24884)
    #dbg_value(ptr %i.a, !25040, !DIExpression(), !24884)
    #dbg_value(ptr %i.c, !25036, !DIExpression(), !24885)
    #dbg_value(ptr %i.a, !25037, !DIExpression(), !24885)
    #dbg_value(ptr %i.a, !25034, !DIExpression(), !24886)
    #dbg_value(ptr %i.c, !25033, !DIExpression(), !24886)
  %i.f = ptrtoint ptr %i.c to i64, !dbg !25150
  %i.g = ptrtoint ptr %i.a to i64, !dbg !25150
  %i.h = sub i64 %i.f, %i.g, !dbg !25150          ; 3 uses
  %i.i = lshr i64 %i.h, 2, !dbg !25150            ; 4 uses
    #dbg_value(i64 %i.i, !25026, !DIExpression(), !24887)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.h, 16, !dbg !25151
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !25151

vector.memcheck:                                  ; preds = %bb.b
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !25151
  %i.k = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.j, !dbg !25151 ; 4 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.i, !dbg !25151
  %i.m = shl i64 %i.l, 3, !dbg !25151
  %i.n = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.m, !dbg !25151 ; 4 uses
  %i.o = and i64 %i.h, -4, !dbg !25151
  %i.p = getelementptr i8, ptr %i.a, i64 %i.o, !dbg !25151
  %i.q = getelementptr i8, ptr %.sroa.01.0.copyload, i64 4, !dbg !25151
  %i.r = getelementptr i8, ptr %.sroa.42.0.copyload, i64 4, !dbg !25151
  %i.s = getelementptr i8, ptr %.sroa.53.0.copyload, i64 4, !dbg !25151
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !25151
  %bound1 = icmp ult ptr %i.a, %i.n, !dbg !25151
  %found.conflict = and i1 %bound0, %bound1, !dbg !25151
  %bound021 = icmp ult ptr %i.k, %i.q, !dbg !25151
  %bound122 = icmp ult ptr %.sroa.01.0.copyload, %i.n, !dbg !25151
  %found.conflict23 = and i1 %bound021, %bound122, !dbg !25151
  %conflict.rdx = or i1 %found.conflict, %found.conflict23, !dbg !25151
  %bound024 = icmp ult ptr %i.k, %i.r, !dbg !25151
  %bound125 = icmp ult ptr %.sroa.42.0.copyload, %i.n, !dbg !25151
  %found.conflict26 = and i1 %bound024, %bound125, !dbg !25151
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26, !dbg !25151
  %bound028 = icmp ult ptr %i.k, %i.s, !dbg !25151
  %bound129 = icmp ult ptr %.sroa.53.0.copyload, %i.n, !dbg !25151
  %found.conflict30 = and i1 %bound028, %bound129, !dbg !25151
  %conflict.rdx31 = or i1 %conflict.rdx27, %found.conflict30, !dbg !25151
  br i1 %conflict.rdx31, label %scalar.ph.preheader, label %vector.ph, !dbg !25152

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4611686018427387902      ; 4 uses
  %i.t = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.u = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25153, !alias.scope !25048, !noalias !25049, !noundef !3744
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.u, i64 0, !dbg !25152
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25152
  %i.v = sitofp <2 x i32> %broadcast.splat to <2 x double>, !dbg !25154 ; 2 uses
  %i.w = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25155, !alias.scope !25079, !noalias !25049, !noundef !3744
  %broadcast.splatinsert32 = insertelement <2 x i32> poison, i32 %i.w, i64 0, !dbg !25152
  %broadcast.splat33 = shufflevector <2 x i32> %broadcast.splatinsert32, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25152
  %i.x = sitofp <2 x i32> %broadcast.splat33 to <2 x double>, !dbg !25156
  %i.y = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25157, !alias.scope !25080, !noalias !25049, !noundef !3744
  %broadcast.splatinsert34 = insertelement <2 x i32> poison, i32 %i.y, i64 0, !dbg !25152
  %broadcast.splat35 = shufflevector <2 x i32> %broadcast.splatinsert34, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25152
  %i.z = sitofp <2 x i32> %broadcast.splat35 to <2 x double>, !dbg !25158
  %i.aa = getelementptr [8 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !25152

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !25152 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !25159
  %wide.load = load <2 x i32>, ptr %i.ab, align 4, !dbg !25160, !alias.scope !25084, !noalias !25085
  %i.ac = sitofp <2 x i32> %wide.load to <2 x double>, !dbg !25161
  %i.ad = fmul nnan <2 x double> %i.ac, splat (double f0x400921FB54442D18), !dbg !25162
  %i.ae = fdiv <2 x double> %i.ad, splat (double 1.800000e+02), !dbg !25162
  %i.af = tail call { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ae), !dbg !25163 ; 2 uses
  %i.ag = extractvalue { <2 x double>, <2 x double> } %i.af, 0, !dbg !25163
  %i.ah = extractvalue { <2 x double>, <2 x double> } %i.af, 1, !dbg !25163
  %i.ai = fmul <2 x double> %i.ah, %i.v, !dbg !25164
  %i.aj = fadd <2 x double> %i.ai, %i.x, !dbg !25165
  %i.ak = fmul <2 x double> %i.ag, %i.v, !dbg !25166
  %i.al = fadd <2 x double> %i.ak, %i.z, !dbg !25167
  %i.am = getelementptr [8 x i8], ptr %i.aa, i64 %index, !dbg !25168
  %i.an = shufflevector <2 x double> %i.aj, <2 x double> %i.al, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !25169
  %i.ao = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %i.an), !dbg !25169
  %interleaved.vec = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f64(<4 x double> %i.ao), !dbg !25169
  store <4 x i32> %interleaved.vec, ptr %i.am, align 4, !dbg !25169, !alias.scope !25114, !noalias !25115
  %index.next = add nuw i64 %index, 2, !dbg !25152 ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec, !dbg !25170
  br i1 %i.ap, label %middle.block, label %vector.body, !dbg !25170, !llvm.loop !24934

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !25170
  br i1 %cmp.n, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !25170

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.t, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !25170

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.aq = phi i64 [ %i.bl, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !25159 ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bm, %scalar.ph ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !25152 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i.i, !25043, !DIExpression(), !24876)
    #dbg_value(i64 %.sroa.01.0.i.i, !25025, !DIExpression(), !24882)
    #dbg_value(ptr %i.a, !25081, !DIExpression(), !24935)
    #dbg_value(i64 %.sroa.01.0.i.i, !25082, !DIExpression(), !24935)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.i, !dbg !25159
  %.val27.i.i = load i32, ptr %i.ar, align 4, !dbg !25160, !noalias !25085, !noundef !3744
    #dbg_value(ptr poison, !25071, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24936)
    #dbg_declare(ptr poison, !25069, !DIExpression(), !24937)
    #dbg_value(ptr poison, !25070, !DIExpression(), !24936)
    #dbg_value(ptr poison, !25092, !DIExpression(), !24938)
    #dbg_value(ptr poison, !25091, !DIExpression(), !24938)
    #dbg_value(i32 %.val27.i.i, !25086, !DIExpression(), !24939)
  %i.as = sitofp i32 %.val27.i.i to double, !dbg !25161
  %i.at = fmul nnan double %i.as, f0x400921FB54442D18, !dbg !25162
  %i.au = fdiv double %i.at, 1.800000e+02, !dbg !25162
    #dbg_value(ptr poison, !25063, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24940)
    #dbg_value(ptr poison, !25064, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_LLVM_fragment, 0, 64), !24940)
    #dbg_declare(ptr poison, !25061, !DIExpression(), !24941)
    #dbg_value(double %i.au, !25062, !DIExpression(), !24940)
  %sincos.i.i.i.i.i = tail call { double, double } @llvm.sincos.f64(double %i.au), !dbg !25163 ; 2 uses
  %sin.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 0, !dbg !25163
  %cos.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 1, !dbg !25163
    #dbg_value(ptr poison, !25054, !DIExpression(DW_OP_deref, DW_OP_deref), !24942)
    #dbg_value(ptr poison, !25055, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !24942)
    #dbg_value(ptr poison, !25056, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !24942)
    #dbg_value(double %i.au, !25053, !DIExpression(), !24942)
    #dbg_value(double %i.au, !25094, !DIExpression(), !24943)
  %i.av = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25153, !noalias !25049, !noundef !3744
    #dbg_value(i32 %i.av, !25077, !DIExpression(), !24944)
  %i.aw = sitofp i32 %i.av to double, !dbg !25154 ; 2 uses
  %i.ax = fmul double %cos.i.i.i.i.i, %i.aw, !dbg !25164
  %i.ay = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25155, !noalias !25049, !noundef !3744
    #dbg_value(i32 %i.ay, !25077, !DIExpression(), !24945)
  %i.az = sitofp i32 %i.ay to double, !dbg !25156
  %i.ba = fadd double %i.ax, %i.az, !dbg !25165
    #dbg_value(double %i.ba, !25116, !DIExpression(), !24948)
    #dbg_value(double %i.ba, !25118, !DIExpression(), !24951)
  %i.bb = tail call double @llvm.ceil.f64(double %i.ba), !dbg !25171
  %i.bc = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.bb), !dbg !25165
    #dbg_value(i32 %i.av, !25077, !DIExpression(), !24953)
  %i.bd = fmul double %sin.i.i.i.i.i, %i.aw, !dbg !25166
  %i.be = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25157, !noalias !25049, !noundef !3744
    #dbg_value(i32 %i.be, !25077, !DIExpression(), !24954)
  %i.bf = sitofp i32 %i.be to double, !dbg !25158
  %i.bg = fadd double %i.bd, %i.bf, !dbg !25167
    #dbg_value(double %i.bg, !25116, !DIExpression(), !24956)
    #dbg_value(double %i.bg, !25118, !DIExpression(), !24958)
  %i.bh = tail call double @llvm.ceil.f64(double %i.bg), !dbg !25172
  %i.bi = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.bh), !dbg !25167
    #dbg_value(ptr poison, !25109, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24959)
    #dbg_declare(ptr poison, !25110, !DIExpression(), !24960)
    #dbg_value(i32 %i.bc, !25108, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24959)
    #dbg_value(i32 %i.bi, !25108, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !24959)
    #dbg_value(ptr poison, !25100, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !24961)
    #dbg_value(ptr poison, !25101, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24961)
    #dbg_value(i32 %i.bc, !25099, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24961)
    #dbg_value(i32 %i.bi, !25099, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !24961)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.aq, !dbg !25168 ; 2 uses
  store i32 %i.bc, ptr %i.bj, align 4, !dbg !25169, !noalias !25115
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4, !dbg !25169
  store i32 %i.bi, ptr %i.bk, align 4, !dbg !25169, !noalias !25115
  %i.bl = add i64 %i.aq, 1, !dbg !25173           ; 2 uses
  %i.bm = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !25174 ; 2 uses
    #dbg_value(i64 %i.bm, !25025, !DIExpression(), !24882)
    #dbg_value(i64 %i.bm, !25043, !DIExpression(), !24876)
  %i.bn = icmp eq i64 %i.bm, %i.i, !dbg !25170
  br i1 %i.bn, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !25170, !llvm.loop !24964

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %i.bl, %scalar.ph ], !dbg !25175
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !25175, !noalias !25085
  ret void, !dbg !25176
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1C_14TriangleMarkerTdyElEINtB1E_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2F_ENCINvMs6_NtNtB1G_7drawing4areaINtB4N_11DrawingAreaB31_INtNtNtNtB1G_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5D_8ranged1d5types7numeric14RangedCoordf64NtB6n_14RangedCoordu64EE4drawB2i_NtB1E_16BackendCoordOnlyE0EE0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8l_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9B_3VecB9o_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25179 {
bb.a:
    #dbg_declare(ptr %0, !25316, !DIExpression(), !25322)
    #dbg_declare(ptr poison, !25317, !DIExpression(), !25323)
    #dbg_declare(ptr %1, !25318, !DIExpression(), !25324)
    #dbg_declare(ptr %1, !25325, !DIExpression(), !25337)
  %i.a = load ptr, ptr %0, align 8, !dbg !25479, !nonnull !3744, !noundef !3744 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25479
  %i.c = load ptr, ptr %i.b, align 8, !dbg !25479, !nonnull !3744, !noundef !3744 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25480
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !dbg !25480 ; 5 uses
    #dbg_value(ptr %.sroa.01.0.copyload, !25331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25338)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25480
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !25480 ; 5 uses
    #dbg_value(ptr %.sroa.42.0.copyload, !25331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25338)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25480
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !25480 ; 5 uses
    #dbg_value(ptr %.sroa.53.0.copyload, !25331, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25338)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !25481 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !25339, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25347)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25481
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25481 ; 7 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !25339, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25347)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25481
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !25481 ; 4 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !25339, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25347)
    #dbg_value(ptr %.sroa.01.0.copyload, !25339, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25347)
    #dbg_value(ptr %.sroa.42.0.copyload, !25339, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25347)
    #dbg_value(ptr %.sroa.53.0.copyload, !25339, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25347)
    #dbg_value(ptr %i.a, !25342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25184)
    #dbg_value(ptr %i.c, !25342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25184)
    #dbg_declare(ptr poison, !25343, !DIExpression(), !25185)
    #dbg_value(ptr %.sroa.0.0.copyload, !25348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25196)
    #dbg_value(i64 %.sroa.4.0.copyload, !25348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25196)
    #dbg_value(ptr %.sroa.5.0.copyload, !25348, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25196)
    #dbg_value(ptr %.sroa.01.0.copyload, !25348, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25196)
    #dbg_value(ptr %.sroa.42.0.copyload, !25348, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25196)
    #dbg_value(ptr %.sroa.53.0.copyload, !25348, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25196)
    #dbg_value(ptr %i.a, !25354, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25197)
    #dbg_value(ptr %i.c, !25354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25197)
    #dbg_declare(ptr poison, !25355, !DIExpression(), !25198)
    #dbg_declare(ptr poison, !25358, !DIExpression(), !25199)
    #dbg_value(i64 4, !25366, !DIExpression(), !25207)
    #dbg_value(i64 1, !25376, !DIExpression(), !25210)
    #dbg_value(ptr %i.c, !25357, !DIExpression(), !25211)
    #dbg_value(ptr poison, !25379, !DIExpression(), !25214)
    #dbg_value(ptr poison, !25380, !DIExpression(), !25215)
  %i.e = icmp eq ptr %i.a, %i.c, !dbg !25482
  br i1 %i.e, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !25483

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !25359, !DIExpression(), !25216)
    #dbg_value(i64 0, !25377, !DIExpression(), !25210)
    #dbg_value(ptr %i.c, !25362, !DIExpression(), !25217)
    #dbg_value(ptr %i.c, !25373, !DIExpression(), !25218)
    #dbg_value(ptr %i.a, !25374, !DIExpression(), !25218)
    #dbg_value(ptr %i.c, !25370, !DIExpression(), !25219)
    #dbg_value(ptr %i.a, !25371, !DIExpression(), !25219)
    #dbg_value(ptr %i.a, !25368, !DIExpression(), !25220)
    #dbg_value(ptr %i.c, !25367, !DIExpression(), !25220)
  %i.f = ptrtoint ptr %i.c to i64, !dbg !25484
  %i.g = ptrtoint ptr %i.a to i64, !dbg !25484
  %i.h = sub i64 %i.f, %i.g, !dbg !25484          ; 3 uses
  %i.i = lshr i64 %i.h, 2, !dbg !25484            ; 4 uses
    #dbg_value(i64 %i.i, !25360, !DIExpression(), !25221)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.h, 16, !dbg !25485
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !25485

vector.memcheck:                                  ; preds = %bb.b
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !25485
  %i.k = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.j, !dbg !25485 ; 4 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.i, !dbg !25485
  %i.m = shl i64 %i.l, 3, !dbg !25485
  %i.n = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.m, !dbg !25485 ; 4 uses
  %i.o = and i64 %i.h, -4, !dbg !25485
  %i.p = getelementptr i8, ptr %i.a, i64 %i.o, !dbg !25485
  %i.q = getelementptr i8, ptr %.sroa.01.0.copyload, i64 4, !dbg !25485
  %i.r = getelementptr i8, ptr %.sroa.42.0.copyload, i64 4, !dbg !25485
  %i.s = getelementptr i8, ptr %.sroa.53.0.copyload, i64 4, !dbg !25485
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !25485
  %bound1 = icmp ult ptr %i.a, %i.n, !dbg !25485
  %found.conflict = and i1 %bound0, %bound1, !dbg !25485
  %bound021 = icmp ult ptr %i.k, %i.q, !dbg !25485
  %bound122 = icmp ult ptr %.sroa.01.0.copyload, %i.n, !dbg !25485
  %found.conflict23 = and i1 %bound021, %bound122, !dbg !25485
  %conflict.rdx = or i1 %found.conflict, %found.conflict23, !dbg !25485
  %bound024 = icmp ult ptr %i.k, %i.r, !dbg !25485
  %bound125 = icmp ult ptr %.sroa.42.0.copyload, %i.n, !dbg !25485
  %found.conflict26 = and i1 %bound024, %bound125, !dbg !25485
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26, !dbg !25485
  %bound028 = icmp ult ptr %i.k, %i.s, !dbg !25485
  %bound129 = icmp ult ptr %.sroa.53.0.copyload, %i.n, !dbg !25485
  %found.conflict30 = and i1 %bound028, %bound129, !dbg !25485
  %conflict.rdx31 = or i1 %conflict.rdx27, %found.conflict30, !dbg !25485
  br i1 %conflict.rdx31, label %scalar.ph.preheader, label %vector.ph, !dbg !25486

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4611686018427387902      ; 4 uses
  %i.t = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.u = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25487, !alias.scope !25382, !noalias !25383, !noundef !3744
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.u, i64 0, !dbg !25486
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25486
  %i.v = sitofp <2 x i32> %broadcast.splat to <2 x double>, !dbg !25488 ; 2 uses
  %i.w = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25489, !alias.scope !25413, !noalias !25383, !noundef !3744
  %broadcast.splatinsert32 = insertelement <2 x i32> poison, i32 %i.w, i64 0, !dbg !25486
  %broadcast.splat33 = shufflevector <2 x i32> %broadcast.splatinsert32, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25486
  %i.x = sitofp <2 x i32> %broadcast.splat33 to <2 x double>, !dbg !25490
  %i.y = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25491, !alias.scope !25414, !noalias !25383, !noundef !3744
  %broadcast.splatinsert34 = insertelement <2 x i32> poison, i32 %i.y, i64 0, !dbg !25486
  %broadcast.splat35 = shufflevector <2 x i32> %broadcast.splatinsert34, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25486
  %i.z = sitofp <2 x i32> %broadcast.splat35 to <2 x double>, !dbg !25492
  %i.aa = getelementptr [8 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !25486

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !25486 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !25493
  %wide.load = load <2 x i32>, ptr %i.ab, align 4, !dbg !25494, !alias.scope !25418, !noalias !25419
  %i.ac = sitofp <2 x i32> %wide.load to <2 x double>, !dbg !25495
  %i.ad = fmul nnan <2 x double> %i.ac, splat (double f0x400921FB54442D18), !dbg !25496
  %i.ae = fdiv <2 x double> %i.ad, splat (double 1.800000e+02), !dbg !25496
  %i.af = tail call { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ae), !dbg !25497 ; 2 uses
  %i.ag = extractvalue { <2 x double>, <2 x double> } %i.af, 0, !dbg !25497
  %i.ah = extractvalue { <2 x double>, <2 x double> } %i.af, 1, !dbg !25497
  %i.ai = fmul <2 x double> %i.ah, %i.v, !dbg !25498
  %i.aj = fadd <2 x double> %i.ai, %i.x, !dbg !25499
  %i.ak = fmul <2 x double> %i.ag, %i.v, !dbg !25500
  %i.al = fadd <2 x double> %i.ak, %i.z, !dbg !25501
  %i.am = getelementptr [8 x i8], ptr %i.aa, i64 %index, !dbg !25502
  %i.an = shufflevector <2 x double> %i.aj, <2 x double> %i.al, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !25503
  %i.ao = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %i.an), !dbg !25503
  %interleaved.vec = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f64(<4 x double> %i.ao), !dbg !25503
  store <4 x i32> %interleaved.vec, ptr %i.am, align 4, !dbg !25503, !alias.scope !25448, !noalias !25449
  %index.next = add nuw i64 %index, 2, !dbg !25486 ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec, !dbg !25504
  br i1 %i.ap, label %middle.block, label %vector.body, !dbg !25504, !llvm.loop !25268

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !25504
  br i1 %cmp.n, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !25504

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.t, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !25504

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.aq = phi i64 [ %i.bl, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !25493 ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bm, %scalar.ph ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !25486 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i.i, !25377, !DIExpression(), !25210)
    #dbg_value(i64 %.sroa.01.0.i.i, !25359, !DIExpression(), !25216)
    #dbg_value(ptr %i.a, !25415, !DIExpression(), !25269)
    #dbg_value(i64 %.sroa.01.0.i.i, !25416, !DIExpression(), !25269)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.i, !dbg !25493
  %.val27.i.i = load i32, ptr %i.ar, align 4, !dbg !25494, !noalias !25419, !noundef !3744
    #dbg_value(ptr poison, !25405, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25270)
    #dbg_declare(ptr poison, !25403, !DIExpression(), !25271)
    #dbg_value(ptr poison, !25404, !DIExpression(), !25270)
    #dbg_value(ptr poison, !25426, !DIExpression(), !25272)
    #dbg_value(ptr poison, !25425, !DIExpression(), !25272)
    #dbg_value(i32 %.val27.i.i, !25420, !DIExpression(), !25273)
  %i.as = sitofp i32 %.val27.i.i to double, !dbg !25495
  %i.at = fmul nnan double %i.as, f0x400921FB54442D18, !dbg !25496
  %i.au = fdiv double %i.at, 1.800000e+02, !dbg !25496
    #dbg_value(ptr poison, !25397, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25274)
    #dbg_value(ptr poison, !25398, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_LLVM_fragment, 0, 64), !25274)
    #dbg_declare(ptr poison, !25395, !DIExpression(), !25275)
    #dbg_value(double %i.au, !25396, !DIExpression(), !25274)
  %sincos.i.i.i.i.i = tail call { double, double } @llvm.sincos.f64(double %i.au), !dbg !25497 ; 2 uses
  %sin.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 0, !dbg !25497
  %cos.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 1, !dbg !25497
    #dbg_value(ptr poison, !25388, !DIExpression(DW_OP_deref, DW_OP_deref), !25276)
    #dbg_value(ptr poison, !25389, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !25276)
    #dbg_value(ptr poison, !25390, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !25276)
    #dbg_value(double %i.au, !25387, !DIExpression(), !25276)
    #dbg_value(double %i.au, !25428, !DIExpression(), !25277)
  %i.av = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25487, !noalias !25383, !noundef !3744
    #dbg_value(i32 %i.av, !25411, !DIExpression(), !25278)
  %i.aw = sitofp i32 %i.av to double, !dbg !25488 ; 2 uses
  %i.ax = fmul double %cos.i.i.i.i.i, %i.aw, !dbg !25498
  %i.ay = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25489, !noalias !25383, !noundef !3744
    #dbg_value(i32 %i.ay, !25411, !DIExpression(), !25279)
  %i.az = sitofp i32 %i.ay to double, !dbg !25490
  %i.ba = fadd double %i.ax, %i.az, !dbg !25499
    #dbg_value(double %i.ba, !25450, !DIExpression(), !25282)
    #dbg_value(double %i.ba, !25452, !DIExpression(), !25285)
  %i.bb = tail call double @llvm.ceil.f64(double %i.ba), !dbg !25505
  %i.bc = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.bb), !dbg !25499
    #dbg_value(i32 %i.av, !25411, !DIExpression(), !25287)
  %i.bd = fmul double %sin.i.i.i.i.i, %i.aw, !dbg !25500
  %i.be = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25491, !noalias !25383, !noundef !3744
    #dbg_value(i32 %i.be, !25411, !DIExpression(), !25288)
  %i.bf = sitofp i32 %i.be to double, !dbg !25492
  %i.bg = fadd double %i.bd, %i.bf, !dbg !25501
    #dbg_value(double %i.bg, !25450, !DIExpression(), !25290)
    #dbg_value(double %i.bg, !25452, !DIExpression(), !25292)
  %i.bh = tail call double @llvm.ceil.f64(double %i.bg), !dbg !25506
  %i.bi = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.bh), !dbg !25501
    #dbg_value(ptr poison, !25443, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25293)
    #dbg_declare(ptr poison, !25444, !DIExpression(), !25294)
    #dbg_value(i32 %i.bc, !25442, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25293)
    #dbg_value(i32 %i.bi, !25442, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25293)
    #dbg_value(ptr poison, !25434, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25295)
    #dbg_value(ptr poison, !25435, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25295)
    #dbg_value(i32 %i.bc, !25433, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25295)
    #dbg_value(i32 %i.bi, !25433, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25295)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.aq, !dbg !25502 ; 2 uses
  store i32 %i.bc, ptr %i.bj, align 4, !dbg !25503, !noalias !25449
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4, !dbg !25503
  store i32 %i.bi, ptr %i.bk, align 4, !dbg !25503, !noalias !25449
  %i.bl = add i64 %i.aq, 1, !dbg !25507           ; 2 uses
  %i.bm = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !25508 ; 2 uses
    #dbg_value(i64 %i.bm, !25359, !DIExpression(), !25216)
    #dbg_value(i64 %i.bm, !25377, !DIExpression(), !25210)
  %i.bn = icmp eq i64 %i.bm, %i.i, !dbg !25504
  br i1 %i.bn, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !25504, !llvm.loop !25298

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %i.bl, %scalar.ph ], !dbg !25509
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !25509, !noalias !25419
  ret void, !dbg !25510
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipB1d_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2f_5style12BackendColorEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4L_8for_each4callTB1D_B1D_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB67_3VecB5O_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25515 {
bb.a:
    #dbg_value(ptr poison, !11117, !DIExpression(), !25526)
    #dbg_declare(ptr %0, !25623, !DIExpression(), !25648)
    #dbg_declare(ptr poison, !25624, !DIExpression(), !25649)
    #dbg_declare(ptr %1, !25625, !DIExpression(), !25650)
    #dbg_declare(ptr %1, !25651, !DIExpression(), !25660)
    #dbg_declare(ptr poison, !25654, !DIExpression(), !25661)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !25725 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !25644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25662)
    #dbg_value(ptr %.sroa.0.0.copyload, !25634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25663)
    #dbg_value(i64 poison, !25644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25662)
    #dbg_value(i64 poison, !25634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25663)
    #dbg_value(ptr poison, !25644, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25662)
    #dbg_value(ptr poison, !25634, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25663)
    #dbg_value(i64 poison, !25644, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25662)
    #dbg_value(i64 poison, !25634, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25663)
    #dbg_value(i64 poison, !25644, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25662)
    #dbg_value(i64 poison, !25634, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25663)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !25725
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !25725 ; 6 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !25644, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25662)
    #dbg_value(i64 %.sroa.6.0.copyload, !25634, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25663)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25725
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !25725 ; 3 uses
    #dbg_value(i64 %.sroa.7.0.copyload, !25644, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !25662)
    #dbg_value(i64 %.sroa.7.0.copyload, !25634, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !25663)
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !25726 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.copyload, !25646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25662)
    #dbg_value(ptr %.sroa.03.0.copyload, !25636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25663)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25726
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !25726 ; 3 uses
    #dbg_value(i64 %.sroa.44.0.copyload, !25646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25662)
    #dbg_value(i64 %.sroa.44.0.copyload, !25636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25663)
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25726
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !25726 ; 3 uses
    #dbg_value(ptr %.sroa.65.0.copyload, !25646, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25662)
    #dbg_value(ptr %.sroa.65.0.copyload, !25636, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25663)
    #dbg_declare(ptr poison, !25645, !DIExpression(), !25528)
    #dbg_value(ptr poison, !25664, !DIExpression(), !25536)
    #dbg_value(ptr poison, !25667, !DIExpression(), !25537)
    #dbg_value(ptr poison, !25670, !DIExpression(), !25538)
    #dbg_declare(ptr poison, !25635, !DIExpression(), !25539)
    #dbg_declare(ptr poison, !25637, !DIExpression(), !25540)
    #dbg_value(i64 1, !25673, !DIExpression(), !25543)
    #dbg_value(i64 1, !25676, !DIExpression(), !25546)
    #dbg_value(ptr poison, !11131, !DIExpression(), !25548)
  %i.a = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !25727 ; 3 uses
    #dbg_value(i64 %i.a, !25638, !DIExpression(), !25549)
    #dbg_value(i64 0, !25639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25550)
    #dbg_value(i64 %i.a, !25639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25550)
    #dbg_value(ptr undef, !25670, !DIExpression(), !25538)
    #dbg_value(ptr undef, !25667, !DIExpression(), !25537)
    #dbg_value(ptr undef, !25664, !DIExpression(), !25536)
    #dbg_value(ptr undef, !25665, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25551)
  %.not.i.i = icmp eq i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !25728
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !25729

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25725
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !25725
    #dbg_value(i64 %.sroa.52.0.copyload, !25644, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25662)
    #dbg_value(i64 %.sroa.52.0.copyload, !25634, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25663)
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25725
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !25725, !nonnull !3744, !noundef !3744
    #dbg_value(ptr %.sroa.41.0.copyload, !25644, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25662)
    #dbg_value(ptr %.sroa.41.0.copyload, !25634, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25663)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.sroa.41.0.copyload, i64 %.sroa.52.0.copyload, !dbg !25729 ; 3 uses
  %.neg = add i64 %.sroa.6.0.copyload, 1, !dbg !25729
  %xtraiter = and i64 %i.a, 1, !dbg !25729
  %i.b = icmp eq i64 %.sroa.7.0.copyload, %.neg, !dbg !25729
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.i.i.new, !dbg !25729

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.a, -2, !dbg !25729
  br label %bb.b, !dbg !25729

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %i.c = phi i64 [ %.sroa.44.0.copyload, %.lr.ph.i.i.new ], [ %i.s, %bb.b ], !dbg !25730 ; 3 uses
  %.sroa.0.022.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.k, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.b ]
    #dbg_value(i64 %.sroa.0.022.i.i, !25668, !DIExpression(), !25552)
end_hunk_0
