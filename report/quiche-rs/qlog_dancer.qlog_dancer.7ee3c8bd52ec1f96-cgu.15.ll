Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.15?download=true
inline.NumInlined: 1411
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1C_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1G_5coord5ShiftE20split_by_breakpointsllRSlB4e_Es_0ENCINvMB1C_NtB1C_4Rect10split_gridIBO_B11_NCB1v_0EBX_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5l_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6y_3VeclE14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %i.u = load ptr, ptr %i.b, align 8, !dbg !24821, !noalias !24763, !nonnull !3744, !align !10455, !noundef !3744
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4, !dbg !24821
  %i.w = load i32, ptr %i.v, align 4, !dbg !24821, !noalias !24763, !noundef !3744
  %i.x = add i32 %i.w, %.val27.i.i.1, !dbg !24822
    #dbg_declare(ptr poison, !24769, !DIExpression(), !24774)
    #dbg_value(i32 %i.x, !24768, !DIExpression(), !24773)
    #dbg_value(i32 %i.x, !24779, !DIExpression(), !24784)
  %i.y = getelementptr [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.l, !dbg !24823
  %i.z = getelementptr i8, ptr %i.y, i64 4, !dbg !24823
  store i32 %i.x, ptr %i.z, align 4, !dbg !24824, !noalias !24785
  %i.aa = add i64 %i.l, 2, !dbg !24825            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.i, 2, !dbg !24826 ; 2 uses
    #dbg_value(i64 %i.ab, !24691, !DIExpression(), !24722)
    #dbg_value(i64 %i.ab, !24713, !DIExpression(), !24715)
  %niter.next.1 = add i64 %niter, 2, !dbg !24827  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !24827
  br i1 %niter.ncmp.1, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, label %bb.c, !dbg !24827

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.ac = and i64 %i.i, 4, !dbg !24827
  %lcmp.mod.not = icmp eq i64 %i.ac, 0, !dbg !24827
  br i1 %lcmp.mod.not, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.epil.preheader, !dbg !24827

.epil.preheader:                                  ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.aa, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.j to i1, !dbg !24827
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !24827
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24713, !DIExpression(), !24715)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24691, !DIExpression(), !24722)
    #dbg_value(ptr %i.c, !24728, !DIExpression(), !24731)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24729, !DIExpression(), !24731)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.epil.init, !dbg !24818
  %.val27.i.i.epil = load i32, ptr %i.ad, align 4, !dbg !24820, !noalias !24732, !noundef !3744
    #dbg_value(ptr poison, !24733, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24744)
    #dbg_value(ptr poison, !24739, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32), !24744)
    #dbg_declare(ptr poison, !24737, !DIExpression(), !24745)
    #dbg_value(ptr poison, !24738, !DIExpression(), !24744)
    #dbg_value(ptr poison, !24746, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24754)
    #dbg_value(ptr poison, !24752, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !24754)
    #dbg_declare(ptr poison, !24750, !DIExpression(), !24755)
    #dbg_value(i32 %.val27.i.i.epil, !24751, !DIExpression(), !24754)
    #dbg_value(ptr poison, !24756, !DIExpression(DW_OP_deref, DW_OP_deref), !24762)
    #dbg_value(i32 %.val27.i.i.epil, !24760, !DIExpression(), !24762)
  %i.ae = load ptr, ptr %i.b, align 8, !dbg !24821, !noalias !24763, !nonnull !3744, !align !10455, !noundef !3744
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4, !dbg !24821
  %i.ag = load i32, ptr %i.af, align 4, !dbg !24821, !noalias !24763, !noundef !3744
  %i.ah = add i32 %i.ag, %.val27.i.i.epil, !dbg !24822
    #dbg_value(ptr poison, !24764, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24773)
    #dbg_declare(ptr poison, !24769, !DIExpression(), !24774)
    #dbg_value(i32 %i.ah, !24768, !DIExpression(), !24773)
    #dbg_value(ptr poison, !24775, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !24784)
    #dbg_value(ptr poison, !24780, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24784)
    #dbg_value(i32 %i.ah, !24779, !DIExpression(), !24784)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.epil.init, !dbg !24823
  store i32 %i.ah, ptr %i.ai, align 4, !dbg !24824, !noalias !24785
  %i.aj = add i64 %.epil.init, 1, !dbg !24825
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24691, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24722)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24713, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24715)
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %.epil.preheader, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.aa, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %i.aj, %.epil.preheader ], !dbg !24828
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !24828, !noalias !24732
  ret void, !dbg !24829
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1C_14TriangleMarkerTdlElEINtB1E_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2F_ENCINvMs6_NtNtB1G_7drawing4areaINtB4N_11DrawingAreaB31_INtNtNtNtB1G_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5D_8ranged1d5types7numeric14RangedCoordf64NtB6n_14RangedCoordi32EE4drawB2i_NtB1E_16BackendCoordOnlyE0EE0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8l_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9B_3VecB9o_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24832 {
bb.a:
    #dbg_declare(ptr %0, !24932, !DIExpression(), !24938)
    #dbg_declare(ptr poison, !24933, !DIExpression(), !24939)
    #dbg_declare(ptr %1, !24934, !DIExpression(), !24940)
    #dbg_declare(ptr %1, !24941, !DIExpression(), !24953)
  %i.a = load ptr, ptr %0, align 8, !dbg !25130, !nonnull !3744, !noundef !3744 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25130
  %i.c = load ptr, ptr %i.b, align 8, !dbg !25130, !nonnull !3744, !noundef !3744 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25131
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !dbg !25131 ; 5 uses
    #dbg_value(ptr %.sroa.01.0.copyload, !24947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24954)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25131
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !25131 ; 5 uses
    #dbg_value(ptr %.sroa.42.0.copyload, !24947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24954)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25131
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !25131 ; 5 uses
    #dbg_value(ptr %.sroa.53.0.copyload, !24947, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24954)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !25132 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !24955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24963)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25132
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25132 ; 7 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !24955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24963)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25132
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !25132 ; 4 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !24955, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24963)
    #dbg_value(ptr %.sroa.01.0.copyload, !24955, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24963)
    #dbg_value(ptr %.sroa.42.0.copyload, !24955, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !24963)
    #dbg_value(ptr %.sroa.53.0.copyload, !24955, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !24963)
    #dbg_value(ptr %i.a, !24958, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24963)
    #dbg_value(ptr %i.c, !24958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24963)
    #dbg_declare(ptr poison, !24959, !DIExpression(), !24964)
    #dbg_value(ptr %.sroa.0.0.copyload, !24965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24983)
    #dbg_value(i64 %.sroa.4.0.copyload, !24965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24983)
    #dbg_value(ptr %.sroa.5.0.copyload, !24965, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24983)
    #dbg_value(ptr %.sroa.01.0.copyload, !24965, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24983)
    #dbg_value(ptr %.sroa.42.0.copyload, !24965, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !24983)
    #dbg_value(ptr %.sroa.53.0.copyload, !24965, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !24983)
    #dbg_value(ptr %i.a, !24971, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24983)
    #dbg_value(ptr %i.c, !24971, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24983)
    #dbg_declare(ptr poison, !24972, !DIExpression(), !24984)
    #dbg_declare(ptr poison, !24975, !DIExpression(), !24985)
    #dbg_value(i64 4, !24986, !DIExpression(), !24990)
    #dbg_value(i64 1, !24997, !DIExpression(), !25000)
    #dbg_value(ptr %i.c, !24974, !DIExpression(), !25001)
    #dbg_value(ptr poison, !25002, !DIExpression(), !25005)
    #dbg_value(ptr poison, !25003, !DIExpression(), !25006)
  %i.e = icmp eq ptr %i.a, %i.c, !dbg !25133
  br i1 %i.e, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !25134

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !24976, !DIExpression(), !25007)
    #dbg_value(i64 0, !24998, !DIExpression(), !25000)
    #dbg_value(ptr %i.c, !24979, !DIExpression(), !25008)
    #dbg_value(ptr %i.c, !24994, !DIExpression(), !25009)
    #dbg_value(ptr %i.a, !24995, !DIExpression(), !25009)
    #dbg_value(ptr %i.c, !24991, !DIExpression(), !25010)
    #dbg_value(ptr %i.a, !24992, !DIExpression(), !25010)
    #dbg_value(ptr %i.a, !24988, !DIExpression(), !25011)
    #dbg_value(ptr %i.c, !24987, !DIExpression(), !25011)
  %i.f = ptrtoint ptr %i.c to i64, !dbg !25135
  %i.g = ptrtoint ptr %i.a to i64, !dbg !25135
  %i.h = sub i64 %i.f, %i.g, !dbg !25135          ; 3 uses
  %i.i = lshr i64 %i.h, 2, !dbg !25135            ; 4 uses
    #dbg_value(i64 %i.i, !24977, !DIExpression(), !25012)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.h, 16, !dbg !25136
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !25136

vector.memcheck:                                  ; preds = %bb.b
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !25136
  %scevgep = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.j, !dbg !25136 ; 4 uses
  %i.k = add i64 %.sroa.4.0.copyload, %i.i, !dbg !25136
  %i.l = shl i64 %i.k, 3, !dbg !25136
  %scevgep5 = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.l, !dbg !25136 ; 4 uses
  %i.m = and i64 %i.h, -4, !dbg !25136
  %scevgep6 = getelementptr i8, ptr %i.a, i64 %i.m, !dbg !25136
  %scevgep7 = getelementptr i8, ptr %.sroa.01.0.copyload, i64 4, !dbg !25136
  %scevgep8 = getelementptr i8, ptr %.sroa.42.0.copyload, i64 4, !dbg !25136
  %scevgep9 = getelementptr i8, ptr %.sroa.53.0.copyload, i64 4, !dbg !25136
  %bound0 = icmp ult ptr %scevgep, %scevgep6, !dbg !25136
  %bound1 = icmp ult ptr %i.a, %scevgep5, !dbg !25136
  %found.conflict = and i1 %bound0, %bound1, !dbg !25136
  %bound010 = icmp ult ptr %scevgep, %scevgep7, !dbg !25136
  %bound111 = icmp ult ptr %.sroa.01.0.copyload, %scevgep5, !dbg !25136
  %found.conflict12 = and i1 %bound010, %bound111, !dbg !25136
  %conflict.rdx = or i1 %found.conflict, %found.conflict12, !dbg !25136
  %bound013 = icmp ult ptr %scevgep, %scevgep8, !dbg !25136
  %bound114 = icmp ult ptr %.sroa.42.0.copyload, %scevgep5, !dbg !25136
  %found.conflict15 = and i1 %bound013, %bound114, !dbg !25136
  %conflict.rdx16 = or i1 %conflict.rdx, %found.conflict15, !dbg !25136
  %bound017 = icmp ult ptr %scevgep, %scevgep9, !dbg !25136
  %bound118 = icmp ult ptr %.sroa.53.0.copyload, %scevgep5, !dbg !25136
  %found.conflict19 = and i1 %bound017, %bound118, !dbg !25136
  %conflict.rdx20 = or i1 %conflict.rdx16, %found.conflict19, !dbg !25136
  br i1 %conflict.rdx20, label %scalar.ph.preheader, label %vector.ph, !dbg !25137

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4611686018427387902      ; 4 uses
  %i.n = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.o = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25138, !alias.scope !25013, !noalias !25014, !noundef !3744
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.o, i64 0, !dbg !25137
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25137
  %i.p = sitofp <2 x i32> %broadcast.splat to <2 x double>, !dbg !25139 ; 2 uses
  %i.q = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25140, !alias.scope !25044, !noalias !25014, !noundef !3744
  %broadcast.splatinsert21 = insertelement <2 x i32> poison, i32 %i.q, i64 0, !dbg !25137
  %broadcast.splat22 = shufflevector <2 x i32> %broadcast.splatinsert21, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25137
  %i.r = sitofp <2 x i32> %broadcast.splat22 to <2 x double>, !dbg !25141
  %i.s = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25142, !alias.scope !25045, !noalias !25014, !noundef !3744
  %broadcast.splatinsert23 = insertelement <2 x i32> poison, i32 %i.s, i64 0, !dbg !25137
  %broadcast.splat24 = shufflevector <2 x i32> %broadcast.splatinsert23, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25137
  %i.t = sitofp <2 x i32> %broadcast.splat24 to <2 x double>, !dbg !25143
  %i.u = getelementptr [8 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !25137

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !25137 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !25144
  %wide.load = load <2 x i32>, ptr %i.v, align 4, !dbg !25145, !alias.scope !25049, !noalias !25050
  %i.w = sitofp <2 x i32> %wide.load to <2 x double>, !dbg !25146
  %i.x = fmul nnan <2 x double> %i.w, splat (double f0x400921FB54442D18), !dbg !25147
  %i.y = fdiv <2 x double> %i.x, splat (double 1.800000e+02), !dbg !25147
  %i.z = tail call { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.y), !dbg !25148 ; 2 uses
  %i.aa = extractvalue { <2 x double>, <2 x double> } %i.z, 0, !dbg !25148
  %i.ab = extractvalue { <2 x double>, <2 x double> } %i.z, 1, !dbg !25148
  %i.ac = fmul <2 x double> %i.ab, %i.p, !dbg !25149
  %i.ad = fadd <2 x double> %i.ac, %i.r, !dbg !25150
  %i.ae = fmul <2 x double> %i.aa, %i.p, !dbg !25151
  %i.af = fadd <2 x double> %i.ae, %i.t, !dbg !25152
  %2 = shufflevector <2 x double> %i.ad, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !25153
  %3 = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %2), !dbg !25152
  %4 = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !25154
  %interleaved.vec = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f64(<4 x double> %3), !dbg !25155
  store <4 x i32> %interleaved.vec, ptr %4, align 4, !dbg !25155, !alias.scope !25084, !noalias !25085
  %index.next = add nuw i64 %index, 2, !dbg !25137 ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec, !dbg !25156
  br i1 %i.ag, label %middle.block, label %vector.body, !dbg !25156, !llvm.loop !24908

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !25156
  br i1 %cmp.n, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !25156

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.n, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !25156

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ah = phi i64 [ %i.bc, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !25144 ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bd, %scalar.ph ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !25137 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i.i, !24998, !DIExpression(), !25000)
    #dbg_value(i64 %.sroa.01.0.i.i, !24976, !DIExpression(), !25007)
    #dbg_value(ptr %i.a, !25046, !DIExpression(), !25086)
    #dbg_value(i64 %.sroa.01.0.i.i, !25047, !DIExpression(), !25086)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.i, !dbg !25144
  %.val27.i.i = load i32, ptr %i.ai, align 4, !dbg !25145, !noalias !25050, !noundef !3744
    #dbg_value(ptr poison, !25036, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25087)
    #dbg_declare(ptr poison, !25034, !DIExpression(), !25088)
    #dbg_value(ptr poison, !25035, !DIExpression(), !25087)
    #dbg_value(ptr poison, !25057, !DIExpression(), !25089)
    #dbg_value(ptr poison, !25056, !DIExpression(), !25089)
    #dbg_value(i32 %.val27.i.i, !25051, !DIExpression(), !25090)
  %i.aj = sitofp i32 %.val27.i.i to double, !dbg !25146
  %i.ak = fmul nnan double %i.aj, f0x400921FB54442D18, !dbg !25147
  %i.al = fdiv double %i.ak, 1.800000e+02, !dbg !25147
    #dbg_value(ptr poison, !25028, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25091)
    #dbg_value(ptr poison, !25029, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_LLVM_fragment, 0, 64), !25091)
    #dbg_declare(ptr poison, !25026, !DIExpression(), !25092)
    #dbg_value(double %i.al, !25027, !DIExpression(), !25091)
  %sincos.i.i.i.i.i = tail call { double, double } @llvm.sincos.f64(double %i.al), !dbg !25148 ; 2 uses
  %sin.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 0, !dbg !25148
  %cos.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 1, !dbg !25148
    #dbg_value(ptr poison, !25019, !DIExpression(DW_OP_deref, DW_OP_deref), !25093)
    #dbg_value(ptr poison, !25020, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !25093)
    #dbg_value(ptr poison, !25021, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !25093)
    #dbg_value(double %i.al, !25018, !DIExpression(), !25093)
    #dbg_value(double %i.al, !25059, !DIExpression(), !25094)
  %i.am = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25138, !noalias !25014, !noundef !3744
    #dbg_value(i32 %i.am, !25042, !DIExpression(), !25095)
  %i.an = sitofp i32 %i.am to double, !dbg !25139 ; 2 uses
  %i.ao = fmul double %cos.i.i.i.i.i, %i.an, !dbg !25149
  %i.ap = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25140, !noalias !25014, !noundef !3744
    #dbg_value(i32 %i.ap, !25042, !DIExpression(), !25096)
  %i.aq = sitofp i32 %i.ap to double, !dbg !25141
  %i.ar = fadd double %i.ao, %i.aq, !dbg !25150
    #dbg_value(double %i.ar, !25064, !DIExpression(), !25097)
    #dbg_value(double %i.ar, !25061, !DIExpression(), !25098)
  %i.as = tail call double @llvm.ceil.f64(double %i.ar), !dbg !25157
  %i.at = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.as), !dbg !25150
    #dbg_value(i32 %i.am, !25042, !DIExpression(), !25099)
  %i.au = fmul double %sin.i.i.i.i.i, %i.an, !dbg !25151
  %i.av = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25142, !noalias !25014, !noundef !3744
    #dbg_value(i32 %i.av, !25042, !DIExpression(), !25100)
  %i.aw = sitofp i32 %i.av to double, !dbg !25143
  %i.ax = fadd double %i.au, %i.aw, !dbg !25152
    #dbg_value(double %i.ax, !25064, !DIExpression(), !25101)
    #dbg_value(double %i.ax, !25061, !DIExpression(), !25102)
  %i.ay = tail call double @llvm.ceil.f64(double %i.ax), !dbg !25153
  %i.az = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.ay), !dbg !25152
    #dbg_value(ptr poison, !25079, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25103)
    #dbg_declare(ptr poison, !25080, !DIExpression(), !25104)
    #dbg_value(i32 %i.at, !25078, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25103)
    #dbg_value(i32 %i.az, !25078, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25103)
    #dbg_value(ptr poison, !25070, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25105)
    #dbg_value(ptr poison, !25071, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25105)
    #dbg_value(i32 %i.at, !25069, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25105)
    #dbg_value(i32 %i.az, !25069, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25105)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.ah, !dbg !25154 ; 2 uses
  store i32 %i.at, ptr %i.ba, align 4, !dbg !25155, !noalias !25085
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4, !dbg !25155
  store i32 %i.az, ptr %i.bb, align 4, !dbg !25155, !noalias !25085
  %i.bc = add i64 %i.ah, 1, !dbg !25158           ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !25159 ; 2 uses
    #dbg_value(i64 %i.bd, !24976, !DIExpression(), !25007)
    #dbg_value(i64 %i.bd, !24998, !DIExpression(), !25000)
  %i.be = icmp eq i64 %i.bd, %i.i, !dbg !25156
  br i1 %i.be, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !25156, !llvm.loop !24914

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %i.bc, %scalar.ph ], !dbg !25160
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !25160, !noalias !25050
  ret void, !dbg !25161
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1C_14TriangleMarkerTdyElEINtB1E_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2F_ENCINvMs6_NtNtB1G_7drawing4areaINtB4N_11DrawingAreaB31_INtNtNtNtB1G_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5D_8ranged1d5types7numeric14RangedCoordf64NtB6n_14RangedCoordu64EE4drawB2i_NtB1E_16BackendCoordOnlyE0EE0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8l_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9B_3VecB9o_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25164 {
bb.a:
    #dbg_declare(ptr %0, !25264, !DIExpression(), !25270)
    #dbg_declare(ptr poison, !25265, !DIExpression(), !25271)
    #dbg_declare(ptr %1, !25266, !DIExpression(), !25272)
    #dbg_declare(ptr %1, !25273, !DIExpression(), !25285)
  %i.a = load ptr, ptr %0, align 8, !dbg !25462, !nonnull !3744, !noundef !3744 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25462
  %i.c = load ptr, ptr %i.b, align 8, !dbg !25462, !nonnull !3744, !noundef !3744 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25463
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !dbg !25463 ; 5 uses
    #dbg_value(ptr %.sroa.01.0.copyload, !25279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25286)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25463
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !25463 ; 5 uses
    #dbg_value(ptr %.sroa.42.0.copyload, !25279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25286)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25463
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !25463 ; 5 uses
    #dbg_value(ptr %.sroa.53.0.copyload, !25279, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25286)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !25464 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !25287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25295)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25464
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25464 ; 7 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !25287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25295)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25464
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !25464 ; 4 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !25287, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25295)
    #dbg_value(ptr %.sroa.01.0.copyload, !25287, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25295)
    #dbg_value(ptr %.sroa.42.0.copyload, !25287, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25295)
    #dbg_value(ptr %.sroa.53.0.copyload, !25287, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25295)
    #dbg_value(ptr %i.a, !25290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25295)
    #dbg_value(ptr %i.c, !25290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25295)
    #dbg_declare(ptr poison, !25291, !DIExpression(), !25296)
    #dbg_value(ptr %.sroa.0.0.copyload, !25297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25315)
    #dbg_value(i64 %.sroa.4.0.copyload, !25297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25315)
    #dbg_value(ptr %.sroa.5.0.copyload, !25297, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25315)
    #dbg_value(ptr %.sroa.01.0.copyload, !25297, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25315)
    #dbg_value(ptr %.sroa.42.0.copyload, !25297, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25315)
    #dbg_value(ptr %.sroa.53.0.copyload, !25297, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25315)
    #dbg_value(ptr %i.a, !25303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25315)
    #dbg_value(ptr %i.c, !25303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25315)
    #dbg_declare(ptr poison, !25304, !DIExpression(), !25316)
    #dbg_declare(ptr poison, !25307, !DIExpression(), !25317)
    #dbg_value(i64 4, !25318, !DIExpression(), !25322)
    #dbg_value(i64 1, !25329, !DIExpression(), !25332)
    #dbg_value(ptr %i.c, !25306, !DIExpression(), !25333)
    #dbg_value(ptr poison, !25334, !DIExpression(), !25337)
    #dbg_value(ptr poison, !25335, !DIExpression(), !25338)
  %i.e = icmp eq ptr %i.a, %i.c, !dbg !25465
  br i1 %i.e, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !25466

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !25308, !DIExpression(), !25339)
    #dbg_value(i64 0, !25330, !DIExpression(), !25332)
    #dbg_value(ptr %i.c, !25311, !DIExpression(), !25340)
    #dbg_value(ptr %i.c, !25326, !DIExpression(), !25341)
    #dbg_value(ptr %i.a, !25327, !DIExpression(), !25341)
    #dbg_value(ptr %i.c, !25323, !DIExpression(), !25342)
    #dbg_value(ptr %i.a, !25324, !DIExpression(), !25342)
    #dbg_value(ptr %i.a, !25320, !DIExpression(), !25343)
    #dbg_value(ptr %i.c, !25319, !DIExpression(), !25343)
  %i.f = ptrtoint ptr %i.c to i64, !dbg !25467
  %i.g = ptrtoint ptr %i.a to i64, !dbg !25467
  %i.h = sub i64 %i.f, %i.g, !dbg !25467          ; 3 uses
  %i.i = lshr i64 %i.h, 2, !dbg !25467            ; 4 uses
    #dbg_value(i64 %i.i, !25309, !DIExpression(), !25344)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.42.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.h, 16, !dbg !25468
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !25468

