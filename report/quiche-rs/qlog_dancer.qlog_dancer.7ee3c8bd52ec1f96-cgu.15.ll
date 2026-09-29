Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.15?download=true
inline.NumInlined: 1411
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterTllEEINtNtB8_4skip4SkipB1d_EENCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5a_8for_each4callTB1D_B1D_ENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6w_3VecB6d_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(ptr poison, !25936, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25814)
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c, !dbg !25969
  %i.h = load <2 x i32>, ptr %i.f, align 4, !dbg !25970, !noalias !25940
  %i.i = load <2 x i32>, ptr %gep.i.i, align 4, !dbg !25970, !noalias !25940
  %i.j = shufflevector <2 x i32> %i.h, <2 x i32> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !25971
  store <4 x i32> %i.j, ptr %i.g, align 4, !dbg !25971, !noalias !25941
    #dbg_value(ptr undef, !25905, !DIExpression(), !25773)
    #dbg_value(ptr undef, !25902, !DIExpression(), !25772)
    #dbg_value(ptr undef, !25899, !DIExpression(), !25771)
    #dbg_value(ptr undef, !25900, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25786)
    #dbg_value(i64 %i.d, !25903, !DIExpression(), !25787)
    #dbg_value(i64 %i.d, !25909, !DIExpression(), !25778)
    #dbg_value(i64 %i.d, !25912, !DIExpression(), !25781)
  %i.k = add nuw i64 %.sroa.0.022.i.i, 2, !dbg !25965 ; 2 uses
    #dbg_value(i64 %i.k, !25874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25785)
    #dbg_value(i64 %i.d, !25875, !DIExpression(), !25788)
    #dbg_value(i64 %i.d, !11124, !DIExpression(), !25761)
  %i.l = add i64 %i.d, %.sroa.6.0.copyload, !dbg !25966 ; 2 uses
    #dbg_value(i64 %i.l, !11125, !DIExpression(), !25789)
    #dbg_value(i64 %i.l, !11144, !DIExpression(), !25791)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.l, !dbg !25967
    #dbg_value(i64 %i.l, !11152, !DIExpression(), !25794)
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.l, !dbg !25968
    #dbg_declare(ptr poison, !25918, !DIExpression(), !25805)
    #dbg_value(ptr poison, !25919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25804)
    #dbg_value(ptr poison, !25919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25804)
    #dbg_value(i32 poison, !25922, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25808)
    #dbg_value(i32 poison, !25931, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25811)
    #dbg_value(i32 poison, !25922, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25808)
    #dbg_value(i32 poison, !25931, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25811)
    #dbg_value(i32 poison, !25922, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25808)
    #dbg_value(i32 poison, !25931, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25811)
    #dbg_value(i32 poison, !25922, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25808)
    #dbg_value(i32 poison, !25931, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25811)
    #dbg_declare(ptr poison, !25927, !DIExpression(), !25813)
  %i.n = getelementptr [16 x i8], ptr %.sroa.65.0.copyload, i64 %i.c, !dbg !25969
  %i.o = getelementptr i8, ptr %i.n, i64 16, !dbg !25969
  %i.p = load <2 x i32>, ptr %i.m, align 4, !dbg !25970, !noalias !25940
  %i.q = load <2 x i32>, ptr %gep.i.i.1, align 4, !dbg !25970, !noalias !25940
  %i.r = shufflevector <2 x i32> %i.p, <2 x i32> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !25971
  store <4 x i32> %i.r, ptr %i.o, align 4, !dbg !25971, !noalias !25941
  %i.s = add i64 %i.c, 2, !dbg !25972             ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !25964  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !25964
  br i1 %niter.ncmp.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, label %bb.b, !dbg !25964

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !25964
  br i1 %lcmp.mod.not, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.epil.preheader, !dbg !25964

