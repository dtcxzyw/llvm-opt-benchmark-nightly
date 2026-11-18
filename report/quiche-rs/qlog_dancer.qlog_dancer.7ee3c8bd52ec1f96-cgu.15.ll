Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.15?download=true
inline.NumInlined: 1411
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1C_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1G_5coord5ShiftE20split_by_breakpointsllRSlB4e_Es_0ENCINvMB1C_NtB1C_4Rect10split_gridIBO_B11_NCB1v_0EBX_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5l_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6y_3VeclE14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(ptr poison, !24670, !DIExpression(), !24539)
  %i.f = icmp eq ptr %i.c, %i.e, !dbg !24749
  br i1 %i.f, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !24750

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !24649, !DIExpression(), !24540)
    #dbg_value(i64 0, !24667, !DIExpression(), !24534)
    #dbg_value(ptr %i.e, !24652, !DIExpression(), !24541)
    #dbg_value(ptr %i.e, !24663, !DIExpression(), !24542)
    #dbg_value(ptr %i.c, !24664, !DIExpression(), !24542)
    #dbg_value(ptr %i.e, !24660, !DIExpression(), !24543)
    #dbg_value(ptr %i.c, !24661, !DIExpression(), !24543)
    #dbg_value(ptr %i.c, !24658, !DIExpression(), !24544)
    #dbg_value(ptr %i.e, !24657, !DIExpression(), !24544)
  %i.g = ptrtoint ptr %i.e to i64, !dbg !24751
  %i.h = ptrtoint ptr %i.c to i64, !dbg !24751
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !24751      ; 3 uses
  %i.j = lshr exact i64 %i.i, 2, !dbg !24751      ; 2 uses
    #dbg_value(i64 %i.j, !24650, !DIExpression(), !24545)
  %i.k = icmp eq i64 %i.i, 4, !dbg !24752
  br i1 %i.k, label %.epil.preheader, label %.new, !dbg !24752

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.j, 4611686018427387902, !dbg !24752
  br label %bb.c, !dbg !24752

bb.c:                                             ; preds = %bb.c, %.new
  %i.l = phi i64 [ %.sroa.4.0.copyload, %.new ], [ %i.aa, %bb.c ], !dbg !24753 ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.c ], !dbg !24754 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
    #dbg_value(i64 %.sroa.01.0.i.i, !24667, !DIExpression(), !24534)
    #dbg_value(i64 %.sroa.01.0.i.i, !24649, !DIExpression(), !24540)
    #dbg_value(ptr %i.c, !24672, !DIExpression(), !24548)
    #dbg_value(i64 %.sroa.01.0.i.i, !24673, !DIExpression(), !24548)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i, !dbg !24753
  %.val27.i.i = load i32, ptr %i.m, align 4, !dbg !24755, !noalias !24675, !noundef !3744
    #dbg_value(ptr poison, !24676, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24554)
    #dbg_value(ptr poison, !24682, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32), !24554)
    #dbg_value(ptr poison, !24681, !DIExpression(), !24554)
    #dbg_value(ptr poison, !24687, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24557)
    #dbg_value(ptr poison, !24693, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !24557)
    #dbg_value(i32 %.val27.i.i, !24692, !DIExpression(), !24557)
    #dbg_value(ptr poison, !24695, !DIExpression(DW_OP_deref, DW_OP_deref), !24560)
    #dbg_value(i32 %.val27.i.i, !24699, !DIExpression(), !24560)
  %i.n = load ptr, ptr %i.b, align 8, !dbg !24756, !noalias !24701, !nonnull !3744, !align !10455, !noundef !3744
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !24756
  %i.p = load i32, ptr %i.o, align 4, !dbg !24756, !noalias !24701, !noundef !3744
  %i.q = add i32 %i.p, %.val27.i.i, !dbg !24757
    #dbg_value(ptr poison, !24702, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24567)
    #dbg_value(i32 %i.q, !24706, !DIExpression(), !24567)
    #dbg_value(ptr poison, !24711, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !24570)
    #dbg_value(ptr poison, !24716, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24570)
    #dbg_value(i32 %i.q, !24715, !DIExpression(), !24570)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.l, !dbg !24758
  store i32 %i.q, ptr %i.r, align 4, !dbg !24759, !noalias !24720
    #dbg_value(i64 %.sroa.01.0.i.i, !24649, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !24540)
    #dbg_value(i64 %.sroa.01.0.i.i, !24667, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !24534)
    #dbg_value(i64 %.sroa.01.0.i.i, !24673, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !24548)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i, !dbg !24753
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4, !dbg !24753
  %.val27.i.i.1 = load i32, ptr %i.t, align 4, !dbg !24755, !noalias !24675, !noundef !3744
    #dbg_value(i32 %.val27.i.i.1, !24692, !DIExpression(), !24557)
    #dbg_value(i32 %.val27.i.i.1, !24699, !DIExpression(), !24560)
  %i.u = load ptr, ptr %i.b, align 8, !dbg !24756, !noalias !24701, !nonnull !3744, !align !10455, !noundef !3744
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4, !dbg !24756
  %i.w = load i32, ptr %i.v, align 4, !dbg !24756, !noalias !24701, !noundef !3744
  %i.x = add i32 %i.w, %.val27.i.i.1, !dbg !24757
    #dbg_value(i32 %i.x, !24706, !DIExpression(), !24567)
    #dbg_value(i32 %i.x, !24715, !DIExpression(), !24570)
  %i.y = getelementptr [4 x i8], ptr %.sroa.5.0.copyload, i64 %i.l, !dbg !24758
  %i.z = getelementptr i8, ptr %i.y, i64 4, !dbg !24758
  store i32 %i.x, ptr %i.z, align 4, !dbg !24759, !noalias !24720
  %i.aa = add i64 %i.l, 2, !dbg !24760            ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i.i, 2, !dbg !24761 ; 2 uses
    #dbg_value(i64 %i.ab, !24649, !DIExpression(), !24540)
    #dbg_value(i64 %i.ab, !24667, !DIExpression(), !24534)
  %niter.next.1 = add i64 %niter, 2, !dbg !24762  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !24762
  br i1 %niter.ncmp.1, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, label %bb.c, !dbg !24762

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.ac = and i64 %i.i, 4, !dbg !24762
  %lcmp.mod.not = icmp eq i64 %i.ac, 0, !dbg !24762
  br i1 %lcmp.mod.not, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.epil.preheader, !dbg !24762

.epil.preheader:                                  ; preds = %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.aa, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.j to i1, !dbg !24762
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !24762
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24667, !DIExpression(), !24534)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24649, !DIExpression(), !24540)
    #dbg_value(ptr %i.c, !24672, !DIExpression(), !24548)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24673, !DIExpression(), !24548)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.01.0.i.i.epil.init, !dbg !24753
  %.val27.i.i.epil = load i32, ptr %i.ad, align 4, !dbg !24755, !noalias !24675, !noundef !3744
    #dbg_value(ptr poison, !24676, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24554)
    #dbg_value(ptr poison, !24682, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32), !24554)
    #dbg_value(ptr poison, !24681, !DIExpression(), !24554)
    #dbg_value(ptr poison, !24687, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24557)
    #dbg_value(ptr poison, !24693, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !24557)
    #dbg_value(i32 %.val27.i.i.epil, !24692, !DIExpression(), !24557)
    #dbg_value(ptr poison, !24695, !DIExpression(DW_OP_deref, DW_OP_deref), !24560)
    #dbg_value(i32 %.val27.i.i.epil, !24699, !DIExpression(), !24560)
  %i.ae = load ptr, ptr %i.b, align 8, !dbg !24756, !noalias !24701, !nonnull !3744, !align !10455, !noundef !3744
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4, !dbg !24756
  %i.ag = load i32, ptr %i.af, align 4, !dbg !24756, !noalias !24701, !noundef !3744
  %i.ah = add i32 %i.ag, %.val27.i.i.epil, !dbg !24757
    #dbg_value(ptr poison, !24702, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24567)
    #dbg_value(i32 %i.ah, !24706, !DIExpression(), !24567)
    #dbg_value(ptr poison, !24711, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !24570)
    #dbg_value(ptr poison, !24716, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24570)
    #dbg_value(i32 %i.ah, !24715, !DIExpression(), !24570)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.copyload, i64 %.epil.init, !dbg !24758
  store i32 %i.ah, ptr %i.ai, align 4, !dbg !24759, !noalias !24720
  %i.aj = add i64 %.epil.init, 1, !dbg !24760
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24649, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24540)
    #dbg_value(i64 %.sroa.01.0.i.i.epil.init, !24667, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24534)
  br label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %.epil.preheader, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.aa, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvMs7_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1y_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1C_5coord5ShiftE20split_by_breakpointsllRSlB4a_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldlluNCINvMB1y_NtB1y_4Rect10split_gridIBO_BX_NCB1r_0EBN_Es_0NCINvNvB4m_8for_each4calllNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6M_3VeclE14extend_trustedIBO_BN_B5k_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %i.aj, %.epil.preheader ], !dbg !24763
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !24763, !noalias !24675
  ret void, !dbg !24764
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1C_14TriangleMarkerTdlElEINtB1E_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2F_ENCINvMs6_NtNtB1G_7drawing4areaINtB4N_11DrawingAreaB31_INtNtNtNtB1G_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5D_8ranged1d5types7numeric14RangedCoordf64NtB6n_14RangedCoordi32EE4drawB2i_NtB1E_16BackendCoordOnlyE0EE0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8l_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9B_3VecB9o_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24767 {
bb.a:
    #dbg_declare(ptr %0, !24898, !DIExpression(), !24904)
    #dbg_declare(ptr %1, !24900, !DIExpression(), !24905)
    #dbg_declare(ptr %1, !24906, !DIExpression(), !24918)
  %i.a = load ptr, ptr %0, align 8, !dbg !25060, !nonnull !3744, !noundef !3744 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25060
  %i.c = load ptr, ptr %i.b, align 8, !dbg !25060, !nonnull !3744, !noundef !3744 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25061
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !dbg !25061 ; 5 uses
    #dbg_value(ptr %.sroa.01.0.copyload, !24912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24919)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25061
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !25061 ; 5 uses
    #dbg_value(ptr %.sroa.42.0.copyload, !24912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24919)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25061
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !25061 ; 5 uses
    #dbg_value(ptr %.sroa.53.0.copyload, !24912, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24919)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !25062 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !24920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24928)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25062
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25062 ; 7 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !24920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24928)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25062
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !25062 ; 4 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !24920, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24928)
    #dbg_value(ptr %.sroa.01.0.copyload, !24920, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24928)
    #dbg_value(ptr %.sroa.42.0.copyload, !24920, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !24928)
    #dbg_value(ptr %.sroa.53.0.copyload, !24920, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !24928)
    #dbg_value(ptr %i.a, !24923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24772)
    #dbg_value(ptr %i.c, !24923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24772)
    #dbg_value(ptr %.sroa.0.0.copyload, !24929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24783)
    #dbg_value(i64 %.sroa.4.0.copyload, !24929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24783)
    #dbg_value(ptr %.sroa.5.0.copyload, !24929, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24783)
    #dbg_value(ptr %.sroa.01.0.copyload, !24929, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !24783)
    #dbg_value(ptr %.sroa.42.0.copyload, !24929, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !24783)
    #dbg_value(ptr %.sroa.53.0.copyload, !24929, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !24783)
    #dbg_value(ptr %i.a, !24935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24784)
    #dbg_value(ptr %i.c, !24935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24784)
    #dbg_value(i64 4, !24947, !DIExpression(), !24792)
    #dbg_value(i64 1, !24957, !DIExpression(), !24795)
    #dbg_value(ptr %i.c, !24938, !DIExpression(), !24796)
    #dbg_value(ptr poison, !24960, !DIExpression(), !24799)
    #dbg_value(ptr poison, !24961, !DIExpression(), !24800)
  %i.e = icmp eq ptr %i.a, %i.c, !dbg !25063
  br i1 %i.e, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !25064

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !24940, !DIExpression(), !24801)
    #dbg_value(i64 0, !24958, !DIExpression(), !24795)
    #dbg_value(ptr %i.c, !24943, !DIExpression(), !24802)
    #dbg_value(ptr %i.c, !24954, !DIExpression(), !24803)
    #dbg_value(ptr %i.a, !24955, !DIExpression(), !24803)
    #dbg_value(ptr %i.c, !24951, !DIExpression(), !24804)
    #dbg_value(ptr %i.a, !24952, !DIExpression(), !24804)
    #dbg_value(ptr %i.a, !24949, !DIExpression(), !24805)
    #dbg_value(ptr %i.c, !24948, !DIExpression(), !24805)
  %i.f = ptrtoint ptr %i.c to i64, !dbg !25065
  %i.g = ptrtoint ptr %i.a to i64, !dbg !25065
  %i.h = sub i64 %i.f, %i.g, !dbg !25065          ; 3 uses
  %i.i = lshr i64 %i.h, 2, !dbg !25065            ; 4 uses
    #dbg_value(i64 %i.i, !24941, !DIExpression(), !24806)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload), "nonnull"(ptr %.sroa.42.0.copyload), "nonnull"(ptr %.sroa.53.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.h, 16, !dbg !25066
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !25066