vector.memcheck:                                  ; preds = %bb.b
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !25468
  %scevgep = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.j, !dbg !25468 ; 4 uses
  %i.k = add i64 %.sroa.4.0.copyload, %i.i, !dbg !25468
  %i.l = shl i64 %i.k, 3, !dbg !25468
  %scevgep5 = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.l, !dbg !25468 ; 4 uses
  %i.m = and i64 %i.h, -4, !dbg !25468
  %scevgep6 = getelementptr i8, ptr %i.a, i64 %i.m, !dbg !25468
  %scevgep7 = getelementptr i8, ptr %.sroa.01.0.copyload, i64 4, !dbg !25468
  %scevgep8 = getelementptr i8, ptr %.sroa.42.0.copyload, i64 4, !dbg !25468
  %scevgep9 = getelementptr i8, ptr %.sroa.53.0.copyload, i64 4, !dbg !25468
  %bound0 = icmp ult ptr %scevgep, %scevgep6, !dbg !25468
  %bound1 = icmp ult ptr %i.a, %scevgep5, !dbg !25468
  %found.conflict = and i1 %bound0, %bound1, !dbg !25468
  %bound010 = icmp ult ptr %scevgep, %scevgep7, !dbg !25468
  %bound111 = icmp ult ptr %.sroa.01.0.copyload, %scevgep5, !dbg !25468
  %found.conflict12 = and i1 %bound010, %bound111, !dbg !25468
  %conflict.rdx = or i1 %found.conflict, %found.conflict12, !dbg !25468
  %bound013 = icmp ult ptr %scevgep, %scevgep8, !dbg !25468
  %bound114 = icmp ult ptr %.sroa.42.0.copyload, %scevgep5, !dbg !25468
  %found.conflict15 = and i1 %bound013, %bound114, !dbg !25468
  %conflict.rdx16 = or i1 %conflict.rdx, %found.conflict15, !dbg !25468
  %bound017 = icmp ult ptr %scevgep, %scevgep9, !dbg !25468
  %bound118 = icmp ult ptr %.sroa.53.0.copyload, %scevgep5, !dbg !25468
  %found.conflict19 = and i1 %bound017, %bound118, !dbg !25468
  %conflict.rdx20 = or i1 %conflict.rdx16, %found.conflict19, !dbg !25468
  br i1 %conflict.rdx20, label %scalar.ph.preheader, label %vector.ph, !dbg !25469

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4611686018427387902      ; 4 uses
  %i.n = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.o = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25470, !alias.scope !25345, !noalias !25346, !noundef !3744
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.o, i64 0, !dbg !25469
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25469
  %i.p = sitofp <2 x i32> %broadcast.splat to <2 x double>, !dbg !25471 ; 2 uses
  %i.q = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25472, !alias.scope !25376, !noalias !25346, !noundef !3744
  %broadcast.splatinsert21 = insertelement <2 x i32> poison, i32 %i.q, i64 0, !dbg !25469
  %broadcast.splat22 = shufflevector <2 x i32> %broadcast.splatinsert21, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25469
  %i.r = sitofp <2 x i32> %broadcast.splat22 to <2 x double>, !dbg !25473
  %i.s = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25474, !alias.scope !25377, !noalias !25346, !noundef !3744
  %broadcast.splatinsert23 = insertelement <2 x i32> poison, i32 %i.s, i64 0, !dbg !25469
  %broadcast.splat24 = shufflevector <2 x i32> %broadcast.splatinsert23, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25469
  %i.t = sitofp <2 x i32> %broadcast.splat24 to <2 x double>, !dbg !25475
  %i.u = getelementptr [8 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !25469

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !25469 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !25476
  %wide.load = load <2 x i32>, ptr %i.v, align 4, !dbg !25477, !alias.scope !25381, !noalias !25382
  %i.w = sitofp <2 x i32> %wide.load to <2 x double>, !dbg !25478
  %i.x = fmul nnan <2 x double> %i.w, splat (double f0x400921FB54442D18), !dbg !25479
  %i.y = fdiv <2 x double> %i.x, splat (double 1.800000e+02), !dbg !25479
  %i.z = tail call { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.y), !dbg !25480 ; 2 uses
  %i.aa = extractvalue { <2 x double>, <2 x double> } %i.z, 0, !dbg !25480
  %i.ab = extractvalue { <2 x double>, <2 x double> } %i.z, 1, !dbg !25480
  %i.ac = fmul <2 x double> %i.ab, %i.p, !dbg !25481
  %i.ad = fadd <2 x double> %i.ac, %i.r, !dbg !25482
  %i.ae = fmul <2 x double> %i.aa, %i.p, !dbg !25483
  %i.af = fadd <2 x double> %i.ae, %i.t, !dbg !25484
  %2 = shufflevector <2 x double> %i.ad, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !25485
  %3 = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %2), !dbg !25484
  %4 = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !25486
  %interleaved.vec = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f64(<4 x double> %3), !dbg !25487
  store <4 x i32> %interleaved.vec, ptr %4, align 4, !dbg !25487, !alias.scope !25416, !noalias !25417
  %index.next = add nuw i64 %index, 2, !dbg !25469 ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec, !dbg !25488
  br i1 %i.ag, label %middle.block, label %vector.body, !dbg !25488, !llvm.loop !25240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !25488
  br i1 %cmp.n, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !25488

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.n, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !25488

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ah = phi i64 [ %i.bc, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !25476 ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bd, %scalar.ph ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !25469 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i.i, !25330, !DIExpression(), !25332)
    #dbg_value(i64 %.sroa.01.0.i.i, !25308, !DIExpression(), !25339)
    #dbg_value(ptr %i.a, !25378, !DIExpression(), !25418)
    #dbg_value(i64 %.sroa.01.0.i.i, !25379, !DIExpression(), !25418)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.i, !dbg !25476
  %.val27.i.i = load i32, ptr %i.ai, align 4, !dbg !25477, !noalias !25382, !noundef !3744
    #dbg_value(ptr poison, !25368, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25419)
    #dbg_declare(ptr poison, !25366, !DIExpression(), !25420)
    #dbg_value(ptr poison, !25367, !DIExpression(), !25419)
    #dbg_value(ptr poison, !25389, !DIExpression(), !25421)
    #dbg_value(ptr poison, !25388, !DIExpression(), !25421)
    #dbg_value(i32 %.val27.i.i, !25383, !DIExpression(), !25422)
  %i.aj = sitofp i32 %.val27.i.i to double, !dbg !25478
  %i.ak = fmul nnan double %i.aj, f0x400921FB54442D18, !dbg !25479
  %i.al = fdiv double %i.ak, 1.800000e+02, !dbg !25479
    #dbg_value(ptr poison, !25360, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25423)
    #dbg_value(ptr poison, !25361, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_LLVM_fragment, 0, 64), !25423)
    #dbg_declare(ptr poison, !25358, !DIExpression(), !25424)
    #dbg_value(double %i.al, !25359, !DIExpression(), !25423)
  %sincos.i.i.i.i.i = tail call { double, double } @llvm.sincos.f64(double %i.al), !dbg !25480 ; 2 uses
  %sin.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 0, !dbg !25480
  %cos.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 1, !dbg !25480
    #dbg_value(ptr poison, !25351, !DIExpression(DW_OP_deref, DW_OP_deref), !25425)
    #dbg_value(ptr poison, !25352, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !25425)
    #dbg_value(ptr poison, !25353, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !25425)
    #dbg_value(double %i.al, !25350, !DIExpression(), !25425)
    #dbg_value(double %i.al, !25391, !DIExpression(), !25426)
  %i.am = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25470, !noalias !25346, !noundef !3744
    #dbg_value(i32 %i.am, !25374, !DIExpression(), !25427)
  %i.an = sitofp i32 %i.am to double, !dbg !25471 ; 2 uses
  %i.ao = fmul double %cos.i.i.i.i.i, %i.an, !dbg !25481
  %i.ap = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25472, !noalias !25346, !noundef !3744
    #dbg_value(i32 %i.ap, !25374, !DIExpression(), !25428)
  %i.aq = sitofp i32 %i.ap to double, !dbg !25473
  %i.ar = fadd double %i.ao, %i.aq, !dbg !25482
    #dbg_value(double %i.ar, !25396, !DIExpression(), !25429)
    #dbg_value(double %i.ar, !25393, !DIExpression(), !25430)
  %i.as = tail call double @llvm.ceil.f64(double %i.ar), !dbg !25489
  %i.at = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.as), !dbg !25482
    #dbg_value(i32 %i.am, !25374, !DIExpression(), !25431)
  %i.au = fmul double %sin.i.i.i.i.i, %i.an, !dbg !25483
  %i.av = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25474, !noalias !25346, !noundef !3744
    #dbg_value(i32 %i.av, !25374, !DIExpression(), !25432)
  %i.aw = sitofp i32 %i.av to double, !dbg !25475
  %i.ax = fadd double %i.au, %i.aw, !dbg !25484
    #dbg_value(double %i.ax, !25396, !DIExpression(), !25433)
    #dbg_value(double %i.ax, !25393, !DIExpression(), !25434)
  %i.ay = tail call double @llvm.ceil.f64(double %i.ax), !dbg !25485
  %i.az = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.ay), !dbg !25484
    #dbg_value(ptr poison, !25411, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25435)
    #dbg_declare(ptr poison, !25412, !DIExpression(), !25436)
    #dbg_value(i32 %i.at, !25410, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25435)
    #dbg_value(i32 %i.az, !25410, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25435)
    #dbg_value(ptr poison, !25402, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25437)
    #dbg_value(ptr poison, !25403, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25437)
    #dbg_value(i32 %i.at, !25401, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25437)
    #dbg_value(i32 %i.az, !25401, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25437)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.ah, !dbg !25486 ; 2 uses
  store i32 %i.at, ptr %i.ba, align 4, !dbg !25487, !noalias !25417
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4, !dbg !25487
  store i32 %i.az, ptr %i.bb, align 4, !dbg !25487, !noalias !25417
  %i.bc = add i64 %i.ah, 1, !dbg !25490           ; 2 uses
  %i.bd = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !25491 ; 2 uses
    #dbg_value(i64 %i.bd, !25308, !DIExpression(), !25339)
    #dbg_value(i64 %i.bd, !25330, !DIExpression(), !25332)
  %i.be = icmp eq i64 %i.bd, %i.i, !dbg !25488
  br i1 %i.be, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !25488, !llvm.loop !25246

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %i.bc, %scalar.ph ], !dbg !25492
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !25492, !noalias !25382
  ret void, !dbg !25493
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipB1d_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2f_5style12BackendColorEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4L_8for_each4callTB1D_B1D_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB67_3VecB5O_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25498 {
bb.a:
    #dbg_value(ptr poison, !11117, !DIExpression(), !25579)
    #dbg_declare(ptr %0, !25573, !DIExpression(), !25599)
    #dbg_declare(ptr poison, !25574, !DIExpression(), !25600)
    #dbg_declare(ptr %1, !25575, !DIExpression(), !25601)
    #dbg_declare(ptr %1, !25602, !DIExpression(), !25611)
    #dbg_declare(ptr poison, !25605, !DIExpression(), !25612)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !25706 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !25595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25613)
    #dbg_value(ptr %.sroa.0.0.copyload, !25585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25614)
    #dbg_value(i64 poison, !25595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25613)
    #dbg_value(i64 poison, !25585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25614)
    #dbg_value(ptr poison, !25595, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25613)
    #dbg_value(ptr poison, !25585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25614)
    #dbg_value(i64 poison, !25595, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25613)
    #dbg_value(i64 poison, !25585, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25614)
    #dbg_value(i64 poison, !25595, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25613)
    #dbg_value(i64 poison, !25585, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25614)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !25706
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !25706 ; 6 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !25595, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25613)
    #dbg_value(i64 %.sroa.6.0.copyload, !25585, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25614)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25706
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !25706 ; 3 uses
    #dbg_value(i64 %.sroa.7.0.copyload, !25595, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !25613)
    #dbg_value(i64 %.sroa.7.0.copyload, !25585, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !25614)
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !25707 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.copyload, !25597, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25613)
    #dbg_value(ptr %.sroa.03.0.copyload, !25587, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25614)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25707
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !25707 ; 3 uses
    #dbg_value(i64 %.sroa.44.0.copyload, !25597, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25613)
    #dbg_value(i64 %.sroa.44.0.copyload, !25587, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25614)
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25707
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !25707 ; 3 uses
    #dbg_value(ptr %.sroa.65.0.copyload, !25597, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25613)
    #dbg_value(ptr %.sroa.65.0.copyload, !25587, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25614)
    #dbg_declare(ptr poison, !25596, !DIExpression(), !25615)
    #dbg_value(ptr poison, !25616, !DIExpression(), !25619)
    #dbg_value(ptr poison, !25620, !DIExpression(), !25626)
    #dbg_value(ptr poison, !25623, !DIExpression(), !25627)
    #dbg_declare(ptr poison, !25586, !DIExpression(), !25628)
    #dbg_declare(ptr poison, !25588, !DIExpression(), !25629)
    #dbg_value(i64 1, !25630, !DIExpression(), !25633)
    #dbg_value(i64 1, !25634, !DIExpression(), !25637)
    #dbg_value(ptr poison, !11131, !DIExpression(), !25638)
  %i.a = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !25708 ; 3 uses
    #dbg_value(i64 %i.a, !25589, !DIExpression(), !25639)
    #dbg_value(i64 0, !25590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25640)
    #dbg_value(i64 %i.a, !25590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25640)
    #dbg_value(ptr undef, !25623, !DIExpression(), !25627)
    #dbg_value(ptr undef, !25620, !DIExpression(), !25626)
    #dbg_value(ptr undef, !25616, !DIExpression(), !25619)
    #dbg_value(ptr undef, !25617, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25641)
  %.not.i.i = icmp eq i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !25709
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !25710

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25706
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !25706
    #dbg_value(i64 %.sroa.52.0.copyload, !25595, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25613)
    #dbg_value(i64 %.sroa.52.0.copyload, !25585, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25614)
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25706
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !25706, !nonnull !3744, !noundef !3744
    #dbg_value(ptr %.sroa.41.0.copyload, !25595, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25613)
    #dbg_value(ptr %.sroa.41.0.copyload, !25585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25614)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.sroa.41.0.copyload, i64 %.sroa.52.0.copyload, !dbg !25710 ; 3 uses
  %.neg = add i64 %.sroa.6.0.copyload, 1, !dbg !25710
  %xtraiter = and i64 %i.a, 1, !dbg !25710
  %i.b = icmp eq i64 %.sroa.7.0.copyload, %.neg, !dbg !25710
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.i.i.new, !dbg !25710

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.a, -2, !dbg !25710
  br label %bb.b, !dbg !25710

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.new
  %i.c = phi i64 [ %.sroa.44.0.copyload, %.lr.ph.i.i.new ], [ %i.s, %bb.b ], !dbg !25711 ; 3 uses
  %.sroa.0.022.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.k, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.b ]
    #dbg_value(i64 %.sroa.0.022.i.i, !25621, !DIExpression(), !25642)
    #dbg_value(i64 %.sroa.0.022.i.i, !25631, !DIExpression(), !25633)
    #dbg_value(i64 %.sroa.0.022.i.i, !25635, !DIExpression(), !25637)
  %i.d = or disjoint i64 %.sroa.0.022.i.i, 1, !dbg !25711
    #dbg_value(i64 %i.d, !25590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25640)
    #dbg_value(i64 %.sroa.0.022.i.i, !25591, !DIExpression(), !25643)
    #dbg_value(ptr undef, !11117, !DIExpression(), !25579)
    #dbg_value(i64 %.sroa.0.022.i.i, !11124, !DIExpression(), !25579)
  %i.e = add i64 %.sroa.0.022.i.i, %.sroa.6.0.copyload, !dbg !25712 ; 2 uses
    #dbg_value(i64 %i.e, !11125, !DIExpression(), !25644)
    #dbg_value(ptr poison, !11141, !DIExpression(), !25645)
    #dbg_value(i64 %i.e, !11144, !DIExpression(), !25645)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.e, !dbg !25713
    #dbg_value(ptr poison, !11148, !DIExpression(), !25646)
    #dbg_value(i64 %i.e, !11152, !DIExpression(), !25646)
    #dbg_value(ptr poison, !11156, !DIExpression(), !25647)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11158, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25647)
    #dbg_value(ptr poison, !11160, !DIExpression(), !25648)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25648)
    #dbg_value(ptr poison, !11141, !DIExpression(), !25649)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11144, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25649)
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.e, !dbg !25714
    #dbg_value(ptr poison, !25650, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25658)
    #dbg_declare(ptr poison, !25654, !DIExpression(), !25659)
    #dbg_value(ptr poison, !25655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25658)
    #dbg_value(ptr poison, !25655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25658)
    #dbg_value(i32 poison, !25660, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25669)
    #dbg_value(i32 poison, !25670, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25679)
    #dbg_value(i32 poison, !25660, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25669)
    #dbg_value(i32 poison, !25670, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25679)
    #dbg_value(i32 poison, !25660, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25669)
    #dbg_value(i32 poison, !25670, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25679)
    #dbg_value(i32 poison, !25660, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25669)
    #dbg_value(i32 poison, !25670, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25679)
    #dbg_value(ptr poison, !25664, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25669)
    #dbg_declare(ptr poison, !25665, !DIExpression(), !25680)
    #dbg_value(ptr poison, !25674, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25679)
    #dbg_value(ptr poison, !25675, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25679)
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c, !dbg !25715
  %i.h = load <2 x i32>, ptr %i.f, align 4, !dbg !25716, !noalias !25681
  %i.i = load <2 x i32>, ptr %gep.i.i, align 4, !dbg !25716, !noalias !25681
  %i.j = shufflevector <2 x i32> %i.h, <2 x i32> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !25717
  store <4 x i32> %i.j, ptr %i.g, align 4, !dbg !25717, !noalias !25682
    #dbg_value(ptr undef, !25623, !DIExpression(), !25627)
    #dbg_value(ptr undef, !25620, !DIExpression(), !25626)
    #dbg_value(ptr undef, !25616, !DIExpression(), !25619)
    #dbg_value(ptr undef, !25617, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25641)
    #dbg_value(i64 %i.d, !25621, !DIExpression(), !25642)
    #dbg_value(i64 %i.d, !25631, !DIExpression(), !25633)
    #dbg_value(i64 %i.d, !25635, !DIExpression(), !25637)
  %i.k = add nuw i64 %.sroa.0.022.i.i, 2, !dbg !25711 ; 2 uses
    #dbg_value(i64 %i.k, !25590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25640)
    #dbg_value(i64 %i.d, !25591, !DIExpression(), !25643)
    #dbg_value(i64 %i.d, !11124, !DIExpression(), !25579)
  %i.l = add i64 %i.d, %.sroa.6.0.copyload, !dbg !25712 ; 2 uses
    #dbg_value(i64 %i.l, !11125, !DIExpression(), !25644)
    #dbg_value(i64 %i.l, !11144, !DIExpression(), !25645)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.l, !dbg !25713
    #dbg_value(i64 %i.l, !11152, !DIExpression(), !25646)
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.l, !dbg !25714
    #dbg_declare(ptr poison, !25654, !DIExpression(), !25659)
    #dbg_value(ptr poison, !25655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25658)
    #dbg_value(ptr poison, !25655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25658)
    #dbg_value(i32 poison, !25660, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25669)
    #dbg_value(i32 poison, !25670, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25679)
    #dbg_value(i32 poison, !25660, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25669)
    #dbg_value(i32 poison, !25670, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25679)
    #dbg_value(i32 poison, !25660, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25669)
    #dbg_value(i32 poison, !25670, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25679)
    #dbg_value(i32 poison, !25660, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25669)
    #dbg_value(i32 poison, !25670, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25679)
    #dbg_declare(ptr poison, !25665, !DIExpression(), !25680)
  %i.n = getelementptr [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c, !dbg !25715
  %i.o = getelementptr i8, ptr %i.n, i64 16, !dbg !25715
  %i.p = load <2 x i32>, ptr %i.m, align 4, !dbg !25716, !noalias !25681
  %i.q = load <2 x i32>, ptr %gep.i.i.1, align 4, !dbg !25716, !noalias !25681
  %i.r = shufflevector <2 x i32> %i.p, <2 x i32> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !25717
  store <4 x i32> %i.r, ptr %i.o, align 4, !dbg !25717, !noalias !25682
  %i.s = add i64 %i.c, 2, !dbg !25718             ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !25710  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !25710
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, label %bb.b, !dbg !25710

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !25710
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.epil.preheader, !dbg !25710

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi i64 [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.s, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.022.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.k, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i64 %i.a to i1, !dbg !25710
  tail call void @llvm.assume(i1 %lcmp.mod7), !dbg !25710
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25621, !DIExpression(), !25642)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25631, !DIExpression(), !25633)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25635, !DIExpression(), !25637)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25590, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25640)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25591, !DIExpression(), !25643)
    #dbg_value(ptr undef, !11117, !DIExpression(), !25579)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !11124, !DIExpression(), !25579)
  %i.t = add i64 %.sroa.0.022.i.i.epil.init, %.sroa.6.0.copyload, !dbg !25712 ; 2 uses
    #dbg_value(i64 %i.t, !11125, !DIExpression(), !25644)
    #dbg_value(ptr poison, !11141, !DIExpression(), !25645)
    #dbg_value(i64 %i.t, !11144, !DIExpression(), !25645)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.t, !dbg !25713
    #dbg_value(ptr poison, !11148, !DIExpression(), !25646)
    #dbg_value(i64 %i.t, !11152, !DIExpression(), !25646)
    #dbg_value(ptr poison, !11156, !DIExpression(), !25647)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11158, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25647)
    #dbg_value(ptr poison, !11160, !DIExpression(), !25648)