.epil.preheader:                                  ; preds = %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.epil.init = phi i64 [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.s, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.0.022.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.k, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i64 %i.a to i1, !dbg !25964
  tail call void @llvm.assume(i1 %lcmp.mod7), !dbg !25964
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25903, !DIExpression(), !25787)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25909, !DIExpression(), !25778)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25912, !DIExpression(), !25781)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25874, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !25785)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !25875, !DIExpression(), !25788)
    #dbg_value(ptr undef, !11117, !DIExpression(), !25761)
    #dbg_value(i64 %.sroa.0.022.i.i.epil.init, !11124, !DIExpression(), !25761)
  %i.t = add i64 %.sroa.0.022.i.i.epil.init, %.sroa.6.0.copyload, !dbg !25966 ; 2 uses
    #dbg_value(i64 %i.t, !11125, !DIExpression(), !25789)
    #dbg_value(ptr poison, !11141, !DIExpression(), !25791)
    #dbg_value(i64 %i.t, !11144, !DIExpression(), !25791)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.t, !dbg !25967
    #dbg_value(ptr poison, !11148, !DIExpression(), !25794)
    #dbg_value(i64 %i.t, !11152, !DIExpression(), !25794)
    #dbg_value(ptr poison, !11156, !DIExpression(), !25796)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11158, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25796)
    #dbg_value(ptr poison, !11160, !DIExpression(), !25798)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11162, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25798)
    #dbg_value(ptr poison, !11141, !DIExpression(), !25800)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11144, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !25800)
  %gep.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.t, !dbg !25968
    #dbg_value(ptr poison, !25914, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25804)
    #dbg_declare(ptr poison, !25918, !DIExpression(), !25805)
    #dbg_value(ptr poison, !25919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25804)
    #dbg_value(ptr poison, !25919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25804)
    #dbg_value(i32 poison, !25922, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25808)
    #dbg_value(i32 poison, !25931, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !25811)
    #dbg_value(i32 poison, !25922, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25808)
    #dbg_value(i32 poison, !25931, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !25811)
    #dbg_value(i32 poison, !25922, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25808)
    #dbg_value(i32 poison, !25931, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !25811)
    #dbg_value(i32 poison, !25922, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25808)
    #dbg_value(i32 poison, !25931, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !25811)
    #dbg_value(ptr poison, !25926, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25812)
    #dbg_declare(ptr poison, !25927, !DIExpression(), !25813)
    #dbg_value(ptr poison, !25935, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !25814)
    #dbg_value(ptr poison, !25936, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !25814)
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.65.0.copyload, i64 %.epil.init, !dbg !25969
  %i.w = load <2 x i32>, ptr %i.u, align 4, !dbg !25970, !noalias !25940
  %i.x = load <2 x i32>, ptr %gep.i.i.epil, align 4, !dbg !25970, !noalias !25940
  %i.y = shufflevector <2 x i32> %i.w, <2 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, !dbg !25971
  store <4 x i32> %i.y, ptr %i.v, align 4, !dbg !25971, !noalias !25941
  %i.z = add i64 %.epil.init, 1, !dbg !25972
    #dbg_value(ptr undef, !25905, !DIExpression(), !25773)
    #dbg_value(ptr undef, !25902, !DIExpression(), !25772)
    #dbg_value(ptr undef, !25899, !DIExpression(), !25771)
    #dbg_value(ptr undef, !25900, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !25786)
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %.epil.preheader, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %bb.a
  %.val17.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.s, %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTllEEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B2Q_ETB1m_B1m_EuNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer7polygon12fill_polygonNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0NCINvNvB1O_8for_each4callB30_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6Q_3VecB30_E14extend_trustedINtB2x_3MapBM_B3b_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %i.z, %.epil.preheader ], !dbg !25973
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
    #dbg_value(ptr poison, !25942, !DIExpression(), !25835)
    #dbg_value(ptr poison, !25948, !DIExpression(), !25838)
    #dbg_value(ptr poison, !25954, !DIExpression(), !25841)
    #dbg_value(ptr poison, !10710, !DIExpression(), !25843)
    #dbg_value(ptr poison, !10716, !DIExpression(), !25845)
  store i64 %.val17.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !25974, !noalias !25940
  ret void, !dbg !25975
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEINtNtB8_4skip4SkipB1d_EENCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB29_4Rect10split_gridIBO_B1d_NCINvMs7_B29_INtB29_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2d_5coord5ShiftE20split_by_breakpointsllRSlB5t_E0EIBO_B1d_NCB3k_s_0EEs0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB61_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7h_3VecB74_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25980 {
bb.a:
    #dbg_value(ptr poison, !11185, !DIExpression(), !25991)
    #dbg_declare(ptr %0, !26092, !DIExpression(), !26117)
    #dbg_declare(ptr poison, !26093, !DIExpression(), !26118)
    #dbg_declare(ptr %1, !26094, !DIExpression(), !26119)
    #dbg_declare(ptr %1, !26120, !DIExpression(), !26129)
    #dbg_declare(ptr poison, !26123, !DIExpression(), !26130)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !26197 ; 7 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !26113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26131)
    #dbg_value(ptr %.sroa.0.0.copyload, !26103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26132)
    #dbg_value(i64 poison, !26113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26131)
    #dbg_value(i64 poison, !26103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26132)
    #dbg_value(ptr poison, !26113, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26131)
    #dbg_value(ptr poison, !26103, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26132)
    #dbg_value(i64 poison, !26113, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26131)
    #dbg_value(i64 poison, !26103, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26132)
    #dbg_value(i64 poison, !26113, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26131)
    #dbg_value(i64 poison, !26103, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26132)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26197
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !26197 ; 11 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !26113, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !26131)
    #dbg_value(i64 %.sroa.6.0.copyload, !26103, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !26132)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26197
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26197 ; 7 uses
    #dbg_value(i64 %.sroa.7.0.copyload, !26113, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !26131)
    #dbg_value(i64 %.sroa.7.0.copyload, !26103, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !26132)
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !26198 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.copyload, !26115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26131)
    #dbg_value(ptr %.sroa.03.0.copyload, !26105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26132)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26198
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !26198 ; 7 uses
    #dbg_value(i64 %.sroa.44.0.copyload, !26115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26131)
    #dbg_value(i64 %.sroa.44.0.copyload, !26105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26132)
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26198
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !26198 ; 7 uses
    #dbg_value(ptr %.sroa.65.0.copyload, !26115, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26131)
    #dbg_value(ptr %.sroa.65.0.copyload, !26105, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26132)
    #dbg_declare(ptr poison, !26114, !DIExpression(), !25993)
    #dbg_value(ptr poison, !26133, !DIExpression(), !26001)
    #dbg_value(ptr poison, !26136, !DIExpression(), !26002)
    #dbg_value(ptr poison, !26139, !DIExpression(), !26003)
    #dbg_declare(ptr poison, !26104, !DIExpression(), !26004)
    #dbg_declare(ptr poison, !26106, !DIExpression(), !26005)
    #dbg_value(i64 1, !26142, !DIExpression(), !26008)
    #dbg_value(i64 1, !26145, !DIExpression(), !26011)
    #dbg_value(ptr poison, !11196, !DIExpression(), !26013)
  %i.a = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26199 ; 4 uses
    #dbg_value(i64 %i.a, !26107, !DIExpression(), !26014)
    #dbg_value(i64 0, !26108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26015)
    #dbg_value(i64 %i.a, !26108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26015)
    #dbg_value(ptr undef, !26139, !DIExpression(), !26003)
    #dbg_value(ptr undef, !26136, !DIExpression(), !26002)
    #dbg_value(ptr undef, !26133, !DIExpression(), !26001)
    #dbg_value(ptr undef, !26134, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !26016)
  %.not.i.i = icmp eq i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26200
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !26201

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26197
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !26197 ; 3 uses
    #dbg_value(i64 %.sroa.52.0.copyload, !26113, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26131)
    #dbg_value(i64 %.sroa.52.0.copyload, !26103, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26132)
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26197
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !26197, !nonnull !3744, !noundef !3744 ; 3 uses
    #dbg_value(ptr %.sroa.41.0.copyload, !26113, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26131)
    #dbg_value(ptr %.sroa.41.0.copyload, !26103, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26132)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %.sroa.41.0.copyload, i64 %.sroa.52.0.copyload, !dbg !26201 ; 4 uses
  %min.iters.check = icmp ult i64 %i.a, 24, !dbg !26201
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !26201

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 3, !dbg !26201
  %scevgep = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.b, !dbg !26201 ; 2 uses
  %i.c = add i64 %.sroa.44.0.copyload, %.sroa.7.0.copyload, !dbg !26201
  %i.d = sub i64 %i.c, %.sroa.6.0.copyload, !dbg !26201
  %i.e = shl i64 %i.d, 3, !dbg !26201
  %scevgep6 = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.e, !dbg !26201 ; 2 uses
  %i.f = shl i64 %.sroa.6.0.copyload, 2, !dbg !26201
  %scevgep7 = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.f, !dbg !26201
  %i.g = shl i64 %.sroa.7.0.copyload, 2, !dbg !26201
  %scevgep8 = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.g, !dbg !26201
  %i.h = add i64 %.sroa.52.0.copyload, %.sroa.6.0.copyload, !dbg !26201
  %i.i = shl i64 %i.h, 2, !dbg !26201
  %scevgep9 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i, !dbg !26201
  %i.j = add i64 %.sroa.52.0.copyload, %.sroa.7.0.copyload, !dbg !26201
  %i.k = shl i64 %i.j, 2, !dbg !26201
  %scevgep10 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.k, !dbg !26201
  %bound0 = icmp ult ptr %scevgep, %scevgep8, !dbg !26201
  %bound1 = icmp ult ptr %scevgep7, %scevgep6, !dbg !26201
  %found.conflict = and i1 %bound0, %bound1, !dbg !26201
  %bound011 = icmp ult ptr %scevgep, %scevgep10, !dbg !26201
  %bound112 = icmp ult ptr %scevgep9, %scevgep6, !dbg !26201
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !26201
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !26201
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph, !dbg !26202

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.l = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  br label %vector.body, !dbg !26202

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !26202 ; 3 uses
  %i.m = add i64 %.sroa.44.0.copyload, %index     ; 2 uses
  %i.n = add i64 %index, %.sroa.6.0.copyload, !dbg !26203 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.n, !dbg !26204 ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.n, !dbg !26205 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !26206
  %wide.load = load <2 x i32>, ptr %i.o, align 4, !dbg !26206, !alias.scope !26148, !noalias !26149
  %wide.load14 = load <2 x i32>, ptr %i.q, align 4, !dbg !26206, !alias.scope !26148, !noalias !26149
  %i.r = getelementptr i8, ptr %i.p, i64 8, !dbg !26206
  %wide.load15 = load <2 x i32>, ptr %i.p, align 4, !dbg !26206, !alias.scope !26150, !noalias !26149
  %wide.load16 = load <2 x i32>, ptr %i.r, align 4, !dbg !26206, !alias.scope !26150, !noalias !26149
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.m, !dbg !26207
  %i.t = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.m, !dbg !26207
  %i.u = getelementptr i8, ptr %i.t, i64 16, !dbg !26207
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load15, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !26208
  store <4 x i32> %interleaved.vec, ptr %i.s, align 4, !dbg !26208, !alias.scope !26177, !noalias !26178
  %interleaved.vec17 = shufflevector <2 x i32> %wide.load14, <2 x i32> %wide.load16, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !26208
  store <4 x i32> %interleaved.vec17, ptr %i.u, align 4, !dbg !26208, !alias.scope !26177, !noalias !26178
  %index.next = add nuw i64 %index, 4, !dbg !26202 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !26201
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !26201, !llvm.loop !26050

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec, !dbg !26201
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !26201

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.l, %middle.block ] ; 3 uses
  %.sroa.0.020.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.w = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26201
  %i.x = xor i64 %.sroa.0.020.i.i.ph, -1, !dbg !26201
  %i.y = add i64 %.sroa.7.0.copyload, %i.x, !dbg !26201
  %xtraiter = and i64 %i.w, 1, !dbg !26201
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !26201
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !26201

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
    #dbg_value(i64 poison, !26137, !DIExpression(), !26051)
    #dbg_value(i64 poison, !26143, !DIExpression(), !26008)
    #dbg_value(i64 poison, !26146, !DIExpression(), !26011)
  %i.z = or disjoint i64 %.sroa.0.020.i.i.ph, 1, !dbg !26202
    #dbg_value(i64 %i.z, !26108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26015)
    #dbg_value(i64 poison, !26109, !DIExpression(), !26052)
    #dbg_value(ptr undef, !11185, !DIExpression(), !25991)
    #dbg_value(i64 poison, !11191, !DIExpression(), !25991)
  %i.aa = add i64 %.sroa.0.020.i.i.ph, %.sroa.6.0.copyload, !dbg !26203 ; 2 uses
    #dbg_value(i64 %i.aa, !11192, !DIExpression(), !26053)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26054)
    #dbg_value(i64 %i.aa, !11204, !DIExpression(), !26054)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.aa, !dbg !26204
    #dbg_value(ptr poison, !11216, !DIExpression(), !26055)
    #dbg_value(i64 %i.aa, !11217, !DIExpression(), !26055)
    #dbg_value(ptr poison, !11210, !DIExpression(), !26056)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26056)
    #dbg_value(ptr poison, !11206, !DIExpression(), !26057)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26057)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26058)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11204, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26058)
  %gep.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.aa, !dbg !26205
  %.val18.i.i.prol = load i32, ptr %i.ab, align 4, !dbg !26206, !noalias !26149, !noundef !3744
  %.val19.i.i.prol = load i32, ptr %gep.i.i.prol, align 4, !dbg !26206, !noalias !26149, !noundef !3744
    #dbg_value(ptr poison, !26174, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26059)
    #dbg_declare(ptr poison, !26172, !DIExpression(), !26060)
    #dbg_value(ptr poison, !26173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26059)
    #dbg_value(ptr poison, !26173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26059)
    #dbg_value(ptr poison, !26164, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26061)
    #dbg_declare(ptr poison, !26165, !DIExpression(), !26062)
    #dbg_value(i32 %.val18.i.i.prol, !26163, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26061)
    #dbg_value(i32 %.val19.i.i.prol, !26163, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26061)
    #dbg_value(ptr poison, !26155, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !26063)
    #dbg_value(ptr poison, !26156, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26063)
    #dbg_value(i32 %.val18.i.i.prol, !26154, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26063)
    #dbg_value(i32 %.val19.i.i.prol, !26154, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26063)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %.ph, !dbg !26207 ; 2 uses
  store i32 %.val18.i.i.prol, ptr %i.ac, align 4, !dbg !26208, !noalias !26178
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4, !dbg !26208
  store i32 %.val19.i.i.prol, ptr %i.ad, align 4, !dbg !26208, !noalias !26178
  %i.ae = add i64 %.ph, 1, !dbg !26209            ; 2 uses
    #dbg_value(ptr undef, !26139, !DIExpression(), !26003)
    #dbg_value(ptr undef, !26136, !DIExpression(), !26002)
    #dbg_value(ptr undef, !26133, !DIExpression(), !26001)
    #dbg_value(ptr undef, !26134, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !26016)
  br label %scalar.ph.prol.loopexit, !dbg !26201

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.sroa.0.020.i.i.unr = phi i64 [ %.sroa.0.020.i.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.af = icmp eq i64 %i.y, %.sroa.6.0.copyload, !dbg !26201
  br i1 %i.af, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader.new, !dbg !26201

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.6.0.copyload, !dbg !26201
  br label %scalar.ph, !dbg !26201

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ag = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.aq, %scalar.ph ], !dbg !26202 ; 3 uses
  %.sroa.0.020.i.i = phi i64 [ %.sroa.0.020.i.i.unr, %scalar.ph.preheader.new ], [ %i.al, %scalar.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.0.020.i.i, !26137, !DIExpression(), !26051)
    #dbg_value(i64 %.sroa.0.020.i.i, !26143, !DIExpression(), !26008)
    #dbg_value(i64 %.sroa.0.020.i.i, !26146, !DIExpression(), !26011)
    #dbg_value(i64 %.sroa.0.020.i.i, !26108, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !26015)
    #dbg_value(i64 %.sroa.0.020.i.i, !26109, !DIExpression(), !26052)
    #dbg_value(ptr undef, !11185, !DIExpression(), !25991)
    #dbg_value(i64 %.sroa.0.020.i.i, !11191, !DIExpression(), !25991)
  %i.ah = add i64 %.sroa.0.020.i.i, %.sroa.6.0.copyload, !dbg !26203 ; 2 uses
    #dbg_value(i64 %i.ah, !11192, !DIExpression(), !26053)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26054)
    #dbg_value(i64 %i.ah, !11204, !DIExpression(), !26054)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ah, !dbg !26204
    #dbg_value(ptr poison, !11216, !DIExpression(), !26055)
    #dbg_value(i64 %i.ah, !11217, !DIExpression(), !26055)
    #dbg_value(ptr poison, !11210, !DIExpression(), !26056)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26056)
    #dbg_value(ptr poison, !11206, !DIExpression(), !26057)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26057)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26058)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11204, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26058)
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.ah, !dbg !26205
  %.val18.i.i = load i32, ptr %i.ai, align 4, !dbg !26206, !noalias !26149, !noundef !3744
  %.val19.i.i = load i32, ptr %gep.i.i, align 4, !dbg !26206, !noalias !26149, !noundef !3744
    #dbg_value(ptr poison, !26174, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26059)
    #dbg_declare(ptr poison, !26172, !DIExpression(), !26060)
    #dbg_value(ptr poison, !26173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26059)
    #dbg_value(ptr poison, !26173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26059)
    #dbg_value(ptr poison, !26164, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26061)
    #dbg_declare(ptr poison, !26165, !DIExpression(), !26062)
    #dbg_value(i32 %.val18.i.i, !26163, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26061)
    #dbg_value(i32 %.val19.i.i, !26163, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26061)
    #dbg_value(ptr poison, !26155, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !26063)
    #dbg_value(ptr poison, !26156, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26063)
    #dbg_value(i32 %.val18.i.i, !26154, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26063)
    #dbg_value(i32 %.val19.i.i, !26154, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26063)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.ag, !dbg !26207 ; 2 uses
  store i32 %.val18.i.i, ptr %i.aj, align 4, !dbg !26208, !noalias !26178
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !26208
  store i32 %.val19.i.i, ptr %i.ak, align 4, !dbg !26208, !noalias !26178
    #dbg_value(ptr undef, !26139, !DIExpression(), !26003)
    #dbg_value(ptr undef, !26136, !DIExpression(), !26002)
    #dbg_value(ptr undef, !26133, !DIExpression(), !26001)
    #dbg_value(ptr undef, !26134, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !26016)
    #dbg_value(i64 %.sroa.0.020.i.i, !26137, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26051)
    #dbg_value(i64 %.sroa.0.020.i.i, !26143, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26008)
    #dbg_value(i64 %.sroa.0.020.i.i, !26146, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26011)
  %i.al = add nuw i64 %.sroa.0.020.i.i, 2, !dbg !26202 ; 2 uses
    #dbg_value(i64 %i.al, !26108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26015)
    #dbg_value(i64 %.sroa.0.020.i.i, !26109, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26052)
    #dbg_value(i64 %.sroa.0.020.i.i, !11191, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !25991)
  %.reass = add i64 %.sroa.0.020.i.i, %invariant.op ; 2 uses
    #dbg_value(i64 %.reass, !11192, !DIExpression(), !26053)
    #dbg_value(i64 %.reass, !11204, !DIExpression(), !26054)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass, !dbg !26204
    #dbg_value(i64 %.reass, !11217, !DIExpression(), !26055)
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %.reass, !dbg !26205
  %.val18.i.i.1 = load i32, ptr %i.am, align 4, !dbg !26206, !noalias !26149, !noundef !3744
  %.val19.i.i.1 = load i32, ptr %gep.i.i.1, align 4, !dbg !26206, !noalias !26149, !noundef !3744
    #dbg_declare(ptr poison, !26172, !DIExpression(), !26060)
    #dbg_value(ptr poison, !26173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26059)
    #dbg_value(ptr poison, !26173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26059)
    #dbg_declare(ptr poison, !26165, !DIExpression(), !26062)
    #dbg_value(i32 %.val18.i.i.1, !26163, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26061)
    #dbg_value(i32 %.val19.i.i.1, !26163, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26061)
    #dbg_value(i32 %.val18.i.i.1, !26154, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26063)
    #dbg_value(i32 %.val19.i.i.1, !26154, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26063)
  %i.an = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.ag, !dbg !26207 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8, !dbg !26207
  store i32 %.val18.i.i.1, ptr %i.ao, align 4, !dbg !26208, !noalias !26178
  %i.ap = getelementptr i8, ptr %i.an, i64 12, !dbg !26208
  store i32 %.val19.i.i.1, ptr %i.ap, align 4, !dbg !26208, !noalias !26178
  %i.aq = add i64 %i.ag, 2, !dbg !26209           ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.al, %i.a, !dbg !26200
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !26201, !llvm.loop !26066

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs0_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val17.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ], !dbg !26210
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
    #dbg_value(ptr poison, !26179, !DIExpression(), !26069)
    #dbg_value(ptr poison, !26185, !DIExpression(), !26072)
    #dbg_value(ptr poison, !26191, !DIExpression(), !26075)
    #dbg_value(ptr poison, !10710, !DIExpression(), !26077)
    #dbg_value(ptr poison, !10716, !DIExpression(), !26079)
  store i64 %.val17.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !26211, !noalias !26149
  ret void, !dbg !26212
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterlEINtNtB8_4skip4SkipB1d_EENCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB29_4Rect10split_gridIBO_B1d_NCINvMs7_B29_INtB29_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2d_5coord5ShiftE20split_by_breakpointsllRSlB5t_E0EIBO_B1d_NCB3k_s_0EEs1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB61_8for_each4callTllENCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7h_3VecB74_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !26217 {
bb.a:
    #dbg_value(ptr poison, !11185, !DIExpression(), !26228)
    #dbg_declare(ptr %0, !26329, !DIExpression(), !26354)
    #dbg_declare(ptr poison, !26330, !DIExpression(), !26355)
    #dbg_declare(ptr %1, !26331, !DIExpression(), !26356)
    #dbg_declare(ptr %1, !26357, !DIExpression(), !26366)
    #dbg_declare(ptr poison, !26360, !DIExpression(), !26367)
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !26434 ; 7 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !26350, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26368)
    #dbg_value(ptr %.sroa.0.0.copyload, !26340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26369)
    #dbg_value(i64 poison, !26350, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26368)
    #dbg_value(i64 poison, !26340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26369)
    #dbg_value(ptr poison, !26350, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26368)
    #dbg_value(ptr poison, !26340, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26369)
    #dbg_value(i64 poison, !26350, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26368)
    #dbg_value(i64 poison, !26340, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !26369)
    #dbg_value(i64 poison, !26350, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26368)
    #dbg_value(i64 poison, !26340, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26369)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26434
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !26434 ; 11 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !26350, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !26368)
    #dbg_value(i64 %.sroa.6.0.copyload, !26340, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !26369)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26434
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26434 ; 7 uses
    #dbg_value(i64 %.sroa.7.0.copyload, !26350, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !26368)
    #dbg_value(i64 %.sroa.7.0.copyload, !26340, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !26369)
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !26435 ; 2 uses
    #dbg_value(ptr %.sroa.03.0.copyload, !26352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26368)
    #dbg_value(ptr %.sroa.03.0.copyload, !26342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26369)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26435
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !26435 ; 7 uses
    #dbg_value(i64 %.sroa.44.0.copyload, !26352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26368)
    #dbg_value(i64 %.sroa.44.0.copyload, !26342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26369)
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26435
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !26435 ; 7 uses
    #dbg_value(ptr %.sroa.65.0.copyload, !26352, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26368)
    #dbg_value(ptr %.sroa.65.0.copyload, !26342, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26369)
    #dbg_declare(ptr poison, !26351, !DIExpression(), !26230)
    #dbg_value(ptr poison, !26370, !DIExpression(), !26238)
    #dbg_value(ptr poison, !26373, !DIExpression(), !26239)
    #dbg_value(ptr poison, !26376, !DIExpression(), !26240)
    #dbg_declare(ptr poison, !26341, !DIExpression(), !26241)
    #dbg_declare(ptr poison, !26343, !DIExpression(), !26242)
    #dbg_value(i64 1, !26379, !DIExpression(), !26245)
    #dbg_value(i64 1, !26382, !DIExpression(), !26248)
    #dbg_value(ptr poison, !11196, !DIExpression(), !26250)
  %i.a = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26436 ; 4 uses
    #dbg_value(i64 %i.a, !26344, !DIExpression(), !26251)
    #dbg_value(i64 0, !26345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26252)
    #dbg_value(i64 %i.a, !26345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26252)
    #dbg_value(ptr undef, !26376, !DIExpression(), !26240)
    #dbg_value(ptr undef, !26373, !DIExpression(), !26239)
    #dbg_value(ptr undef, !26370, !DIExpression(), !26238)
    #dbg_value(ptr undef, !26371, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !26253)
  %.not.i.i = icmp eq i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26437
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !26438

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26434
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !26434 ; 3 uses
    #dbg_value(i64 %.sroa.52.0.copyload, !26350, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26368)
    #dbg_value(i64 %.sroa.52.0.copyload, !26340, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !26369)
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26434
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !26434, !nonnull !3744, !noundef !3744 ; 3 uses
    #dbg_value(ptr %.sroa.41.0.copyload, !26350, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26368)
    #dbg_value(ptr %.sroa.41.0.copyload, !26340, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26369)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %.sroa.41.0.copyload, i64 %.sroa.52.0.copyload, !dbg !26438 ; 4 uses
  %min.iters.check = icmp ult i64 %i.a, 24, !dbg !26438
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !26438

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 3, !dbg !26438
  %scevgep = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.b, !dbg !26438 ; 2 uses
  %i.c = add i64 %.sroa.44.0.copyload, %.sroa.7.0.copyload, !dbg !26438
  %i.d = sub i64 %i.c, %.sroa.6.0.copyload, !dbg !26438
  %i.e = shl i64 %i.d, 3, !dbg !26438
  %scevgep6 = getelementptr i8, ptr %.sroa.65.0.copyload, i64 %i.e, !dbg !26438 ; 2 uses
  %i.f = shl i64 %.sroa.6.0.copyload, 2, !dbg !26438
  %scevgep7 = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.f, !dbg !26438
  %i.g = shl i64 %.sroa.7.0.copyload, 2, !dbg !26438
  %scevgep8 = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.g, !dbg !26438
  %i.h = add i64 %.sroa.52.0.copyload, %.sroa.6.0.copyload, !dbg !26438
  %i.i = shl i64 %i.h, 2, !dbg !26438
  %scevgep9 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.i, !dbg !26438
  %i.j = add i64 %.sroa.52.0.copyload, %.sroa.7.0.copyload, !dbg !26438
  %i.k = shl i64 %i.j, 2, !dbg !26438
  %scevgep10 = getelementptr i8, ptr %.sroa.41.0.copyload, i64 %i.k, !dbg !26438
  %bound0 = icmp ult ptr %scevgep, %scevgep8, !dbg !26438
  %bound1 = icmp ult ptr %scevgep7, %scevgep6, !dbg !26438
  %found.conflict = and i1 %bound0, %bound1, !dbg !26438
  %bound011 = icmp ult ptr %scevgep, %scevgep10, !dbg !26438
  %bound112 = icmp ult ptr %scevgep9, %scevgep6, !dbg !26438
  %found.conflict13 = and i1 %bound011, %bound112, !dbg !26438
  %conflict.rdx = or i1 %found.conflict, %found.conflict13, !dbg !26438
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph, !dbg !26439

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.l = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  br label %vector.body, !dbg !26439

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !26439 ; 3 uses
  %i.m = add i64 %.sroa.44.0.copyload, %index     ; 2 uses
  %i.n = add i64 %index, %.sroa.6.0.copyload, !dbg !26440 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.n, !dbg !26441 ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.n, !dbg !26442 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !26443
  %wide.load = load <2 x i32>, ptr %i.o, align 4, !dbg !26443, !alias.scope !26385, !noalias !26386
  %wide.load14 = load <2 x i32>, ptr %i.q, align 4, !dbg !26443, !alias.scope !26385, !noalias !26386
  %i.r = getelementptr i8, ptr %i.p, i64 8, !dbg !26443
  %wide.load15 = load <2 x i32>, ptr %i.p, align 4, !dbg !26443, !alias.scope !26387, !noalias !26386
  %wide.load16 = load <2 x i32>, ptr %i.r, align 4, !dbg !26443, !alias.scope !26387, !noalias !26386
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.m, !dbg !26444
  %i.t = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.m, !dbg !26444
  %i.u = getelementptr i8, ptr %i.t, i64 16, !dbg !26444
  %interleaved.vec = shufflevector <2 x i32> %wide.load, <2 x i32> %wide.load15, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !26445
  store <4 x i32> %interleaved.vec, ptr %i.s, align 4, !dbg !26445, !alias.scope !26414, !noalias !26415
  %interleaved.vec17 = shufflevector <2 x i32> %wide.load14, <2 x i32> %wide.load16, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !26445
  store <4 x i32> %interleaved.vec17, ptr %i.u, align 4, !dbg !26445, !alias.scope !26414, !noalias !26415
  %index.next = add nuw i64 %index, 4, !dbg !26439 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !26438
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !26438, !llvm.loop !26287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec, !dbg !26438
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !26438

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.l, %middle.block ] ; 3 uses
  %.sroa.0.020.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.w = sub i64 %.sroa.7.0.copyload, %.sroa.6.0.copyload, !dbg !26438
  %i.x = xor i64 %.sroa.0.020.i.i.ph, -1, !dbg !26438
  %i.y = add i64 %.sroa.7.0.copyload, %i.x, !dbg !26438
  %xtraiter = and i64 %i.w, 1, !dbg !26438
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !26438
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !26438

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
    #dbg_value(i64 poison, !26374, !DIExpression(), !26288)
    #dbg_value(i64 poison, !26380, !DIExpression(), !26245)
    #dbg_value(i64 poison, !26383, !DIExpression(), !26248)
  %i.z = or disjoint i64 %.sroa.0.020.i.i.ph, 1, !dbg !26439
    #dbg_value(i64 %i.z, !26345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26252)
    #dbg_value(i64 poison, !26346, !DIExpression(), !26289)
    #dbg_value(ptr undef, !11185, !DIExpression(), !26228)
    #dbg_value(i64 poison, !11191, !DIExpression(), !26228)
  %i.aa = add i64 %.sroa.0.020.i.i.ph, %.sroa.6.0.copyload, !dbg !26440 ; 2 uses
    #dbg_value(i64 %i.aa, !11192, !DIExpression(), !26290)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26291)
    #dbg_value(i64 %i.aa, !11204, !DIExpression(), !26291)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.aa, !dbg !26441
    #dbg_value(ptr poison, !11216, !DIExpression(), !26292)
    #dbg_value(i64 %i.aa, !11217, !DIExpression(), !26292)
    #dbg_value(ptr poison, !11210, !DIExpression(), !26293)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26293)
    #dbg_value(ptr poison, !11206, !DIExpression(), !26294)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26294)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26295)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11204, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26295)
  %gep.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.aa, !dbg !26442
  %.val18.i.i.prol = load i32, ptr %i.ab, align 4, !dbg !26443, !noalias !26386, !noundef !3744
  %.val19.i.i.prol = load i32, ptr %gep.i.i.prol, align 4, !dbg !26443, !noalias !26386, !noundef !3744
    #dbg_value(ptr poison, !26411, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26296)
    #dbg_declare(ptr poison, !26409, !DIExpression(), !26297)
    #dbg_value(ptr poison, !26410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26296)
    #dbg_value(ptr poison, !26410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26296)
    #dbg_value(ptr poison, !26401, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26298)
    #dbg_declare(ptr poison, !26402, !DIExpression(), !26299)
    #dbg_value(i32 %.val18.i.i.prol, !26400, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26298)
    #dbg_value(i32 %.val19.i.i.prol, !26400, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26298)
    #dbg_value(ptr poison, !26392, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !26300)
    #dbg_value(ptr poison, !26393, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26300)
    #dbg_value(i32 %.val18.i.i.prol, !26391, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26300)
    #dbg_value(i32 %.val19.i.i.prol, !26391, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26300)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %.ph, !dbg !26444 ; 2 uses
  store i32 %.val18.i.i.prol, ptr %i.ac, align 4, !dbg !26445, !noalias !26415
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4, !dbg !26445
  store i32 %.val19.i.i.prol, ptr %i.ad, align 4, !dbg !26445, !noalias !26415
  %i.ae = add i64 %.ph, 1, !dbg !26446            ; 2 uses
    #dbg_value(ptr undef, !26376, !DIExpression(), !26240)
    #dbg_value(ptr undef, !26373, !DIExpression(), !26239)
    #dbg_value(ptr undef, !26370, !DIExpression(), !26238)
    #dbg_value(ptr undef, !26371, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !26253)
  br label %scalar.ph.prol.loopexit, !dbg !26438

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.sroa.0.020.i.i.unr = phi i64 [ %.sroa.0.020.i.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.af = icmp eq i64 %i.y, %.sroa.6.0.copyload, !dbg !26438
  br i1 %i.af, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader.new, !dbg !26438

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.6.0.copyload, !dbg !26438
  br label %scalar.ph, !dbg !26438

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ag = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.aq, %scalar.ph ], !dbg !26439 ; 3 uses
  %.sroa.0.020.i.i = phi i64 [ %.sroa.0.020.i.i.unr, %scalar.ph.preheader.new ], [ %i.al, %scalar.ph ] ; 3 uses
    #dbg_value(i64 %.sroa.0.020.i.i, !26374, !DIExpression(), !26288)
    #dbg_value(i64 %.sroa.0.020.i.i, !26380, !DIExpression(), !26245)
    #dbg_value(i64 %.sroa.0.020.i.i, !26383, !DIExpression(), !26248)
    #dbg_value(i64 %.sroa.0.020.i.i, !26345, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !26252)
    #dbg_value(i64 %.sroa.0.020.i.i, !26346, !DIExpression(), !26289)
    #dbg_value(ptr undef, !11185, !DIExpression(), !26228)
    #dbg_value(i64 %.sroa.0.020.i.i, !11191, !DIExpression(), !26228)
  %i.ah = add i64 %.sroa.0.020.i.i, %.sroa.6.0.copyload, !dbg !26440 ; 2 uses
    #dbg_value(i64 %i.ah, !11192, !DIExpression(), !26290)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26291)
    #dbg_value(i64 %i.ah, !11204, !DIExpression(), !26291)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ah, !dbg !26441
    #dbg_value(ptr poison, !11216, !DIExpression(), !26292)
    #dbg_value(i64 %i.ah, !11217, !DIExpression(), !26292)
    #dbg_value(ptr poison, !11210, !DIExpression(), !26293)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11211, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26293)
    #dbg_value(ptr poison, !11206, !DIExpression(), !26294)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11207, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26294)
    #dbg_value(ptr poison, !11203, !DIExpression(), !26295)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !11204, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !26295)
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.ah, !dbg !26442
  %.val18.i.i = load i32, ptr %i.ai, align 4, !dbg !26443, !noalias !26386, !noundef !3744
  %.val19.i.i = load i32, ptr %gep.i.i, align 4, !dbg !26443, !noalias !26386, !noundef !3744
    #dbg_value(ptr poison, !26411, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26296)
    #dbg_declare(ptr poison, !26409, !DIExpression(), !26297)
    #dbg_value(ptr poison, !26410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26296)
    #dbg_value(ptr poison, !26410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26296)
    #dbg_value(ptr poison, !26401, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26298)
    #dbg_declare(ptr poison, !26402, !DIExpression(), !26299)
    #dbg_value(i32 %.val18.i.i, !26400, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26298)
    #dbg_value(i32 %.val19.i.i, !26400, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26298)
    #dbg_value(ptr poison, !26392, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !26300)
    #dbg_value(ptr poison, !26393, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26300)
    #dbg_value(i32 %.val18.i.i, !26391, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26300)
    #dbg_value(i32 %.val19.i.i, !26391, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26300)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.ag, !dbg !26444 ; 2 uses
  store i32 %.val18.i.i, ptr %i.aj, align 4, !dbg !26445, !noalias !26415
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !26445
  store i32 %.val19.i.i, ptr %i.ak, align 4, !dbg !26445, !noalias !26415
    #dbg_value(ptr undef, !26376, !DIExpression(), !26240)
    #dbg_value(ptr undef, !26373, !DIExpression(), !26239)
    #dbg_value(ptr undef, !26370, !DIExpression(), !26238)
    #dbg_value(ptr undef, !26371, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !26253)
    #dbg_value(i64 %.sroa.0.020.i.i, !26374, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26288)
    #dbg_value(i64 %.sroa.0.020.i.i, !26380, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26245)
    #dbg_value(i64 %.sroa.0.020.i.i, !26383, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26248)
  %i.al = add nuw i64 %.sroa.0.020.i.i, 2, !dbg !26439 ; 2 uses
    #dbg_value(i64 %i.al, !26345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26252)
    #dbg_value(i64 %.sroa.0.020.i.i, !26346, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26289)
    #dbg_value(i64 %.sroa.0.020.i.i, !11191, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !26228)
  %.reass = add i64 %.sroa.0.020.i.i, %invariant.op ; 2 uses
    #dbg_value(i64 %.reass, !11192, !DIExpression(), !26290)
    #dbg_value(i64 %.reass, !11204, !DIExpression(), !26291)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass, !dbg !26441
    #dbg_value(i64 %.reass, !11217, !DIExpression(), !26292)
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %.reass, !dbg !26442
  %.val18.i.i.1 = load i32, ptr %i.am, align 4, !dbg !26443, !noalias !26386, !noundef !3744
  %.val19.i.i.1 = load i32, ptr %gep.i.i.1, align 4, !dbg !26443, !noalias !26386, !noundef !3744
    #dbg_declare(ptr poison, !26409, !DIExpression(), !26297)
    #dbg_value(ptr poison, !26410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26296)
    #dbg_value(ptr poison, !26410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26296)
    #dbg_declare(ptr poison, !26402, !DIExpression(), !26299)
    #dbg_value(i32 %.val18.i.i.1, !26400, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26298)
    #dbg_value(i32 %.val19.i.i.1, !26400, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26298)
    #dbg_value(i32 %.val18.i.i.1, !26391, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26300)
    #dbg_value(i32 %.val19.i.i.1, !26391, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !26300)
  %i.an = getelementptr [8 x i8], ptr %.sroa.65.0.copyload, i64 %i.ag, !dbg !26444 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8, !dbg !26444
  store i32 %.val18.i.i.1, ptr %i.ao, align 4, !dbg !26445, !noalias !26415
  %i.ap = getelementptr i8, ptr %i.an, i64 12, !dbg !26445
  store i32 %.val19.i.i.1, ptr %i.ap, align 4, !dbg !26445, !noalias !26415
  %i.aq = add i64 %i.ag, 2, !dbg !26446           ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.al, %i.a, !dbg !26437
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !26438, !llvm.loop !26303

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterlEINtNtB7_4skip4SkipBW_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRlB2N_ETllEuNCINvMNtNtCs4bweDUTR8gt_8plotters7drawing4areaNtB35_4Rect10split_gridINtB2u_3MapBW_NCINvMs7_B35_INtB35_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB39_5coord5ShiftE20split_by_breakpointsllRSlB6v_E0EIB47_BW_NCB4m_s_0EEs1_0NCINvNvB1L_8for_each4callB2U_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB7E_3VecB2U_E14extend_trustedIB47_BM_B2Z_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val17.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aq, %scalar.ph ], !dbg !26447
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
    #dbg_value(ptr poison, !26416, !DIExpression(), !26306)
    #dbg_value(ptr poison, !26422, !DIExpression(), !26309)
    #dbg_value(ptr poison, !26428, !DIExpression(), !26312)
    #dbg_value(ptr poison, !10710, !DIExpression(), !26314)
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTlNtNtCsexYYUdYSQU6_5alloc6string6StringEENCNvMNtNtNtNtCs4bweDUTR8gt_8plotters5chart7context11cartesian2d9draw_implINtB2c_12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB2g_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4B_8ranged1d5types7numeric14RangedCoordu64NtB5l_14RangedCoordf64EE20draw_axis_and_labels0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6U_8for_each4calllNCINvMsk_NtB1t_3vecINtB87_3VeclE14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.01.03.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultmINtNtNtCs4bweDUTR8gt_8plotters7drawing4area20DrawingAreaErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], !dbg !31658
    #dbg_value(ptr poison, !31586, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31439)
    #dbg_declare(ptr poison, !31591, !DIExpression(), !31440)
    #dbg_value(i32 %.sroa.0.0.i.i.i, !31590, !DIExpression(), !31439)
    #dbg_value(ptr poison, !31595, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !31443)
    #dbg_value(ptr poison, !31600, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31443)
    #dbg_value(i32 %.sroa.0.0.i.i.i, !31599, !DIExpression(), !31443)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val22.i, !dbg !31659
  store i32 %.sroa.0.0.i.i.i, ptr %i.ah, align 4, !dbg !31660, !noalias !31604
  %i.ai = add i64 %.val22.i, 1, !dbg !31661       ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i, 1, !dbg !31662 ; 2 uses
    #dbg_value(i64 %i.aj, !31517, !DIExpression(), !31394)
    #dbg_value(i64 %i.aj, !31536, !DIExpression(), !31388)
  %i.ak = icmp eq i64 %i.aj, %i.l, !dbg !31663
  br i1 %i.ak, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTlNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_luNCNvMNtNtNtNtCs4bweDUTR8gt_8plotters5chart7context11cartesian2d9draw_implINtB35_12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB39_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5u_8ranged1d5types7numeric14RangedCoordu64NtB6e_14RangedCoordf64EE20draw_axis_and_labels0NCINvNvB1w_8for_each4calllNCINvMsk_NtBW_3vecINtB8l_3VeclE14extend_trustedINtB2m_3MapBF_B2W_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.c, !dbg !31663

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !31605, !DIExpression(), !31456)
    #dbg_value(ptr poison, !31611, !DIExpression(), !31459)
    #dbg_value(ptr poison, !31617, !DIExpression(), !31462)
    #dbg_value(ptr poison, !10710, !DIExpression(), !31464)
    #dbg_value(ptr poison, !10716, !DIExpression(), !31466)
  store i64 %.val22.i, ptr %.sroa.0.0.copyload, align 8, !dbg !31664, !noalias !31544
  resume { ptr, i32 } %i.al, !dbg !31665

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTlNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_luNCNvMNtNtNtNtCs4bweDUTR8gt_8plotters5chart7context11cartesian2d9draw_implINtB35_12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB39_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB5u_8ranged1d5types7numeric14RangedCoordu64NtB6e_14RangedCoordf64EE20draw_axis_and_labels0NCINvNvB1w_8for_each4calllNCINvMsk_NtBW_3vecINtB8l_3VeclE14extend_trustedINtB2m_3MapBF_B2W_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.j, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ai, %bb.j ], !dbg !31666
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !31666, !noalias !31544
  ret void, !dbg !31667
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTllEENCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1B_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB1F_5coord5ShiftE4drawINtNtNtB1F_7element12basic_shapes11PathElementB1n_ENtB3Z_16BackendCoordOnlyE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5a_8for_each4callB1n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6q_3VecB1n_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31670 {
bb.a:
    #dbg_declare(ptr %0, !31761, !DIExpression(), !31767)
    #dbg_declare(ptr poison, !31762, !DIExpression(), !31768)
    #dbg_declare(ptr %1, !31763, !DIExpression(), !31769)
    #dbg_declare(ptr %1, !31770, !DIExpression(), !31782)
  %i.a = load ptr, ptr %0, align 8, !dbg !31871, !nonnull !3744, !noundef !3744 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31871
  %i.c = load ptr, ptr %i.b, align 8, !dbg !31871, !nonnull !3744, !noundef !3744 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !31872
  %i.e = load ptr, ptr %i.d, align 8, !dbg !31872, !nonnull !3744, !align !4908, !noundef !3744
    #dbg_value(ptr %i.e, !31776, !DIExpression(), !31783)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !31873 ; 4 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !31784, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31799)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31873
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !31873 ; 2 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !31784, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31799)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31873
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !31873
    #dbg_value(ptr %.sroa.8.0.copyload, !31784, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31799)
    #dbg_value(ptr %i.e, !31784, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !31799)
    #dbg_value(ptr %i.a, !31787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31682)
    #dbg_value(ptr %i.c, !31787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31682)
    #dbg_declare(ptr poison, !31788, !DIExpression(), !31683)
    #dbg_declare(ptr poison, !31791, !DIExpression(), !31684)
    #dbg_value(i64 8, !31800, !DIExpression(), !31692)
    #dbg_value(i64 1, !31810, !DIExpression(), !31695)
    #dbg_value(ptr %i.c, !31790, !DIExpression(), !31696)
    #dbg_value(ptr poison, !31813, !DIExpression(), !31699)
    #dbg_value(ptr poison, !31814, !DIExpression(), !31700)
  %i.f = icmp eq ptr %i.a, %i.c, !dbg !31874
  br i1 %i.f, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTllEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2w_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2A_5coord5ShiftE4drawINtNtNtB2A_7element12basic_shapes11PathElementBQ_ENtB4U_16BackendCoordOnlyE0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6D_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !31875

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !31792, !DIExpression(), !31701)
    #dbg_value(i64 0, !31811, !DIExpression(), !31695)
    #dbg_value(ptr %i.c, !31795, !DIExpression(), !31702)
    #dbg_value(ptr %i.c, !31807, !DIExpression(), !31703)
    #dbg_value(ptr %i.a, !31808, !DIExpression(), !31703)
    #dbg_value(ptr %i.c, !31804, !DIExpression(), !31704)
    #dbg_value(ptr %i.a, !31805, !DIExpression(), !31704)
    #dbg_value(ptr %i.a, !31802, !DIExpression(), !31705)
    #dbg_value(ptr %i.c, !31801, !DIExpression(), !31705)
  %i.g = ptrtoint ptr %i.c to i64, !dbg !31876
  %i.h = ptrtoint ptr %i.a to i64, !dbg !31876
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !31876
  %i.j = lshr exact i64 %i.i, 3, !dbg !31876
    #dbg_value(i64 %i.j, !31793, !DIExpression(), !31706)
  br label %bb.c, !dbg !31877

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val22.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.t, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.d ], !dbg !31878 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i, !31811, !DIExpression(), !31695)
    #dbg_value(i64 %.sroa.01.0.i, !31792, !DIExpression(), !31701)
    #dbg_value(ptr %i.a, !31816, !DIExpression(), !31709)
    #dbg_value(i64 %.sroa.01.0.i, !31817, !DIExpression(), !31709)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !31879
    #dbg_value(ptr poison, !31819, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31712)
    #dbg_value(ptr poison, !31825, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24), !31712)
    #dbg_declare(ptr poison, !31823, !DIExpression(), !31713)
    #dbg_value(ptr %i.k, !31824, !DIExpression(), !31712)
    #dbg_value(ptr poison, !11554, !DIExpression(DW_OP_deref, DW_OP_deref), !31715)
    #dbg_value(ptr undef, !11558, !DIExpression(DW_OP_deref), !31715)
    #dbg_value(ptr %i.k, !11559, !DIExpression(), !31716)
  %i.l = load ptr, ptr %i.e, align 8, !dbg !31880, !noalias !31827, !nonnull !3744, !align !4908, !noundef !3744 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !31880
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !31881
  %i.o = invoke { i32, i32 } @_RINvXNtCs4bweDUTR8gt_8plotters7elementNtB3_16BackendCoordOnlyNtB3_11CoordMapper3mapNtNtB5_5coord5ShiftECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.d unwind label %bb.e, !dbg !31882, !noalias !31828 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i32, i32 } %i.o, 0, !dbg !31883
  %i.q = extractvalue { i32, i32 } %i.o, 1, !dbg !31883
    #dbg_value(ptr poison, !31829, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31726)
    #dbg_declare(ptr poison, !31834, !DIExpression(), !31727)
    #dbg_value(i32 %i.p, !31833, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31726)
    #dbg_value(i32 %i.q, !31833, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31726)
    #dbg_value(ptr poison, !31838, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !31730)
    #dbg_value(ptr poison, !31843, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31730)
    #dbg_value(i32 %i.p, !31842, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31730)
    #dbg_value(i32 %i.q, !31842, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31730)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val22.i, !dbg !31884 ; 2 uses
  store i32 %i.p, ptr %i.r, align 4, !dbg !31885, !noalias !31847
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !31885
  store i32 %i.q, ptr %i.s, align 4, !dbg !31885, !noalias !31847
  %i.t = add i64 %.val22.i, 1, !dbg !31886        ; 2 uses
  %i.u = add nuw i64 %.sroa.01.0.i, 1, !dbg !31887 ; 2 uses
    #dbg_value(i64 %i.u, !31792, !DIExpression(), !31701)
    #dbg_value(i64 %i.u, !31811, !DIExpression(), !31695)
  %i.v = icmp eq i64 %i.u, %i.j, !dbg !31888
  br i1 %i.v, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTllEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2w_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2A_5coord5ShiftE4drawINtNtNtB2A_7element12basic_shapes11PathElementBQ_ENtB4U_16BackendCoordOnlyE0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6D_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.c, !dbg !31888

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
    #dbg_value(ptr poison, !31848, !DIExpression(), !31743)
    #dbg_value(ptr poison, !31854, !DIExpression(), !31746)
    #dbg_value(ptr poison, !31860, !DIExpression(), !31749)
    #dbg_value(ptr poison, !10710, !DIExpression(), !31751)
    #dbg_value(ptr poison, !10716, !DIExpression(), !31753)
  store i64 %.val22.i, ptr %.sroa.0.0.copyload, align 8, !dbg !31889, !noalias !31828
  resume { ptr, i32 } %i.w, !dbg !31890

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTllEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2w_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtB2A_5coord5ShiftE4drawINtNtNtB2A_7element12basic_shapes11PathElementBQ_ENtB4U_16BackendCoordOnlyE0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6D_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.t, %bb.d ], !dbg !31891
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !31891, !noalias !31828
  ret void, !dbg !31892
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTllEENCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB1C_12basic_shapes11PathElementB1n_EINtB1A_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendB1n_E8into_dyn0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4u_8for_each4callB1n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5K_3VecB1n_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !31897 {
bb.a:
    #dbg_value(ptr %0, !31992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31998)
    #dbg_value(ptr %1, !31992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31998)
    #dbg_declare(ptr poison, !31993, !DIExpression(), !31999)
    #dbg_declare(ptr %2, !31994, !DIExpression(), !32000)
    #dbg_declare(ptr %2, !32001, !DIExpression(), !32013)
    #dbg_declare(ptr poison, !32007, !DIExpression(), !32014)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !32109 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !32015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32030)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !32109
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !32109 ; 6 uses
    #dbg_value(i64 %.sroa.5.0.copyload, !32015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32030)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !32109
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !32109 ; 9 uses
    #dbg_value(ptr %.sroa.7.0.copyload, !32015, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32030)
    #dbg_value(ptr %0, !32018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31909)
    #dbg_value(ptr %1, !32018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31909)
    #dbg_declare(ptr poison, !32019, !DIExpression(), !31910)
    #dbg_declare(ptr poison, !32022, !DIExpression(), !31911)
    #dbg_value(i64 8, !32031, !DIExpression(), !31919)
    #dbg_value(i64 1, !32041, !DIExpression(), !31922)
    #dbg_value(ptr %1, !32021, !DIExpression(), !31923)
    #dbg_value(ptr poison, !32044, !DIExpression(), !31926)
    #dbg_value(ptr poison, !32045, !DIExpression(), !31927)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !32110
  %i.a = icmp eq ptr %0, %1, !dbg !32111
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTllEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !32112

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !32023, !DIExpression(), !31930)
    #dbg_value(i64 0, !32042, !DIExpression(), !31922)
    #dbg_value(ptr %1, !32026, !DIExpression(), !31931)
    #dbg_value(ptr %1, !32038, !DIExpression(), !31932)
    #dbg_value(ptr %1, !32050, !DIExpression(), !31934)
    #dbg_value(ptr %0, !32039, !DIExpression(), !31932)
    #dbg_value(ptr %0, !32050, !DIExpression(), !31936)
    #dbg_value(ptr %1, !32035, !DIExpression(), !31937)
    #dbg_value(ptr %0, !32036, !DIExpression(), !31937)
    #dbg_value(ptr %0, !32033, !DIExpression(), !31938)
    #dbg_value(ptr %1, !32032, !DIExpression(), !31938)
  %i.b = ptrtoint ptr %1 to i64, !dbg !32113
  %i.c = ptrtoint ptr %0 to i64, !dbg !32113
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !32113      ; 3 uses
  %i.e = lshr i64 %i.d, 3, !dbg !32113            ; 5 uses
    #dbg_value(i64 %i.e, !32024, !DIExpression(), !31939)
  %min.iters.check = icmp ult i64 %i.d, 80, !dbg !32114
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !32114

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !32114 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !32114
  %3 = and i64 %i.d, -8, !dbg !32114              ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !32114
  %scevgep2 = getelementptr i8, ptr %i.g, i64 %3, !dbg !32114
  %scevgep3 = getelementptr i8, ptr %0, i64 %3, !dbg !32114
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !32114
  %bound1 = icmp ult ptr %0, %scevgep2, !dbg !32114
  %found.conflict = and i1 %bound0, %bound1, !dbg !32114
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !32115

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  br label %vector.body, !dbg !32115

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !32115 ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !32116
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !32116
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !32116
  %wide.vec = load <4 x i32>, ptr %i.j, align 4, !dbg !32117, !alias.scope !32055, !noalias !32056
  %wide.vec5 = load <4 x i32>, ptr %i.l, align 4, !dbg !32117, !alias.scope !32055, !noalias !32056
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !32118
  %i.n = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.i, !dbg !32118
  %i.o = getelementptr i8, ptr %i.n, i64 16, !dbg !32118
  store <4 x i32> %wide.vec, ptr %i.m, align 4, !dbg !32119, !alias.scope !32083, !noalias !32084
  store <4 x i32> %wide.vec5, ptr %i.o, align 4, !dbg !32119, !alias.scope !32083, !noalias !32084
  %index.next = add nuw i64 %index, 4, !dbg !32115 ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !32120
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !32120, !llvm.loop !31964

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !32120
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTllEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !32120

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !32120        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !32120
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !32120

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.q = phi i64 [ %i.u, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !32116 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.v, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !32115 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
    #dbg_value(i64 %.sroa.01.0.i.prol, !32042, !DIExpression(), !31922)
    #dbg_value(i64 %.sroa.01.0.i.prol, !32023, !DIExpression(), !31930)
    #dbg_value(ptr %0, !32052, !DIExpression(), !31965)
    #dbg_value(i64 %.sroa.01.0.i.prol, !32053, !DIExpression(), !31965)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !32116
    #dbg_value(ptr %i.r, !32050, !DIExpression(), !31967)
    #dbg_value(ptr poison, !32080, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31968)
    #dbg_declare(ptr poison, !32078, !DIExpression(), !31969)
    #dbg_value(ptr poison, !32079, !DIExpression(), !31968)
    #dbg_value(ptr poison, !32070, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31970)
    #dbg_declare(ptr poison, !32071, !DIExpression(), !31971)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31970)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31970)
    #dbg_value(ptr poison, !32061, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !31972)
    #dbg_value(ptr poison, !32062, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31972)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31972)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31972)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.q, !dbg !32118
  %i.t = load <2 x i32>, ptr %i.r, align 4, !dbg !32117, !alias.scope !32055, !noalias !32056
  store <2 x i32> %i.t, ptr %i.s, align 4, !dbg !32119, !noalias !32084
  %i.u = add i64 %i.q, 1, !dbg !32121             ; 3 uses
  %i.v = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !32122 ; 2 uses
    #dbg_value(i64 %i.v, !32023, !DIExpression(), !31930)
    #dbg_value(i64 %i.v, !32042, !DIExpression(), !31922)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !32120 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !32120
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !32120, !llvm.loop !31975

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !32120
  %i.x = icmp ugt i64 %i.w, -4, !dbg !32120
  br i1 %i.x, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTllEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !32120

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.y = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !32116 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !32115 ; 5 uses
    #dbg_value(i64 %.sroa.01.0.i, !32042, !DIExpression(), !31922)
    #dbg_value(i64 %.sroa.01.0.i, !32023, !DIExpression(), !31930)
    #dbg_value(ptr %0, !32052, !DIExpression(), !31965)
    #dbg_value(i64 %.sroa.01.0.i, !32053, !DIExpression(), !31965)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !32116
    #dbg_value(ptr %i.z, !32050, !DIExpression(), !31967)
    #dbg_value(ptr poison, !32080, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31968)
    #dbg_declare(ptr poison, !32078, !DIExpression(), !31969)
    #dbg_value(ptr poison, !32079, !DIExpression(), !31968)
    #dbg_value(ptr poison, !32070, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31970)
    #dbg_declare(ptr poison, !32071, !DIExpression(), !31971)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31970)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31970)
    #dbg_value(ptr poison, !32061, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !31972)
    #dbg_value(ptr poison, !32062, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31972)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31972)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31972)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.y, !dbg !32118
  %i.ab = load <2 x i32>, ptr %i.z, align 4, !dbg !32117, !alias.scope !32055, !noalias !32056
  store <2 x i32> %i.ab, ptr %i.aa, align 4, !dbg !32119, !noalias !32084
    #dbg_value(i64 %.sroa.01.0.i, !32042, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !31922)
    #dbg_value(i64 %.sroa.01.0.i, !32023, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !31930)
    #dbg_value(i64 %.sroa.01.0.i, !32053, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !31965)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !32116
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !32116
    #dbg_value(ptr %i.ad, !32050, !DIExpression(), !31967)
    #dbg_declare(ptr poison, !32078, !DIExpression(), !31969)
    #dbg_declare(ptr poison, !32071, !DIExpression(), !31971)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31970)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31970)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31972)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31972)
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.y, !dbg !32118
  %i.af = getelementptr i8, ptr %i.ae, i64 8, !dbg !32118
  %i.ag = load <2 x i32>, ptr %i.ad, align 4, !dbg !32117, !alias.scope !32055, !noalias !32056
  store <2 x i32> %i.ag, ptr %i.af, align 4, !dbg !32119, !noalias !32084
    #dbg_value(i64 %.sroa.01.0.i, !32042, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !31922)
    #dbg_value(i64 %.sroa.01.0.i, !32023, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !31930)
    #dbg_value(i64 %.sroa.01.0.i, !32053, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !31965)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !32116
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !32116
    #dbg_value(ptr %i.ai, !32050, !DIExpression(), !31967)
    #dbg_declare(ptr poison, !32078, !DIExpression(), !31969)
    #dbg_declare(ptr poison, !32071, !DIExpression(), !31971)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31970)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31970)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31972)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31972)
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.y, !dbg !32118
  %i.ak = getelementptr i8, ptr %i.aj, i64 16, !dbg !32118
  %i.al = load <2 x i32>, ptr %i.ai, align 4, !dbg !32117, !alias.scope !32055, !noalias !32056
  store <2 x i32> %i.al, ptr %i.ak, align 4, !dbg !32119, !noalias !32084
    #dbg_value(i64 %.sroa.01.0.i, !32042, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !31922)
    #dbg_value(i64 %.sroa.01.0.i, !32023, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !31930)
    #dbg_value(i64 %.sroa.01.0.i, !32053, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value), !31965)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !32116
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !32116
    #dbg_value(ptr %i.an, !32050, !DIExpression(), !31967)
    #dbg_declare(ptr poison, !32078, !DIExpression(), !31969)
    #dbg_declare(ptr poison, !32071, !DIExpression(), !31971)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31970)
    #dbg_value(i32 poison, !32069, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31970)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31972)
    #dbg_value(i32 poison, !32060, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !31972)
  %i.ao = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.y, !dbg !32118
  %i.ap = getelementptr i8, ptr %i.ao, i64 24, !dbg !32118
  %i.aq = load <2 x i32>, ptr %i.an, align 4, !dbg !32117, !alias.scope !32055, !noalias !32056
  store <2 x i32> %i.aq, ptr %i.ap, align 4, !dbg !32119, !noalias !32084
  %i.ar = add i64 %i.y, 4, !dbg !32121            ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !32122 ; 2 uses
    #dbg_value(i64 %i.as, !32023, !DIExpression(), !31930)
    #dbg_value(i64 %i.as, !32042, !DIExpression(), !31922)
  %i.at = icmp eq i64 %i.as, %i.e, !dbg !32120
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTllEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !32120, !llvm.loop !31976

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTllEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ], !dbg !32123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !32123, !noalias !32056
  ret void, !dbg !32124
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTydEENCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB1C_12basic_shapes11PathElementB1n_EINtB1A_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendB1n_E8into_dyn0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4u_8for_each4callB1n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5K_3VecB1n_E14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !32129 {
bb.a:
    #dbg_value(ptr %0, !32223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32229)
    #dbg_value(ptr %1, !32223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32229)
    #dbg_declare(ptr poison, !32224, !DIExpression(), !32230)
    #dbg_declare(ptr %2, !32225, !DIExpression(), !32231)
    #dbg_declare(ptr %2, !32232, !DIExpression(), !32244)
    #dbg_declare(ptr poison, !32238, !DIExpression(), !32245)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !32339 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !32246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32261)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !32339
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !32339 ; 6 uses
    #dbg_value(i64 %.sroa.5.0.copyload, !32246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32261)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !32339
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !32339 ; 6 uses
    #dbg_value(ptr %.sroa.7.0.copyload, !32246, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32261)
    #dbg_value(ptr %0, !32249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32141)
    #dbg_value(ptr %1, !32249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32141)
    #dbg_declare(ptr poison, !32250, !DIExpression(), !32142)
    #dbg_declare(ptr poison, !32253, !DIExpression(), !32143)
    #dbg_value(i64 16, !32262, !DIExpression(), !32151)
    #dbg_value(i64 1, !32272, !DIExpression(), !32154)
    #dbg_value(ptr %1, !32252, !DIExpression(), !32155)
    #dbg_value(ptr poison, !32275, !DIExpression(), !32158)
    #dbg_value(ptr poison, !32276, !DIExpression(), !32159)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !32340
  %i.a = icmp eq ptr %0, %1, !dbg !32341
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTydEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !32342

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !32254, !DIExpression(), !32162)
    #dbg_value(i64 0, !32273, !DIExpression(), !32154)
    #dbg_value(ptr %1, !32257, !DIExpression(), !32163)
    #dbg_value(ptr %1, !32269, !DIExpression(), !32164)
    #dbg_value(ptr %1, !32281, !DIExpression(), !32166)
    #dbg_value(ptr %0, !32270, !DIExpression(), !32164)
    #dbg_value(ptr %0, !32281, !DIExpression(), !32168)
    #dbg_value(ptr %1, !32266, !DIExpression(), !32169)
    #dbg_value(ptr %0, !32267, !DIExpression(), !32169)
    #dbg_value(ptr %0, !32264, !DIExpression(), !32170)
    #dbg_value(ptr %1, !32263, !DIExpression(), !32170)
  %i.b = ptrtoint ptr %1 to i64, !dbg !32343
  %i.c = ptrtoint ptr %0 to i64, !dbg !32343
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !32343      ; 4 uses
  %i.e = lshr i64 %i.d, 4, !dbg !32343            ; 4 uses
    #dbg_value(i64 %i.e, !32255, !DIExpression(), !32171)
  %min.iters.check = icmp ult i64 %i.d, 224, !dbg !32344
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !32344

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 4, !dbg !32344 ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !32344
  %3 = and i64 %i.d, -16, !dbg !32344             ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !32344
  %scevgep2 = getelementptr i8, ptr %i.g, i64 %3, !dbg !32344
  %scevgep3 = getelementptr i8, ptr %0, i64 %3, !dbg !32344
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !32344
  %bound1 = icmp ult ptr %0, %scevgep2, !dbg !32344
  %found.conflict = and i1 %bound0, %bound1, !dbg !32344
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !dbg !32345

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !32345

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !32345 ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index, !dbg !32346
  %wide.vec6 = load <4 x double>, ptr %i.j, align 8, !dbg !32347, !alias.scope !32286, !noalias !32287
  %i.k = getelementptr [16 x i8], ptr %i.i, i64 %index, !dbg !32348
  store <4 x double> %wide.vec6, ptr %i.k, align 8, !dbg !32349, !alias.scope !32314, !noalias !32315
  %index.next = add nuw i64 %index, 2, !dbg !32345 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !32350
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !32350, !llvm.loop !32196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !32350
  br i1 %cmp.n, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTydEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph.preheader, !dbg !32350

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !32350
  %i.m = and i64 %i.d, 16, !dbg !32350
  %lcmp.mod.not = icmp eq i64 %i.m, 0, !dbg !32350
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !32350

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
    #dbg_value(i64 poison, !32273, !DIExpression(), !32154)
    #dbg_value(i64 poison, !32254, !DIExpression(), !32162)
    #dbg_value(ptr %0, !32283, !DIExpression(), !32197)
    #dbg_value(i64 poison, !32284, !DIExpression(), !32197)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph, !dbg !32346 ; 2 uses
    #dbg_value(ptr %i.n, !32281, !DIExpression(), !32199)
  %.val27.i.prol = load i64, ptr %i.n, align 8, !dbg !32347, !alias.scope !32286, !noalias !32287, !noundef !3744
  %i.o = getelementptr i8, ptr %i.n, i64 8, !dbg !32347
  %.val28.i.prol = load double, ptr %i.o, align 8, !dbg !32347, !alias.scope !32286, !noalias !32287, !noundef !3744
    #dbg_value(ptr poison, !32311, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !32200)
    #dbg_declare(ptr poison, !32309, !DIExpression(), !32201)
    #dbg_value(ptr poison, !32310, !DIExpression(), !32200)
    #dbg_value(ptr poison, !32301, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !32202)
    #dbg_declare(ptr poison, !32302, !DIExpression(), !32203)
    #dbg_value(i64 %.val27.i.prol, !32300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32202)
    #dbg_value(double %.val28.i.prol, !32300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32202)
    #dbg_value(ptr poison, !32292, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !32204)
    #dbg_value(ptr poison, !32293, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !32204)
    #dbg_value(i64 %.val27.i.prol, !32291, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32204)
    #dbg_value(double %.val28.i.prol, !32291, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32204)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !32348 ; 2 uses
  store i64 %.val27.i.prol, ptr %i.p, align 8, !dbg !32349, !noalias !32315
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !32349
  store double %.val28.i.prol, ptr %i.q, align 8, !dbg !32349, !noalias !32315
  %i.r = add i64 %.ph, 1, !dbg !32351             ; 2 uses
  %i.s = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !32352
    #dbg_value(i64 %i.s, !32254, !DIExpression(), !32162)
    #dbg_value(i64 %i.s, !32273, !DIExpression(), !32154)
  br label %scalar.ph.prol.loopexit, !dbg !32350

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %i.t = icmp eq i64 %i.e, %.neg, !dbg !32350
  br i1 %i.t, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTydEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !32350

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.u = phi i64 [ %i.af, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !32346 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ag, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !32345 ; 3 uses
    #dbg_value(i64 %.sroa.01.0.i, !32273, !DIExpression(), !32154)
    #dbg_value(i64 %.sroa.01.0.i, !32254, !DIExpression(), !32162)
    #dbg_value(ptr %0, !32283, !DIExpression(), !32197)
    #dbg_value(i64 %.sroa.01.0.i, !32284, !DIExpression(), !32197)
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !32346 ; 2 uses
    #dbg_value(ptr %i.v, !32281, !DIExpression(), !32199)
  %.val27.i = load i64, ptr %i.v, align 8, !dbg !32347, !alias.scope !32286, !noalias !32287, !noundef !3744
  %i.w = getelementptr i8, ptr %i.v, i64 8, !dbg !32347
  %.val28.i = load double, ptr %i.w, align 8, !dbg !32347, !alias.scope !32286, !noalias !32287, !noundef !3744
    #dbg_value(ptr poison, !32311, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !32200)
    #dbg_declare(ptr poison, !32309, !DIExpression(), !32201)
    #dbg_value(ptr poison, !32310, !DIExpression(), !32200)
    #dbg_value(ptr poison, !32301, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !32202)
    #dbg_declare(ptr poison, !32302, !DIExpression(), !32203)
    #dbg_value(i64 %.val27.i, !32300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32202)
    #dbg_value(double %.val28.i, !32300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32202)
    #dbg_value(ptr poison, !32292, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !32204)
    #dbg_value(ptr poison, !32293, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !32204)
    #dbg_value(i64 %.val27.i, !32291, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32204)
    #dbg_value(double %.val28.i, !32291, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32204)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.u, !dbg !32348 ; 2 uses
  store i64 %.val27.i, ptr %i.x, align 8, !dbg !32349, !noalias !32315
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !32349
  store double %.val28.i, ptr %i.y, align 8, !dbg !32349, !noalias !32315
    #dbg_value(i64 %.sroa.01.0.i, !32273, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !32154)
    #dbg_value(i64 %.sroa.01.0.i, !32254, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !32162)
    #dbg_value(i64 %.sroa.01.0.i, !32284, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !32197)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !32346 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !32346
    #dbg_value(ptr %i.aa, !32281, !DIExpression(), !32199)
  %.val27.i.1 = load i64, ptr %i.aa, align 8, !dbg !32347, !alias.scope !32286, !noalias !32287, !noundef !3744
  %i.ab = getelementptr i8, ptr %i.z, i64 24, !dbg !32347
  %.val28.i.1 = load double, ptr %i.ab, align 8, !dbg !32347, !alias.scope !32286, !noalias !32287, !noundef !3744
    #dbg_declare(ptr poison, !32309, !DIExpression(), !32201)
    #dbg_declare(ptr poison, !32302, !DIExpression(), !32203)
    #dbg_value(i64 %.val27.i.1, !32300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32202)
    #dbg_value(double %.val28.i.1, !32300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32202)
    #dbg_value(i64 %.val27.i.1, !32291, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32204)
    #dbg_value(double %.val28.i.1, !32291, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32204)
  %i.ac = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.u, !dbg !32348 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16, !dbg !32348
  store i64 %.val27.i.1, ptr %i.ad, align 8, !dbg !32349, !noalias !32315
  %i.ae = getelementptr i8, ptr %i.ac, i64 24, !dbg !32349
  store double %.val28.i.1, ptr %i.ae, align 8, !dbg !32349, !noalias !32315
  %i.af = add i64 %i.u, 2, !dbg !32351            ; 2 uses
  %i.ag = add nuw i64 %.sroa.01.0.i, 2, !dbg !32352 ; 2 uses
    #dbg_value(i64 %i.ag, !32254, !DIExpression(), !32162)
    #dbg_value(i64 %i.ag, !32273, !DIExpression(), !32154)
  %i.ah = icmp eq i64 %i.ag, %i.e, !dbg !32350
  br i1 %i.ah, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTydEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %scalar.ph, !dbg !32350, !llvm.loop !32207

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTydEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_BQ_uNCNvXs1_NtNtCs4bweDUTR8gt_8plotters7element7dynelemINtNtB2x_12basic_shapes11PathElementBQ_EINtB2v_14IntoDynElementNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendBQ_E8into_dyn0NCINvNvBV_8for_each4callBQ_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5W_3VecBQ_E14extend_trustedINtB1L_3MapBF_B2n_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.af, %scalar.ph ], !dbg !32353
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !32353, !noalias !32287
  ret void, !dbg !32354
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !32357 {
bb.a:
    #dbg_declare(ptr %0, !32435, !DIExpression(), !32441)
    #dbg_declare(ptr poison, !32436, !DIExpression(), !32442)
    #dbg_declare(ptr %1, !32437, !DIExpression(), !32443)
    #dbg_declare(ptr %1, !32444, !DIExpression(), !32456)
  %i.a = load ptr, ptr %0, align 8, !dbg !32559, !nonnull !3744, !noundef !3744 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32559
  %i.c = load ptr, ptr %i.b, align 8, !dbg !32559, !nonnull !3744, !noundef !3744 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !32560
  %i.e = load ptr, ptr %i.d, align 8, !dbg !32560, !nonnull !3744, !noundef !3744 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !32560
  %i.g = load ptr, ptr %i.f, align 8, !dbg !32560, !nonnull !3744, !noundef !3744 ; 3 uses
    #dbg_value(ptr %i.e, !32450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32457)
    #dbg_value(ptr %i.g, !32450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32457)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !32561 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !32458, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32473)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !32561
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !32561 ; 3 uses
    #dbg_value(i64 %.sroa.5.0.copyload, !32458, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32473)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !32561
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !32561 ; 3 uses
    #dbg_value(ptr %.sroa.7.0.copyload, !32458, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !32473)
    #dbg_value(ptr %i.e, !32458, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !32473)
    #dbg_value(ptr %i.g, !32458, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !32473)
    #dbg_value(ptr %i.a, !32461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !32369)
    #dbg_value(ptr %i.c, !32461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !32369)
    #dbg_declare(ptr poison, !32462, !DIExpression(), !32370)
    #dbg_declare(ptr poison, !32465, !DIExpression(), !32371)
    #dbg_value(i64 1, !32474, !DIExpression(), !32379)
    #dbg_value(i64 1, !32491, !DIExpression(), !32382)
    #dbg_value(ptr %i.c, !32464, !DIExpression(), !32383)
    #dbg_value(ptr poison, !32494, !DIExpression(), !32386)
    #dbg_value(ptr poison, !32495, !DIExpression(), !32387)
  %i.h = icmp eq ptr %i.a, %i.c, !dbg !32562
  br i1 %i.h, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !32563

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 0, !32466, !DIExpression(), !32388)
    #dbg_value(i64 0, !32492, !DIExpression(), !32382)
    #dbg_value(ptr %i.c, !32469, !DIExpression(), !32389)
    #dbg_value(ptr %i.c, !32488, !DIExpression(), !32390)
    #dbg_value(ptr %i.a, !32489, !DIExpression(), !32390)
    #dbg_value(ptr %i.c, !32482, !DIExpression(), !32391)
    #dbg_value(ptr %i.a, !32483, !DIExpression(), !32391)
    #dbg_value(ptr %i.a, !32478, !DIExpression(), !32392)
    #dbg_value(ptr %i.c, !32477, !DIExpression(), !32392)
  %i.i = ptrtoint ptr %i.c to i64, !dbg !32564    ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64, !dbg !32564    ; 2 uses
  %i.k = sub i64 %i.i, %i.j, !dbg !32564          ; 3 uses
    #dbg_value(i64 %i.k, !32467, !DIExpression(), !32393)
  %xtraiter = and i64 %i.k, 1, !dbg !32565
  %i.l = add i64 %i.i, -1, !dbg !32565
  %i.m = icmp eq i64 %i.l, %i.j, !dbg !32565
  br i1 %i.m, label %.epil.preheader, label %.new, !dbg !32565

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2, !dbg !32565
  br label %bb.c, !dbg !32565

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ], !dbg !32566 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
    #dbg_value(i64 %.sroa.01.0.i, !32492, !DIExpression(), !32382)
    #dbg_value(i64 %.sroa.01.0.i, !32466, !DIExpression(), !32388)
    #dbg_value(ptr %i.a, !32497, !DIExpression(), !32396)
    #dbg_value(i64 %.sroa.01.0.i, !32498, !DIExpression(), !32396)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i, !dbg !32567