vector.memcheck:                                  ; preds = %bb.b
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !25066
  %i.k = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.j, !dbg !25066 ; 4 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.i, !dbg !25066
  %i.m = shl i64 %i.l, 3, !dbg !25066
  %i.n = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.m, !dbg !25066 ; 4 uses
  %i.o = and i64 %i.h, -4, !dbg !25066
  %2 = getelementptr i8, ptr %i.a, i64 %i.o, !dbg !25066
  %3 = getelementptr i8, ptr %.sroa.01.0.copyload, i64 4, !dbg !25066
  %i.p = getelementptr i8, ptr %.sroa.42.0.copyload, i64 4, !dbg !25066
  %4 = getelementptr i8, ptr %.sroa.53.0.copyload, i64 4, !dbg !25066
  %bound0.a = icmp ult ptr %i.k, %2, !dbg !25066
  %bound1 = icmp ult ptr %i.a, %i.n, !dbg !25066
  %found.conflict = and i1 %bound0.a, %bound1, !dbg !25066
  %bound021 = icmp ult ptr %i.k, %3, !dbg !25066
  %bound122 = icmp ult ptr %.sroa.01.0.copyload, %i.n, !dbg !25066
  %found.conflict23 = and i1 %bound021, %bound122, !dbg !25066
  %conflict.rdx = or i1 %found.conflict, %found.conflict23, !dbg !25066
  %bound024 = icmp ult ptr %i.k, %i.p, !dbg !25066
  %bound125 = icmp ult ptr %.sroa.42.0.copyload, %i.n, !dbg !25066
  %found.conflict26 = and i1 %bound024, %bound125, !dbg !25066
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26, !dbg !25066
  %bound028 = icmp ult ptr %i.k, %4, !dbg !25066
  %bound129 = icmp ult ptr %.sroa.53.0.copyload, %i.n, !dbg !25066
  %found.conflict30 = and i1 %bound028, %bound129, !dbg !25066
  %conflict.rdx31 = or i1 %conflict.rdx27, %found.conflict30, !dbg !25066
  br i1 %conflict.rdx31, label %scalar.ph.preheader, label %vector.ph, !dbg !25067

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4611686018427387902      ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25068, !alias.scope !24963, !noalias !24964
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.r, i64 0, !dbg !25067
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25067
  %i.s = sitofp <2 x i32> %broadcast.splat to <2 x double>, !dbg !25069 ; 2 uses
  %i.t = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25070, !alias.scope !24994, !noalias !24964
  %broadcast.splatinsert32 = insertelement <2 x i32> poison, i32 %i.t, i64 0, !dbg !25067
  %broadcast.splat33 = shufflevector <2 x i32> %broadcast.splatinsert32, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25067
  %i.u = sitofp <2 x i32> %broadcast.splat33 to <2 x double>, !dbg !25071
  %i.v = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25072, !alias.scope !24995, !noalias !24964
  %broadcast.splatinsert34 = insertelement <2 x i32> poison, i32 %i.v, i64 0, !dbg !25067
  %broadcast.splat35 = shufflevector <2 x i32> %broadcast.splatinsert34, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25067
  %i.w = sitofp <2 x i32> %broadcast.splat35 to <2 x double>, !dbg !25073
  %i.x = getelementptr [8 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !25067

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !25067 ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !25074
  %wide.load = load <2 x i32>, ptr %i.y, align 4, !dbg !25075, !alias.scope !24999, !noalias !25000
  %i.z = sitofp <2 x i32> %wide.load to <2 x double>, !dbg !25076
  %i.aa = fmul nnan <2 x double> %i.z, splat (double f0x400921FB54442D18), !dbg !25077
  %i.ab = fdiv <2 x double> %i.aa, splat (double 1.800000e+02), !dbg !25077
  %i.ac = tail call { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ab), !dbg !25078 ; 2 uses
  %i.ad = extractvalue { <2 x double>, <2 x double> } %i.ac, 0, !dbg !25078
  %i.ae = extractvalue { <2 x double>, <2 x double> } %i.ac, 1, !dbg !25078
  %i.af = fmul <2 x double> %i.ae, %i.s, !dbg !25079
  %i.ag = fadd <2 x double> %i.af, %i.u, !dbg !25080
  %i.ah = fmul <2 x double> %i.ad, %i.s, !dbg !25081
  %i.ai = fadd <2 x double> %i.ah, %i.w, !dbg !25082
  %i.aj = getelementptr [8 x i8], ptr %i.x, i64 %index, !dbg !25083
  %i.ak = shufflevector <2 x double> %i.ag, <2 x double> %i.ai, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !25084
  %i.al = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %i.ak), !dbg !25084
  %interleaved.vec = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f64(<4 x double> %i.al), !dbg !25084
  store <4 x i32> %interleaved.vec, ptr %i.aj, align 4, !dbg !25084, !alias.scope !25029, !noalias !25030
  %index.next = add nuw i64 %index, 2, !dbg !25067 ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec, !dbg !25085
  br i1 %i.am, label %middle.block, label %vector.body, !dbg !25085, !llvm.loop !24853

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !25085
  br i1 %cmp.n, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !25085

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !25085

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.an = phi i64 [ %i.bi, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !25074 ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bj, %scalar.ph ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !25067 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i.i, !24958, !DIExpression(), !24795)
    #dbg_value(i64 %.sroa.01.0.i.i, !24940, !DIExpression(), !24801)
    #dbg_value(ptr %i.a, !24996, !DIExpression(), !24854)
    #dbg_value(i64 %.sroa.01.0.i.i, !24997, !DIExpression(), !24854)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.i, !dbg !25074
  %.val27.i.i = load i32, ptr %i.ao, align 4, !dbg !25075, !noalias !25000, !noundef !3744
    #dbg_value(ptr poison, !24986, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24855)
    #dbg_value(ptr poison, !24985, !DIExpression(), !24855)
    #dbg_value(ptr poison, !25007, !DIExpression(), !24856)
    #dbg_value(ptr poison, !25006, !DIExpression(), !24856)
    #dbg_value(i32 %.val27.i.i, !25001, !DIExpression(), !24857)
  %i.ap = sitofp i32 %.val27.i.i to double, !dbg !25076
  %i.aq = fmul nnan double %i.ap, f0x400921FB54442D18, !dbg !25077
  %i.ar = fdiv double %i.aq, 1.800000e+02, !dbg !25077
    #dbg_value(ptr poison, !24978, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24858)
    #dbg_value(ptr poison, !24979, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_LLVM_fragment, 0, 64), !24858)
    #dbg_value(double %i.ar, !24977, !DIExpression(), !24858)
  %sincos.i.i.i.i.i = tail call { double, double } @llvm.sincos.f64(double %i.ar), !dbg !25078 ; 2 uses
  %sin.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 0, !dbg !25078
  %cos.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 1, !dbg !25078
    #dbg_value(ptr poison, !24969, !DIExpression(DW_OP_deref, DW_OP_deref), !24859)
    #dbg_value(ptr poison, !24970, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !24859)
    #dbg_value(ptr poison, !24971, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !24859)
    #dbg_value(double %i.ar, !24968, !DIExpression(), !24859)
    #dbg_value(double %i.ar, !25009, !DIExpression(), !24860)
  %i.as = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25068, !noalias !24964, !noundef !3744
    #dbg_value(i32 %i.as, !24992, !DIExpression(), !24861)
  %i.at = sitofp i32 %i.as to double, !dbg !25069 ; 2 uses
  %i.au = fmul double %cos.i.i.i.i.i, %i.at, !dbg !25079
  %i.av = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25070, !noalias !24964, !noundef !3744
    #dbg_value(i32 %i.av, !24992, !DIExpression(), !24862)
  %i.aw = sitofp i32 %i.av to double, !dbg !25071
  %i.ax = fadd double %i.au, %i.aw, !dbg !25080
    #dbg_value(double %i.ax, !25031, !DIExpression(), !24865)
    #dbg_value(double %i.ax, !25033, !DIExpression(), !24868)
  %i.ay = tail call double @llvm.ceil.f64(double %i.ax), !dbg !25086
  %i.az = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.ay), !dbg !25080
    #dbg_value(i32 %i.as, !24992, !DIExpression(), !24870)
  %i.ba = fmul double %sin.i.i.i.i.i, %i.at, !dbg !25081
  %i.bb = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25072, !noalias !24964, !noundef !3744
    #dbg_value(i32 %i.bb, !24992, !DIExpression(), !24871)
  %i.bc = sitofp i32 %i.bb to double, !dbg !25073
  %i.bd = fadd double %i.ba, %i.bc, !dbg !25082
    #dbg_value(double %i.bd, !25031, !DIExpression(), !24873)
    #dbg_value(double %i.bd, !25033, !DIExpression(), !24875)
  %i.be = tail call double @llvm.ceil.f64(double %i.bd), !dbg !25087
  %i.bf = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.be), !dbg !25082
    #dbg_value(ptr poison, !25024, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24876)
    #dbg_value(i32 %i.az, !25023, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24876)
    #dbg_value(i32 %i.bf, !25023, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !24876)
    #dbg_value(ptr poison, !25015, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !24877)
    #dbg_value(ptr poison, !25016, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24877)
    #dbg_value(i32 %i.az, !25014, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24877)
    #dbg_value(i32 %i.bf, !25014, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !24877)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.an, !dbg !25083 ; 2 uses
  store i32 %i.az, ptr %i.bg, align 4, !dbg !25084, !noalias !25030
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4, !dbg !25084
  store i32 %i.bf, ptr %i.bh, align 4, !dbg !25084, !noalias !25030
  %i.bi = add i64 %i.an, 1, !dbg !25088           ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !25089 ; 2 uses
    #dbg_value(i64 %i.bj, !24940, !DIExpression(), !24801)
    #dbg_value(i64 %i.bj, !24958, !DIExpression(), !24795)
  %i.bk = icmp eq i64 %i.bj, %i.i, !dbg !25085
  br i1 %i.bk, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !25085, !llvm.loop !24880

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdlElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordi32EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %i.bi, %scalar.ph ], !dbg !25090
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !25090, !noalias !25000
  ret void, !dbg !25091
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1C_14TriangleMarkerTdyElEINtB1E_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2F_ENCINvMs6_NtNtB1G_7drawing4areaINtB4N_11DrawingAreaB31_INtNtNtNtB1G_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5D_8ranged1d5types7numeric14RangedCoordf64NtB6n_14RangedCoordu64EE4drawB2i_NtB1E_16BackendCoordOnlyE0EE0ENCB1v_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB8l_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9B_3VecB9o_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25094 {
bb.a:
    #dbg_declare(ptr %0, !25225, !DIExpression(), !25231)
    #dbg_declare(ptr %1, !25227, !DIExpression(), !25232)
    #dbg_declare(ptr %1, !25233, !DIExpression(), !25245)
  %i.a = load ptr, ptr %0, align 8, !dbg !25387, !nonnull !3744, !noundef !3744 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25387
  %i.c = load ptr, ptr %i.b, align 8, !dbg !25387, !nonnull !3744, !noundef !3744 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25388
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !dbg !25388 ; 5 uses
    #dbg_value(ptr %.sroa.01.0.copyload, !25239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25246)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25388
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !25388 ; 5 uses
    #dbg_value(ptr %.sroa.42.0.copyload, !25239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25246)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25388
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !25388 ; 5 uses
    #dbg_value(ptr %.sroa.53.0.copyload, !25239, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25246)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !25389 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !25247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25255)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25389
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25389 ; 7 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !25247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25255)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25389
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !25389 ; 4 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !25247, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25255)
    #dbg_value(ptr %.sroa.01.0.copyload, !25247, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25255)
    #dbg_value(ptr %.sroa.42.0.copyload, !25247, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25255)
    #dbg_value(ptr %.sroa.53.0.copyload, !25247, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25255)
    #dbg_value(ptr %i.a, !25250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25099)
    #dbg_value(ptr %i.c, !25250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25099)
    #dbg_value(ptr %.sroa.0.0.copyload, !25256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25110)
    #dbg_value(i64 %.sroa.4.0.copyload, !25256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25110)
    #dbg_value(ptr %.sroa.5.0.copyload, !25256, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25110)
    #dbg_value(ptr %.sroa.01.0.copyload, !25256, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25110)
    #dbg_value(ptr %.sroa.42.0.copyload, !25256, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25110)
    #dbg_value(ptr %.sroa.53.0.copyload, !25256, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25110)
    #dbg_value(ptr %i.a, !25262, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25111)
    #dbg_value(ptr %i.c, !25262, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25111)
    #dbg_value(i64 4, !25274, !DIExpression(), !25119)
    #dbg_value(i64 1, !25284, !DIExpression(), !25122)
    #dbg_value(ptr %i.c, !25265, !DIExpression(), !25123)
    #dbg_value(ptr poison, !25287, !DIExpression(), !25126)
    #dbg_value(ptr poison, !25288, !DIExpression(), !25127)
  %i.e = icmp eq ptr %i.a, %i.c, !dbg !25390
  br i1 %i.e, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !25391

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !25267, !DIExpression(), !25128)
    #dbg_value(i64 0, !25285, !DIExpression(), !25122)
    #dbg_value(ptr %i.c, !25270, !DIExpression(), !25129)
    #dbg_value(ptr %i.c, !25281, !DIExpression(), !25130)
    #dbg_value(ptr %i.a, !25282, !DIExpression(), !25130)
    #dbg_value(ptr %i.c, !25278, !DIExpression(), !25131)
    #dbg_value(ptr %i.a, !25279, !DIExpression(), !25131)
    #dbg_value(ptr %i.a, !25276, !DIExpression(), !25132)
    #dbg_value(ptr %i.c, !25275, !DIExpression(), !25132)
  %i.f = ptrtoint ptr %i.c to i64, !dbg !25392
  %i.g = ptrtoint ptr %i.a to i64, !dbg !25392
  %i.h = sub i64 %i.f, %i.g, !dbg !25392          ; 3 uses
  %i.i = lshr i64 %i.h, 2, !dbg !25392            ; 4 uses
    #dbg_value(i64 %i.i, !25268, !DIExpression(), !25133)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload), "nonnull"(ptr %.sroa.42.0.copyload), "nonnull"(ptr %.sroa.53.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.h, 16, !dbg !25393
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !25393