end_hunk_0
begin_hunk_1_@llvm.ceil.v4f64
!24691 = !DILocalVariable(name: "i", scope: !24574, file: !10269, line: 269, type: !3717, align: 64)
!24692 = !DILocalVariable(name: "len", scope: !24573, file: !10269, line: 270, type: !3717, align: 64)
!24693 = !DILocalVariable(name: "len", scope: !24572, file: !10269, line: 29, type: !3717, align: 64)
!24694 = !DILocalVariable(name: "end", scope: !24571, file: !10269, line: 33, type: !2037, align: 64)
!24695 = !{!24686, !24687, !24680, !24688, !24689, !24690, !24691, !24692, !24693, !24694}
!24696 = !DITemplateTypeParameter(name: "F", type: !24570)
!24697 = !{!10203, !10662, !24696}
!24698 = !DILocation(line: 0, scope: !24578, inlinedAt: !24579)
!24699 = !DILocation(line: 254, column: 33, scope: !24578, inlinedAt: !24579)
!24700 = !DILocation(line: 268, column: 21, scope: !24575, inlinedAt: !24579)
!24701 = !DILocalVariable(name: "pointee_size", scope: !24581, file: !4690, line: 731, type: !3717, align: 64)
!24702 = !DILocalVariable(name: "self", arg: 1, scope: !24580, file: !4690, line: 706, type: !10971)
!24703 = !DILocalVariable(name: "origin", arg: 2, scope: !24580, file: !4690, line: 706, type: !10971)
!24704 = !{!24702, !24703, !24701}
!24705 = !DILocation(line: 0, scope: !24581, inlinedAt: !24586)
!24706 = !DILocalVariable(name: "self", arg: 1, scope: !24582, file: !6790, line: 888, type: !10958)
!24707 = !DILocalVariable(name: "origin", arg: 2, scope: !24582, file: !6790, line: 888, type: !10971)
!24708 = !{!24706, !24707}
!24709 = !DILocalVariable(name: "self", arg: 1, scope: !24583, file: !7085, line: 893, type: !2037)
!24710 = !DILocalVariable(name: "subtracted", arg: 2, scope: !24583, file: !7085, line: 893, type: !2037)
!24711 = !{!24709, !24710}
!24712 = !DILocalVariable(name: "rhs", scope: !24587, file: !4698, line: 1031, type: !3717, align: 64)
!24713 = !DILocalVariable(name: "self", arg: 1, scope: !24587, file: !4698, line: 1031, type: !3717)
!24714 = !{!24713, !24712}
!24715 = !DILocation(line: 0, scope: !24587, inlinedAt: !24588)
!24716 = !DILocation(line: 0, scope: !24576, inlinedAt: !24579)
!24717 = !DILocalVariable(name: "self", arg: 1, scope: !24589, file: !7085, line: 1662, type: !10991)
!24718 = !DILocalVariable(name: "other", arg: 2, scope: !24589, file: !7085, line: 1662, type: !10991)
!24719 = !{!24717, !24718}
!24720 = !DILocation(line: 1662, column: 11, scope: !24589, inlinedAt: !24590)
!24721 = !DILocation(line: 1662, column: 18, scope: !24589, inlinedAt: !24590)
!24722 = !DILocation(line: 0, scope: !24574, inlinedAt: !24579)
!24723 = !DILocation(line: 0, scope: !24571, inlinedAt: !24579)
!24724 = !DILocation(line: 0, scope: !24583, inlinedAt: !24584)
!24725 = !DILocation(line: 0, scope: !24582, inlinedAt: !24585)
!24726 = !DILocation(line: 0, scope: !24580, inlinedAt: !24586)
!24727 = !DILocation(line: 0, scope: !24573, inlinedAt: !24579)
!24728 = !DILocalVariable(name: "self", arg: 1, scope: !24591, file: !7085, line: 619, type: !2037)
!24729 = !DILocalVariable(name: "count", arg: 2, scope: !24591, file: !7085, line: 619, type: !3717)
!24730 = !{!24728, !24729}
!24731 = !DILocation(line: 0, scope: !24591, inlinedAt: !24592)
!24732 = !{!24594, !24568, !24569}
!24733 = !DILocalVariable(name: "g", scope: !24595, file: !10541, line: 86, type: !24563, align: 64)
!24734 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<&i32, i32, (), plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>, core::iter::adapters::map::map_fold::{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#1}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#1}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>>", baseType: !24570, size: 64, align: 64, dwarfAddressSpace: 0)
!24735 = !{null, !24734, !3714, !10411}
!24736 = !DISubroutineType(cc: DW_CC_nocall, types: !24735)
!24737 = !DILocalVariable(name: "acc", arg: 2, scope: !24595, file: !10541, line: 88, type: !3714)
!24738 = !DILocalVariable(name: "elt", arg: 3, scope: !24595, file: !10541, line: 88, type: !10411)
!24739 = !DILocalVariable(name: "f", scope: !24595, file: !10541, line: 85, type: !2040, align: 64)
!24740 = !{!24737, !24738, !24733, !24739}
!24741 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !2040)
!24742 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !24563)
!24743 = !{!10975, !10982, !10670, !24741, !24742}
!24744 = !DILocation(line: 0, scope: !24595, inlinedAt: !24596)
!24745 = !DILocation(line: 88, column: 11, scope: !24595, inlinedAt: !24596)
!24746 = !DILocalVariable(name: "g", scope: !24597, file: !10541, line: 86, type: !24559, align: 64)
!24747 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<i32, i32, (), plotters::drawing::area::{impl#0}::split_grid::{closure_env#1}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#1}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>>", baseType: !24563, size: 64, align: 64, dwarfAddressSpace: 0)
!24748 = !{null, !24747, !3714, !3882}
!24749 = !DISubroutineType(types: !24748)
!24750 = !DILocalVariable(name: "acc", arg: 2, scope: !24597, file: !10541, line: 88, type: !3714)
!24751 = !DILocalVariable(name: "elt", arg: 3, scope: !24597, file: !10541, line: 88, type: !3882)
!24752 = !DILocalVariable(name: "f", scope: !24597, file: !10541, line: 85, type: !24560, align: 64)
!24753 = !{!24750, !24751, !24746, !24752}
!24754 = !DILocation(line: 0, scope: !24597, inlinedAt: !24598)
!24755 = !DILocation(line: 88, column: 11, scope: !24597, inlinedAt: !24598)
!24756 = !DILocalVariable(name: "self", scope: !24599, file: !10565, line: 72, type: !10961, align: 64)
!24757 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut plotters::drawing::area::{impl#0}::split_grid::{closure_env#1}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>", baseType: !24560, size: 64, align: 64, dwarfAddressSpace: 0)
!24758 = !{!3882, !24757, !3882}
!24759 = !DISubroutineType(cc: DW_CC_nocall, types: !24758)
!24760 = !DILocalVariable(name: "v", arg: 2, scope: !24599, file: !10565, line: 79, type: !3882)
!24761 = !{!24760, !24756}
!24762 = !DILocation(line: 0, scope: !24599, inlinedAt: !24600)
!24763 = !{!24604, !24602, !24594, !24568, !24569}
!24764 = !DILocalVariable(name: "f", scope: !24605, file: !10604, line: 883, type: !24558, align: 64)
!24765 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<i32, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#1}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>>", baseType: !24559, size: 64, align: 64, dwarfAddressSpace: 0)
!24766 = !{null, !24765, !3714, !3882}
!24767 = !DISubroutineType(types: !24766)
!24768 = !DILocalVariable(name: "item", arg: 3, scope: !24605, file: !10604, line: 884, type: !3882)
!24769 = !DILocalVariable(arg: 2, scope: !24605, file: !10604, line: 884, type: !3714)
!24770 = !{!24768, !24764, !24769}
!24771 = !DITemplateTypeParameter(name: "impl FnMut(T)", type: !24558)
!24772 = !{!10203, !24771}
!24773 = !DILocation(line: 0, scope: !24605, inlinedAt: !24606)
!24774 = !DILocation(line: 884, column: 19, scope: !24605, inlinedAt: !24606)
!24775 = !DILocalVariable(name: "ptr", scope: !24607, file: !4841, line: 4132, type: !10958, align: 64)
!24776 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<i32, alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, plotters::drawing::area::{impl#0}::split_grid::{closure_env#1}<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>, core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::drawing::area::{impl#9}::split_by_breakpoints::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, i32, &[i32], &[i32]>>>>>", baseType: !24558, size: 64, align: 64, dwarfAddressSpace: 0)
!24777 = !{null, !24776, !3882}
!24778 = !DISubroutineType(types: !24777)
!24779 = !DILocalVariable(name: "element", arg: 2, scope: !24607, file: !4841, line: 4134, type: !3882)
!24780 = !DILocalVariable(name: "local_len", scope: !24607, file: !4841, line: 4133, type: !1958, align: 64)
!24781 = !{!24779, !24775, !24780}
!24782 = !DITemplateTypeParameter(name: "impl iter::TrustedLen<Item = T>", type: !24561)
!24783 = !{!10203, !3764, !24782}
!24784 = !DILocation(line: 0, scope: !24607, inlinedAt: !24608)
!24785 = !{!24614, !24612, !24604, !24602, !24594, !24568, !24569}
!24786 = !{null, !24776}
!24787 = !DISubroutineType(cc: DW_CC_nocall, types: !24786)
!24788 = !DILocalVariable(arg: 1, scope: !24619, file: !4869, line: 848, type: !24776)
!24789 = !{!24788}
!24790 = !DITemplateTypeParameter(name: "T", type: !24558)
!24791 = !{!24790}
!24792 = !{null, !24765}
!24793 = !DISubroutineType(cc: DW_CC_nocall, types: !24792)
!24794 = !DILocalVariable(arg: 1, scope: !24620, file: !4869, line: 848, type: !24765)
!24795 = !{!24794}
!24796 = !DITemplateTypeParameter(name: "T", type: !24559)
!24797 = !{!24796}
!24798 = !{null, !24747}
!24799 = !DISubroutineType(cc: DW_CC_nocall, types: !24798)
!24800 = !DILocalVariable(arg: 1, scope: !24621, file: !4869, line: 848, type: !24747)
!24801 = !{!24800}
!24802 = !DITemplateTypeParameter(name: "T", type: !24563)
!24803 = !{!24802}
!24804 = !{null, !24734}
!24805 = !DISubroutineType(cc: DW_CC_nocall, types: !24804)
!24806 = !DILocalVariable(arg: 1, scope: !24622, file: !4869, line: 848, type: !24734)
!24807 = !{!24806}
!24808 = !DITemplateTypeParameter(name: "T", type: !24570)
!24809 = !{!24808}
!24810 = !DILocation(line: 128, column: 39, scope: !24562)
!24811 = !DILocation(line: 88, column: 5, scope: !24564, inlinedAt: !24664)
!24812 = !DILocation(line: 128, column: 19, scope: !24562)
!24813 = !DILocation(line: 128, column: 9, scope: !24565, inlinedAt: !24566)
!24814 = !DILocation(line: 1663, column: 9, scope: !24589, inlinedAt: !24590)
!24815 = !DILocation(line: 25, column: 86, scope: !24578, inlinedAt: !24579)
!24816 = !DILocation(line: 734, column: 18, scope: !24581, inlinedAt: !24586)
!24817 = !DILocation(line: 28, column: 9, scope: !24574, inlinedAt: !24579)
!24818 = !DILocation(line: 627, column: 28, scope: !24591, inlinedAt: !24592)
!24819 = !DILocation(line: 0, scope: !24575, inlinedAt: !24579)
!24820 = !DILocation(line: 274, column: 27, scope: !24573, inlinedAt: !24579)
!24821 = !DILocation(line: 79, column: 40, scope: !24599, inlinedAt: !24600)
!24822 = !DILocation(line: 79, column: 36, scope: !24599, inlinedAt: !24600)
!24823 = !DILocation(line: 971, column: 18, scope: !24609, inlinedAt: !24610)
!24824 = !DILocation(line: 1964, column: 41, scope: !24615, inlinedAt: !24616)
!24825 = !DILocation(line: 19, column: 9, scope: !24617, inlinedAt: !24618)
!24826 = !DILocation(line: 1043, column: 17, scope: !24587, inlinedAt: !24588)
!24827 = !DILocation(line: 279, column: 24, scope: !24573, inlinedAt: !24579)
!24828 = !DILocation(line: 31, column: 9, scope: !1974, inlinedAt: !24628)
!24829 = !DILocation(line: 129, column: 6, scope: !24562)
!24830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>", scope: !10613, file: !3148, size: 192, align: 64, elements: !24931, templateParams: !3744, identifier: "e1a3613549a6fa00885cf715493ee774")
!24831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>", scope: !10611, file: !3148, size: 192, align: 64, elements: !24928, templateParams: !3744, identifier: "599e37fdd9706fce5bc3b1e8471e7ad6")
!24832 = distinct !DISubprogram(name: "fold<(i32, i32), core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>", linkageName: "_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1C_14TriangleMarkerTdlElEINtB1E_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2F_ENCINvMs6_NtNtB1G_7drawing4areaINtB4N_11DrawingAreaB31_INtNtNtNtB1G_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5D_8ranged1d5types7numeric14RangedCoordf64NtB6n_14RangedCoordi32EE4drawB2i_NtB1E_16BackendCoordOnlyE0EE0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8l_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9B_3VecB9o_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10542, file: !10541, line: 124, type: !24926, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24937, retainedNodes: !24935)
!24833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>", scope: !10896, file: !3148, size: 384, align: 64, elements: !24946, templateParams: !3744, identifier: "786d81163e5ecab25d1cfc35815ce5cc")
!24834 = distinct !DISubprogram(name: "map_fold<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>", linkageName: "_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB17_14TriangleMarkerTdlElEINtB19_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB2_3MapINtNtNtB6_7sources4once4OnceRB2a_ENCINvMs6_NtNtB1b_7drawing4areaINtB4o_11DrawingAreaB2w_INtNtNtNtB1b_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5e_8ranged1d5types7numeric14RangedCoordf64NtB5Y_14RangedCoordi32EE4drawB1N_NtB19_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8S_3VecBT_E14extend_trustedIB3y_IB3y_INtNtNtB8_5slice4iter4IterlENCB10_0EBY_EE0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !4212, file: !10541, line: 84, type: !24943, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24951, retainedNodes: !24948)
!24835 = distinct !DISubprogram(name: "fold<f64, core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, (), core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>>", linkageName: "_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10542, file: !10541, line: 124, type: !24957, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24962, retainedNodes: !24960)
!24836 = distinct !DILocation(line: 128, column: 19, scope: !24832)
!24837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>>", scope: !10896, file: !3148, size: 384, align: 64, elements: !24968, templateParams: !3744, identifier: "6f6832d59e0d2cb4403b34a2bc9ff7c")
!24838 = distinct !DILexicalBlock(scope: !24841, file: !10269, line: 33, column: 13)
!24839 = distinct !DILexicalBlock(scope: !24841, file: !10269, line: 29, column: 13)
!24840 = distinct !DILexicalBlock(scope: !24841, file: !10269, line: 270, column: 17)
!24841 = distinct !DILexicalBlock(scope: !24842, file: !10269, line: 269, column: 17)
!24842 = distinct !DILexicalBlock(scope: !24845, file: !10269, line: 268, column: 17)
!24843 = distinct !DILexicalBlock(scope: !24845, file: !10269, line: 33, column: 13)
!24844 = distinct !DILexicalBlock(scope: !24845, file: !10269, line: 29, column: 13)
!24845 = distinct !DISubprogram(name: "fold<i32, (), core::iter::adapters::map::map_fold::{closure_env#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>>>", linkageName: "_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2o_14TriangleMarkerTdlElEINtB2q_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB1I_3MapINtNtNtBY_7sources4once4OnceRB3r_ENCINvMs6_NtNtB2s_7drawing4areaINtB5G_11DrawingAreaB3N_INtNtNtNtB2s_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6w_8ranged1d5types7numeric14RangedCoordf64NtB7g_14RangedCoordi32EE4drawB34_NtB2q_16BackendCoordOnlyE0EE0NCIB1G_dTllEuNCB2h_s_0NCINvNvBS_8for_each4callB9b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecB9b_E14extend_trustedIB4P_IB4P_BF_B2f_EB9g_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10983, file: !10269, line: 254, type: !24970, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24982, retainedNodes: !24980)
!24846 = distinct !DILocation(line: 128, column: 19, scope: !24835, inlinedAt: !24836)
!24847 = distinct !DISubprogram(name: "offset_from_unsigned<i32>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPl20offset_from_unsignedCsaTqK2fWTXJW_11qlog_dancer", scope: !4692, file: !4690, line: 706, type: !10985, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, retainedNodes: !24989)
!24848 = distinct !DILexicalBlock(scope: !24847, file: !4690, line: 731, column: 9)
!24849 = distinct !DISubprogram(name: "offset_from_unsigned<i32>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOl20offset_from_unsignedCsaTqK2fWTXJW_11qlog_dancer", scope: !6792, file: !6790, line: 888, type: !10987, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, retainedNodes: !24993)
!24850 = distinct !DISubprogram(name: "offset_from_unsigned<i32>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNulllE20offset_from_unsignedCsaTqK2fWTXJW_11qlog_dancer", scope: !2037, file: !7085, line: 893, type: !10989, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, declaration: !10990, retainedNodes: !24996)
!24851 = distinct !DILocation(line: 57, column: 30, scope: !24838, inlinedAt: !24846)
!24852 = distinct !DILocation(line: 898, column: 32, scope: !24850, inlinedAt: !24851)
!24853 = distinct !DILocation(line: 893, column: 37, scope: !24849, inlinedAt: !24852)
!24854 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !10908, file: !4698, line: 1031, type: !10910, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !24999)
!24855 = distinct !DILocation(line: 278, column: 36, scope: !24840, inlinedAt: !24846)
!24856 = distinct !DISubprogram(name: "eq<i32>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNulllENtNtB9_3cmp9PartialEq2eqCsaTqK2fWTXJW_11qlog_dancer", scope: !10268, file: !7085, line: 1662, type: !10993, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, retainedNodes: !25004)
!24857 = distinct !DILocation(line: 44, column: 20, scope: !24843, inlinedAt: !24846)
!24858 = distinct !{!24858, !"LVerDomain"}
!24859 = distinct !{!24859, !24858}
!24860 = distinct !{!24860, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer"}
!24861 = distinct !{!24861, !24860, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24862 = distinct !{!24862, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2o_14TriangleMarkerTdlElEINtB2q_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB1I_3MapINtNtNtBY_7sources4once4OnceRB3r_ENCINvMs6_NtNtB2s_7drawing4areaINtB5G_11DrawingAreaB3N_INtNtNtNtB2s_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6w_8ranged1d5types7numeric14RangedCoordf64NtB7g_14RangedCoordi32EE4drawB34_NtB2q_16BackendCoordOnlyE0EE0NCIB1G_dTllEuNCB2h_s_0NCINvNvBS_8for_each4callB9b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecB9b_E14extend_trustedIB4P_IB4P_BF_B2f_EB9g_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer"}
!24863 = distinct !{!24863, !24862, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2o_14TriangleMarkerTdlElEINtB2q_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB1I_3MapINtNtNtBY_7sources4once4OnceRB3r_ENCINvMs6_NtNtB2s_7drawing4areaINtB5G_11DrawingAreaB3N_INtNtNtNtB2s_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6w_8ranged1d5types7numeric14RangedCoordf64NtB7g_14RangedCoordi32EE4drawB34_NtB2q_16BackendCoordOnlyE0EE0NCIB1G_dTllEuNCB2h_s_0NCINvNvBS_8for_each4callB9b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecB9b_E14extend_trustedIB4P_IB4P_BF_B2f_EB9g_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24864 = distinct !{!24864, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB17_14TriangleMarkerTdlElEINtB19_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2a_ENCINvMs6_NtNtB1b_7drawing4areaINtB4o_11DrawingAreaB2w_INtNtNtNtB1b_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5e_8ranged1d5types7numeric14RangedCoordf64NtB5Y_14RangedCoordi32EE4drawB1N_NtB19_16BackendCoordOnlyE0EE0NCIB2_dTllEuNCB10_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7S_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9c_3VecB7S_E14extend_trustedIB3y_IB3y_INtNtNtBa_5slice4iter4IterlEBY_EB7X_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer"}
!24865 = distinct !{!24865, !24864, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB17_14TriangleMarkerTdlElEINtB19_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2a_ENCINvMs6_NtNtB1b_7drawing4areaINtB4o_11DrawingAreaB2w_INtNtNtNtB1b_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5e_8ranged1d5types7numeric14RangedCoordf64NtB5Y_14RangedCoordi32EE4drawB1N_NtB19_16BackendCoordOnlyE0EE0NCIB2_dTllEuNCB10_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7S_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9c_3VecB7S_E14extend_trustedIB3y_IB3y_INtNtNtBa_5slice4iter4IterlEBY_EB7X_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24866 = distinct !{!24866, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB19_14TriangleMarkerTdlElEINtB1b_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2c_ENCINvMs6_NtNtB1d_7drawing4areaINtB4q_11DrawingAreaB2y_INtNtNtNtB1d_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5g_8ranged1d5types7numeric14RangedCoordf64NtB60_14RangedCoordi32EE4drawB1P_NtB1b_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8U_3VecBV_E14extend_trustedIB3A_IB3A_INtNtNtBa_5slice4iter4IterlENCB12_0EB10_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer"}
!24867 = distinct !{!24867, !24866, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB19_14TriangleMarkerTdlElEINtB1b_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2c_ENCINvMs6_NtNtB1d_7drawing4areaINtB4q_11DrawingAreaB2y_INtNtNtNtB1d_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5g_8ranged1d5types7numeric14RangedCoordf64NtB60_14RangedCoordi32EE4drawB1P_NtB1b_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8U_3VecBV_E14extend_trustedIB3A_IB3A_INtNtNtBa_5slice4iter4IterlENCB12_0EB10_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24868 = distinct !{!24868, !"_RNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB8_14TriangleMarkerTdlElEINtBa_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_7sources4once4OnceRB1a_ENCINvMs6_NtNtBc_7drawing4areaINtB42_11DrawingAreaB1v_INtNtNtNtBc_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4R_8ranged1d5types7numeric14RangedCoordf64NtB5A_14RangedCoordi32EE4drawBO_NtBa_16BackendCoordOnlyE0EEs_0CsaTqK2fWTXJW_11qlog_dancer"}
!24869 = distinct !{!24869, !24868, !"_RNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB8_14TriangleMarkerTdlElEINtBa_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_7sources4once4OnceRB1a_ENCINvMs6_NtNtBc_7drawing4areaINtB42_11DrawingAreaB1v_INtNtNtNtBc_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4R_8ranged1d5types7numeric14RangedCoordf64NtB5A_14RangedCoordi32EE4drawBO_NtBa_16BackendCoordOnlyE0EEs_0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24870 = distinct !DISubprogram(name: "{closure#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>", linkageName: "_RNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB8_14TriangleMarkerTdlElEINtBa_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_7sources4once4OnceRB1a_ENCINvMs6_NtNtBc_7drawing4areaINtB42_11DrawingAreaB1v_INtNtNtNtBc_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4R_8ranged1d5types7numeric14RangedCoordf64NtB5A_14RangedCoordi32EE4drawBO_NtBa_16BackendCoordOnlyE0EEs_0CsaTqK2fWTXJW_11qlog_dancer", scope: !11018, file: !4598, line: 120, type: !25017, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !11033, retainedNodes: !25022)
!24871 = distinct !DISubprogram(name: "{closure#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>", linkageName: "_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB19_14TriangleMarkerTdlElEINtB1b_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2c_ENCINvMs6_NtNtB1d_7drawing4areaINtB4q_11DrawingAreaB2y_INtNtNtNtB1d_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5g_8ranged1d5types7numeric14RangedCoordf64NtB60_14RangedCoordi32EE4drawB1P_NtB1b_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8U_3VecBV_E14extend_trustedIB3A_IB3A_INtNtNtBa_5slice4iter4IterlENCB12_0EB10_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10896, file: !10541, line: 88, type: !25025, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !24951, retainedNodes: !25030)
!24872 = distinct !DISubprogram(name: "{closure#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>>", linkageName: "_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB17_14TriangleMarkerTdlElEINtB19_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2a_ENCINvMs6_NtNtB1b_7drawing4areaINtB4o_11DrawingAreaB2w_INtNtNtNtB1b_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5e_8ranged1d5types7numeric14RangedCoordf64NtB5Y_14RangedCoordi32EE4drawB1N_NtB19_16BackendCoordOnlyE0EE0NCIB2_dTllEuNCB10_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7S_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9c_3VecB7S_E14extend_trustedIB3y_IB3y_INtNtNtBa_5slice4iter4IterlEBY_EB7X_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10896, file: !10541, line: 88, type: !25033, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25041, retainedNodes: !25038)
!24873 = distinct !DILocation(line: 274, column: 27, scope: !24840, inlinedAt: !24846)
!24874 = distinct !DILocation(line: 88, column: 21, scope: !24872, inlinedAt: !24873)
!24875 = distinct !DILocation(line: 88, column: 28, scope: !24871, inlinedAt: !24874)
!24876 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1S_NtNtCskKLDkoKarTP_4core7convert3numdINtB8_4FromlE4from", scope: !11059, file: !11057, line: 123, type: !11061, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25043)
!24877 = distinct !DILocation(line: 122, column: 38, scope: !24870, inlinedAt: !24875)
!24878 = distinct !{!24878, !24858}
!24879 = distinct !DILocation(line: 122, column: 56, scope: !24870, inlinedAt: !24875)
!24880 = distinct !{!24880, !24858}
!24881 = distinct !DILocation(line: 123, column: 56, scope: !24870, inlinedAt: !24875)
!24882 = distinct !DISubprogram(name: "add<i32>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNulllE3addCsaTqK2fWTXJW_11qlog_dancer", scope: !2037, file: !7085, line: 619, type: !10995, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, declaration: !10996, retainedNodes: !25048)
!24883 = distinct !DILocation(line: 274, column: 67, scope: !24840, inlinedAt: !24846)
!24884 = distinct !{!24884, !24858}
!24885 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1S_NtNtCskKLDkoKarTP_4core7convert3numdINtB8_4FromlE4from", scope: !11059, file: !11057, line: 123, type: !11061, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25052)
!24886 = distinct !DISubprogram(name: "{closure#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>", linkageName: "_RNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB8_14TriangleMarkerTdlElEINtBa_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_7sources4once4OnceRB1a_ENCINvMs6_NtNtBc_7drawing4areaINtB42_11DrawingAreaB1v_INtNtNtNtBc_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4R_8ranged1d5types7numeric14RangedCoordf64NtB5A_14RangedCoordi32EE4drawBO_NtBa_16BackendCoordOnlyE0EE0CsaTqK2fWTXJW_11qlog_dancer", scope: !11018, file: !4598, line: 119, type: !25055, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !11033, retainedNodes: !25058)
!24887 = distinct !DILocation(line: 88, column: 28, scope: !24872, inlinedAt: !24873)
!24888 = distinct !DILocation(line: 119, column: 28, scope: !24886, inlinedAt: !24887)
!24889 = distinct !DISubprogram(name: "cos", linkageName: "_RNvMNtCsG258MDvU3F_3std3f64d3cos", scope: !10436, file: !10434, line: 725, type: !10438, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25060)
!24890 = distinct !DILocation(line: 122, column: 30, scope: !24870, inlinedAt: !24875)
!24891 = distinct !DISubprogram(name: "ceil", linkageName: "_RNvNtNtCskKLDkoKarTP_4core3f644math4ceil", scope: !10441, file: !10439, line: 1913, type: !10438, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25062)
!24892 = distinct !DISubprogram(name: "ceil", linkageName: "_RNvMNtCsG258MDvU3F_3std3f64d4ceil", scope: !10436, file: !10434, line: 74, type: !10438, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25065)
!24893 = distinct !DILocation(line: 123, column: 70, scope: !24870, inlinedAt: !24875)
!24894 = distinct !DILocation(line: 75, column: 9, scope: !25063, inlinedAt: !24893)
!24895 = distinct !DISubprogram(name: "add<(i32, i32)>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTllE3addCsaTqK2fWTXJW_11qlog_dancer", scope: !6792, file: !6790, line: 937, type: !11063, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !4448)
!24896 = distinct !DISubprogram(name: "{closure#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>", linkageName: "_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecTllEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2y_14TriangleMarkerTdlElEINtB2A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB14_INtNtNtB1a_7sources4once4OnceRB3B_ENCINvMs6_NtNtB2C_7drawing4areaINtB5L_11DrawingAreaB3X_INtNtNtNtB2C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6B_8ranged1d5types7numeric14RangedCoordf64NtB7l_14RangedCoordi32EE4drawB3e_NtB2A_16BackendCoordOnlyE0EE0ENCB2r_s_0EE0CsaTqK2fWTXJW_11qlog_dancer", scope: !10613, file: !4841, line: 4134, type: !25068, scopeLine: 4134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25074, retainedNodes: !25072)
!24897 = distinct !DISubprogram(name: "{closure#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapIB2p_INtNtNtBe_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB3v_14TriangleMarkerTdlElEINtB3x_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB2p_INtNtNtBc_7sources4once4OnceRB4y_ENCINvMs6_NtNtB3z_7drawing4areaINtB6H_11DrawingAreaB4U_INtNtNtNtB3z_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB7x_8ranged1d5types7numeric14RangedCoordf64NtB8h_14RangedCoordi32EE4drawB4b_NtB3x_16BackendCoordOnlyE0EE0ENCB3o_s_0EE0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10611, file: !10604, line: 884, type: !25077, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25083, retainedNodes: !25081)
!24898 = distinct !DILocation(line: 88, column: 21, scope: !24871, inlinedAt: !24874)
!24899 = distinct !DILocation(line: 884, column: 29, scope: !24897, inlinedAt: !24898)
!24900 = distinct !DILocation(line: 4135, column: 36, scope: !24896, inlinedAt: !24899)
!24901 = distinct !DISubprogram(name: "write<(i32, i32)>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeTllEECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 1941, type: !11065, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !4448)
!24902 = distinct !DILocation(line: 4135, column: 21, scope: !24896, inlinedAt: !24899)
!24903 = distinct !{!24903, !24858}
!24904 = distinct !{!24904, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapIB2p_INtNtNtBe_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB3v_14TriangleMarkerTdlElEINtB3x_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB2p_INtNtNtBc_7sources4once4OnceRB4y_ENCINvMs6_NtNtB3z_7drawing4areaINtB6H_11DrawingAreaB4U_INtNtNtNtB3z_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB7x_8ranged1d5types7numeric14RangedCoordf64NtB8h_14RangedCoordi32EE4drawB4b_NtB3x_16BackendCoordOnlyE0EE0ENCB3o_s_0EE0E0CsaTqK2fWTXJW_11qlog_dancer"}
!24905 = distinct !{!24905, !24904, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapIB2p_INtNtNtBe_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB3v_14TriangleMarkerTdlElEINtB3x_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB2p_INtNtNtBc_7sources4once4OnceRB4y_ENCINvMs6_NtNtB3z_7drawing4areaINtB6H_11DrawingAreaB4U_INtNtNtNtB3z_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB7x_8ranged1d5types7numeric14RangedCoordf64NtB8h_14RangedCoordi32EE4drawB4b_NtB3x_16BackendCoordOnlyE0EE0ENCB3o_s_0EE0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24906 = distinct !{!24906, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecTllEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2y_14TriangleMarkerTdlElEINtB2A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB14_INtNtNtB1a_7sources4once4OnceRB3B_ENCINvMs6_NtNtB2C_7drawing4areaINtB5L_11DrawingAreaB3X_INtNtNtNtB2C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6B_8ranged1d5types7numeric14RangedCoordf64NtB7l_14RangedCoordi32EE4drawB3e_NtB2A_16BackendCoordOnlyE0EE0ENCB2r_s_0EE0CsaTqK2fWTXJW_11qlog_dancer"}
!24907 = distinct !{!24907, !24906, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecTllEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2y_14TriangleMarkerTdlElEINtB2A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB14_INtNtNtB1a_7sources4once4OnceRB3B_ENCINvMs6_NtNtB2C_7drawing4areaINtB5L_11DrawingAreaB3X_INtNtNtNtB2C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6B_8ranged1d5types7numeric14RangedCoordf64NtB7l_14RangedCoordi32EE4drawB3e_NtB2A_16BackendCoordOnlyE0EE0ENCB2r_s_0EE0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!24908 = distinct !{!24908, !11066, !11067}
!24909 = distinct !DILocation(line: 122, column: 70, scope: !24870, inlinedAt: !24875)
!24910 = distinct !DILocation(line: 75, column: 9, scope: !24892, inlinedAt: !24909)
!24911 = distinct !DILocation(line: 123, column: 38, scope: !24870, inlinedAt: !24875)
!24912 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsexYYUdYSQU6_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !1958, file: !10705, line: 18, type: !10708, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, declaration: !10709)
!24913 = distinct !DILocation(line: 4139, column: 31, scope: !24896, inlinedAt: !24899)
!24914 = distinct !{!24914, !11066}
!24915 = distinct !DISubprogram(name: "drop_glue<alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBK_3VecTllEE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapIB1G_INtNtNtB4_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2T_14TriangleMarkerTdlElEINtB2V_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB1G_INtNtNtB1M_7sources4once4OnceRB3W_ENCINvMs6_NtNtB2X_7drawing4areaINtB66_11DrawingAreaB4i_INtNtNtNtB2X_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6W_8ranged1d5types7numeric14RangedCoordf64NtB7G_14RangedCoordi32EE4drawB3z_NtB2V_16BackendCoordOnlyE0EE0ENCB2M_s_0EE0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25107, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25111, retainedNodes: !25109)
!24916 = distinct !DISubprogram(name: "drop_glue<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1O_3VecB1B_E14extend_trustedINtNtNtBO_8adapters3map3MapIB2L_INtNtNtB4_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB3R_14TriangleMarkerTdlElEINtB3T_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB2L_INtNtNtBO_7sources4once4OnceRB4U_ENCINvMs6_NtNtB3V_7drawing4areaINtB73_11DrawingAreaB5g_INtNtNtNtB3V_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB7T_8ranged1d5types7numeric14RangedCoordf64NtB8D_14RangedCoordi32EE4drawB4x_NtB3T_16BackendCoordOnlyE0EE0ENCB3K_s_0EE0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25113, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25117, retainedNodes: !25115)
!24917 = distinct !DISubprogram(name: "drop_glue<core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1v_14TriangleMarkerTdlElEINtB1x_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtBG_3MapINtNtNtBK_7sources4once4OnceRB2y_ENCINvMs6_NtNtB1z_7drawing4areaINtB4M_11DrawingAreaB2U_INtNtNtNtB1z_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5C_8ranged1d5types7numeric14RangedCoordf64NtB6m_14RangedCoordi32EE4drawB2b_NtB1x_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1h_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9h_3VecB1h_E14extend_trustedIB3W_IB3W_INtNtNtB4_5slice4iter4IterlENCB1o_0EB1m_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25119, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25123, retainedNodes: !25121)
!24918 = distinct !DISubprogram(name: "drop_glue<core::iter::adapters::map::map_fold::{closure_env#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1t_14TriangleMarkerTdlElEINtB1v_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtBG_3MapINtNtNtBK_7sources4once4OnceRB2w_ENCINvMs6_NtNtB1x_7drawing4areaINtB4K_11DrawingAreaB2S_INtNtNtNtB1x_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5A_8ranged1d5types7numeric14RangedCoordf64NtB6k_14RangedCoordi32EE4drawB29_NtB1v_16BackendCoordOnlyE0EE0NCIBE_dTllEuNCB1m_s_0NCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB8e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9y_3VecB8e_E14extend_trustedIB3U_IB3U_INtNtNtB4_5slice4iter4IterlEB1k_EB8j_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25125, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25129, retainedNodes: !25127)
!24919 = distinct !DILocation(line: 284, column: 13, scope: !24845, inlinedAt: !24846)
!24920 = distinct !DILocation(line: 848, column: 1, scope: !24918, inlinedAt: !24919)
!24921 = distinct !DILocation(line: 848, column: 1, scope: !24917, inlinedAt: !24920)
!24922 = distinct !DILocation(line: 848, column: 1, scope: !24916, inlinedAt: !24921)
!24923 = distinct !DILocation(line: 848, column: 1, scope: !24915, inlinedAt: !24922)
!24924 = distinct !DILocation(line: 848, column: 1, scope: !1973, inlinedAt: !24923)
!24925 = !{null, !2045, !3714, !24831}
!24926 = !DISubroutineType(types: !24925)
!24927 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !24831, file: !3148, baseType: !24830, size: 192, align: 64)
!24928 = !{!24927}
!24929 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !24830, file: !3148, baseType: !11013, size: 64, align: 64, offset: 128)
!24930 = !DIDerivedType(tag: DW_TAG_member, name: "local_len", scope: !24830, file: !3148, baseType: !1958, size: 128, align: 64)
!24931 = !{!24929, !24930}
!24932 = !DILocalVariable(name: "self", arg: 1, scope: !24832, file: !10541, line: 124, type: !2045)
!24933 = !DILocalVariable(name: "init", arg: 2, scope: !24832, file: !10541, line: 124, type: !3714)
!24934 = !DILocalVariable(name: "g", arg: 3, scope: !24832, file: !10541, line: 124, type: !24831)
!24935 = !{!24932, !24933, !24934}
!24936 = !DITemplateTypeParameter(name: "G", type: !24831)
!24937 = !{!10543, !11028, !11029, !10670, !24936}
!24938 = !DILocation(line: 124, column: 21, scope: !24832)
!24939 = !DILocation(line: 124, column: 27, scope: !24832)
!24940 = !DILocation(line: 124, column: 38, scope: !24832)
!24941 = !DILocalVariable(name: "g", arg: 2, scope: !24834, file: !10541, line: 86, type: !24831)
!24942 = !{!24833, !2042, !24831}
!24943 = !DISubroutineType(types: !24942)
!24944 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !24833, file: !3148, baseType: !24831, size: 192, align: 64)
!24945 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !24833, file: !3148, baseType: !2042, size: 192, align: 64, offset: 192)
!24946 = !{!24944, !24945}
!24947 = !DILocalVariable(name: "f", arg: 1, scope: !24834, file: !10541, line: 85, type: !2042)
!24948 = !{!24947, !24941}
!24949 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !2042)
!24950 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !24831)
!24951 = !{!7601, !10543, !10670, !24949, !24950}
!24952 = !DILocation(line: 128, column: 30, scope: !24832)
!24953 = !DILocation(line: 86, column: 5, scope: !24834, inlinedAt: !24952)
!24954 = !DILocation(line: 0, scope: !24834, inlinedAt: !24952)
!24955 = !DILocalVariable(name: "g", arg: 3, scope: !24835, file: !10541, line: 124, type: !24833)
!24956 = !{null, !2044, !3714, !24833}
!24957 = !DISubroutineType(types: !24956)
!24958 = !DILocalVariable(name: "self", arg: 1, scope: !24835, file: !10541, line: 124, type: !2044)
!24959 = !DILocalVariable(name: "init", arg: 2, scope: !24835, file: !10541, line: 124, type: !3714)
!24960 = !{!24958, !24959, !24955}
!24961 = !DITemplateTypeParameter(name: "G", type: !24833)
!24962 = !{!11031, !10979, !11026, !10670, !24961}
!24963 = !DILocation(line: 0, scope: !24835, inlinedAt: !24836)
!24964 = !DILocation(line: 124, column: 27, scope: !24835, inlinedAt: !24836)
!24965 = !DILocalVariable(name: "f", arg: 3, scope: !24845, file: !10269, line: 254, type: !24837)
!24966 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !24837, file: !3148, baseType: !24833, size: 384, align: 64)
!24967 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !24837, file: !3148, baseType: !2043, align: 8, offset: 384)
!24968 = !{!24966, !24967}
!24969 = !{null, !2038, !3714, !24837}
!24970 = !DISubroutineType(types: !24969)
!24971 = !DILocalVariable(name: "self", arg: 1, scope: !24845, file: !10269, line: 254, type: !2038)
!24972 = !DILocalVariable(name: "init", arg: 2, scope: !24845, file: !10269, line: 254, type: !3714)
!24973 = !DILocalVariable(name: "len", scope: !24844, file: !10269, line: 29, type: !3717, align: 64)
!24974 = !DILocalVariable(name: "end", scope: !24843, file: !10269, line: 33, type: !2037, align: 64)
!24975 = !DILocalVariable(name: "acc", scope: !24842, file: !10269, line: 268, type: !3714, align: 8)
!24976 = !DILocalVariable(name: "i", scope: !24841, file: !10269, line: 269, type: !3717, align: 64)
!24977 = !DILocalVariable(name: "len", scope: !24840, file: !10269, line: 270, type: !3717, align: 64)
!24978 = !DILocalVariable(name: "len", scope: !24839, file: !10269, line: 29, type: !3717, align: 64)
!24979 = !DILocalVariable(name: "end", scope: !24838, file: !10269, line: 33, type: !2037, align: 64)
!24980 = !{!24971, !24972, !24965, !24973, !24974, !24975, !24976, !24977, !24978, !24979}
!24981 = !DITemplateTypeParameter(name: "F", type: !24837)
!24982 = !{!10203, !10662, !24981}
!24983 = !DILocation(line: 0, scope: !24845, inlinedAt: !24846)
!24984 = !DILocation(line: 254, column: 33, scope: !24845, inlinedAt: !24846)
!24985 = !DILocation(line: 268, column: 21, scope: !24842, inlinedAt: !24846)
!24986 = !DILocalVariable(name: "pointee_size", scope: !24848, file: !4690, line: 731, type: !3717, align: 64)
!24987 = !DILocalVariable(name: "self", arg: 1, scope: !24847, file: !4690, line: 706, type: !10971)
!24988 = !DILocalVariable(name: "origin", arg: 2, scope: !24847, file: !4690, line: 706, type: !10971)
!24989 = !{!24987, !24988, !24986}
!24990 = !DILocation(line: 0, scope: !24848, inlinedAt: !24853)
!24991 = !DILocalVariable(name: "self", arg: 1, scope: !24849, file: !6790, line: 888, type: !10958)
!24992 = !DILocalVariable(name: "origin", arg: 2, scope: !24849, file: !6790, line: 888, type: !10971)
!24993 = !{!24991, !24992}
!24994 = !DILocalVariable(name: "self", arg: 1, scope: !24850, file: !7085, line: 893, type: !2037)
!24995 = !DILocalVariable(name: "subtracted", arg: 2, scope: !24850, file: !7085, line: 893, type: !2037)
!24996 = !{!24994, !24995}
!24997 = !DILocalVariable(name: "rhs", scope: !24854, file: !4698, line: 1031, type: !3717, align: 64)
!24998 = !DILocalVariable(name: "self", arg: 1, scope: !24854, file: !4698, line: 1031, type: !3717)
!24999 = !{!24998, !24997}
!25000 = !DILocation(line: 0, scope: !24854, inlinedAt: !24855)
!25001 = !DILocation(line: 0, scope: !24843, inlinedAt: !24846)
!25002 = !DILocalVariable(name: "self", arg: 1, scope: !24856, file: !7085, line: 1662, type: !10991)
!25003 = !DILocalVariable(name: "other", arg: 2, scope: !24856, file: !7085, line: 1662, type: !10991)
!25004 = !{!25002, !25003}
!25005 = !DILocation(line: 1662, column: 11, scope: !24856, inlinedAt: !24857)
!25006 = !DILocation(line: 1662, column: 18, scope: !24856, inlinedAt: !24857)
!25007 = !DILocation(line: 0, scope: !24841, inlinedAt: !24846)
!25008 = !DILocation(line: 0, scope: !24838, inlinedAt: !24846)
!25009 = !DILocation(line: 0, scope: !24850, inlinedAt: !24851)
!25010 = !DILocation(line: 0, scope: !24849, inlinedAt: !24852)
!25011 = !DILocation(line: 0, scope: !24847, inlinedAt: !24853)
!25012 = !DILocation(line: 0, scope: !24840, inlinedAt: !24846)
!25013 = !{!24859}
!25014 = !{!24869, !24867, !24865, !24863, !24861}
!25015 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>", baseType: !2042, size: 64, align: 64, dwarfAddressSpace: 0)
!25016 = !{!185, !25015, !4240}
!25017 = !DISubroutineType(types: !25016)
!25018 = !DILocalVariable(name: "rad", arg: 2, scope: !24870, file: !4598, line: 120, type: !4240)
!25019 = !DILocalVariable(name: "size", scope: !24870, file: !4598, line: 116, type: !3882, align: 32)
!25020 = !DILocalVariable(name: "x", scope: !24870, file: !4598, line: 115, type: !3882, align: 32)
!25021 = !DILocalVariable(name: "y", scope: !24870, file: !4598, line: 115, type: !3882, align: 32)
!25022 = !{!25018, !25019, !25020, !25021}
!25023 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>", baseType: !24833, size: 64, align: 64, dwarfAddressSpace: 0)
!25024 = !{null, !25023, !3714, !4240}
!25025 = !DISubroutineType(types: !25024)
!25026 = !DILocalVariable(name: "acc", arg: 2, scope: !24871, file: !10541, line: 88, type: !3714)
!25027 = !DILocalVariable(name: "elt", arg: 3, scope: !24871, file: !10541, line: 88, type: !4240)
!25028 = !DILocalVariable(name: "g", scope: !24871, file: !10541, line: 86, type: !24831, align: 64)
!25029 = !DILocalVariable(name: "f", scope: !24871, file: !10541, line: 85, type: !2042, align: 64)
!25030 = !{!25026, !25027, !25028, !25029}
!25031 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>>>", baseType: !24837, size: 64, align: 64, dwarfAddressSpace: 0)
!25032 = !{null, !25031, !3714, !10411}
!25033 = !DISubroutineType(cc: DW_CC_nocall, types: !25032)
!25034 = !DILocalVariable(name: "acc", arg: 2, scope: !24872, file: !10541, line: 88, type: !3714)
!25035 = !DILocalVariable(name: "elt", arg: 3, scope: !24872, file: !10541, line: 88, type: !10411)
!25036 = !DILocalVariable(name: "g", scope: !24872, file: !10541, line: 86, type: !24833, align: 64)
!25037 = !DILocalVariable(name: "f", scope: !24872, file: !10541, line: 85, type: !2043, align: 8)
!25038 = !{!25034, !25035, !25036, !25037}
!25039 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !2043)
!25040 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !24833)
!25041 = !{!10975, !11031, !10670, !25039, !25040}
!25042 = !DILocalVariable(name: "small", arg: 1, scope: !24876, file: !11057, line: 123, type: !3882)
!25043 = !{!25042}
!25044 = !{!24878}
!25045 = !{!24880}
!25046 = !DILocalVariable(name: "self", arg: 1, scope: !24882, file: !7085, line: 619, type: !2037)
!25047 = !DILocalVariable(name: "count", arg: 2, scope: !24882, file: !7085, line: 619, type: !3717)
!25048 = !{!25046, !25047}
!25049 = !{!24884}
!25050 = !{!24863, !24861}
!25051 = !DILocalVariable(name: "small", arg: 1, scope: !24885, file: !11057, line: 123, type: !3882)
!25052 = !{!25051}
!25053 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>", baseType: !2043, size: 64, align: 64, dwarfAddressSpace: 0)
!25054 = !{!4240, !25053, !10411}
!25055 = !DISubroutineType(cc: DW_CC_nocall, types: !25054)
!25056 = !DILocalVariable(name: "deg", arg: 2, scope: !24886, file: !4598, line: 119, type: !10411)
!25057 = !DILocalVariable(arg: 1, scope: !24886, file: !4598, line: 119, type: !25053)
!25058 = !{!25056, !25057}
!25059 = !DILocalVariable(name: "self", arg: 1, scope: !24889, file: !10434, line: 725, type: !4240)
!25060 = !{!25059}
!25061 = !DILocalVariable(name: "x", arg: 1, scope: !24891, file: !10439, line: 1913, type: !4240)
!25062 = !{!25061}
!25063 = !DILexicalBlockFile(scope: !24892, file: !10434, discriminator: 2)
!25064 = !DILocalVariable(name: "self", arg: 1, scope: !24892, file: !10434, line: 74, type: !4240)
!25065 = !{!25064}
!25066 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>", baseType: !24830, size: 64, align: 64, dwarfAddressSpace: 0)
!25067 = !{null, !25066, !185}
!25068 = !DISubroutineType(types: !25067)
!25069 = !DILocalVariable(name: "element", arg: 2, scope: !24896, file: !4841, line: 4134, type: !185)
!25070 = !DILocalVariable(name: "ptr", scope: !24896, file: !4841, line: 4132, type: !11013, align: 64)
!25071 = !DILocalVariable(name: "local_len", scope: !24896, file: !4841, line: 4133, type: !1958, align: 64)
!25072 = !{!25069, !25070, !25071}
!25073 = !DITemplateTypeParameter(name: "impl iter::TrustedLen<Item = T>", type: !2045)
!25074 = !{!4447, !3764, !25073}
!25075 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, i32), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, i32)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordi32>, plotters::element::points::TriangleMarker<(f64, i32), i32>, plotters::element::BackendCoordOnly>>>>>>", baseType: !24831, size: 64, align: 64, dwarfAddressSpace: 0)
!25076 = !{null, !25075, !3714, !185}
!25077 = !DISubroutineType(types: !25076)
!25078 = !DILocalVariable(name: "item", arg: 3, scope: !24897, file: !10604, line: 884, type: !185)
!25079 = !DILocalVariable(name: "f", scope: !24897, file: !10604, line: 883, type: !24830, align: 64)
!25080 = !DILocalVariable(arg: 2, scope: !24897, file: !10604, line: 884, type: !3714)
!25081 = !{!25078, !25079, !25080}
!25082 = !DITemplateTypeParameter(name: "impl FnMut(T)", type: !24830)
!25083 = !{!4447, !25082}
!25084 = !{!24903}
!25085 = !{!24907, !24905, !24867, !24865, !24863, !24861}
!25086 = !DILocation(line: 0, scope: !24882, inlinedAt: !24883)
!25087 = !DILocation(line: 0, scope: !24872, inlinedAt: !24873)
!25088 = !DILocation(line: 88, column: 11, scope: !24872, inlinedAt: !24873)
!25089 = !DILocation(line: 0, scope: !24886, inlinedAt: !24887)
!25090 = !DILocation(line: 0, scope: !24885, inlinedAt: !24888)
!25091 = !DILocation(line: 0, scope: !24871, inlinedAt: !24874)
!25092 = !DILocation(line: 88, column: 11, scope: !24871, inlinedAt: !24874)
!25093 = !DILocation(line: 0, scope: !24870, inlinedAt: !24875)
!25094 = !DILocation(line: 0, scope: !24889, inlinedAt: !24890)
!25095 = !DILocation(line: 0, scope: !24876, inlinedAt: !24877)
!25096 = !DILocation(line: 0, scope: !24876, inlinedAt: !24879)
!25097 = !DILocation(line: 0, scope: !24892, inlinedAt: !24909)
!25098 = !DILocation(line: 0, scope: !24891, inlinedAt: !24910)
!25099 = !DILocation(line: 0, scope: !24876, inlinedAt: !24911)
!25100 = !DILocation(line: 0, scope: !24876, inlinedAt: !24881)
!25101 = !DILocation(line: 0, scope: !24892, inlinedAt: !24893)
!25102 = !DILocation(line: 0, scope: !24891, inlinedAt: !24894)
!25103 = !DILocation(line: 0, scope: !24897, inlinedAt: !24898)
!25104 = !DILocation(line: 884, column: 19, scope: !24897, inlinedAt: !24898)
!25105 = !DILocation(line: 0, scope: !24896, inlinedAt: !24899)
!25106 = !{null, !25066}
!25107 = !DISubroutineType(cc: DW_CC_nocall, types: !25106)
!25108 = !DILocalVariable(arg: 1, scope: !24915, file: !4869, line: 848, type: !25066)
!25109 = !{!25108}
!25110 = !DITemplateTypeParameter(name: "T", type: !24830)
!25111 = !{!25110}
!25112 = !{null, !25075}
!25113 = !DISubroutineType(cc: DW_CC_nocall, types: !25112)
!25114 = !DILocalVariable(arg: 1, scope: !24916, file: !4869, line: 848, type: !25075)
!25115 = !{!25114}
!25116 = !DITemplateTypeParameter(name: "T", type: !24831)
!25117 = !{!25116}
!25118 = !{null, !25023}
!25119 = !DISubroutineType(cc: DW_CC_nocall, types: !25118)
!25120 = !DILocalVariable(arg: 1, scope: !24917, file: !4869, line: 848, type: !25023)
!25121 = !{!25120}
!25122 = !DITemplateTypeParameter(name: "T", type: !24833)
!25123 = !{!25122}
!25124 = !{null, !25031}
!25125 = !DISubroutineType(cc: DW_CC_nocall, types: !25124)
!25126 = !DILocalVariable(arg: 1, scope: !24918, file: !4869, line: 848, type: !25031)
!25127 = !{!25126}
!25128 = !DITemplateTypeParameter(name: "T", type: !24837)
!25129 = !{!25128}
!25130 = !DILocation(line: 128, column: 9, scope: !24832)
!25131 = !DILocation(line: 128, column: 39, scope: !24832)
!25132 = !DILocation(line: 88, column: 5, scope: !24834, inlinedAt: !24952)
!25133 = !DILocation(line: 1663, column: 9, scope: !24856, inlinedAt: !24857)
!25134 = !DILocation(line: 25, column: 86, scope: !24845, inlinedAt: !24846)
!25135 = !DILocation(line: 734, column: 18, scope: !24848, inlinedAt: !24853)
!25136 = !DILocation(line: 28, column: 9, scope: !24841, inlinedAt: !24846)
!25137 = !DILocation(line: 0, scope: !24842, inlinedAt: !24846)
!25138 = !DILocation(line: 122, column: 48, scope: !24870, inlinedAt: !24875)
!25139 = !DILocation(line: 126, column: 17, scope: !24876, inlinedAt: !24877)
!25140 = !DILocation(line: 122, column: 66, scope: !24870, inlinedAt: !24875)
!25141 = !DILocation(line: 126, column: 17, scope: !24876, inlinedAt: !24879)
!25142 = !DILocation(line: 123, column: 66, scope: !24870, inlinedAt: !24875)
!25143 = !DILocation(line: 126, column: 17, scope: !24876, inlinedAt: !24881)
!25144 = !DILocation(line: 627, column: 28, scope: !24882, inlinedAt: !24883)
!25145 = !DILocation(line: 274, column: 27, scope: !24840, inlinedAt: !24846)
!25146 = !DILocation(line: 126, column: 17, scope: !24885, inlinedAt: !24888)
!25147 = !DILocation(line: 119, column: 28, scope: !24886, inlinedAt: !24887)
!25148 = !DILocation(line: 726, column: 9, scope: !24889, inlinedAt: !24890)
!25149 = !DILocation(line: 122, column: 26, scope: !24870, inlinedAt: !24875)
!25150 = !DILocation(line: 122, column: 25, scope: !24870, inlinedAt: !24875)
!25151 = !DILocation(line: 123, column: 26, scope: !24870, inlinedAt: !24875)
!25152 = !DILocation(line: 123, column: 25, scope: !24870, inlinedAt: !24875)
!25153 = !DILocation(line: 1914, column: 9, scope: !24891, inlinedAt: !24894)
!25154 = !DILocation(line: 971, column: 18, scope: !24895, inlinedAt: !24900)
!25155 = !DILocation(line: 1964, column: 41, scope: !24901, inlinedAt: !24902)
!25156 = !DILocation(line: 279, column: 24, scope: !24840, inlinedAt: !24846)
!25157 = !DILocation(line: 1914, column: 9, scope: !24891, inlinedAt: !24910)
!25158 = !DILocation(line: 19, column: 9, scope: !24912, inlinedAt: !24913)
!25159 = !DILocation(line: 1043, column: 17, scope: !24854, inlinedAt: !24855)
!25160 = !DILocation(line: 31, column: 9, scope: !1974, inlinedAt: !24924)
!25161 = !DILocation(line: 129, column: 6, scope: !24832)
!25162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>", scope: !10613, file: !3148, size: 192, align: 64, elements: !25263, templateParams: !3744, identifier: "fe65c7ab8135e676cc7e3a65a9904c97")
!25163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>", scope: !10611, file: !3148, size: 192, align: 64, elements: !25260, templateParams: !3744, identifier: "ad82f583f119fc19a0d3038bbe4103ae")
!25164 = distinct !DISubprogram(name: "fold<(i32, i32), core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>", linkageName: "_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1C_14TriangleMarkerTdyElEINtB1E_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2F_ENCINvMs6_NtNtB1G_7drawing4areaINtB4N_11DrawingAreaB31_INtNtNtNtB1G_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5D_8ranged1d5types7numeric14RangedCoordf64NtB6n_14RangedCoordu64EE4drawB2i_NtB1E_16BackendCoordOnlyE0EE0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8l_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9B_3VecB9o_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10542, file: !10541, line: 124, type: !25258, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25269, retainedNodes: !25267)
!25165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>", scope: !10896, file: !3148, size: 384, align: 64, elements: !25278, templateParams: !3744, identifier: "5a66f46b67d17a96b0576e535f4a5c8")
!25166 = distinct !DISubprogram(name: "map_fold<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>", linkageName: "_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB17_14TriangleMarkerTdyElEINtB19_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB2_3MapINtNtNtB6_7sources4once4OnceRB2a_ENCINvMs6_NtNtB1b_7drawing4areaINtB4o_11DrawingAreaB2w_INtNtNtNtB1b_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5e_8ranged1d5types7numeric14RangedCoordf64NtB5Y_14RangedCoordu64EE4drawB1N_NtB19_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callBT_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8S_3VecBT_E14extend_trustedIB3y_IB3y_INtNtNtB8_5slice4iter4IterlENCB10_0EBY_EE0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !4212, file: !10541, line: 84, type: !25275, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25283, retainedNodes: !25280)
!25167 = distinct !DISubprogram(name: "fold<f64, core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, (), core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>>", linkageName: "_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10542, file: !10541, line: 124, type: !25289, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25294, retainedNodes: !25292)
!25168 = distinct !DILocation(line: 128, column: 19, scope: !25164)
!25169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>>", scope: !10896, file: !3148, size: 384, align: 64, elements: !25300, templateParams: !3744, identifier: "62cb3cb40ff3cfa48ae5c20f4b92ca88")
!25170 = distinct !DILexicalBlock(scope: !25173, file: !10269, line: 33, column: 13)
!25171 = distinct !DILexicalBlock(scope: !25173, file: !10269, line: 29, column: 13)
!25172 = distinct !DILexicalBlock(scope: !25173, file: !10269, line: 270, column: 17)
!25173 = distinct !DILexicalBlock(scope: !25174, file: !10269, line: 269, column: 17)
!25174 = distinct !DILexicalBlock(scope: !25177, file: !10269, line: 268, column: 17)
!25175 = distinct !DILexicalBlock(scope: !25177, file: !10269, line: 33, column: 13)
!25176 = distinct !DILexicalBlock(scope: !25177, file: !10269, line: 29, column: 13)
!25177 = distinct !DISubprogram(name: "fold<i32, (), core::iter::adapters::map::map_fold::{closure_env#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>>>", linkageName: "_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2o_14TriangleMarkerTdyElEINtB2q_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB1I_3MapINtNtNtBY_7sources4once4OnceRB3r_ENCINvMs6_NtNtB2s_7drawing4areaINtB5G_11DrawingAreaB3N_INtNtNtNtB2s_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6w_8ranged1d5types7numeric14RangedCoordf64NtB7g_14RangedCoordu64EE4drawB34_NtB2q_16BackendCoordOnlyE0EE0NCIB1G_dTllEuNCB2h_s_0NCINvNvBS_8for_each4callB9b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecB9b_E14extend_trustedIB4P_IB4P_BF_B2f_EB9g_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10983, file: !10269, line: 254, type: !25302, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25314, retainedNodes: !25312)
!25178 = distinct !DILocation(line: 128, column: 19, scope: !25167, inlinedAt: !25168)
!25179 = distinct !DISubprogram(name: "offset_from_unsigned<i32>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPl20offset_from_unsignedCsaTqK2fWTXJW_11qlog_dancer", scope: !4692, file: !4690, line: 706, type: !10985, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, retainedNodes: !25321)
!25180 = distinct !DILexicalBlock(scope: !25179, file: !4690, line: 731, column: 9)
!25181 = distinct !DISubprogram(name: "offset_from_unsigned<i32>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOl20offset_from_unsignedCsaTqK2fWTXJW_11qlog_dancer", scope: !6792, file: !6790, line: 888, type: !10987, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, retainedNodes: !25325)
!25182 = distinct !DISubprogram(name: "offset_from_unsigned<i32>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNulllE20offset_from_unsignedCsaTqK2fWTXJW_11qlog_dancer", scope: !2037, file: !7085, line: 893, type: !10989, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, declaration: !10990, retainedNodes: !25328)
!25183 = distinct !DILocation(line: 57, column: 30, scope: !25170, inlinedAt: !25178)
!25184 = distinct !DILocation(line: 898, column: 32, scope: !25182, inlinedAt: !25183)
!25185 = distinct !DILocation(line: 893, column: 37, scope: !25181, inlinedAt: !25184)
!25186 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !10908, file: !4698, line: 1031, type: !10910, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25331)
!25187 = distinct !DILocation(line: 278, column: 36, scope: !25172, inlinedAt: !25178)
!25188 = distinct !DISubprogram(name: "eq<i32>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNulllENtNtB9_3cmp9PartialEq2eqCsaTqK2fWTXJW_11qlog_dancer", scope: !10268, file: !7085, line: 1662, type: !10993, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, retainedNodes: !25336)
!25189 = distinct !DILocation(line: 44, column: 20, scope: !25175, inlinedAt: !25178)
!25190 = distinct !{!25190, !"LVerDomain"}
!25191 = distinct !{!25191, !25190}
!25192 = distinct !{!25192, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer"}
!25193 = distinct !{!25193, !25192, !"_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25194 = distinct !{!25194, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2o_14TriangleMarkerTdyElEINtB2q_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB1I_3MapINtNtNtBY_7sources4once4OnceRB3r_ENCINvMs6_NtNtB2s_7drawing4areaINtB5G_11DrawingAreaB3N_INtNtNtNtB2s_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6w_8ranged1d5types7numeric14RangedCoordf64NtB7g_14RangedCoordu64EE4drawB34_NtB2q_16BackendCoordOnlyE0EE0NCIB1G_dTllEuNCB2h_s_0NCINvNvBS_8for_each4callB9b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecB9b_E14extend_trustedIB4P_IB4P_BF_B2f_EB9g_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer"}
!25195 = distinct !{!25195, !25194, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2o_14TriangleMarkerTdyElEINtB2q_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB1I_3MapINtNtNtBY_7sources4once4OnceRB3r_ENCINvMs6_NtNtB2s_7drawing4areaINtB5G_11DrawingAreaB3N_INtNtNtNtB2s_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6w_8ranged1d5types7numeric14RangedCoordf64NtB7g_14RangedCoordu64EE4drawB34_NtB2q_16BackendCoordOnlyE0EE0NCIB1G_dTllEuNCB2h_s_0NCINvNvBS_8for_each4callB9b_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBa0_3VecB9b_E14extend_trustedIB4P_IB4P_BF_B2f_EB9g_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25196 = distinct !{!25196, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB17_14TriangleMarkerTdyElEINtB19_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2a_ENCINvMs6_NtNtB1b_7drawing4areaINtB4o_11DrawingAreaB2w_INtNtNtNtB1b_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5e_8ranged1d5types7numeric14RangedCoordf64NtB5Y_14RangedCoordu64EE4drawB1N_NtB19_16BackendCoordOnlyE0EE0NCIB2_dTllEuNCB10_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7S_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9c_3VecB7S_E14extend_trustedIB3y_IB3y_INtNtNtBa_5slice4iter4IterlEBY_EB7X_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer"}
!25197 = distinct !{!25197, !25196, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB17_14TriangleMarkerTdyElEINtB19_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2a_ENCINvMs6_NtNtB1b_7drawing4areaINtB4o_11DrawingAreaB2w_INtNtNtNtB1b_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5e_8ranged1d5types7numeric14RangedCoordf64NtB5Y_14RangedCoordu64EE4drawB1N_NtB19_16BackendCoordOnlyE0EE0NCIB2_dTllEuNCB10_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7S_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9c_3VecB7S_E14extend_trustedIB3y_IB3y_INtNtNtBa_5slice4iter4IterlEBY_EB7X_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25198 = distinct !{!25198, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB19_14TriangleMarkerTdyElEINtB1b_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2c_ENCINvMs6_NtNtB1d_7drawing4areaINtB4q_11DrawingAreaB2y_INtNtNtNtB1d_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5g_8ranged1d5types7numeric14RangedCoordf64NtB60_14RangedCoordu64EE4drawB1P_NtB1b_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8U_3VecBV_E14extend_trustedIB3A_IB3A_INtNtNtBa_5slice4iter4IterlENCB12_0EB10_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer"}
!25199 = distinct !{!25199, !25198, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB19_14TriangleMarkerTdyElEINtB1b_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2c_ENCINvMs6_NtNtB1d_7drawing4areaINtB4q_11DrawingAreaB2y_INtNtNtNtB1d_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5g_8ranged1d5types7numeric14RangedCoordf64NtB60_14RangedCoordu64EE4drawB1P_NtB1b_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8U_3VecBV_E14extend_trustedIB3A_IB3A_INtNtNtBa_5slice4iter4IterlENCB12_0EB10_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25200 = distinct !{!25200, !"_RNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB8_14TriangleMarkerTdyElEINtBa_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_7sources4once4OnceRB1a_ENCINvMs6_NtNtBc_7drawing4areaINtB42_11DrawingAreaB1v_INtNtNtNtBc_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4R_8ranged1d5types7numeric14RangedCoordf64NtB5A_14RangedCoordu64EE4drawBO_NtBa_16BackendCoordOnlyE0EEs_0CsaTqK2fWTXJW_11qlog_dancer"}
!25201 = distinct !{!25201, !25200, !"_RNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB8_14TriangleMarkerTdyElEINtBa_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_7sources4once4OnceRB1a_ENCINvMs6_NtNtBc_7drawing4areaINtB42_11DrawingAreaB1v_INtNtNtNtBc_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4R_8ranged1d5types7numeric14RangedCoordf64NtB5A_14RangedCoordu64EE4drawBO_NtBa_16BackendCoordOnlyE0EEs_0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25202 = distinct !DISubprogram(name: "{closure#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>", linkageName: "_RNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB8_14TriangleMarkerTdyElEINtBa_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_7sources4once4OnceRB1a_ENCINvMs6_NtNtBc_7drawing4areaINtB42_11DrawingAreaB1v_INtNtNtNtBc_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4R_8ranged1d5types7numeric14RangedCoordf64NtB5A_14RangedCoordu64EE4drawBO_NtBa_16BackendCoordOnlyE0EEs_0CsaTqK2fWTXJW_11qlog_dancer", scope: !11018, file: !4598, line: 120, type: !25349, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !11085, retainedNodes: !25354)
!25203 = distinct !DISubprogram(name: "{closure#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>", linkageName: "_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB19_14TriangleMarkerTdyElEINtB1b_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2c_ENCINvMs6_NtNtB1d_7drawing4areaINtB4q_11DrawingAreaB2y_INtNtNtNtB1d_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5g_8ranged1d5types7numeric14RangedCoordf64NtB60_14RangedCoordu64EE4drawB1P_NtB1b_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8U_3VecBV_E14extend_trustedIB3A_IB3A_INtNtNtBa_5slice4iter4IterlENCB12_0EB10_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10896, file: !10541, line: 88, type: !25357, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25283, retainedNodes: !25362)
!25204 = distinct !DISubprogram(name: "{closure#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>>", linkageName: "_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB17_14TriangleMarkerTdyElEINtB19_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtB4_3MapINtNtNtB8_7sources4once4OnceRB2a_ENCINvMs6_NtNtB1b_7drawing4areaINtB4o_11DrawingAreaB2w_INtNtNtNtB1b_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5e_8ranged1d5types7numeric14RangedCoordf64NtB5Y_14RangedCoordu64EE4drawB1N_NtB19_16BackendCoordOnlyE0EE0NCIB2_dTllEuNCB10_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB7S_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9c_3VecB7S_E14extend_trustedIB3y_IB3y_INtNtNtBa_5slice4iter4IterlEBY_EB7X_EE0E0E0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10896, file: !10541, line: 88, type: !25365, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25373, retainedNodes: !25370)
!25205 = distinct !DILocation(line: 274, column: 27, scope: !25172, inlinedAt: !25178)
!25206 = distinct !DILocation(line: 88, column: 21, scope: !25204, inlinedAt: !25205)
!25207 = distinct !DILocation(line: 88, column: 28, scope: !25203, inlinedAt: !25206)
!25208 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1S_NtNtCskKLDkoKarTP_4core7convert3numdINtB8_4FromlE4from", scope: !11059, file: !11057, line: 123, type: !11061, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25375)
!25209 = distinct !DILocation(line: 122, column: 38, scope: !25202, inlinedAt: !25207)
!25210 = distinct !{!25210, !25190}
!25211 = distinct !DILocation(line: 122, column: 56, scope: !25202, inlinedAt: !25207)
!25212 = distinct !{!25212, !25190}
!25213 = distinct !DILocation(line: 123, column: 56, scope: !25202, inlinedAt: !25207)
!25214 = distinct !DISubprogram(name: "add<i32>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNulllE3addCsaTqK2fWTXJW_11qlog_dancer", scope: !2037, file: !7085, line: 619, type: !10995, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10204, declaration: !10996, retainedNodes: !25380)
!25215 = distinct !DILocation(line: 274, column: 67, scope: !25172, inlinedAt: !25178)
!25216 = distinct !{!25216, !25190}
!25217 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs1S_NtNtCskKLDkoKarTP_4core7convert3numdINtB8_4FromlE4from", scope: !11059, file: !11057, line: 123, type: !11061, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25384)
!25218 = distinct !DISubprogram(name: "{closure#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>", linkageName: "_RNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB8_14TriangleMarkerTdyElEINtBa_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2D_7sources4once4OnceRB1a_ENCINvMs6_NtNtBc_7drawing4areaINtB42_11DrawingAreaB1v_INtNtNtNtBc_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4R_8ranged1d5types7numeric14RangedCoordf64NtB5A_14RangedCoordu64EE4drawBO_NtBa_16BackendCoordOnlyE0EE0CsaTqK2fWTXJW_11qlog_dancer", scope: !11018, file: !4598, line: 119, type: !25387, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !11085, retainedNodes: !25390)
!25219 = distinct !DILocation(line: 88, column: 28, scope: !25204, inlinedAt: !25205)
!25220 = distinct !DILocation(line: 119, column: 28, scope: !25218, inlinedAt: !25219)
!25221 = distinct !DISubprogram(name: "cos", linkageName: "_RNvMNtCsG258MDvU3F_3std3f64d3cos", scope: !10436, file: !10434, line: 725, type: !10438, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25392)
!25222 = distinct !DILocation(line: 122, column: 30, scope: !25202, inlinedAt: !25207)
!25223 = distinct !DISubprogram(name: "ceil", linkageName: "_RNvNtNtCskKLDkoKarTP_4core3f644math4ceil", scope: !10441, file: !10439, line: 1913, type: !10438, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25394)
!25224 = distinct !DISubprogram(name: "ceil", linkageName: "_RNvMNtCsG258MDvU3F_3std3f64d4ceil", scope: !10436, file: !10434, line: 74, type: !10438, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25397)
!25225 = distinct !DILocation(line: 123, column: 70, scope: !25202, inlinedAt: !25207)
!25226 = distinct !DILocation(line: 75, column: 9, scope: !25395, inlinedAt: !25225)
!25227 = distinct !DISubprogram(name: "add<(i32, i32)>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTllE3addCsaTqK2fWTXJW_11qlog_dancer", scope: !6792, file: !6790, line: 937, type: !11063, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !4448)
!25228 = distinct !DISubprogram(name: "{closure#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>", linkageName: "_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecTllEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2y_14TriangleMarkerTdyElEINtB2A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB14_INtNtNtB1a_7sources4once4OnceRB3B_ENCINvMs6_NtNtB2C_7drawing4areaINtB5L_11DrawingAreaB3X_INtNtNtNtB2C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6B_8ranged1d5types7numeric14RangedCoordf64NtB7l_14RangedCoordu64EE4drawB3e_NtB2A_16BackendCoordOnlyE0EE0ENCB2r_s_0EE0CsaTqK2fWTXJW_11qlog_dancer", scope: !10613, file: !4841, line: 4134, type: !25400, scopeLine: 4134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25406, retainedNodes: !25404)
!25229 = distinct !DISubprogram(name: "{closure#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapIB2p_INtNtNtBe_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB3v_14TriangleMarkerTdyElEINtB3x_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB2p_INtNtNtBc_7sources4once4OnceRB4y_ENCINvMs6_NtNtB3z_7drawing4areaINtB6H_11DrawingAreaB4U_INtNtNtNtB3z_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB7x_8ranged1d5types7numeric14RangedCoordf64NtB8h_14RangedCoordu64EE4drawB4b_NtB3x_16BackendCoordOnlyE0EE0ENCB3o_s_0EE0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10611, file: !10604, line: 884, type: !25409, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25415, retainedNodes: !25413)
!25230 = distinct !DILocation(line: 88, column: 21, scope: !25203, inlinedAt: !25206)
!25231 = distinct !DILocation(line: 884, column: 29, scope: !25229, inlinedAt: !25230)
!25232 = distinct !DILocation(line: 4135, column: 36, scope: !25228, inlinedAt: !25231)
!25233 = distinct !DISubprogram(name: "write<(i32, i32)>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeTllEECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 1941, type: !11065, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !4448)
!25234 = distinct !DILocation(line: 4135, column: 21, scope: !25228, inlinedAt: !25231)
!25235 = distinct !{!25235, !25190}
!25236 = distinct !{!25236, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapIB2p_INtNtNtBe_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB3v_14TriangleMarkerTdyElEINtB3x_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB2p_INtNtNtBc_7sources4once4OnceRB4y_ENCINvMs6_NtNtB3z_7drawing4areaINtB6H_11DrawingAreaB4U_INtNtNtNtB3z_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB7x_8ranged1d5types7numeric14RangedCoordf64NtB8h_14RangedCoordu64EE4drawB4b_NtB3x_16BackendCoordOnlyE0EE0ENCB3o_s_0EE0E0CsaTqK2fWTXJW_11qlog_dancer"}
!25237 = distinct !{!25237, !25236, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1s_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapIB2p_INtNtNtBe_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB3v_14TriangleMarkerTdyElEINtB3x_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB2p_INtNtNtBc_7sources4once4OnceRB4y_ENCINvMs6_NtNtB3z_7drawing4areaINtB6H_11DrawingAreaB4U_INtNtNtNtB3z_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB7x_8ranged1d5types7numeric14RangedCoordf64NtB8h_14RangedCoordu64EE4drawB4b_NtB3x_16BackendCoordOnlyE0EE0ENCB3o_s_0EE0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25238 = distinct !{!25238, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecTllEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2y_14TriangleMarkerTdyElEINtB2A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB14_INtNtNtB1a_7sources4once4OnceRB3B_ENCINvMs6_NtNtB2C_7drawing4areaINtB5L_11DrawingAreaB3X_INtNtNtNtB2C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6B_8ranged1d5types7numeric14RangedCoordf64NtB7l_14RangedCoordu64EE4drawB3e_NtB2A_16BackendCoordOnlyE0EE0ENCB2r_s_0EE0CsaTqK2fWTXJW_11qlog_dancer"}
!25239 = distinct !{!25239, !25238, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecTllEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB14_INtNtNtB1c_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2y_14TriangleMarkerTdyElEINtB2A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB14_INtNtNtB1a_7sources4once4OnceRB3B_ENCINvMs6_NtNtB2C_7drawing4areaINtB5L_11DrawingAreaB3X_INtNtNtNtB2C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6B_8ranged1d5types7numeric14RangedCoordf64NtB7l_14RangedCoordu64EE4drawB3e_NtB2A_16BackendCoordOnlyE0EE0ENCB2r_s_0EE0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25240 = distinct !{!25240, !11066, !11067}
!25241 = distinct !DILocation(line: 122, column: 70, scope: !25202, inlinedAt: !25207)
!25242 = distinct !DILocation(line: 75, column: 9, scope: !25224, inlinedAt: !25241)
!25243 = distinct !DILocation(line: 123, column: 38, scope: !25202, inlinedAt: !25207)
!25244 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsexYYUdYSQU6_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !1958, file: !10705, line: 18, type: !10708, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, declaration: !10709)
!25245 = distinct !DILocation(line: 4139, column: 31, scope: !25228, inlinedAt: !25231)
!25246 = distinct !{!25246, !11066}
!25247 = distinct !DISubprogram(name: "drop_glue<alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBK_3VecTllEE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapIB1G_INtNtNtB4_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB2T_14TriangleMarkerTdyElEINtB2V_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB1G_INtNtNtB1M_7sources4once4OnceRB3W_ENCINvMs6_NtNtB2X_7drawing4areaINtB66_11DrawingAreaB4i_INtNtNtNtB2X_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB6W_8ranged1d5types7numeric14RangedCoordf64NtB7G_14RangedCoordu64EE4drawB3z_NtB2V_16BackendCoordOnlyE0EE0ENCB2M_s_0EE0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25439, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25443, retainedNodes: !25441)
!25248 = distinct !DISubprogram(name: "drop_glue<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1O_3VecB1B_E14extend_trustedINtNtNtBO_8adapters3map3MapIB2L_INtNtNtB4_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB3R_14TriangleMarkerTdyElEINtB3T_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIB2L_INtNtNtBO_7sources4once4OnceRB4U_ENCINvMs6_NtNtB3V_7drawing4areaINtB73_11DrawingAreaB5g_INtNtNtNtB3V_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB7T_8ranged1d5types7numeric14RangedCoordf64NtB8D_14RangedCoordu64EE4drawB4x_NtB3T_16BackendCoordOnlyE0EE0ENCB3K_s_0EE0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25445, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25449, retainedNodes: !25447)
!25249 = distinct !DISubprogram(name: "drop_glue<core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_folddTllEuNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1v_14TriangleMarkerTdyElEINtB1x_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtBG_3MapINtNtNtBK_7sources4once4OnceRB2y_ENCINvMs6_NtNtB1z_7drawing4areaINtB4M_11DrawingAreaB2U_INtNtNtNtB1z_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5C_8ranged1d5types7numeric14RangedCoordf64NtB6m_14RangedCoordu64EE4drawB2b_NtB1x_16BackendCoordOnlyE0EEs_0NCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1h_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9h_3VecB1h_E14extend_trustedIB3W_IB3W_INtNtNtB4_5slice4iter4IterlENCB1o_0EB1m_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25451, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25455, retainedNodes: !25453)
!25250 = distinct !DISubprogram(name: "drop_glue<core::iter::adapters::map::map_fold::{closure_env#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldRlduNCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1t_14TriangleMarkerTdyElEINtB1v_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawINtBG_3MapINtNtNtBK_7sources4once4OnceRB2w_ENCINvMs6_NtNtB1x_7drawing4areaINtB4K_11DrawingAreaB2S_INtNtNtNtB1x_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5A_8ranged1d5types7numeric14RangedCoordf64NtB6k_14RangedCoordu64EE4drawB29_NtB1v_16BackendCoordOnlyE0EE0NCIBE_dTllEuNCB1m_s_0NCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB8e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9y_3VecB8e_E14extend_trustedIB3U_IB3U_INtNtNtB4_5slice4iter4IterlEB1k_EB8j_EE0E0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25457, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25461, retainedNodes: !25459)
!25251 = distinct !DILocation(line: 284, column: 13, scope: !25177, inlinedAt: !25178)
!25252 = distinct !DILocation(line: 848, column: 1, scope: !25250, inlinedAt: !25251)
!25253 = distinct !DILocation(line: 848, column: 1, scope: !25249, inlinedAt: !25252)
!25254 = distinct !DILocation(line: 848, column: 1, scope: !25248, inlinedAt: !25253)
!25255 = distinct !DILocation(line: 848, column: 1, scope: !25247, inlinedAt: !25254)
!25256 = distinct !DILocation(line: 848, column: 1, scope: !1973, inlinedAt: !25255)
!25257 = !{null, !2058, !3714, !25163}
!25258 = !DISubroutineType(types: !25257)
!25259 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !25163, file: !3148, baseType: !25162, size: 192, align: 64)
!25260 = !{!25259}
!25261 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !25162, file: !3148, baseType: !11013, size: 64, align: 64, offset: 128)
!25262 = !DIDerivedType(tag: DW_TAG_member, name: "local_len", scope: !25162, file: !3148, baseType: !1958, size: 128, align: 64)
!25263 = !{!25261, !25262}
!25264 = !DILocalVariable(name: "self", arg: 1, scope: !25164, file: !10541, line: 124, type: !2058)
!25265 = !DILocalVariable(name: "init", arg: 2, scope: !25164, file: !10541, line: 124, type: !3714)
!25266 = !DILocalVariable(name: "g", arg: 3, scope: !25164, file: !10541, line: 124, type: !25163)
!25267 = !{!25264, !25265, !25266}
!25268 = !DITemplateTypeParameter(name: "G", type: !25163)
!25269 = !{!10543, !11081, !11082, !10670, !25268}
!25270 = !DILocation(line: 124, column: 21, scope: !25164)
!25271 = !DILocation(line: 124, column: 27, scope: !25164)
!25272 = !DILocation(line: 124, column: 38, scope: !25164)
!25273 = !DILocalVariable(name: "g", arg: 2, scope: !25166, file: !10541, line: 86, type: !25163)
!25274 = !{!25165, !2055, !25163}
!25275 = !DISubroutineType(types: !25274)
!25276 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !25165, file: !3148, baseType: !25163, size: 192, align: 64)
!25277 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !25165, file: !3148, baseType: !2055, size: 192, align: 64, offset: 192)
!25278 = !{!25276, !25277}
!25279 = !DILocalVariable(name: "f", arg: 1, scope: !25166, file: !10541, line: 85, type: !2055)
!25280 = !{!25279, !25273}
!25281 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !2055)
!25282 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !25163)
!25283 = !{!7601, !10543, !10670, !25281, !25282}
!25284 = !DILocation(line: 128, column: 30, scope: !25164)
!25285 = !DILocation(line: 86, column: 5, scope: !25166, inlinedAt: !25284)
!25286 = !DILocation(line: 0, scope: !25166, inlinedAt: !25284)
!25287 = !DILocalVariable(name: "g", arg: 3, scope: !25167, file: !10541, line: 124, type: !25165)
!25288 = !{null, !2057, !3714, !25165}
!25289 = !DISubroutineType(types: !25288)
!25290 = !DILocalVariable(name: "self", arg: 1, scope: !25167, file: !10541, line: 124, type: !2057)
!25291 = !DILocalVariable(name: "init", arg: 2, scope: !25167, file: !10541, line: 124, type: !3714)
!25292 = !{!25290, !25291, !25287}
!25293 = !DITemplateTypeParameter(name: "G", type: !25165)
!25294 = !{!11031, !10979, !11079, !10670, !25293}
!25295 = !DILocation(line: 0, scope: !25167, inlinedAt: !25168)
!25296 = !DILocation(line: 124, column: 27, scope: !25167, inlinedAt: !25168)
!25297 = !DILocalVariable(name: "f", arg: 3, scope: !25177, file: !10269, line: 254, type: !25169)
!25298 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !25169, file: !3148, baseType: !25165, size: 384, align: 64)
!25299 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !25169, file: !3148, baseType: !2056, align: 8, offset: 384)
!25300 = !{!25298, !25299}
!25301 = !{null, !2038, !3714, !25169}
!25302 = !DISubroutineType(types: !25301)
!25303 = !DILocalVariable(name: "self", arg: 1, scope: !25177, file: !10269, line: 254, type: !2038)
!25304 = !DILocalVariable(name: "init", arg: 2, scope: !25177, file: !10269, line: 254, type: !3714)
!25305 = !DILocalVariable(name: "len", scope: !25176, file: !10269, line: 29, type: !3717, align: 64)
!25306 = !DILocalVariable(name: "end", scope: !25175, file: !10269, line: 33, type: !2037, align: 64)
!25307 = !DILocalVariable(name: "acc", scope: !25174, file: !10269, line: 268, type: !3714, align: 8)
!25308 = !DILocalVariable(name: "i", scope: !25173, file: !10269, line: 269, type: !3717, align: 64)
!25309 = !DILocalVariable(name: "len", scope: !25172, file: !10269, line: 270, type: !3717, align: 64)
!25310 = !DILocalVariable(name: "len", scope: !25171, file: !10269, line: 29, type: !3717, align: 64)
!25311 = !DILocalVariable(name: "end", scope: !25170, file: !10269, line: 33, type: !2037, align: 64)
!25312 = !{!25303, !25304, !25297, !25305, !25306, !25307, !25308, !25309, !25310, !25311}
!25313 = !DITemplateTypeParameter(name: "F", type: !25169)
!25314 = !{!10203, !10662, !25313}
!25315 = !DILocation(line: 0, scope: !25177, inlinedAt: !25178)
!25316 = !DILocation(line: 254, column: 33, scope: !25177, inlinedAt: !25178)
!25317 = !DILocation(line: 268, column: 21, scope: !25174, inlinedAt: !25178)
!25318 = !DILocalVariable(name: "pointee_size", scope: !25180, file: !4690, line: 731, type: !3717, align: 64)
!25319 = !DILocalVariable(name: "self", arg: 1, scope: !25179, file: !4690, line: 706, type: !10971)
!25320 = !DILocalVariable(name: "origin", arg: 2, scope: !25179, file: !4690, line: 706, type: !10971)
!25321 = !{!25319, !25320, !25318}
!25322 = !DILocation(line: 0, scope: !25180, inlinedAt: !25185)
!25323 = !DILocalVariable(name: "self", arg: 1, scope: !25181, file: !6790, line: 888, type: !10958)
!25324 = !DILocalVariable(name: "origin", arg: 2, scope: !25181, file: !6790, line: 888, type: !10971)
!25325 = !{!25323, !25324}
!25326 = !DILocalVariable(name: "self", arg: 1, scope: !25182, file: !7085, line: 893, type: !2037)
!25327 = !DILocalVariable(name: "subtracted", arg: 2, scope: !25182, file: !7085, line: 893, type: !2037)
!25328 = !{!25326, !25327}
!25329 = !DILocalVariable(name: "rhs", scope: !25186, file: !4698, line: 1031, type: !3717, align: 64)
!25330 = !DILocalVariable(name: "self", arg: 1, scope: !25186, file: !4698, line: 1031, type: !3717)
!25331 = !{!25330, !25329}
!25332 = !DILocation(line: 0, scope: !25186, inlinedAt: !25187)
!25333 = !DILocation(line: 0, scope: !25175, inlinedAt: !25178)
!25334 = !DILocalVariable(name: "self", arg: 1, scope: !25188, file: !7085, line: 1662, type: !10991)
!25335 = !DILocalVariable(name: "other", arg: 2, scope: !25188, file: !7085, line: 1662, type: !10991)
!25336 = !{!25334, !25335}
!25337 = !DILocation(line: 1662, column: 11, scope: !25188, inlinedAt: !25189)
!25338 = !DILocation(line: 1662, column: 18, scope: !25188, inlinedAt: !25189)
!25339 = !DILocation(line: 0, scope: !25173, inlinedAt: !25178)
!25340 = !DILocation(line: 0, scope: !25170, inlinedAt: !25178)
!25341 = !DILocation(line: 0, scope: !25182, inlinedAt: !25183)
!25342 = !DILocation(line: 0, scope: !25181, inlinedAt: !25184)
!25343 = !DILocation(line: 0, scope: !25179, inlinedAt: !25185)
!25344 = !DILocation(line: 0, scope: !25172, inlinedAt: !25178)
!25345 = !{!25191}
!25346 = !{!25201, !25199, !25197, !25195, !25193}
!25347 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>", baseType: !2055, size: 64, align: 64, dwarfAddressSpace: 0)
!25348 = !{!185, !25347, !4240}
!25349 = !DISubroutineType(types: !25348)
!25350 = !DILocalVariable(name: "rad", arg: 2, scope: !25202, file: !4598, line: 120, type: !4240)
!25351 = !DILocalVariable(name: "size", scope: !25202, file: !4598, line: 116, type: !3882, align: 32)
!25352 = !DILocalVariable(name: "x", scope: !25202, file: !4598, line: 115, type: !3882, align: 32)
!25353 = !DILocalVariable(name: "y", scope: !25202, file: !4598, line: 115, type: !3882, align: 32)
!25354 = !{!25350, !25351, !25352, !25353}
!25355 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>", baseType: !25165, size: 64, align: 64, dwarfAddressSpace: 0)
!25356 = !{null, !25355, !3714, !4240}
!25357 = !DISubroutineType(types: !25356)
!25358 = !DILocalVariable(name: "acc", arg: 2, scope: !25203, file: !10541, line: 88, type: !3714)
!25359 = !DILocalVariable(name: "elt", arg: 3, scope: !25203, file: !10541, line: 88, type: !4240)
!25360 = !DILocalVariable(name: "g", scope: !25203, file: !10541, line: 86, type: !25163, align: 64)
!25361 = !DILocalVariable(name: "f", scope: !25203, file: !10541, line: 85, type: !2055, align: 64)
!25362 = !{!25358, !25359, !25360, !25361}
!25363 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<&i32, f64, (), plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::adapters::map::map_fold::{closure_env#0}<f64, (i32, i32), (), plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>>>", baseType: !25169, size: 64, align: 64, dwarfAddressSpace: 0)
!25364 = !{null, !25363, !3714, !10411}
!25365 = !DISubroutineType(cc: DW_CC_nocall, types: !25364)
!25366 = !DILocalVariable(name: "acc", arg: 2, scope: !25204, file: !10541, line: 88, type: !3714)
!25367 = !DILocalVariable(name: "elt", arg: 3, scope: !25204, file: !10541, line: 88, type: !10411)
!25368 = !DILocalVariable(name: "g", scope: !25204, file: !10541, line: 86, type: !25165, align: 64)
!25369 = !DILocalVariable(name: "f", scope: !25204, file: !10541, line: 85, type: !2056, align: 8)
!25370 = !{!25366, !25367, !25368, !25369}
!25371 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !2056)
!25372 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !25165)
!25373 = !{!10975, !11031, !10670, !25371, !25372}
!25374 = !DILocalVariable(name: "small", arg: 1, scope: !25208, file: !11057, line: 123, type: !3882)
!25375 = !{!25374}
!25376 = !{!25210}
!25377 = !{!25212}
!25378 = !DILocalVariable(name: "self", arg: 1, scope: !25214, file: !7085, line: 619, type: !2037)
!25379 = !DILocalVariable(name: "count", arg: 2, scope: !25214, file: !7085, line: 619, type: !3717)
!25380 = !{!25378, !25379}
!25381 = !{!25216}
!25382 = !{!25195, !25193}
!25383 = !DILocalVariable(name: "small", arg: 1, scope: !25217, file: !11057, line: 123, type: !3882)
!25384 = !{!25383}
!25385 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>", baseType: !2056, size: 64, align: 64, dwarfAddressSpace: 0)
!25386 = !{!4240, !25385, !10411}
!25387 = !DISubroutineType(cc: DW_CC_nocall, types: !25386)
!25388 = !DILocalVariable(name: "deg", arg: 2, scope: !25218, file: !4598, line: 119, type: !10411)
!25389 = !DILocalVariable(arg: 1, scope: !25218, file: !4598, line: 119, type: !25385)
!25390 = !{!25388, !25389}
!25391 = !DILocalVariable(name: "self", arg: 1, scope: !25221, file: !10434, line: 725, type: !4240)
!25392 = !{!25391}
!25393 = !DILocalVariable(name: "x", arg: 1, scope: !25223, file: !10439, line: 1913, type: !4240)
!25394 = !{!25393}
!25395 = !DILexicalBlockFile(scope: !25224, file: !10434, discriminator: 2)
!25396 = !DILocalVariable(name: "self", arg: 1, scope: !25224, file: !10434, line: 74, type: !4240)
!25397 = !{!25396}
!25398 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>", baseType: !25162, size: 64, align: 64, dwarfAddressSpace: 0)
!25399 = !{null, !25398, !185}
!25400 = !DISubroutineType(types: !25399)
!25401 = !DILocalVariable(name: "element", arg: 2, scope: !25228, file: !4841, line: 4134, type: !185)
!25402 = !DILocalVariable(name: "ptr", scope: !25228, file: !4841, line: 4132, type: !11013, align: 64)
!25403 = !DILocalVariable(name: "local_len", scope: !25228, file: !4841, line: 4133, type: !1958, align: 64)
!25404 = !{!25401, !25402, !25403}
!25405 = !DITemplateTypeParameter(name: "impl iter::TrustedLen<Item = T>", type: !2058)
!25406 = !{!4447, !3764, !25405}
!25407 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(i32, i32), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<(i32, i32), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::map::Map<core::slice::iter::Iter<i32>, plotters::element::points::{impl#5}::draw::{closure_env#0}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>, plotters::element::points::{impl#5}::draw::{closure_env#1}<(f64, u64), plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, i32, core::iter::adapters::map::Map<core::iter::sources::once::Once<&(f64, u64)>, plotters::drawing::area::{impl#8}::draw::{closure_env#0}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters::coord::ranged2d::cartesian::Cartesian2d<plotters::coord::ranged1d::types::numeric::RangedCoordf64, plotters::coord::ranged1d::types::numeric::RangedCoordu64>, plotters::element::points::TriangleMarker<(f64, u64), i32>, plotters::element::BackendCoordOnly>>>>>>", baseType: !25163, size: 64, align: 64, dwarfAddressSpace: 0)
!25408 = !{null, !25407, !3714, !185}
!25409 = !DISubroutineType(types: !25408)
!25410 = !DILocalVariable(name: "item", arg: 3, scope: !25229, file: !10604, line: 884, type: !185)
!25411 = !DILocalVariable(name: "f", scope: !25229, file: !10604, line: 883, type: !25162, align: 64)
!25412 = !DILocalVariable(arg: 2, scope: !25229, file: !10604, line: 884, type: !3714)
!25413 = !{!25410, !25411, !25412}
!25414 = !DITemplateTypeParameter(name: "impl FnMut(T)", type: !25162)
!25415 = !{!4447, !25414}
!25416 = !{!25235}
!25417 = !{!25239, !25237, !25199, !25197, !25195, !25193}
!25418 = !DILocation(line: 0, scope: !25214, inlinedAt: !25215)
!25419 = !DILocation(line: 0, scope: !25204, inlinedAt: !25205)
!25420 = !DILocation(line: 88, column: 11, scope: !25204, inlinedAt: !25205)
!25421 = !DILocation(line: 0, scope: !25218, inlinedAt: !25219)
!25422 = !DILocation(line: 0, scope: !25217, inlinedAt: !25220)
!25423 = !DILocation(line: 0, scope: !25203, inlinedAt: !25206)
!25424 = !DILocation(line: 88, column: 11, scope: !25203, inlinedAt: !25206)
!25425 = !DILocation(line: 0, scope: !25202, inlinedAt: !25207)
!25426 = !DILocation(line: 0, scope: !25221, inlinedAt: !25222)
!25427 = !DILocation(line: 0, scope: !25208, inlinedAt: !25209)
!25428 = !DILocation(line: 0, scope: !25208, inlinedAt: !25211)
!25429 = !DILocation(line: 0, scope: !25224, inlinedAt: !25241)
!25430 = !DILocation(line: 0, scope: !25223, inlinedAt: !25242)
!25431 = !DILocation(line: 0, scope: !25208, inlinedAt: !25243)
!25432 = !DILocation(line: 0, scope: !25208, inlinedAt: !25213)
!25433 = !DILocation(line: 0, scope: !25224, inlinedAt: !25225)
!25434 = !DILocation(line: 0, scope: !25223, inlinedAt: !25226)
!25435 = !DILocation(line: 0, scope: !25229, inlinedAt: !25230)
!25436 = !DILocation(line: 884, column: 19, scope: !25229, inlinedAt: !25230)
!25437 = !DILocation(line: 0, scope: !25228, inlinedAt: !25231)
!25438 = !{null, !25398}
!25439 = !DISubroutineType(cc: DW_CC_nocall, types: !25438)
!25440 = !DILocalVariable(arg: 1, scope: !25247, file: !4869, line: 848, type: !25398)
!25441 = !{!25440}
!25442 = !DITemplateTypeParameter(name: "T", type: !25162)
!25443 = !{!25442}
!25444 = !{null, !25407}
!25445 = !DISubroutineType(cc: DW_CC_nocall, types: !25444)
!25446 = !DILocalVariable(arg: 1, scope: !25248, file: !4869, line: 848, type: !25407)
!25447 = !{!25446}
!25448 = !DITemplateTypeParameter(name: "T", type: !25163)
!25449 = !{!25448}
!25450 = !{null, !25355}
!25451 = !DISubroutineType(cc: DW_CC_nocall, types: !25450)
!25452 = !DILocalVariable(arg: 1, scope: !25249, file: !4869, line: 848, type: !25355)
!25453 = !{!25452}
!25454 = !DITemplateTypeParameter(name: "T", type: !25165)
!25455 = !{!25454}
!25456 = !{null, !25363}
!25457 = !DISubroutineType(cc: DW_CC_nocall, types: !25456)
!25458 = !DILocalVariable(arg: 1, scope: !25250, file: !4869, line: 848, type: !25363)
!25459 = !{!25458}
!25460 = !DITemplateTypeParameter(name: "T", type: !25169)
!25461 = !{!25460}
!25462 = !DILocation(line: 128, column: 9, scope: !25164)
!25463 = !DILocation(line: 128, column: 39, scope: !25164)
!25464 = !DILocation(line: 88, column: 5, scope: !25166, inlinedAt: !25284)
!25465 = !DILocation(line: 1663, column: 9, scope: !25188, inlinedAt: !25189)
!25466 = !DILocation(line: 25, column: 86, scope: !25177, inlinedAt: !25178)
!25467 = !DILocation(line: 734, column: 18, scope: !25180, inlinedAt: !25185)
!25468 = !DILocation(line: 28, column: 9, scope: !25173, inlinedAt: !25178)
!25469 = !DILocation(line: 0, scope: !25174, inlinedAt: !25178)
!25470 = !DILocation(line: 122, column: 48, scope: !25202, inlinedAt: !25207)
!25471 = !DILocation(line: 126, column: 17, scope: !25208, inlinedAt: !25209)
!25472 = !DILocation(line: 122, column: 66, scope: !25202, inlinedAt: !25207)
!25473 = !DILocation(line: 126, column: 17, scope: !25208, inlinedAt: !25211)
!25474 = !DILocation(line: 123, column: 66, scope: !25202, inlinedAt: !25207)
!25475 = !DILocation(line: 126, column: 17, scope: !25208, inlinedAt: !25213)
!25476 = !DILocation(line: 627, column: 28, scope: !25214, inlinedAt: !25215)
!25477 = !DILocation(line: 274, column: 27, scope: !25172, inlinedAt: !25178)
!25478 = !DILocation(line: 126, column: 17, scope: !25217, inlinedAt: !25220)
!25479 = !DILocation(line: 119, column: 28, scope: !25218, inlinedAt: !25219)
!25480 = !DILocation(line: 726, column: 9, scope: !25221, inlinedAt: !25222)
!25481 = !DILocation(line: 122, column: 26, scope: !25202, inlinedAt: !25207)
!25482 = !DILocation(line: 122, column: 25, scope: !25202, inlinedAt: !25207)
!25483 = !DILocation(line: 123, column: 26, scope: !25202, inlinedAt: !25207)
!25484 = !DILocation(line: 123, column: 25, scope: !25202, inlinedAt: !25207)
!25485 = !DILocation(line: 1914, column: 9, scope: !25223, inlinedAt: !25226)
!25486 = !DILocation(line: 971, column: 18, scope: !25227, inlinedAt: !25232)
!25487 = !DILocation(line: 1964, column: 41, scope: !25233, inlinedAt: !25234)
!25488 = !DILocation(line: 279, column: 24, scope: !25172, inlinedAt: !25178)
!25489 = !DILocation(line: 1914, column: 9, scope: !25223, inlinedAt: !25242)
!25490 = !DILocation(line: 19, column: 9, scope: !25244, inlinedAt: !25245)
!25491 = !DILocation(line: 1043, column: 17, scope: !25186, inlinedAt: !25187)
!25492 = !DILocation(line: 31, column: 9, scope: !1974, inlinedAt: !25256)
!25493 = !DILocation(line: 129, column: 6, scope: !25164)
!25494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>", scope: !10613, file: !3148, size: 192, align: 64, elements: !25567, templateParams: !3744, identifier: "65aa3d7a0aae0a808f2995c61089c0f7")
!25495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>", scope: !10611, file: !3148, size: 192, align: 64, elements: !25564, templateParams: !3744, identifier: "b22ffe4c61daebfc2162620da157ec68")
!25496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>", scope: !11098, file: !3148, align: 8, elements: !3744, identifier: "9dbb3c94998d994b8f1ba9076965e298")
!25497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>", scope: !4212, file: !3148, size: 448, align: 64, flags: DIFlagPublic, elements: !25570, templateParams: !25572, identifier: "720ac25e23c69ede3381e880bde43bde")
!25498 = distinct !DISubprogram(name: "fold<((i32, i32), (i32, i32)), core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>>", linkageName: "_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipB1d_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2f_5style12BackendColorEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4L_8for_each4callTB1D_B1D_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB67_3VecB5O_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !10542, file: !10541, line: 124, type: !25562, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25578, retainedNodes: !25576)
!25499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<(&(i32, i32), &(i32, i32)), ((i32, i32), (i32, i32)), (), plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>>", scope: !10896, file: !3148, size: 192, align: 64, elements: !25584, templateParams: !3744, identifier: "9e11737c4b273f607585297be74308b5")
!25500 = distinct !DISubprogram(name: "fold<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>, (), core::iter::adapters::map::map_fold::{closure_env#0}<(&(i32, i32), &(i32, i32)), ((i32, i32), (i32, i32)), (), plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>>>", linkageName: "_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipBX_EEINtB6_7ZipImplBX_B1s_E4folduNCINvNtB8_3map8map_foldTRB1n_B2F_ETB1n_B1n_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5style12BackendColorEs_0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB2P_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VecB2P_E14extend_trustedINtB2m_3MapBN_B30_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !11118, file: !11115, line: 270, type: !25581, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25594, retainedNodes: !25592)
!25501 = distinct !DILexicalBlock(scope: !25500, file: !11115, line: 274, column: 9)
!25502 = distinct !DILexicalBlock(scope: !25501, file: !11115, line: 275, column: 9)
!25503 = distinct !DILexicalBlock(scope: !25502, file: !11115, line: 276, column: 9)
!25504 = distinct !DILexicalBlock(scope: !25503, file: !11115, line: 276, column: 9)
!25505 = distinct !DISubprogram(name: "fold<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>, (), core::iter::adapters::map::map_fold::{closure_env#0}<(&(i32, i32), &(i32, i32)), ((i32, i32), (i32, i32)), (), plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>>>", linkageName: "_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !11127, file: !11115, line: 97, type: !25581, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25594, retainedNodes: !25598)
!25506 = distinct !DILocation(line: 128, column: 19, scope: !25498)
!25507 = distinct !DILocation(line: 101, column: 9, scope: !25505, inlinedAt: !25506)
!25508 = distinct !DILocation(line: 281, column: 39, scope: !25504, inlinedAt: !25507)
!25509 = distinct !DISubprogram(name: "map_fold<(&(i32, i32), &(i32, i32)), ((i32, i32), (i32, i32)), (), plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>>", linkageName: "_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTRTllEBT_ETBU_BU_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1k_5style12BackendColorEs_0NCINvNvNtNtNtB6_6traits8iterator8Iterator8for_each4callB12_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4V_3VecB12_E14extend_trustedINtB2_3MapINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterBU_EINtNtB4_4skip4SkipB6h_EEB1b_EE0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !4212, file: !10541, line: 84, type: !25604, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25609, retainedNodes: !25606)
!25510 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !10902, file: !10410, line: 2192, type: !10904, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25618)
!25511 = distinct !DILexicalBlock(scope: !25512, file: !10417, line: 1101, column: 13)
!25512 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsaTqK2fWTXJW_11qlog_dancer", scope: !10432, file: !10417, line: 1099, type: !10899, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !4082, retainedNodes: !25622)
!25513 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer", scope: !10419, file: !10417, line: 1184, type: !10899, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !10901, retainedNodes: !25624)
!25514 = distinct !DILocation(line: 276, column: 18, scope: !25625, inlinedAt: !25507)
!25515 = distinct !DILocation(line: 1185, column: 14, scope: !25513, inlinedAt: !25514)
!25516 = distinct !DILocation(line: 1100, column: 12, scope: !25512, inlinedAt: !25515)
!25517 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !10905, file: !10417, line: 263, type: !10907, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25632)
!25518 = distinct !DILocation(line: 1103, column: 35, scope: !25511, inlinedAt: !25515)
!25519 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !10908, file: !4698, line: 1031, type: !10910, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, retainedNodes: !25636)
!25520 = distinct !DILocation(line: 265, column: 28, scope: !25517, inlinedAt: !25518)
!25521 = distinct !DILocation(line: 275, column: 19, scope: !25501, inlinedAt: !25507)
!25522 = distinct !DILocation(line: 266, column: 26, scope: !2065, inlinedAt: !25508)
!25523 = distinct !DILocation(line: 424, column: 60, scope: !2069, inlinedAt: !25522)
!25524 = distinct !DILocation(line: 266, column: 64, scope: !2065, inlinedAt: !25508)
!25525 = distinct !DILocation(line: 182, column: 13, scope: !2073, inlinedAt: !25524)
!25526 = distinct !DILocation(line: 599, column: 17, scope: !2074, inlinedAt: !25525)
!25527 = distinct !DILocation(line: 619, column: 23, scope: !2075, inlinedAt: !25526)
!25528 = distinct !DILocation(line: 424, column: 60, scope: !2069, inlinedAt: !25527)
!25529 = distinct !DISubprogram(name: "{closure#0}<(&(i32, i32), &(i32, i32)), ((i32, i32), (i32, i32)), (), plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>>", linkageName: "_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTRTllEBV_ETBW_BW_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1m_5style12BackendColorEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB14_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4X_3VecB14_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EINtNtB6_4skip4SkipB6j_EEB1d_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10896, file: !10541, line: 88, type: !25653, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25609, retainedNodes: !25657)
!25530 = distinct !DILocation(line: 281, column: 25, scope: !25504, inlinedAt: !25507)
!25531 = distinct !DISubprogram(name: "{closure#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>", linkageName: "_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTTllEB1g_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1y_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2z_3zip3ZipINtNtNtBe_5slice4iter4IterB1g_EINtNtB2z_4skip4SkipB3c_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB4f_5style12BackendColorEs_0EE0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !10611, file: !10604, line: 884, type: !25663, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25668, retainedNodes: !25666)
!25532 = distinct !DILocation(line: 88, column: 21, scope: !25529, inlinedAt: !25530)
!25533 = distinct !DISubprogram(name: "{closure#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>", linkageName: "_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecTTllEBJ_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1d_3zip3ZipINtNtNtB1h_5slice4iter4IterBJ_EINtNtB1d_4skip4SkipB2d_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3g_5style12BackendColorEs_0EE0CsaTqK2fWTXJW_11qlog_dancer", scope: !10613, file: !4841, line: 4134, type: !25673, scopeLine: 4134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25678, retainedNodes: !25676)
!25534 = distinct !DILocation(line: 884, column: 29, scope: !25531, inlinedAt: !25532)
!25535 = distinct !DISubprogram(name: "add<((i32, i32), (i32, i32))>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOTTllEBD_E3addCsaTqK2fWTXJW_11qlog_dancer", scope: !6792, file: !6790, line: 937, type: !11167, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !11168)
!25536 = distinct !DILocation(line: 4135, column: 36, scope: !25533, inlinedAt: !25534)
!25537 = distinct !{!25537, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer"}
!25538 = distinct !{!25538, !25537, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 1"}
!25539 = distinct !{!25539, !25537, !"_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25540 = distinct !{!25540, !"_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipBX_EEINtB6_7ZipImplBX_B1s_E4folduNCINvNtB8_3map8map_foldTRB1n_B2F_ETB1n_B1n_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5style12BackendColorEs_0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB2P_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VecB2P_E14extend_trustedINtB2m_3MapBN_B30_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer"}
!25541 = distinct !{!25541, !25540, !"_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipBX_EEINtB6_7ZipImplBX_B1s_E4folduNCINvNtB8_3map8map_foldTRB1n_B2F_ETB1n_B1n_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5style12BackendColorEs_0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB2P_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VecB2P_E14extend_trustedINtB2m_3MapBN_B30_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 1"}
!25542 = distinct !{!25542, !25540, !"_RINvXs2_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipBX_EEINtB6_7ZipImplBX_B1s_E4folduNCINvNtB8_3map8map_foldTRB1n_B2F_ETB1n_B1n_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5style12BackendColorEs_0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callB2P_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6K_3VecB2P_E14extend_trustedINtB2m_3MapBN_B30_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25543 = distinct !DISubprogram(name: "write<((i32, i32), (i32, i32))>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeTTllEBy_EECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 1941, type: !11170, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !11168)
!25544 = distinct !DILocation(line: 4135, column: 21, scope: !25533, inlinedAt: !25534)
!25545 = distinct !{!25545, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTRTllEBV_ETBW_BW_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1m_5style12BackendColorEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB14_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4X_3VecB14_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EINtNtB6_4skip4SkipB6j_EEB1d_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer"}
!25546 = distinct !{!25546, !25545, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldTRTllEBV_ETBW_BW_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1m_5style12BackendColorEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB14_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4X_3VecB14_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EINtNtB6_4skip4SkipB6j_EEB1d_EE0E0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25547 = distinct !{!25547, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTTllEB1g_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1y_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2z_3zip3ZipINtNtNtBe_5slice4iter4IterB1g_EINtNtB2z_4skip4SkipB3c_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB4f_5style12BackendColorEs_0EE0E0CsaTqK2fWTXJW_11qlog_dancer"}
!25548 = distinct !{!25548, !25547, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callTTllEB1g_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1y_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB2z_3zip3ZipINtNtNtBe_5slice4iter4IterB1g_EINtNtB2z_4skip4SkipB3c_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB4f_5style12BackendColorEs_0EE0E0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25549 = distinct !{!25549, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecTTllEBJ_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1d_3zip3ZipINtNtNtB1h_5slice4iter4IterBJ_EINtNtB1d_4skip4SkipB2d_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3g_5style12BackendColorEs_0EE0CsaTqK2fWTXJW_11qlog_dancer"}
!25550 = distinct !{!25550, !25549, !"_RNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB8_3VecTTllEBJ_EE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1d_3zip3ZipINtNtNtB1h_5slice4iter4IterBJ_EINtNtB1d_4skip4SkipB2d_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3g_5style12BackendColorEs_0EE0CsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!25551 = distinct !DISubprogram(name: "increment_len", linkageName: "_RNvMNtNtCsexYYUdYSQU6_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop13increment_len", scope: !1958, file: !10705, line: 18, type: !10708, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !3744, declaration: !10709)
!25552 = distinct !DILocation(line: 4139, column: 31, scope: !25533, inlinedAt: !25534)
!25553 = distinct !DISubprogram(name: "drop_glue<core::iter::adapters::map::map_fold::{closure_env#0}<(&(i32, i32), &(i32, i32)), ((i32, i32), (i32, i32)), (), plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtNtB4_4iter8adapters3map8map_foldTRTllEB1h_ETB1i_B1i_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1L_5style12BackendColorEs_0NCINvNvNtNtNtBK_6traits8iterator8Iterator8for_each4callB1r_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5m_3VecB1r_E14extend_trustedINtBG_3MapINtNtBI_3zip3ZipINtNtNtB4_5slice4iter4IterB1i_EINtNtBI_4skip4SkipB6I_EEB1C_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25685, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25688, retainedNodes: !25686)
!25554 = distinct !DILocation(line: 285, column: 5, scope: !25500, inlinedAt: !25507)
!25555 = distinct !DISubprogram(name: "drop_glue<core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callTTllEB1C_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1U_3VecB1B_E14extend_trustedINtNtNtBO_8adapters3map3MapINtNtB2V_3zip3ZipINtNtNtB4_5slice4iter4IterB1C_EINtNtB2V_4skip4SkipB3y_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB4B_5style12BackendColorEs_0EE0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25692, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25695, retainedNodes: !25693)
!25556 = distinct !DILocation(line: 848, column: 1, scope: !25553, inlinedAt: !25554)
!25557 = distinct !DISubprogram(name: "drop_glue<alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtBK_3VecTTllEB1l_EE14extend_trustedINtNtNtNtB4_4iter8adapters3map3MapINtNtB1Q_3zip3ZipINtNtNtB4_5slice4iter4IterB1l_EINtNtB1Q_4skip4SkipB2A_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3D_5style12BackendColorEs_0EE0ECsaTqK2fWTXJW_11qlog_dancer", scope: !3755, file: !4869, line: 848, type: !25699, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, templateParams: !25702, retainedNodes: !25700)
!25558 = distinct !DILocation(line: 848, column: 1, scope: !25555, inlinedAt: !25556)
!25559 = distinct !DILocation(line: 848, column: 1, scope: !25557, inlinedAt: !25558)
!25560 = distinct !DILocation(line: 848, column: 1, scope: !1973, inlinedAt: !25559)
!25561 = !{null, !25497, !3714, !25495}
!25562 = !DISubroutineType(types: !25561)
!25563 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !25495, file: !3148, baseType: !25494, size: 192, align: 64)
!25564 = !{!25563}
!25565 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !25494, file: !3148, baseType: !11093, size: 64, align: 64, offset: 128)
!25566 = !DIDerivedType(tag: DW_TAG_member, name: "local_len", scope: !25494, file: !3148, baseType: !1958, size: 128, align: 64)
!25567 = !{!25565, !25566}
!25568 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !25497, file: !3148, baseType: !2063, size: 448, align: 64, flags: DIFlagProtected)
!25569 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !25497, file: !3148, baseType: !25496, align: 8, offset: 448, flags: DIFlagPrivate)
!25570 = !{!25568, !25569}
!25571 = !DITemplateTypeParameter(name: "F", type: !25496)
!25572 = !{!11113, !25571}
!25573 = !DILocalVariable(name: "self", arg: 1, scope: !25498, file: !10541, line: 124, type: !25497)
!25574 = !DILocalVariable(name: "init", arg: 2, scope: !25498, file: !10541, line: 124, type: !3714)
!25575 = !DILocalVariable(name: "g", arg: 3, scope: !25498, file: !10541, line: 124, type: !25495)
!25576 = !{!25573, !25574, !25575}
!25577 = !DITemplateTypeParameter(name: "G", type: !25495)
!25578 = !{!11114, !11113, !25571, !10670, !25577}
!25579 = !DILocation(line: 0, scope: !2066, inlinedAt: !25508)
!25580 = !{null, !2063, !3714, !25499}
!25581 = !DISubroutineType(types: !25580)
!25582 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !25499, file: !3148, baseType: !25495, size: 192, align: 64)
!25583 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !25499, file: !3148, baseType: !25496, align: 8, offset: 192)
!25584 = !{!25582, !25583}
!25585 = !DILocalVariable(name: "self", arg: 1, scope: !25500, file: !11115, line: 270, type: !2063)
!25586 = !DILocalVariable(name: "init", arg: 2, scope: !25500, file: !11115, line: 270, type: !3714)
!25587 = !DILocalVariable(name: "f", arg: 3, scope: !25500, file: !11115, line: 270, type: !25499)
!25588 = !DILocalVariable(name: "accum", scope: !25501, file: !11115, line: 274, type: !3714, align: 8)
!25589 = !DILocalVariable(name: "len", scope: !25502, file: !11115, line: 275, type: !3717, align: 64)
!25590 = !DILocalVariable(name: "iter", scope: !25503, file: !11115, line: 276, type: !2027, align: 64)
!25591 = !DILocalVariable(name: "i", scope: !25504, file: !11115, line: 276, type: !3717, align: 64)
!25592 = !{!25585, !25586, !25587, !25588, !25589, !25590, !25591}
!25593 = !DITemplateTypeParameter(name: "F", type: !25499)
!25594 = !{!11110, !11111, !10670, !25593}
!25595 = !DILocalVariable(name: "self", arg: 1, scope: !25505, file: !11115, line: 97, type: !2063)
!25596 = !DILocalVariable(name: "init", arg: 2, scope: !25505, file: !11115, line: 97, type: !3714)
!25597 = !DILocalVariable(name: "f", arg: 3, scope: !25505, file: !11115, line: 97, type: !25499)
!25598 = !{!25595, !25596, !25597}
!25599 = !DILocation(line: 124, column: 21, scope: !25498)
!25600 = !DILocation(line: 124, column: 27, scope: !25498)
!25601 = !DILocation(line: 124, column: 38, scope: !25498)
!25602 = !DILocalVariable(name: "g", arg: 2, scope: !25509, file: !10541, line: 86, type: !25495)
!25603 = !{!25499, !25496, !25495}
!25604 = !DISubroutineType(types: !25603)
!25605 = !DILocalVariable(name: "f", arg: 1, scope: !25509, file: !10541, line: 85, type: !25496)
!25606 = !{!25605, !25602}
!25607 = !DITemplateTypeParameter(name: "impl FnMut(T) -> B", type: !25496)
!25608 = !DITemplateTypeParameter(name: "impl FnMut(Acc, B) -> Acc", type: !25495)
!25609 = !{!11128, !11114, !10670, !25607, !25608}
!25610 = !DILocation(line: 128, column: 30, scope: !25498)
!25611 = !DILocation(line: 86, column: 5, scope: !25509, inlinedAt: !25610)
!25612 = !DILocation(line: 85, column: 5, scope: !25509, inlinedAt: !25610)
!25613 = !DILocation(line: 0, scope: !25505, inlinedAt: !25506)
!25614 = !DILocation(line: 0, scope: !25500, inlinedAt: !25507)
!25615 = !DILocation(line: 97, column: 27, scope: !25505, inlinedAt: !25506)
!25616 = !DILocalVariable(name: "self", arg: 1, scope: !25510, file: !10410, line: 2192, type: !4740)
!25617 = !DILocalVariable(name: "other", arg: 2, scope: !25510, file: !10410, line: 2192, type: !4740)
!25618 = !{!25616, !25617}
!25619 = !DILocation(line: 2192, column: 19, scope: !25510, inlinedAt: !25516)
!25620 = !DILocalVariable(name: "self", arg: 1, scope: !25512, file: !10417, line: 1099, type: !10897)
!25621 = !DILocalVariable(name: "old", scope: !25511, file: !10417, line: 1101, type: !3717, align: 64)
!25622 = !{!25620, !25621}
!25623 = !DILocalVariable(name: "self", arg: 1, scope: !25513, file: !10417, line: 1184, type: !10897)
!25624 = !{!25623}
!25625 = !DILexicalBlockFile(scope: !25503, file: !11115, discriminator: 2)
!25626 = !DILocation(line: 1099, column: 18, scope: !25512, inlinedAt: !25515)
!25627 = !DILocation(line: 1184, column: 13, scope: !25513, inlinedAt: !25514)
!25628 = !DILocation(line: 270, column: 31, scope: !25500, inlinedAt: !25507)
!25629 = !DILocation(line: 274, column: 13, scope: !25501, inlinedAt: !25507)
!25630 = !DILocalVariable(name: "n", scope: !25517, file: !10417, line: 263, type: !3717, align: 64)
!25631 = !DILocalVariable(name: "start", arg: 1, scope: !25517, file: !10417, line: 263, type: !3717)
!25632 = !{!25631, !25630}
!25633 = !DILocation(line: 0, scope: !25517, inlinedAt: !25518)
!25634 = !DILocalVariable(name: "rhs", scope: !25519, file: !4698, line: 1031, type: !3717, align: 64)
!25635 = !DILocalVariable(name: "self", arg: 1, scope: !25519, file: !4698, line: 1031, type: !3717)
!25636 = !{!25635, !25634}
!25637 = !DILocation(line: 0, scope: !25519, inlinedAt: !25520)
!25638 = !DILocation(line: 0, scope: !2068, inlinedAt: !25521)
!25639 = !DILocation(line: 0, scope: !25502, inlinedAt: !25507)
!25640 = !DILocation(line: 0, scope: !25503, inlinedAt: !25507)
!25641 = !DILocation(line: 2192, column: 26, scope: !25510, inlinedAt: !25516)
!25642 = !DILocation(line: 0, scope: !25511, inlinedAt: !25515)
!25643 = !DILocation(line: 0, scope: !25504, inlinedAt: !25507)
!25644 = !DILocation(line: 0, scope: !2065, inlinedAt: !25508)
!25645 = !DILocation(line: 0, scope: !2069, inlinedAt: !25522)
!25646 = !DILocation(line: 0, scope: !2073, inlinedAt: !25524)
!25647 = !DILocation(line: 0, scope: !2074, inlinedAt: !25525)
!25648 = !DILocation(line: 0, scope: !2075, inlinedAt: !25526)
!25649 = !DILocation(line: 0, scope: !2069, inlinedAt: !25527)
!25650 = !DILocalVariable(name: "g", scope: !25529, file: !10541, line: 86, type: !25495, align: 64)
!25651 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::map::map_fold::{closure_env#0}<(&(i32, i32), &(i32, i32)), ((i32, i32), (i32, i32)), (), plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>, core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>>", baseType: !25499, size: 64, align: 64, dwarfAddressSpace: 0)
!25652 = !{null, !25651, !3714, !2064}
!25653 = !DISubroutineType(cc: DW_CC_nocall, types: !25652)
!25654 = !DILocalVariable(name: "acc", arg: 2, scope: !25529, file: !10541, line: 88, type: !3714)
!25655 = !DILocalVariable(name: "elt", arg: 3, scope: !25529, file: !10541, line: 88, type: !2064)
!25656 = !DILocalVariable(name: "f", scope: !25529, file: !10541, line: 85, type: !25496, align: 8)
!25657 = !{!25654, !25655, !25650, !25656}
!25658 = !DILocation(line: 0, scope: !25529, inlinedAt: !25530)
!25659 = !DILocation(line: 88, column: 11, scope: !25529, inlinedAt: !25530)
!25660 = !DILocalVariable(name: "item", arg: 3, scope: !25531, file: !10604, line: 884, type: !2061)
!25661 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<((i32, i32), (i32, i32)), alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>>", baseType: !25495, size: 64, align: 64, dwarfAddressSpace: 0)
!25662 = !{null, !25661, !3714, !2061}
!25663 = !DISubroutineType(types: !25662)
!25664 = !DILocalVariable(name: "f", scope: !25531, file: !10604, line: 883, type: !25494, align: 64)
!25665 = !DILocalVariable(arg: 2, scope: !25531, file: !10604, line: 884, type: !3714)
!25666 = !{!25660, !25664, !25665}
!25667 = !DITemplateTypeParameter(name: "impl FnMut(T)", type: !25494)
!25668 = !{!11164, !25667}
!25669 = !DILocation(line: 0, scope: !25531, inlinedAt: !25532)
!25670 = !DILocalVariable(name: "element", arg: 2, scope: !25533, file: !4841, line: 4134, type: !2061)
!25671 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<((i32, i32), (i32, i32)), alloc::alloc::Global, core::iter::adapters::map::Map<core::iter::adapters::zip::Zip<core::slice::iter::Iter<(i32, i32)>, core::iter::adapters::skip::Skip<core::slice::iter::Iter<(i32, i32)>>>, plotters_backend::rasterizer::polygon::fill_polygon::{closure_env#1}<plotters_bitmap::bitmap::BitMapBackend<plotters_bitmap::bitmap_pixel::rgb::RGBPixel>, plotters_backend::style::BackendColor>>>", baseType: !25494, size: 64, align: 64, dwarfAddressSpace: 0)
!25672 = !{null, !25671, !2061}
!25673 = !DISubroutineType(types: !25672)
!25674 = !DILocalVariable(name: "ptr", scope: !25533, file: !4841, line: 4132, type: !11093, align: 64)
!25675 = !DILocalVariable(name: "local_len", scope: !25533, file: !4841, line: 4133, type: !1958, align: 64)
!25676 = !{!25670, !25674, !25675}
!25677 = !DITemplateTypeParameter(name: "impl iter::TrustedLen<Item = T>", type: !25497)
!25678 = !{!11164, !3764, !25677}
!25679 = !DILocation(line: 0, scope: !25533, inlinedAt: !25534)
!25680 = !DILocation(line: 884, column: 19, scope: !25531, inlinedAt: !25532)
!25681 = !{!25542, !25541, !25539, !25538}
!25682 = !{!25550, !25548, !25546, !25542, !25541, !25539, !25538}
!25683 = !DILocalVariable(arg: 1, scope: !25553, file: !4869, line: 848, type: !25651)
!25684 = !{null, !25651}
!25685 = !DISubroutineType(cc: DW_CC_nocall, types: !25684)
!25686 = !{!25683}
!25687 = !DITemplateTypeParameter(name: "T", type: !25499)
!25688 = !{!25687}
!25689 = !DILocation(line: 0, scope: !25553, inlinedAt: !25554)
end_hunk_1