end_hunk_1
begin_hunk_2_@_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterTydEENCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1u_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB1y_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB3u_8ranged1d5types7numeric14RangedCoordu64NtB4e_14RangedCoordf64EE4drawINtNtNtB1y_7element7dynelem10DynElementB2s_B1g_ENtB5z_16BackendCoordOnlyE0ENtNtNtB9_6traits8iterator8Iterator10advance_byCsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(i32 poison, !14984, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !51375)
    #dbg_value(i32 poison, !14984, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !51375)
  %i.k = add i64 %.sroa.01.0.i.i.i, -1, !dbg !51402 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !51403
  br i1 %i.l, label %_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTydEENCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2i_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB2m_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4i_8ranged1d5types7numeric14RangedCoordu64NtB52_14RangedCoordf64EE4drawINtNtNtB2m_7element7dynelem10DynElementB3g_B24_ENtB6n_16BackendCoordOnlyE0ENtB4_13SpecAdvanceBy15spec_advance_byCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.c, !dbg !51403

_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterTydEENCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB2i_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB2m_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB4i_8ranged1d5types7numeric14RangedCoordu64NtB52_14RangedCoordf64EE4drawINtNtNtB2m_7element7dynelem10DynElementB3g_B24_ENtB6n_16BackendCoordOnlyE0ENtB4_13SpecAdvanceBy15spec_advance_byCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %bb.d ], !dbg !51404
  ret i64 %.sroa.0.1.i, !dbg !51405
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterTydEENCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1u_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB1y_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB3u_8ranged1d5types7numeric14RangedCoordu64NtB4e_14RangedCoordf64EE4drawINtNtNtB1y_7element7dynelem10DynElementB2s_B1g_ENtB5z_16BackendCoordOnlyE0ENtNtNtB9_6traits8iterator8Iterator3nthCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !51408 {
bb.a:
    #dbg_value(ptr %1, !51482, !DIExpression(), !51487)
    #dbg_value(i64 %2, !51483, !DIExpression(), !51487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51488), !dbg !51502
    #dbg_value(ptr %1, !14932, !DIExpression(), !51412)
    #dbg_value(i64 %2, !14933, !DIExpression(), !51412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51489), !dbg !51503
    #dbg_value(ptr %1, !14937, !DIExpression(), !51416)
    #dbg_value(i64 %2, !14938, !DIExpression(), !51416)
  %.not.i.i = icmp eq i64 %2, 0, !dbg !51504
  %.pre = load ptr, ptr %1, align 8, !dbg !51505, !noalias !3744 ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b, !dbg !51506

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre6 = load ptr, ptr %.phi.trans.insert, align 8, !dbg !51507, !alias.scope !51490, !noalias !51491
  br label %.loopexit, !dbg !51506

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %2, !14939, !DIExpression(), !51424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51492), !dbg !51508
    #dbg_value(ptr %1, !14944, !DIExpression(), !51428)
    #dbg_value(i64 %2, !14947, !DIExpression(), !51428)
    #dbg_declare(ptr poison, !14948, !DIExpression(), !51429)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51493), !dbg !51510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51494), !dbg !51510
    #dbg_value(ptr %i.a, !14952, !DIExpression(), !51434)
    #dbg_value(ptr %1, !14958, !DIExpression(), !51434)
    #dbg_value(i64 %2, !14959, !DIExpression(), !51434)
    #dbg_value(i64 %2, !14960, !DIExpression(), !51435)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !51495, !noalias !51494, !nonnull !3744, !noundef !3744 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !51496, !noalias !51493, !nonnull !3744, !align !4908
  br label %bb.c, !dbg !51511

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.k, %bb.d ], !dbg !51512
    #dbg_value(i64 %.sroa.01.0.i.i.i.i, !14960, !DIExpression(), !51435)
    #dbg_value(ptr %1, !14555, !DIExpression(), !51439)
    #dbg_value(i64 1, !14562, !DIExpression(), !51441)
    #dbg_value(ptr %i.d, !14558, !DIExpression(), !51442)
    #dbg_value(ptr %i.d, !14563, !DIExpression(), !51441)
    #dbg_value(ptr %i.c, !14559, !DIExpression(), !51443)
    #dbg_value(ptr poison, !14565, !DIExpression(), !51445)
    #dbg_value(ptr poison, !14566, !DIExpression(), !51446)
  %i.e = icmp eq ptr %i.d, %i.c, !dbg !51513
  br i1 %i.e, label %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterTydEENCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1u_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB1y_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB3u_8ranged1d5types7numeric14RangedCoordu64NtB4e_14RangedCoordf64EE4drawINtNtNtB1y_7element7dynelem10DynElementB2s_B1g_ENtB5z_16BackendCoordOnlyE0ENtNtNtB9_6traits8iterator8Iterator10advance_byCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.d, !dbg !51514

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !51515 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !dbg !51516, !alias.scope !51495, !noalias !51494
    #dbg_value(ptr %i.d, !14961, !DIExpression(), !51447)
    #dbg_value(ptr poison, !14968, !DIExpression(DW_OP_deref), !51449)
    #dbg_value(i64 %.sroa.01.0.i.i.i.i, !14972, !DIExpression(), !51449)
    #dbg_value(ptr %i.d, !14973, !DIExpression(), !51449)
    #dbg_value(ptr poison, !14587, !DIExpression(DW_OP_deref, DW_OP_deref), !51451)
    #dbg_value(ptr undef, !14589, !DIExpression(DW_OP_deref), !51451)
    #dbg_value(ptr %i.d, !14590, !DIExpression(), !51452)
  %i.g = load ptr, ptr %.val.i.i.i.i.i, align 8, !dbg !51517, !noalias !51497, !nonnull !3744, !align !4908, !noundef !3744 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !51517
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !51518
  %i.j = tail call { i32, i32 } @_RINvXNtCs4bweDUTR8gt_8plotters7elementNtB3_16BackendCoordOnlyNtB3_11CoordMapper3mapINtNtNtNtB5_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB1q_8ranged1d5types7numeric14RangedCoordu64NtB29_14RangedCoordf64EECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i), !dbg !51519, !noalias !51498 ; 0 uses
    #dbg_value(ptr poison, !14980, !DIExpression(), !51458)
    #dbg_value(i64 %.sroa.01.0.i.i.i.i, !14983, !DIExpression(), !51458)
    #dbg_value(i64 %.sroa.01.0.i.i.i.i, !14986, !DIExpression(), !51460)
    #dbg_value(i32 poison, !14984, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !51458)
    #dbg_value(i32 poison, !14984, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !51458)
  %i.k = add i64 %.sroa.01.0.i.i.i.i, -1, !dbg !51520 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !51521
  br i1 %i.l, label %.loopexit, label %bb.c, !dbg !51521

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.m = phi ptr [ %.pre6, %..loopexit_crit_edge ], [ %i.c, %bb.d ], !dbg !51507
  %i.n = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.f, %bb.d ], !dbg !51505 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51491), !dbg !51522
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51499), !dbg !51522
    #dbg_value(ptr %1, !14551, !DIExpression(), !51461)
    #dbg_value(ptr %1, !14555, !DIExpression(), !51462)
    #dbg_value(i64 1, !14562, !DIExpression(), !51464)
    #dbg_value(ptr %i.n, !14558, !DIExpression(), !51465)
    #dbg_value(ptr %i.n, !14563, !DIExpression(), !51464)
    #dbg_value(ptr %i.m, !14559, !DIExpression(), !51466)
    #dbg_value(ptr poison, !14565, !DIExpression(), !51468)
    #dbg_value(ptr poison, !14566, !DIExpression(), !51469)
  %i.o = icmp eq ptr %i.n, %i.m, !dbg !51523
  br i1 %i.o, label %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterTydEENCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1u_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB1y_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB3u_8ranged1d5types7numeric14RangedCoordu64NtB4e_14RangedCoordf64EE4drawINtNtNtB1y_7element7dynelem10DynElementB2s_B1g_ENtB5z_16BackendCoordOnlyE0ENtNtNtB9_6traits8iterator8Iterator10advance_byCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.e, !dbg !51524