vector.memcheck:                                  ; preds = %bb.b
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !25393
  %i.k = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.j, !dbg !25393 ; 4 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.i, !dbg !25393
  %i.m = shl i64 %i.l, 3, !dbg !25393
  %i.n = getelementptr i8, ptr %.sroa.5.0.copyload, i64 %i.m, !dbg !25393 ; 4 uses
  %i.o = and i64 %i.h, -4, !dbg !25393
  %2 = getelementptr i8, ptr %i.a, i64 %i.o, !dbg !25393
  %3 = getelementptr i8, ptr %.sroa.01.0.copyload, i64 4, !dbg !25393
  %i.p = getelementptr i8, ptr %.sroa.42.0.copyload, i64 4, !dbg !25393
  %4 = getelementptr i8, ptr %.sroa.53.0.copyload, i64 4, !dbg !25393
  %bound0.a = icmp ult ptr %i.k, %2, !dbg !25393
  %bound1 = icmp ult ptr %i.a, %i.n, !dbg !25393
  %found.conflict = and i1 %bound0.a, %bound1, !dbg !25393
  %bound021 = icmp ult ptr %i.k, %3, !dbg !25393
  %bound122 = icmp ult ptr %.sroa.01.0.copyload, %i.n, !dbg !25393
  %found.conflict23 = and i1 %bound021, %bound122, !dbg !25393
  %conflict.rdx = or i1 %found.conflict, %found.conflict23, !dbg !25393
  %bound024 = icmp ult ptr %i.k, %i.p, !dbg !25393
  %bound125 = icmp ult ptr %.sroa.42.0.copyload, %i.n, !dbg !25393
  %found.conflict26 = and i1 %bound024, %bound125, !dbg !25393
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26, !dbg !25393
  %bound028 = icmp ult ptr %i.k, %4, !dbg !25393
  %bound129 = icmp ult ptr %.sroa.53.0.copyload, %i.n, !dbg !25393
  %found.conflict30 = and i1 %bound028, %bound129, !dbg !25393
  %conflict.rdx31 = or i1 %conflict.rdx27, %found.conflict30, !dbg !25393
  br i1 %conflict.rdx31, label %scalar.ph.preheader, label %vector.ph, !dbg !25394

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4611686018427387902      ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25395, !alias.scope !25290, !noalias !25291
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.r, i64 0, !dbg !25394
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25394
  %i.s = sitofp <2 x i32> %broadcast.splat to <2 x double>, !dbg !25396 ; 2 uses
  %i.t = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25397, !alias.scope !25321, !noalias !25291
  %broadcast.splatinsert32 = insertelement <2 x i32> poison, i32 %i.t, i64 0, !dbg !25394
  %broadcast.splat33 = shufflevector <2 x i32> %broadcast.splatinsert32, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25394
  %i.u = sitofp <2 x i32> %broadcast.splat33 to <2 x double>, !dbg !25398
  %i.v = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25399, !alias.scope !25322, !noalias !25291
  %broadcast.splatinsert34 = insertelement <2 x i32> poison, i32 %i.v, i64 0, !dbg !25394
  %broadcast.splat35 = shufflevector <2 x i32> %broadcast.splatinsert34, <2 x i32> poison, <2 x i32> zeroinitializer, !dbg !25394
  %i.w = sitofp <2 x i32> %broadcast.splat35 to <2 x double>, !dbg !25400
  %i.x = getelementptr [8 x i8], ptr %.sroa.5.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !25394

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !25394 ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index, !dbg !25401
  %wide.load = load <2 x i32>, ptr %i.y, align 4, !dbg !25402, !alias.scope !25326, !noalias !25327
  %i.z = sitofp <2 x i32> %wide.load to <2 x double>, !dbg !25403
  %i.aa = fmul nnan <2 x double> %i.z, splat (double f0x400921FB54442D18), !dbg !25404
  %i.ab = fdiv <2 x double> %i.aa, splat (double 1.800000e+02), !dbg !25404
  %i.ac = tail call { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ab), !dbg !25405 ; 2 uses
  %i.ad = extractvalue { <2 x double>, <2 x double> } %i.ac, 0, !dbg !25405
  %i.ae = extractvalue { <2 x double>, <2 x double> } %i.ac, 1, !dbg !25405
  %i.af = fmul <2 x double> %i.ae, %i.s, !dbg !25406
  %i.ag = fadd <2 x double> %i.af, %i.u, !dbg !25407
  %i.ah = fmul <2 x double> %i.ad, %i.s, !dbg !25408
  %i.ai = fadd <2 x double> %i.ah, %i.w, !dbg !25409
  %i.aj = getelementptr [8 x i8], ptr %i.x, i64 %index, !dbg !25410
  %i.ak = shufflevector <2 x double> %i.ag, <2 x double> %i.ai, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !25411
  %i.al = tail call <4 x double> @llvm.ceil.v4f64(<4 x double> %i.ak), !dbg !25411
  %interleaved.vec = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f64(<4 x double> %i.al), !dbg !25411
  store <4 x i32> %interleaved.vec, ptr %i.aj, align 4, !dbg !25411, !alias.scope !25356, !noalias !25357
  %index.next = add nuw i64 %index, 2, !dbg !25394 ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec, !dbg !25412
  br i1 %i.am, label %middle.block, label %vector.body, !dbg !25412, !llvm.loop !25180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !25412
  br i1 %cmp.n, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !25412

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !25412

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.an = phi i64 [ %i.bi, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !25401 ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.bj, %scalar.ph ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !25394 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i.i, !25285, !DIExpression(), !25122)
    #dbg_value(i64 %.sroa.01.0.i.i, !25267, !DIExpression(), !25128)
    #dbg_value(ptr %i.a, !25323, !DIExpression(), !25181)
    #dbg_value(i64 %.sroa.01.0.i.i, !25324, !DIExpression(), !25181)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.i, !dbg !25401
  %.val27.i.i = load i32, ptr %i.ao, align 4, !dbg !25402, !noalias !25327, !noundef !3744
    #dbg_value(ptr poison, !25313, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25182)
    #dbg_value(ptr poison, !25312, !DIExpression(), !25182)
    #dbg_value(ptr poison, !25334, !DIExpression(), !25183)
    #dbg_value(ptr poison, !25333, !DIExpression(), !25183)
    #dbg_value(i32 %.val27.i.i, !25328, !DIExpression(), !25184)
  %i.ap = sitofp i32 %.val27.i.i to double, !dbg !25403
  %i.aq = fmul nnan double %i.ap, f0x400921FB54442D18, !dbg !25404
  %i.ar = fdiv double %i.aq, 1.800000e+02, !dbg !25404
    #dbg_value(ptr poison, !25305, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25185)
    #dbg_value(ptr poison, !25306, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_LLVM_fragment, 0, 64), !25185)
    #dbg_value(double %i.ar, !25304, !DIExpression(), !25185)
  %sincos.i.i.i.i.i = tail call { double, double } @llvm.sincos.f64(double %i.ar), !dbg !25405 ; 2 uses
  %sin.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 0, !dbg !25405
  %cos.i.i.i.i.i = extractvalue { double, double } %sincos.i.i.i.i.i, 1, !dbg !25405
    #dbg_value(ptr poison, !25296, !DIExpression(DW_OP_deref, DW_OP_deref), !25186)
    #dbg_value(ptr poison, !25297, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !25186)
    #dbg_value(ptr poison, !25298, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !25186)
    #dbg_value(double %i.ar, !25295, !DIExpression(), !25186)
    #dbg_value(double %i.ar, !25336, !DIExpression(), !25187)
  %i.as = load i32, ptr %.sroa.01.0.copyload, align 4, !dbg !25395, !noalias !25291, !noundef !3744
    #dbg_value(i32 %i.as, !25319, !DIExpression(), !25188)
  %i.at = sitofp i32 %i.as to double, !dbg !25396 ; 2 uses
  %i.au = fmul double %cos.i.i.i.i.i, %i.at, !dbg !25406
  %i.av = load i32, ptr %.sroa.42.0.copyload, align 4, !dbg !25397, !noalias !25291, !noundef !3744
    #dbg_value(i32 %i.av, !25319, !DIExpression(), !25189)
  %i.aw = sitofp i32 %i.av to double, !dbg !25398
  %i.ax = fadd double %i.au, %i.aw, !dbg !25407
    #dbg_value(double %i.ax, !25358, !DIExpression(), !25192)
    #dbg_value(double %i.ax, !25360, !DIExpression(), !25195)
  %i.ay = tail call double @llvm.ceil.f64(double %i.ax), !dbg !25413
  %i.az = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.ay), !dbg !25407
    #dbg_value(i32 %i.as, !25319, !DIExpression(), !25197)
  %i.ba = fmul double %sin.i.i.i.i.i, %i.at, !dbg !25408
  %i.bb = load i32, ptr %.sroa.53.0.copyload, align 4, !dbg !25399, !noalias !25291, !noundef !3744
    #dbg_value(i32 %i.bb, !25319, !DIExpression(), !25198)
  %i.bc = sitofp i32 %i.bb to double, !dbg !25400
  %i.bd = fadd double %i.ba, %i.bc, !dbg !25409
    #dbg_value(double %i.bd, !25358, !DIExpression(), !25200)
    #dbg_value(double %i.bd, !25360, !DIExpression(), !25202)
  %i.be = tail call double @llvm.ceil.f64(double %i.bd), !dbg !25414
  %i.bf = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.be), !dbg !25409
    #dbg_value(ptr poison, !25351, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25203)
    #dbg_value(i32 %i.az, !25350, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25203)
    #dbg_value(i32 %i.bf, !25350, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25203)
    #dbg_value(ptr poison, !25342, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25204)
    #dbg_value(ptr poison, !25343, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25204)
    #dbg_value(i32 %i.az, !25341, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25204)
    #dbg_value(i32 %i.bf, !25341, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25204)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.copyload, i64 %i.an, !dbg !25410 ; 2 uses
  store i32 %i.az, ptr %i.bg, align 4, !dbg !25411, !noalias !25357
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4, !dbg !25411
  store i32 %i.bf, ptr %i.bh, align 4, !dbg !25411, !noalias !25357
  %i.bi = add i64 %i.an, 1, !dbg !25415           ; 2 uses
  %i.bj = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !25416 ; 2 uses
    #dbg_value(i64 %i.bj, !25267, !DIExpression(), !25128)
    #dbg_value(i64 %i.bj, !25285, !DIExpression(), !25122)
  %i.bk = icmp eq i64 %i.bj, %i.i, !dbg !25412
  br i1 %i.bk, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !25412, !llvm.loop !25207

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterlENCINvXs3_NtNtCs4bweDUTR8gt_8plotters7element6pointsINtB1y_14TriangleMarkerTdyElEINtB1A_8DrawableNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawIBO_INtNtNtBa_7sources4once4OnceRB2B_ENCINvMs6_NtNtB1C_7drawing4areaINtB4J_11DrawingAreaB2X_INtNtNtNtB1C_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5z_8ranged1d5types7numeric14RangedCoordf64NtB6j_14RangedCoordu64EE4drawB2e_NtB1A_16BackendCoordOnlyE0EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_folddTllEuNCB1r_s_0NCINvNvB87_8for_each4callB93_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB9T_3VecB93_E14extend_trustedIBO_BN_B98_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %i.bi, %scalar.ph ], !dbg !25417
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !25417, !noalias !25327
  ret void, !dbg !25418
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipB1d_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2f_5style12BackendColorEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4L_8for_each4callTB1D_B1D_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB67_3VecB5O_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25423 {
bb.a:
    #dbg_value(ptr poison, !11117, !DIExpression(), !25434)
    #dbg_declare(ptr %0, !25526, !DIExpression(), !25551)
    #dbg_declare(ptr %1, !25528, !DIExpression(), !25552)
    #dbg_declare(ptr %1, !25553, !DIExpression(), !25562)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !25626 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !25547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25563)
    #dbg_value(ptr %.sroa.0.0.copyload, !25537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25564)
    #dbg_value(i64 poison, !25547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25563)
    #dbg_value(i64 poison, !25537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25564)
    #dbg_value(ptr poison, !25547, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25563)
    #dbg_value(ptr poison, !25537, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25564)
    #dbg_value(i64 poison, !25547, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25563)
    #dbg_value(i64 poison, !25537, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !25564)
    #dbg_value(i64 poison, !25547, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25563)
    #dbg_value(i64 poison, !25537, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25564)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !25626
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !25626 ; 6 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !25547, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25563)
    #dbg_value(i64 %.sroa.6.0.copyload, !25537, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !25564)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25626
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !25626 ; 3 uses
    #dbg_value(i64 %.sroa.7.0.copyload, !25547, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !25563)
    #dbg_value(i64 %.sroa.7.0.copyload, !25537, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !25564)
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !25627 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.copyload, !25549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25563)
    #dbg_value(ptr %.sroa.03.0.copyload, !25539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25564)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25627
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !25627 ; 3 uses
    #dbg_value(i64 %.sroa.44.0.copyload, !25549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25563)
    #dbg_value(i64 %.sroa.44.0.copyload, !25539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25564)
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25627
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !25627 ; 3 uses
    #dbg_value(ptr %.sroa.65.0.copyload, !25549, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25563)
    #dbg_value(ptr %.sroa.65.0.copyload, !25539, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25564)
    #dbg_value(ptr poison, !25565, !DIExpression(), !25443)
    #dbg_value(ptr poison, !25568, !DIExpression(), !25444)
    #dbg_value(ptr poison, !25571, !DIExpression(), !25445)
    #dbg_value(i64 1, !25574, !DIExpression(), !25448)
    #dbg_value(i64 1, !25577, !DIExpression(), !25451)
    #dbg_value(ptr poison, !11131, !DIExpression(), !25453)
  %i.a = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !25628 ; 3 uses
    #dbg_value(i64 %i.a, !25541, !DIExpression(), !25454)
    #dbg_value(i64 0, !25542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25455)
    #dbg_value(i64 %i.a, !25542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25455)
    #dbg_value(ptr undef, !25571, !DIExpression(), !25445)
    #dbg_value(ptr undef, !25568, !DIExpression(), !25444)
    #dbg_value(ptr undef, !25565, !DIExpression(), !25443)
    #dbg_value(ptr undef, !25566, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25456)
  %.not.i.i = icmp eq i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !25629
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB3k_5style12BackendColorEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6r_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !25630

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25626
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !25626
    #dbg_value(i64 %.sroa.52.0.copyload, !25547, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25563)
    #dbg_value(i64 %.sroa.52.0.copyload, !25537, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !25564)
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25626
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !25626, !nonnull !3744, !noundef !3744
    #dbg_value(ptr %.sroa.41.0.copyload, !25547, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25563)
    #dbg_value(ptr %.sroa.41.0.copyload, !25537, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25564)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.sroa.41.0.copyload, i64 %.sroa.52.0.copyload, !dbg !25630 ; 3 uses
  %.neg = add i64 %.sroa.6.0.copyload, 1, !dbg !25630
  %xtraiter = and i64 %i.a, 1, !dbg !25630
  %i.b = icmp eq i64 %.sroa.7.0.copyload, %.neg, !dbg !25630
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.i.i.new, !dbg !25630
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipB1d_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5a_8for_each4callTB1D_B1D_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VecB6d_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25703)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25703)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25703)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25703)
    #dbg_value(ptr poison, !25815, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25704)
    #dbg_value(ptr poison, !25824, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25705)
    #dbg_value(ptr poison, !25825, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25705)
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c, !dbg !25858
  %i.h = load <2 x i32>, ptr %i.f, align 4, !dbg !25859, !noalias !25829
  %i.i = load <2 x i32>, ptr %gep.i.i, align 4, !dbg !25859, !noalias !25829
  %i.j = shufflevector <2 x i32> %i.h, <2 x i32> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !25860
  store <4 x i32> %i.j, ptr %i.g, align 4, !dbg !25860, !noalias !25830
    #dbg_value(ptr undef, !25794, !DIExpression(), !25668)
    #dbg_value(ptr undef, !25791, !DIExpression(), !25667)
    #dbg_value(ptr undef, !25788, !DIExpression(), !25666)
    #dbg_value(ptr undef, !25789, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25679)
    #dbg_value(i64 %i.d, !25792, !DIExpression(), !25680)
    #dbg_value(i64 %i.d, !25798, !DIExpression(), !25671)
    #dbg_value(i64 %i.d, !25801, !DIExpression(), !25674)
  %i.k = add nuw i64 %.sroa.0.022.i.i, 2, !dbg !25854 ; 2 uses
    #dbg_value(i64 %i.k, !25765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25678)
    #dbg_value(i64 %i.d, !25766, !DIExpression(), !25681)
    #dbg_value(i64 %i.d, !11124, !DIExpression(), !25657)
  %i.l = add i64 %i.d, %.sroa.6.0.copyload, !dbg !25855 ; 2 uses
    #dbg_value(i64 %i.l, !11125, !DIExpression(), !25682)
    #dbg_value(i64 %i.l, !11144, !DIExpression(), !25684)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.l, !dbg !25856
    #dbg_value(i64 %i.l, !11152, !DIExpression(), !25687)
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.l, !dbg !25857
    #dbg_value(ptr poison, !25808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25697)
    #dbg_value(ptr poison, !25808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25697)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25703)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25703)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25703)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25703)
  %i.n = getelementptr [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c, !dbg !25858
  %i.o = getelementptr i8, ptr %i.n, i64 16, !dbg !25858
  %i.p = load <2 x i32>, ptr %i.m, align 4, !dbg !25859, !noalias !25829
  %i.q = load <2 x i32>, ptr %gep.i.i.1, align 4, !dbg !25859, !noalias !25829
  %i.r = shufflevector <2 x i32> %i.p, <2 x i32> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !25860
  store <4 x i32> %i.r, ptr %i.o, align 4, !dbg !25860, !noalias !25830
  %i.s = add i64 %i.c, 2, !dbg !25861             ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !25853  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !25853
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, label %bb.b, !dbg !25853

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !25853
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.epil.preheader, !dbg !25853

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi i64 [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.s, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.022.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.k, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i64 %i.a to i1, !dbg !25853
  tail call void @llvm.assume(i1 %lcmp.mod7), !dbg !25853
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25792, !DIExpression(), !25680)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25798, !DIExpression(), !25671)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25801, !DIExpression(), !25674)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25765, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25678)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25766, !DIExpression(), !25681)
    #dbg_value(ptr undef, !11117, !DIExpression(), !25657)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !11124, !DIExpression(), !25657)
  %i.t = add i64 %.sroa.0.022.i.i.epil.init, %.sroa.6.0.copyload, !dbg !25855 ; 2 uses
    #dbg_value(i64 %i.t, !11125, !DIExpression(), !25682)
    #dbg_value(ptr poison, !11141, !DIExpression(), !25684)
    #dbg_value(i64 %i.t, !11144, !DIExpression(), !25684)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.t, !dbg !25856
    #dbg_value(ptr poison, !11148, !DIExpression(), !25687)
    #dbg_value(i64 %i.t, !11152, !DIExpression(), !25687)
    #dbg_value(ptr poison, !11156, !DIExpression(), !25689)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11158, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25689)
    #dbg_value(ptr poison, !11160, !DIExpression(), !25691)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25691)
    #dbg_value(ptr poison, !11141, !DIExpression(), !25693)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11144, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25693)
  %gep.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.t, !dbg !25857
    #dbg_value(ptr poison, !25803, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25697)
    #dbg_value(ptr poison, !25808, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25697)
    #dbg_value(ptr poison, !25808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25697)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25703)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25703)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25703)
    #dbg_value(i32 poison, !25811, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25700)
    #dbg_value(i32 poison, !25820, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25703)
    #dbg_value(ptr poison, !25815, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25704)
    #dbg_value(ptr poison, !25824, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25705)
    #dbg_value(ptr poison, !25825, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25705)
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.65.0.copyload, i64 %.epil.init, !dbg !25858
  %i.w = load <2 x i32>, ptr %i.u, align 4, !dbg !25859, !noalias !25829
  %i.x = load <2 x i32>, ptr %gep.i.i.epil, align 4, !dbg !25859, !noalias !25829
  %i.y = shufflevector <2 x i32> %i.w, <2 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !25860
  store <4 x i32> %i.y, ptr %i.v, align 4, !dbg !25860, !noalias !25830
  %i.z = add i64 %.epil.init, 1, !dbg !25861
    #dbg_value(ptr undef, !25794, !DIExpression(), !25668)
    #dbg_value(ptr undef, !25791, !DIExpression(), !25667)
    #dbg_value(ptr undef, !25788, !DIExpression(), !25666)
    #dbg_value(ptr undef, !25789, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25679)
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.a
  %.val17.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.s, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ], !dbg !25862
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
    #dbg_value(ptr poison, !25831, !DIExpression(), !25726)
    #dbg_value(ptr poison, !25837, !DIExpression(), !25729)
    #dbg_value(ptr poison, !25843, !DIExpression(), !25732)
    #dbg_value(ptr poison, !10710, !DIExpression(), !25734)
    #dbg_value(ptr poison, !10716, !DIExpression(), !25736)
  store i64 %.val17.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !25863, !noalias !25829
  ret void, !dbg !25864
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEINtNtB8_4skip4SkipB1d_EENCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB29_4Rect10split_gridIBO_B1d_NCINvMs7_B29_INtB29_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2d_5coord5ShiftE20split_by_breakpointsllRSlB5t_E0EIBO_B1d_NCB3k_s_0EEs0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB61_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7h_3VecB74_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25869 {
bb.a:
    #dbg_value(ptr poison, !11185, !DIExpression(), !25880)
    #dbg_declare(ptr %0, !25976, !DIExpression(), !26001)
    #dbg_declare(ptr %1, !25978, !DIExpression(), !26002)
    #dbg_declare(ptr %1, !26003, !DIExpression(), !26012)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !26079 ; 7 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !25997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26013)
    #dbg_value(ptr %.sroa.0.0.copyload, !25987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26014)
    #dbg_value(i64 poison, !25997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26013)
    #dbg_value(i64 poison, !25987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26014)
    #dbg_value(ptr poison, !25997, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26013)
    #dbg_value(ptr poison, !25987, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26014)
    #dbg_value(i64 poison, !25997, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26013)
    #dbg_value(i64 poison, !25987, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26014)
    #dbg_value(i64 poison, !25997, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26013)
    #dbg_value(i64 poison, !25987, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26014)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26079
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !26079 ; 11 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !25997, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !26013)
    #dbg_value(i64 %.sroa.6.0.copyload, !25987, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !26014)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26079
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26079 ; 7 uses
    #dbg_value(i64 %.sroa.7.0.copyload, !25997, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !26013)
    #dbg_value(i64 %.sroa.7.0.copyload, !25987, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !26014)
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !26080 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.copyload, !25999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26013)
    #dbg_value(ptr %.sroa.03.0.copyload, !25989, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26014)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26080
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !26080 ; 7 uses
    #dbg_value(i64 %.sroa.44.0.copyload, !25999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26013)
    #dbg_value(i64 %.sroa.44.0.copyload, !25989, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26014)
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26080
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !26080 ; 7 uses
    #dbg_value(ptr %.sroa.65.0.copyload, !25999, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26013)
    #dbg_value(ptr %.sroa.65.0.copyload, !25989, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26014)
    #dbg_value(ptr poison, !26015, !DIExpression(), !25889)
    #dbg_value(ptr poison, !26018, !DIExpression(), !25890)
    #dbg_value(ptr poison, !26021, !DIExpression(), !25891)
    #dbg_value(i64 1, !26024, !DIExpression(), !25894)
    #dbg_value(i64 1, !26027, !DIExpression(), !25897)
    #dbg_value(ptr poison, !11196, !DIExpression(), !25899)
  %i.a = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26081 ; 4 uses
    #dbg_value(i64 %i.a, !25991, !DIExpression(), !25900)
    #dbg_value(i64 0, !25992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25901)
    #dbg_value(i64 %i.a, !25992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25901)
    #dbg_value(ptr undef, !26021, !DIExpression(), !25891)
    #dbg_value(ptr undef, !26018, !DIExpression(), !25890)
    #dbg_value(ptr undef, !26015, !DIExpression(), !25889)
    #dbg_value(ptr undef, !26016, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25902)
  %.not.i.i = icmp eq i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26082
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !26083

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26079
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !26079 ; 3 uses
    #dbg_value(i64 %.sroa.52.0.copyload, !25997, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26013)
    #dbg_value(i64 %.sroa.52.0.copyload, !25987, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26014)
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26079
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !26079, !nonnull !3744, !noundef !3744 ; 3 uses
    #dbg_value(ptr %.sroa.41.0.copyload, !25997, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26013)
    #dbg_value(ptr %.sroa.41.0.copyload, !25987, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26014)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %.sroa.41.0.copyload, i64 %.sroa.52.0.copyload, !dbg !26083 ; 4 uses
  %min.iters.check = icmp ult i64 %i.a, 24, !dbg !26083
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !26083

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 3, !dbg !26083
  %i.c = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.b, !dbg !26083 ; 2 uses
  %i.d = add i64 %.sroa.44.0.copyload, %.sroa.7.0.copyload, !dbg !26083
  %i.e = sub i64 %i.d, %.sroa.6.0.copyload, !dbg !26083
  %i.f = shl i64 %i.e, 3, !dbg !26083
  %i.g = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.f, !dbg !26083 ; 2 uses
  %i.h = shl i64 %.sroa.6.0.copyload, 2, !dbg !26083
  %i.i = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.h, !dbg !26083
  %i.j = shl i64 %.sroa.7.0.copyload, 2, !dbg !26083
  %i.k = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.j, !dbg !26083
  %2 = add i64 %.sroa.52.0.copyload, %.sroa.6.0.copyload, !dbg !26083
  %3 = shl i64 %2, 2, !dbg !26083
  %4 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %3, !dbg !26083
  %i.l = add i64 %.sroa.52.0.copyload, %.sroa.7.0.copyload, !dbg !26083
  %i.m = shl i64 %i.l, 2, !dbg !26083
  %i.n = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.m, !dbg !26083
  %bound0 = icmp ult ptr %i.c, %i.k, !dbg !26083
  %bound1 = icmp ult ptr %i.i, %i.g, !dbg !26083
  %found.conflict = and i1 %bound0, %bound1, !dbg !26083
  %bound014 = icmp ult ptr %i.c, %i.n, !dbg !26083
  %bound115 = icmp ult ptr %4, %i.g, !dbg !26083
  %found.conflict16 = and i1 %bound014, %bound115, !dbg !26083
  %conflict.rdx = or i1 %found.conflict, %found.conflict16, !dbg !26083
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph, !dbg !26084

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.o = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  br label %vector.body, !dbg !26084

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !26084 ; 3 uses
  %i.p = add i64 %.sroa.44.0.copyload, %index     ; 2 uses
  %i.q = add i64 %index, %.sroa.6.0.copyload, !dbg !26085 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.q, !dbg !26086 ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.q, !dbg !26087 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !26088
  %wide.load = load <2 x i32>, ptr %i.r, align 4, !dbg !26088, !alias.scope !26030, !noalias !26031
  %wide.load17 = load <2 x i32>, ptr %i.t, align 4, !dbg !26088, !alias.scope !26030, !noalias !26031
  %i.u = getelementptr i8, ptr %i.s, i64 8, !dbg !26088
  %wide.load18 = load <2 x i32>, ptr %i.s, align 4, !dbg !26088, !alias.scope !26032, !noalias !26031
  %wide.load19 = load <2 x i32>, ptr %i.u, align 4, !dbg !26088, !alias.scope !26032, !noalias !26031
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.p, !dbg !26089
  %i.w = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.p, !dbg !26089
  %i.x = getelementptr i8, ptr %i.w, i64 16, !dbg !26089
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load18, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !26090
  store <4 x i32> %interleaved.vec, ptr %i.v, align 4, !dbg !26090, !alias.scope !26059, !noalias !26060
  %interleaved.vec20 = shufflevector <2 x i32> %wide.load17, <2 x i32> %wide.load19, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !26090
  store <4 x i32> %interleaved.vec20, ptr %i.x, align 4, !dbg !26090, !alias.scope !26059, !noalias !26060
  %index.next = add nuw i64 %index, 4, !dbg !26084 ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !26083
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !26083, !llvm.loop !25936

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec, !dbg !26083
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !26083

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.o, %middle.block ] ; 3 uses
  %.sroa.0.020.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.z = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26083
  %i.aa = xor i64 %.sroa.0.020.i.i.ph, -1, !dbg !26083
  %i.ab = add i64 %.sroa.7.0.copyload, %i.aa, !dbg !26083
  %xtraiter = and i64 %i.z, 1, !dbg !26083
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !26083
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !26083

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
    #dbg_value(i64 poison, !26019, !DIExpression(), !25937)
    #dbg_value(i64 poison, !26025, !DIExpression(), !25894)
    #dbg_value(i64 poison, !26028, !DIExpression(), !25897)
  %i.ac = or disjoint i64 %.sroa.0.020.i.i.ph, 1, !dbg !26084
    #dbg_value(i64 %i.ac, !25992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25901)
    #dbg_value(i64 poison, !25993, !DIExpression(), !25938)
    #dbg_value(ptr undef, !11185, !DIExpression(), !25880)
    #dbg_value(i64 poison, !11191, !DIExpression(), !25880)
  %i.ad = add i64 %.sroa.0.020.i.i.ph, %.sroa.6.0.copyload, !dbg !26085 ; 2 uses
    #dbg_value(i64 %i.ad, !11192, !DIExpression(), !25939)
    #dbg_value(ptr poison, !11203, !DIExpression(), !25940)
    #dbg_value(i64 %i.ad, !11204, !DIExpression(), !25940)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ad, !dbg !26086
    #dbg_value(ptr poison, !11216, !DIExpression(), !25941)
    #dbg_value(i64 %i.ad, !11217, !DIExpression(), !25941)
    #dbg_value(ptr poison, !11210, !DIExpression(), !25942)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25942)
    #dbg_value(ptr poison, !11206, !DIExpression(), !25943)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25943)
    #dbg_value(ptr poison, !11203, !DIExpression(), !25944)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11204, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25944)
  %gep.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.ad, !dbg !26087
  %.val18.i.i.prol = load i32, ptr %i.ae, align 4, !dbg !26088, !noalias !26031, !noundef !3744
  %.val19.i.i.prol = load i32, ptr %gep.i.i.prol, align 4, !dbg !26088, !noalias !26031, !noundef !3744
    #dbg_value(ptr poison, !26056, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25945)
    #dbg_value(ptr poison, !26055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25945)
    #dbg_value(ptr poison, !26055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25945)
    #dbg_value(ptr poison, !26046, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25946)
    #dbg_value(i32 %.val18.i.i.prol, !26045, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25946)
    #dbg_value(i32 %.val19.i.i.prol, !26045, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25946)
    #dbg_value(ptr poison, !26037, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25947)
    #dbg_value(ptr poison, !26038, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25947)
    #dbg_value(i32 %.val18.i.i.prol, !26036, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25947)
    #dbg_value(i32 %.val19.i.i.prol, !26036, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25947)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %.ph, !dbg !26089 ; 2 uses
  store i32 %.val18.i.i.prol, ptr %i.af, align 4, !dbg !26090, !noalias !26060
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !26090
  store i32 %.val19.i.i.prol, ptr %i.ag, align 4, !dbg !26090, !noalias !26060
  %i.ah = add i64 %.ph, 1, !dbg !26091            ; 2 uses
    #dbg_value(ptr undef, !26021, !DIExpression(), !25891)
    #dbg_value(ptr undef, !26018, !DIExpression(), !25890)
    #dbg_value(ptr undef, !26015, !DIExpression(), !25889)
    #dbg_value(ptr undef, !26016, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25902)
  br label %scalar.ph.prol.loopexit, !dbg !26083

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.020.i.i.unr = phi i64 [ %.sroa.0.020.i.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.ab, %.sroa.6.0.copyload, !dbg !26083
  br i1 %i.ai, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader.new, !dbg !26083

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.6.0.copyload, !dbg !26083
  br label %scalar.ph, !dbg !26083

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.at, %scalar.ph ], !dbg !26084 ; 3 uses
  %.sroa.0.020.i.i = phi i64 [ %.sroa.0.020.i.i.unr, %scalar.ph.preheader.new ], [ %i.ao, %scalar.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.0.020.i.i, !26019, !DIExpression(), !25937)
    #dbg_value(i64 %.sroa.0.020.i.i, !26025, !DIExpression(), !25894)
    #dbg_value(i64 %.sroa.0.020.i.i, !26028, !DIExpression(), !25897)
    #dbg_value(i64 %.sroa.0.020.i.i, !25992, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25901)
    #dbg_value(i64 %.sroa.0.020.i.i, !25993, !DIExpression(), !25938)
    #dbg_value(ptr undef, !11185, !DIExpression(), !25880)
    #dbg_value(i64 %.sroa.0.020.i.i, !11191, !DIExpression(), !25880)
  %i.ak = add i64 %.sroa.0.020.i.i, %.sroa.6.0.copyload, !dbg !26085 ; 2 uses
    #dbg_value(i64 %i.ak, !11192, !DIExpression(), !25939)
    #dbg_value(ptr poison, !11203, !DIExpression(), !25940)
    #dbg_value(i64 %i.ak, !11204, !DIExpression(), !25940)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak, !dbg !26086
    #dbg_value(ptr poison, !11216, !DIExpression(), !25941)
    #dbg_value(i64 %i.ak, !11217, !DIExpression(), !25941)
    #dbg_value(ptr poison, !11210, !DIExpression(), !25942)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25942)
    #dbg_value(ptr poison, !11206, !DIExpression(), !25943)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25943)
    #dbg_value(ptr poison, !11203, !DIExpression(), !25944)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11204, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25944)
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.ak, !dbg !26087
  %.val18.i.i = load i32, ptr %i.al, align 4, !dbg !26088, !noalias !26031, !noundef !3744
  %.val19.i.i = load i32, ptr %gep.i.i, align 4, !dbg !26088, !noalias !26031, !noundef !3744
    #dbg_value(ptr poison, !26056, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25945)
    #dbg_value(ptr poison, !26055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25945)
    #dbg_value(ptr poison, !26055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25945)
    #dbg_value(ptr poison, !26046, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25946)
    #dbg_value(i32 %.val18.i.i, !26045, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25946)
    #dbg_value(i32 %.val19.i.i, !26045, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25946)
    #dbg_value(ptr poison, !26037, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25947)
    #dbg_value(ptr poison, !26038, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25947)
    #dbg_value(i32 %.val18.i.i, !26036, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25947)
    #dbg_value(i32 %.val19.i.i, !26036, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25947)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.aj, !dbg !26089 ; 2 uses
  store i32 %.val18.i.i, ptr %i.am, align 4, !dbg !26090, !noalias !26060
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4, !dbg !26090
  store i32 %.val19.i.i, ptr %i.an, align 4, !dbg !26090, !noalias !26060
    #dbg_value(ptr undef, !26021, !DIExpression(), !25891)
    #dbg_value(ptr undef, !26018, !DIExpression(), !25890)
    #dbg_value(ptr undef, !26015, !DIExpression(), !25889)
    #dbg_value(ptr undef, !26016, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25902)
    #dbg_value(i64 %.sroa.0.020.i.i, !26019, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25937)
    #dbg_value(i64 %.sroa.0.020.i.i, !26025, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25894)
    #dbg_value(i64 %.sroa.0.020.i.i, !26028, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25897)
  %i.ao = add nuw i64 %.sroa.0.020.i.i, 2, !dbg !26084 ; 2 uses
    #dbg_value(i64 %i.ao, !25992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25901)
    #dbg_value(i64 %.sroa.0.020.i.i, !25993, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25938)
    #dbg_value(i64 %.sroa.0.020.i.i, !11191, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25880)
  %.reass = add i64 %.sroa.0.020.i.i, %invariant.op ; 2 uses
    #dbg_value(i64 %.reass, !11192, !DIExpression(), !25939)
    #dbg_value(i64 %.reass, !11204, !DIExpression(), !25940)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass, !dbg !26086
    #dbg_value(i64 %.reass, !11217, !DIExpression(), !25941)
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %.reass, !dbg !26087
  %.val18.i.i.1 = load i32, ptr %i.ap, align 4, !dbg !26088, !noalias !26031, !noundef !3744
  %.val19.i.i.1 = load i32, ptr %gep.i.i.1, align 4, !dbg !26088, !noalias !26031, !noundef !3744
    #dbg_value(ptr poison, !26055, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25945)
    #dbg_value(ptr poison, !26055, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25945)
    #dbg_value(i32 %.val18.i.i.1, !26045, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25946)
    #dbg_value(i32 %.val19.i.i.1, !26045, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25946)
    #dbg_value(i32 %.val18.i.i.1, !26036, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25947)
    #dbg_value(i32 %.val19.i.i.1, !26036, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25947)
  %i.aq = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.aj, !dbg !26089 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8, !dbg !26089
  store i32 %.val18.i.i.1, ptr %i.ar, align 4, !dbg !26090, !noalias !26060
  %i.as = getelementptr i8, ptr %i.aq, i64 12, !dbg !26090
  store i32 %.val19.i.i.1, ptr %i.as, align 4, !dbg !26090, !noalias !26060
  %i.at = add i64 %i.aj, 2, !dbg !26091           ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ao, %i.a, !dbg !26082
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !26083, !llvm.loop !25950

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val17.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ], !dbg !26092
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
    #dbg_value(ptr poison, !26061, !DIExpression(), !25953)
    #dbg_value(ptr poison, !26067, !DIExpression(), !25956)
    #dbg_value(ptr poison, !26073, !DIExpression(), !25959)
    #dbg_value(ptr poison, !10710, !DIExpression(), !25961)
    #dbg_value(ptr poison, !10716, !DIExpression(), !25963)
  store i64 %.val17.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !26093, !noalias !26031
  ret void, !dbg !26094
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEINtNtB8_4skip4SkipB1d_EENCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB29_4Rect10split_gridIBO_B1d_NCINvMs7_B29_INtB29_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2d_5coord5ShiftE20split_by_breakpointsllRSlB5t_E0EIBO_B1d_NCB3k_s_0EEs1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB61_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7h_3VecB74_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !26099 {
bb.a:
    #dbg_value(ptr poison, !11185, !DIExpression(), !26110)
    #dbg_declare(ptr %0, !26206, !DIExpression(), !26231)
    #dbg_declare(ptr %1, !26208, !DIExpression(), !26232)
    #dbg_declare(ptr %1, !26233, !DIExpression(), !26242)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !26309 ; 7 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !26227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26243)
    #dbg_value(ptr %.sroa.0.0.copyload, !26217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26244)
    #dbg_value(i64 poison, !26227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26243)
    #dbg_value(i64 poison, !26217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26244)
    #dbg_value(ptr poison, !26227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26243)
    #dbg_value(ptr poison, !26217, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26244)
    #dbg_value(i64 poison, !26227, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26243)
    #dbg_value(i64 poison, !26217, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26244)
    #dbg_value(i64 poison, !26227, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26243)
    #dbg_value(i64 poison, !26217, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26244)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26309
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !26309 ; 11 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !26227, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !26243)
    #dbg_value(i64 %.sroa.6.0.copyload, !26217, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !26244)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26309
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26309 ; 7 uses
    #dbg_value(i64 %.sroa.7.0.copyload, !26227, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !26243)
    #dbg_value(i64 %.sroa.7.0.copyload, !26217, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !26244)
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !26310 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.copyload, !26229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26243)
    #dbg_value(ptr %.sroa.03.0.copyload, !26219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26244)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26310
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !26310 ; 7 uses
    #dbg_value(i64 %.sroa.44.0.copyload, !26229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26243)
    #dbg_value(i64 %.sroa.44.0.copyload, !26219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26244)
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26310
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !26310 ; 7 uses
    #dbg_value(ptr %.sroa.65.0.copyload, !26229, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26243)
    #dbg_value(ptr %.sroa.65.0.copyload, !26219, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26244)
    #dbg_value(ptr poison, !26245, !DIExpression(), !26119)
    #dbg_value(ptr poison, !26248, !DIExpression(), !26120)
    #dbg_value(ptr poison, !26251, !DIExpression(), !26121)
    #dbg_value(i64 1, !26254, !DIExpression(), !26124)
    #dbg_value(i64 1, !26257, !DIExpression(), !26127)
    #dbg_value(ptr poison, !11196, !DIExpression(), !26129)
  %i.a = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26311 ; 4 uses
    #dbg_value(i64 %i.a, !26221, !DIExpression(), !26130)
    #dbg_value(i64 0, !26222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26131)
    #dbg_value(i64 %i.a, !26222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26131)
    #dbg_value(ptr undef, !26251, !DIExpression(), !26121)
    #dbg_value(ptr undef, !26248, !DIExpression(), !26120)
    #dbg_value(ptr undef, !26245, !DIExpression(), !26119)
    #dbg_value(ptr undef, !26246, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !26132)
  %.not.i.i = icmp eq i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26312
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !26313

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26309
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !26309 ; 3 uses
    #dbg_value(i64 %.sroa.52.0.copyload, !26227, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26243)
    #dbg_value(i64 %.sroa.52.0.copyload, !26217, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26244)
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26309
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !26309, !nonnull !3744, !noundef !3744 ; 3 uses
    #dbg_value(ptr %.sroa.41.0.copyload, !26227, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26243)
    #dbg_value(ptr %.sroa.41.0.copyload, !26217, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26244)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %.sroa.41.0.copyload, i64 %.sroa.52.0.copyload, !dbg !26313 ; 4 uses
  %min.iters.check = icmp ult i64 %i.a, 24, !dbg !26313
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !26313

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 3, !dbg !26313
  %i.c = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.b, !dbg !26313 ; 2 uses
  %i.d = add i64 %.sroa.44.0.copyload, %.sroa.7.0.copyload, !dbg !26313
  %i.e = sub i64 %i.d, %.sroa.6.0.copyload, !dbg !26313
  %i.f = shl i64 %i.e, 3, !dbg !26313
  %i.g = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.f, !dbg !26313 ; 2 uses
  %i.h = shl i64 %.sroa.6.0.copyload, 2, !dbg !26313
  %i.i = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.h, !dbg !26313
  %i.j = shl i64 %.sroa.7.0.copyload, 2, !dbg !26313
  %i.k = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.j, !dbg !26313
  %2 = add i64 %.sroa.52.0.copyload, %.sroa.6.0.copyload, !dbg !26313
  %3 = shl i64 %2, 2, !dbg !26313
  %4 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %3, !dbg !26313
  %i.l = add i64 %.sroa.52.0.copyload, %.sroa.7.0.copyload, !dbg !26313
  %i.m = shl i64 %i.l, 2, !dbg !26313
  %i.n = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.m, !dbg !26313
  %bound0 = icmp ult ptr %i.c, %i.k, !dbg !26313
  %bound1 = icmp ult ptr %i.i, %i.g, !dbg !26313
  %found.conflict = and i1 %bound0, %bound1, !dbg !26313
  %bound014 = icmp ult ptr %i.c, %i.n, !dbg !26313
  %bound115 = icmp ult ptr %4, %i.g, !dbg !26313
  %found.conflict16 = and i1 %bound014, %bound115, !dbg !26313
  %conflict.rdx = or i1 %found.conflict, %found.conflict16, !dbg !26313
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph, !dbg !26314

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.o = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  br label %vector.body, !dbg !26314

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !26314 ; 3 uses
  %i.p = add i64 %.sroa.44.0.copyload, %index     ; 2 uses
  %i.q = add i64 %index, %.sroa.6.0.copyload, !dbg !26315 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.q, !dbg !26316 ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.q, !dbg !26317 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !26318
  %wide.load = load <2 x i32>, ptr %i.r, align 4, !dbg !26318, !alias.scope !26260, !noalias !26261
  %wide.load17 = load <2 x i32>, ptr %i.t, align 4, !dbg !26318, !alias.scope !26260, !noalias !26261
  %i.u = getelementptr i8, ptr %i.s, i64 8, !dbg !26318
  %wide.load18 = load <2 x i32>, ptr %i.s, align 4, !dbg !26318, !alias.scope !26262, !noalias !26261
  %wide.load19 = load <2 x i32>, ptr %i.u, align 4, !dbg !26318, !alias.scope !26262, !noalias !26261
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.p, !dbg !26319
  %i.w = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.p, !dbg !26319
  %i.x = getelementptr i8, ptr %i.w, i64 16, !dbg !26319
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load18, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !26320
  store <4 x i32> %interleaved.vec, ptr %i.v, align 4, !dbg !26320, !alias.scope !26289, !noalias !26290
  %interleaved.vec20 = shufflevector <2 x i32> %wide.load17, <2 x i32> %wide.load19, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !26320
  store <4 x i32> %interleaved.vec20, ptr %i.x, align 4, !dbg !26320, !alias.scope !26289, !noalias !26290
  %index.next = add nuw i64 %index, 4, !dbg !26314 ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !26313
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !26313, !llvm.loop !26166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec, !dbg !26313
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !26313

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.o, %middle.block ] ; 3 uses
  %.sroa.0.020.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.z = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26313
  %i.aa = xor i64 %.sroa.0.020.i.i.ph, -1, !dbg !26313
  %i.ab = add i64 %.sroa.7.0.copyload, %i.aa, !dbg !26313
  %xtraiter = and i64 %i.z, 1, !dbg !26313
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !26313
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !26313

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
    #dbg_value(i64 poison, !26249, !DIExpression(), !26167)
    #dbg_value(i64 poison, !26255, !DIExpression(), !26124)
    #dbg_value(i64 poison, !26258, !DIExpression(), !26127)
  %i.ac = or disjoint i64 %.sroa.0.020.i.i.ph, 1, !dbg !26314
    #dbg_value(i64 %i.ac, !26222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26131)
    #dbg_value(i64 poison, !26223, !DIExpression(), !26168)
    #dbg_value(ptr undef, !11185, !DIExpression(), !26110)
    #dbg_value(i64 poison, !11191, !DIExpression(), !26110)
  %i.ad = add i64 %.sroa.0.020.i.i.ph, %.sroa.6.0.copyload, !dbg !26315 ; 2 uses
    #dbg_value(i64 %i.ad, !11192, !DIExpression(), !26169)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26170)
    #dbg_value(i64 %i.ad, !11204, !DIExpression(), !26170)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ad, !dbg !26316
    #dbg_value(ptr poison, !11216, !DIExpression(), !26171)
    #dbg_value(i64 %i.ad, !11217, !DIExpression(), !26171)
    #dbg_value(ptr poison, !11210, !DIExpression(), !26172)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26172)
    #dbg_value(ptr poison, !11206, !DIExpression(), !26173)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26173)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26174)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11204, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26174)
  %gep.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.ad, !dbg !26317
  %.val18.i.i.prol = load i32, ptr %i.ae, align 4, !dbg !26318, !noalias !26261, !noundef !3744
  %.val19.i.i.prol = load i32, ptr %gep.i.i.prol, align 4, !dbg !26318, !noalias !26261, !noundef !3744
    #dbg_value(ptr poison, !26286, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26175)
    #dbg_value(ptr poison, !26285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26175)
    #dbg_value(ptr poison, !26285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26175)
    #dbg_value(ptr poison, !26276, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26176)
    #dbg_value(i32 %.val18.i.i.prol, !26275, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26176)
    #dbg_value(i32 %.val19.i.i.prol, !26275, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26176)
    #dbg_value(ptr poison, !26267, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !26177)
    #dbg_value(ptr poison, !26268, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26177)
    #dbg_value(i32 %.val18.i.i.prol, !26266, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26177)
    #dbg_value(i32 %.val19.i.i.prol, !26266, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26177)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %.ph, !dbg !26319 ; 2 uses
  store i32 %.val18.i.i.prol, ptr %i.af, align 4, !dbg !26320, !noalias !26290
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !26320
  store i32 %.val19.i.i.prol, ptr %i.ag, align 4, !dbg !26320, !noalias !26290
  %i.ah = add i64 %.ph, 1, !dbg !26321            ; 2 uses
    #dbg_value(ptr undef, !26251, !DIExpression(), !26121)
    #dbg_value(ptr undef, !26248, !DIExpression(), !26120)
    #dbg_value(ptr undef, !26245, !DIExpression(), !26119)
    #dbg_value(ptr undef, !26246, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !26132)
  br label %scalar.ph.prol.loopexit, !dbg !26313

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.0.020.i.i.unr = phi i64 [ %.sroa.0.020.i.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.ab, %.sroa.6.0.copyload, !dbg !26313
  br i1 %i.ai, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader.new, !dbg !26313

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.6.0.copyload, !dbg !26313
  br label %scalar.ph, !dbg !26313

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.aj = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.at, %scalar.ph ], !dbg !26314 ; 3 uses
  %.sroa.0.020.i.i = phi i64 [ %.sroa.0.020.i.i.unr, %scalar.ph.preheader.new ], [ %i.ao, %scalar.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.0.020.i.i, !26249, !DIExpression(), !26167)
    #dbg_value(i64 %.sroa.0.020.i.i, !26255, !DIExpression(), !26124)
    #dbg_value(i64 %.sroa.0.020.i.i, !26258, !DIExpression(), !26127)
    #dbg_value(i64 %.sroa.0.020.i.i, !26222, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !26131)
    #dbg_value(i64 %.sroa.0.020.i.i, !26223, !DIExpression(), !26168)
    #dbg_value(ptr undef, !11185, !DIExpression(), !26110)
    #dbg_value(i64 %.sroa.0.020.i.i, !11191, !DIExpression(), !26110)
  %i.ak = add i64 %.sroa.0.020.i.i, %.sroa.6.0.copyload, !dbg !26315 ; 2 uses
    #dbg_value(i64 %i.ak, !11192, !DIExpression(), !26169)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26170)
    #dbg_value(i64 %i.ak, !11204, !DIExpression(), !26170)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ak, !dbg !26316
    #dbg_value(ptr poison, !11216, !DIExpression(), !26171)
    #dbg_value(i64 %i.ak, !11217, !DIExpression(), !26171)
    #dbg_value(ptr poison, !11210, !DIExpression(), !26172)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26172)
    #dbg_value(ptr poison, !11206, !DIExpression(), !26173)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26173)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26174)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11204, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26174)
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.ak, !dbg !26317
  %.val18.i.i = load i32, ptr %i.al, align 4, !dbg !26318, !noalias !26261, !noundef !3744
  %.val19.i.i = load i32, ptr %gep.i.i, align 4, !dbg !26318, !noalias !26261, !noundef !3744
    #dbg_value(ptr poison, !26286, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26175)
    #dbg_value(ptr poison, !26285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26175)
    #dbg_value(ptr poison, !26285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26175)
    #dbg_value(ptr poison, !26276, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26176)
    #dbg_value(i32 %.val18.i.i, !26275, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26176)
    #dbg_value(i32 %.val19.i.i, !26275, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26176)
    #dbg_value(ptr poison, !26267, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !26177)
    #dbg_value(ptr poison, !26268, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26177)
    #dbg_value(i32 %.val18.i.i, !26266, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26177)
    #dbg_value(i32 %.val19.i.i, !26266, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26177)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.aj, !dbg !26319 ; 2 uses
  store i32 %.val18.i.i, ptr %i.am, align 4, !dbg !26320, !noalias !26290
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4, !dbg !26320
  store i32 %.val19.i.i, ptr %i.an, align 4, !dbg !26320, !noalias !26290
    #dbg_value(ptr undef, !26251, !DIExpression(), !26121)
    #dbg_value(ptr undef, !26248, !DIExpression(), !26120)
    #dbg_value(ptr undef, !26245, !DIExpression(), !26119)
    #dbg_value(ptr undef, !26246, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !26132)
    #dbg_value(i64 %.sroa.0.020.i.i, !26249, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26167)
    #dbg_value(i64 %.sroa.0.020.i.i, !26255, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26124)
    #dbg_value(i64 %.sroa.0.020.i.i, !26258, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26127)
  %i.ao = add nuw i64 %.sroa.0.020.i.i, 2, !dbg !26314 ; 2 uses
    #dbg_value(i64 %i.ao, !26222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26131)
    #dbg_value(i64 %.sroa.0.020.i.i, !26223, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26168)
    #dbg_value(i64 %.sroa.0.020.i.i, !11191, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26110)
  %.reass = add i64 %.sroa.0.020.i.i, %invariant.op ; 2 uses
    #dbg_value(i64 %.reass, !11192, !DIExpression(), !26169)
    #dbg_value(i64 %.reass, !11204, !DIExpression(), !26170)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass, !dbg !26316
    #dbg_value(i64 %.reass, !11217, !DIExpression(), !26171)
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %.reass, !dbg !26317
  %.val18.i.i.1 = load i32, ptr %i.ap, align 4, !dbg !26318, !noalias !26261, !noundef !3744
  %.val19.i.i.1 = load i32, ptr %gep.i.i.1, align 4, !dbg !26318, !noalias !26261, !noundef !3744
    #dbg_value(ptr poison, !26285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26175)
    #dbg_value(ptr poison, !26285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26175)
    #dbg_value(i32 %.val18.i.i.1, !26275, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26176)
    #dbg_value(i32 %.val19.i.i.1, !26275, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26176)
    #dbg_value(i32 %.val18.i.i.1, !26266, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26177)
    #dbg_value(i32 %.val19.i.i.1, !26266, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26177)
  %i.aq = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.aj, !dbg !26319 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8, !dbg !26319
  store i32 %.val18.i.i.1, ptr %i.ar, align 4, !dbg !26320, !noalias !26290
  %i.as = getelementptr i8, ptr %i.aq, i64 12, !dbg !26320
  store i32 %.val19.i.i.1, ptr %i.as, align 4, !dbg !26320, !noalias !26290
  %i.at = add i64 %i.aj, 2, !dbg !26321           ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ao, %i.a, !dbg !26312
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !26313, !llvm.loop !26180

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val17.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.at, %scalar.ph ], !dbg !26322
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
    #dbg_value(ptr poison, !26291, !DIExpression(), !26183)
    #dbg_value(ptr poison, !26297, !DIExpression(), !26186)
    #dbg_value(ptr poison, !26303, !DIExpression(), !26189)
    #dbg_value(ptr poison, !10710, !DIExpression(), !26191)
    #dbg_value(ptr poison, !10716, !DIExpression(), !26193)
  store i64 %.val17.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !26323, !noalias !26261
  ret void, !dbg !26324
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources4once4OnceRTdfEENCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB1F_12basic_shapes6CircleB1q_mEINtB1D_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendB1q_E8into_dyn0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callB1q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5I_3VecB1q_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !26332 {
bb.a:
    #dbg_value(ptr %0, !26401, !DIExpression(), !26407)
    #dbg_declare(ptr %1, !26403, !DIExpression(), !26408)
    #dbg_declare(ptr %1, !26409, !DIExpression(), !26421)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !26482 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !26422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26433)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26482
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !26482 ; 3 uses
    #dbg_value(i64 %.sroa.4.0.copyload, !26422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26433)
end_hunk_1