bb.e:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !51525
  store ptr %i.p, ptr %1, align 8, !dbg !51526, !alias.scope !51490, !noalias !51491
    #dbg_value(ptr %i.n, !14568, !DIExpression(), !51471)
    #dbg_value(ptr %1, !14575, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !51471)
    #dbg_value(ptr %1, !14578, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !51473)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51527
    #dbg_value(ptr %i.q, !14575, !DIExpression(), !51471)
    #dbg_value(ptr %i.q, !14578, !DIExpression(), !51473)
    #dbg_value(ptr %i.n, !14576, !DIExpression(), !51474)
    #dbg_value(ptr %i.n, !14581, !DIExpression(), !51473)
  %.val.i = load ptr, ptr %i.q, align 8, !dbg !51528, !alias.scope !51499, !noalias !51491, !nonnull !3744, !align !4908, !noundef !3744
    #dbg_value(ptr poison, !14587, !DIExpression(DW_OP_deref, DW_OP_deref), !51476)
    #dbg_value(ptr undef, !14589, !DIExpression(DW_OP_deref), !51476)
    #dbg_value(ptr %i.n, !14590, !DIExpression(), !51477)
  %i.r = load ptr, ptr %.val.i, align 8, !dbg !51529, !noalias !51500, !nonnull !3744, !align !4908, !noundef !3744 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !51529
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !51530
  %i.u = tail call { i32, i32 } @_RINvXNtCs4bweDUTR8gt_8plotters7elementNtB3_16BackendCoordOnlyNtB3_11CoordMapper3mapINtNtNtNtB5_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB1q_8ranged1d5types7numeric14RangedCoordu64NtB29_14RangedCoordf64EECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.t), !dbg !51531, !noalias !51501 ; 2 uses
  %i.v = extractvalue { i32, i32 } %i.u, 0, !dbg !51528
  %i.w = extractvalue { i32, i32 } %i.u, 1, !dbg !51528
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !51532
  store i32 %i.v, ptr %i.x, align 4, !dbg !51532, !alias.scope !51491, !noalias !51499
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51532
  store i32 %i.w, ptr %i.y, align 4, !dbg !51532, !alias.scope !51491, !noalias !51499
  br label %_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterTydEENCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1u_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB1y_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB3u_8ranged1d5types7numeric14RangedCoordu64NtB4e_14RangedCoordf64EE4drawINtNtNtB1y_7element7dynelem10DynElementB2s_B1g_ENtB5z_16BackendCoordOnlyE0ENtNtNtB9_6traits8iterator8Iterator10advance_byCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51533

_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterTydEENCINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB1u_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB1y_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB3u_8ranged1d5types7numeric14RangedCoordu64NtB4e_14RangedCoordf64EE4drawINtNtNtB1y_7element7dynelem10DynElementB2s_B1g_ENtB5z_16BackendCoordOnlyE0ENtNtNtB9_6traits8iterator8Iterator10advance_byCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.c, %bb.e, %.loopexit
  %storemerge = phi i32 [ 0, %.loopexit ], [ 1, %bb.e ], [ 0, %bb.c ], !dbg !51487
  store i32 %storemerge, ptr %0, align 4, !dbg !51487
  ret void, !dbg !51534
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4skip4SkipINtNtNtBb_5slice4iter4IterTllEEENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 !dbg !51535 {
bb.a:
    #dbg_value(ptr %0, !51561, !DIExpression(), !51565)
    #dbg_value(ptr %0, !51566, !DIExpression(), !51542)
  %.val.i = load ptr, ptr %0, align 8, !dbg !51577, !alias.scope !51575, !noalias !51576, !nonnull !3744, !noundef !3744
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51577
  %.val9.i = load ptr, ptr %i.a, align 8, !dbg !51577, !alias.scope !51575, !noalias !51576, !nonnull !3744, !noundef !3744
    #dbg_value(ptr poison, !14531, !DIExpression(), !51547)
    #dbg_value(i64 8, !14538, !DIExpression(), !51551)
    #dbg_value(ptr %.val9.i, !14536, !DIExpression(), !51552)
    #dbg_value(ptr %.val9.i, !14545, !DIExpression(), !51553)
    #dbg_value(ptr %.val.i, !14546, !DIExpression(), !51553)
    #dbg_value(ptr %.val9.i, !14542, !DIExpression(), !51554)
    #dbg_value(ptr %.val.i, !14543, !DIExpression(), !51554)
    #dbg_value(ptr %.val.i, !14540, !DIExpression(), !51555)
    #dbg_value(ptr %.val9.i, !14539, !DIExpression(), !51555)
  %i.b = ptrtoint ptr %.val9.i to i64, !dbg !51578
  %i.c = ptrtoint ptr %.val.i to i64, !dbg !51578
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !51578
  %i.e = lshr exact i64 %i.d, 3, !dbg !51578
    #dbg_value(i64 %i.e, !51569, !DIExpression(), !51556)
    #dbg_value(i64 1, !51570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51556)
    #dbg_value(i64 %i.e, !51570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51556)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51579
  %i.g = load i64, ptr %i.f, align 8, !dbg !51579, !alias.scope !51575, !noalias !51576, !noundef !3744
    #dbg_value(i64 poison, !51571, !DIExpression(), !51557)
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.g), !dbg !51580
    #dbg_value(i64 %i.h, !51571, !DIExpression(), !51557)
  ret i64 %i.h, !dbg !51581
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4611686018427387904) i64 @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4skip4SkipINtNtNtBb_5slice4iter4IterlEENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 !dbg !51582 {
bb.a:
    #dbg_value(ptr %0, !51608, !DIExpression(), !51612)
    #dbg_value(ptr %0, !51613, !DIExpression(), !51589)
  %.val.i = load ptr, ptr %0, align 8, !dbg !51624, !alias.scope !51622, !noalias !51623, !nonnull !3744, !noundef !3744
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51624
  %.val9.i = load ptr, ptr %i.a, align 8, !dbg !51624, !alias.scope !51622, !noalias !51623, !nonnull !3744, !noundef !3744
    #dbg_value(ptr poison, !14652, !DIExpression(), !51594)
    #dbg_value(i64 4, !14659, !DIExpression(), !51598)
    #dbg_value(ptr %.val9.i, !14657, !DIExpression(), !51599)
    #dbg_value(ptr %.val9.i, !14666, !DIExpression(), !51600)
    #dbg_value(ptr %.val.i, !14667, !DIExpression(), !51600)
    #dbg_value(ptr %.val9.i, !14663, !DIExpression(), !51601)
    #dbg_value(ptr %.val.i, !14664, !DIExpression(), !51601)
    #dbg_value(ptr %.val.i, !14661, !DIExpression(), !51602)
    #dbg_value(ptr %.val9.i, !14660, !DIExpression(), !51602)
  %i.b = ptrtoint ptr %.val9.i to i64, !dbg !51625
  %i.c = ptrtoint ptr %.val.i to i64, !dbg !51625
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !51625
  %i.e = lshr exact i64 %i.d, 2, !dbg !51625
    #dbg_value(i64 %i.e, !51616, !DIExpression(), !51603)
    #dbg_value(i64 1, !51617, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51603)
    #dbg_value(i64 %i.e, !51617, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51603)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51626
  %i.g = load i64, ptr %i.f, align 8, !dbg !51626, !alias.scope !51622, !noalias !51623, !noundef !3744
    #dbg_value(i64 poison, !51618, !DIExpression(), !51604)
  %i.h = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.g), !dbg !51627
    #dbg_value(i64 %i.h, !51618, !DIExpression(), !51604)
  ret i64 %i.h, !dbg !51628
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCs4bweDUTR8gt_8plotters5style4font3ttf9FontErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #13 !dbg !51629 {
bb.a:
    #dbg_value(ptr poison, !51632, !DIExpression(), !51634)
  ret { ptr, i64 } { ptr @74, i64 40 }, !dbg !51635
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCs4bweDUTR8gt_8plotters5style4font3ttf9FontErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #13 !dbg !51636 {
bb.a:
    #dbg_value(ptr poison, !51637, !DIExpression(), !51639)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !51640
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCs4bweDUTR8gt_8plotters5style4font3ttf9FontErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #13 !dbg !51641 {
bb.a:
    #dbg_value(ptr poison, !51642, !DIExpression(), !51644)
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !51645
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCs4bweDUTR8gt_8plotters5style4font3ttf9FontErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #13 !dbg !51650 {
bb.a:
    #dbg_value(ptr poison, !51666, !DIExpression(), !51669)
    #dbg_value(ptr poison, !51667, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51669)
    #dbg_value(ptr poison, !51667, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51669)
  ret void, !dbg !51670
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCs4bweDUTR8gt_8plotters5style4font3ttf9FontErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #14 !dbg !51672 {
bb.a:
    #dbg_value(ptr poison, !51677, !DIExpression(), !51680)
    #dbg_declare(ptr poison, !51678, !DIExpression(), !51681)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @75, i64 16, i1 false), !dbg !51687
  ret void, !dbg !51688
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #16

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs4bweDUTR8gt_8plotters6series11line_seriesINtB5_10LineSeriesNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendTdyEE3newINtNtCsexYYUdYSQU6_5alloc3vec3VecB23_ENtNtNtB9_5style5color8RGBColorECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i24) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs4bweDUTR8gt_8plotters5chart7contextINtB5_12ChartContextNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB9_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB26_8ranged1d5types7numeric14RangedCoordf64NtB2P_14RangedCoordu64EE11draw_seriesNtNtB9_7element16BackendCoordOnlyINtNtB4f_7dynelem10DynElementB14_TdyEEB4K_INtNtNtB9_6series11line_series10LineSeriesB14_B5h_EECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(232), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart6seriesINtB3_10SeriesAnnoNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE5labelReECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart6seriesINtB3_10SeriesAnnoNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE6legendINtNtNtB7_7element12basic_shapes11PathElementTllEENCINvNtCsaTqK2fWTXJW_11qlog_dancer5plots9draw_lineBZ_E0EB2X_(ptr noalias nofree noundef align 8 dereferenceable(40), i24) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB4_9MeshStyleNtNtNtNtNtB8_5coord8ranged1d5types7numeric14RangedCoordf64NtBY_14RangedCoordf32NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE3newCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([7840 x i8]) align 8 captures(none) dereferenceable(7840), ptr noalias nofree noundef align 8 dereferenceable(224)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4bweDUTR8gt_8plotters5style5shapeNtB4_10ShapeStyleINtNtCskKLDkoKarTP_4core7convert4FromNtNtB6_5color8RGBColorE4fromCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i24) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB6_9MeshStyleNtNtNtNtNtBa_5coord8ranged1d5types7numeric14RangedCoordf64NtB10_14RangedCoordf32NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE6x_descReECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB6_9MeshStyleNtNtNtNtNtBa_5coord8ranged1d5types7numeric14RangedCoordf64NtB10_14RangedCoordf32NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE6y_descReECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs4bweDUTR8gt_8plotters5style5color8RGBColorNtB4_5Color3mixCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs4bweDUTR8gt_8plotters5style5shapeNtB4_10ShapeStyleINtNtCskKLDkoKarTP_4core7convert4FromNtNtB6_5color9RGBAColorE4fromCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB6_9MeshStyleNtNtNtNtNtBa_5coord8ranged1d5types7numeric14RangedCoordf64NtB10_14RangedCoordf32NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE11label_styleNtNtNtBa_5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2536)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB5_9MeshStyleNtNtNtNtNtB9_5coord8ranged1d5types7numeric14RangedCoordf64NtBZ_14RangedCoordf32NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(7840)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB4_9MeshStyleNtNtNtNtNtB8_5coord8ranged1d5types7numeric14RangedCoordf64NtBY_14RangedCoordu64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE3newCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([7840 x i8]) align 8 captures(none) dereferenceable(7840), ptr noalias nofree noundef align 8 dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB6_9MeshStyleNtNtNtNtNtBa_5coord8ranged1d5types7numeric14RangedCoordf64NtB10_14RangedCoordu64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE6x_descReECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB6_9MeshStyleNtNtNtNtNtBa_5coord8ranged1d5types7numeric14RangedCoordf64NtB10_14RangedCoordu64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE6y_descReECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB6_9MeshStyleNtNtNtNtNtBa_5coord8ranged1d5types7numeric14RangedCoordf64NtB10_14RangedCoordu64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE11label_styleNtNtNtBa_5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2536)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB5_9MeshStyleNtNtNtNtNtB9_5coord8ranged1d5types7numeric14RangedCoordf64NtBZ_14RangedCoordu64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(7840)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB4_9MeshStyleNtNtNtNtNtB8_5coord8ranged1d5types7numeric14RangedCoordu64NtBY_14RangedCoordf64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE3newCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([7840 x i8]) align 8 captures(none) dereferenceable(7840), ptr noalias nofree noundef align 8 dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB6_9MeshStyleNtNtNtNtNtBa_5coord8ranged1d5types7numeric14RangedCoordu64NtB10_14RangedCoordf64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE6x_descReECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB6_9MeshStyleNtNtNtNtNtBa_5coord8ranged1d5types7numeric14RangedCoordu64NtB10_14RangedCoordf64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE6y_descReECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB6_9MeshStyleNtNtNtNtNtBa_5coord8ranged1d5types7numeric14RangedCoordu64NtB10_14RangedCoordf64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE11label_styleNtNtNtBa_5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(7840), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2536)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs4bweDUTR8gt_8plotters5chart4meshINtB5_9MeshStyleNtNtNtNtNtB9_5coord8ranged1d5types7numeric14RangedCoordu64NtBZ_14RangedCoordf64NtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE4drawCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef align 8 dereferenceable(7840)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs4bweDUTR8gt_8plotters5chart6series10SeriesAnnoNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic25UnknownTransportParameterENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTllEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4bweDUTR8gt_8plotters5chart6series10SeriesAnnoNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic25UnknownTransportParameterENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTllEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCsesm4W3jWBtC_8font_kit7loaders8freetypeNtB5_4FontNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs4bweDUTR8gt_8plotters6series11line_seriesINtB5_10LineSeriesNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendTdyEE3newAB23_j2_NtNtNtB9_5style5color8RGBColorECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i24) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtNtCs4bweDUTR8gt_8plotters7drawing4areaINtB6_11DrawingAreaNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBa_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB25_8ranged1d5types7numeric14RangedCoordf64NtB2O_14RangedCoordu64EE4drawINtNtNtBa_7element10composable15ComposedElementTdyEB13_INtNtB49_12basic_shapes9RectangleTllEEINtNtB49_4text4TextB5u_NtNtCsexYYUdYSQU6_5alloc6string6StringEENtB49_16BackendCoordOnlyECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2640)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCskKLDkoKarTP_4core5sliceSy11rotate_leftCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart7builderINtB3_12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE19set_label_area_sizemECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(2608), i8 noundef range(i8 0, 4), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCs4bweDUTR8gt_8plotters5chart7builderINtB3_12ChartBuilderNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendE7captionReNtNtNtB7_5style4text9TextStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(2608), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(2536)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_2
