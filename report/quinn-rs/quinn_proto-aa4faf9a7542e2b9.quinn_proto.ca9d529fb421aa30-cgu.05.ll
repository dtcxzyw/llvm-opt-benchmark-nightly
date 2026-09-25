Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.05?download=true
inline.NumInlined: 488
inline.NumDeleted: 148
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10dying_nextCshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(i64 %.sroa.011.030.i.i, !17322, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17103)
    #dbg_value(i64 %.sroa.011.030.i.i, !17315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17091)
    #dbg_value(ptr %.sroa.013.031.i.i, !17322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17103)
    #dbg_value(ptr %.sroa.013.031.i.i, !17315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17091)
    #dbg_value(ptr %.sroa.013.031.i.i, !17316, !DIExpression(), !17104)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 896, !dbg !17415
    #dbg_value(ptr poison, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(ptr poison, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr poison, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr poison, !17317, !DIExpression(), !17102)
    #dbg_value(i64 %.sroa.011.030.i.i, !17319, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17320, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17098)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !17413, !noalias !17335, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i, !17317, !DIExpression(), !17102)
    #dbg_value(ptr %.sroa.013.0.i.i, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr %.sroa.013.0.i.i, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr %.sroa.013.0.i.i, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
    #dbg_value(i64 %.sroa.011.030.i.i, !17322, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17103)
    #dbg_value(i64 %.sroa.011.030.i.i, !17315, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i, !17322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17103)
    #dbg_value(ptr %.sroa.013.0.i.i, !17315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i, !17316, !DIExpression(), !17104)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 896, !dbg !17415
    #dbg_value(ptr poison, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(ptr poison, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr poison, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr poison, !17317, !DIExpression(), !17102)
    #dbg_value(i64 %.sroa.011.030.i.i, !17319, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17320, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17098)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !17413, !noalias !17335, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17317, !DIExpression(), !17102)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
    #dbg_value(i64 %.sroa.011.030.i.i, !17322, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17103)
    #dbg_value(i64 %.sroa.011.030.i.i, !17315, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17103)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17316, !DIExpression(), !17104)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 896, !dbg !17415
    #dbg_value(ptr poison, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(ptr poison, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr poison, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr poison, !17317, !DIExpression(), !17102)
    #dbg_value(i64 %.sroa.011.030.i.i, !17319, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17320, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17098)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !17413, !noalias !17335, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17317, !DIExpression(), !17102)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
    #dbg_value(i64 %.sroa.011.030.i.i, !17322, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17103)
    #dbg_value(i64 %.sroa.011.030.i.i, !17315, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17103)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17316, !DIExpression(), !17104)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 896, !dbg !17415
    #dbg_value(ptr poison, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(ptr poison, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr poison, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr poison, !17317, !DIExpression(), !17102)
    #dbg_value(i64 %.sroa.011.030.i.i, !17319, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17320, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17098)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !17413, !noalias !17335, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17317, !DIExpression(), !17102)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
    #dbg_value(i64 %.sroa.011.030.i.i, !17322, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17103)
    #dbg_value(i64 %.sroa.011.030.i.i, !17315, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17103)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17316, !DIExpression(), !17104)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 896, !dbg !17415
    #dbg_value(ptr poison, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(ptr poison, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr poison, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr poison, !17317, !DIExpression(), !17102)
    #dbg_value(i64 %.sroa.011.030.i.i, !17319, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17320, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17098)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !17413, !noalias !17335, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17317, !DIExpression(), !17102)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
    #dbg_value(i64 %.sroa.011.030.i.i, !17322, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17103)
    #dbg_value(i64 %.sroa.011.030.i.i, !17315, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17103)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17316, !DIExpression(), !17104)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 896, !dbg !17415
    #dbg_value(ptr poison, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(ptr poison, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr poison, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr poison, !17317, !DIExpression(), !17102)
    #dbg_value(i64 %.sroa.011.030.i.i, !17319, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17320, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17098)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !17413, !noalias !17335, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17317, !DIExpression(), !17102)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
    #dbg_value(i64 %.sroa.011.030.i.i, !17322, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17103)
    #dbg_value(i64 %.sroa.011.030.i.i, !17315, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17103)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17316, !DIExpression(), !17104)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 896, !dbg !17415
    #dbg_value(ptr poison, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(ptr poison, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr poison, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr poison, !17317, !DIExpression(), !17102)
    #dbg_value(i64 %.sroa.011.030.i.i, !17319, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17320, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17098)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !17413, !noalias !17335, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17317, !DIExpression(), !17102)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(i64 %.sroa.011.030.i.i, !17333, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17101)
    #dbg_value(i64 %.sroa.011.030.i.i, !17322, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17103)
    #dbg_value(i64 %.sroa.011.030.i.i, !17315, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17322, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17103)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17091)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17316, !DIExpression(), !17104)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 896, !dbg !17415
    #dbg_value(ptr poison, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
    #dbg_value(ptr poison, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr poison, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr poison, !17317, !DIExpression(), !17102)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !17416 ; 2 uses
    #dbg_value(i64 %i.az, !17319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17097)
    #dbg_value(i64 %i.az, !17320, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17098)
    #dbg_value(i64 %i.az, !17333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17101)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !17413, !noalias !17335, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17317, !DIExpression(), !17102)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17101)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17098)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17097)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !17414
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !17414

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !17336, !DIExpression(), !17109)
    #dbg_value(ptr poison, !17289, !DIExpression(), !17110)
    #dbg_value(ptr poison, !17295, !DIExpression(), !17111)
    #dbg_declare(ptr %i.d, !17342, !DIExpression(), !17118)
    #dbg_value(ptr poison, !17347, !DIExpression(), !17119)
    #dbg_value(ptr poison, !17356, !DIExpression(), !17122)
    #dbg_declare(ptr poison, !17348, !DIExpression(), !17123)
    #dbg_declare(ptr poison, !17350, !DIExpression(), !17124)
    #dbg_declare(ptr %i.b, !17351, !DIExpression(), !17125)
    #dbg_declare(ptr %i.b, !17360, !DIExpression(), !17126)
    #dbg_declare(ptr poison, !17349, !DIExpression(), !17127)
    #dbg_declare(ptr poison, !17362, !DIExpression(), !17131)
    #dbg_declare(ptr poison, !17368, !DIExpression(), !17132)
    #dbg_declare(ptr %i.a, !17370, !DIExpression(), !17140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17419, !noalias !17385
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !17420, !noalias !17386

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !17421, !noalias !17385, !noundef !1631
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !17421
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !17422, !prof !2224

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #13
          to label %.noexc2.i.i unwind label %bb.i, !dbg !17423, !noalias !17387

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !17423

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !17148)
    #dbg_value(ptr poison, !2235, !DIExpression(), !17150)
  tail call void @llvm.trap(), !dbg !17424
  unreachable, !dbg !17424

.critedge.i:                                      ; preds = %bb.e
    #dbg_value(ptr poison, !17336, !DIExpression(), !17109)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #13, !dbg !17425, !noalias !17388
  unreachable, !dbg !17425

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit: ; preds = %.noexc.i.i
    #dbg_value(ptr %i.ai, !17336, !DIExpression(), !17109)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !17426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17427, !noalias !17385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !17428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !17429
  br label %bb.j, !dbg !17406

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit
  ret void, !dbg !17430
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10dying_nextCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17435 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
    #dbg_value(ptr %1, !17609, !DIExpression(), !17611)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !17835 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !17835, !noundef !1631 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !17835
  br i1 %i.g, label %bb.b, label %bb.e, !dbg !17835

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17612), !dbg !17836
    #dbg_value(ptr %1, !17614, !DIExpression(), !17441)
    #dbg_declare(ptr poison, !17618, !DIExpression(), !17442)
    #dbg_declare(ptr %i.c, !17619, !DIExpression(), !17443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17621), !dbg !17837
    #dbg_value(ptr %1, !17622, !DIExpression(), !17456)
    #dbg_value(i64 0, !17640, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17468)
    #dbg_value(ptr %1, !17667, !DIExpression(), !17471)
    #dbg_value(ptr %1, !17672, !DIExpression(), !17474)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !dbg !17838, !alias.scope !17678, !noalias !17679
    #dbg_value(i64 %.sroa.01.0.copyload.i.i, !17680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17483)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17838
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !17838, !alias.scope !17678, !noalias !17679 ; 2 uses
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload.i.i, !17680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17483)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17838
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17838, !alias.scope !17678, !noalias !17679 ; 5 uses
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !17680, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17483)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17838
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !17838, !alias.scope !17678, !noalias !17679 ; 6 uses
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !17680, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17483)
  store i64 0, ptr %1, align 8, !dbg !17839, !alias.scope !17678, !noalias !17679
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1, !dbg !17840
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !17840

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null, !dbg !17841
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i, !dbg !17842

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !17637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17484)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !17661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !17662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17486)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !17696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17493)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !17637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17484)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !17662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17486)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !17696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17493)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !17656, !DIExpression(), !17494)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !17696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17493)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !17662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17486)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !17661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !17637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17484)
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0, !dbg !17843
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !17843

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7, !dbg !17843 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0, !dbg !17843
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !17843

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.037.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.036.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !17656, !DIExpression(), !17494)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !17696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17493)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !17664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17495)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !17640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17468)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !17664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17495)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !17640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17468)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !17655, !DIExpression(), !17496)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i.prol, i64 1072, !dbg !17844
    #dbg_value(ptr %i.j, !17714, !DIExpression(), !17499)
    #dbg_value(ptr %i.j, !17721, !DIExpression(), !17502)
    #dbg_value(ptr %i.j, !17725, !DIExpression(), !17505)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !17845, !noalias !17727, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %i.k, !17637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17484)
    #dbg_value(ptr %i.k, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(ptr %i.k, !17662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17486)
    #dbg_value(ptr %i.k, !17696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17493)
    #dbg_value(ptr %i.k, !17656, !DIExpression(), !17494)
  %i.l = add i64 %.sroa.020.036.i.i.prol, -1, !dbg !17846 ; 2 uses
    #dbg_value(i64 %i.l, !17696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17493)
    #dbg_value(i64 %i.l, !17662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17486)
    #dbg_value(i64 %i.l, !17661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i64 %i.l, !17637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17484)
  %prol.iter6.next = add i64 %prol.iter6, 1, !dbg !17843 ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4, !dbg !17843
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !17843, !llvm.loop !17506

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.037.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.036.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8, !dbg !17843
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i, !dbg !17843

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.037.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.037.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.036.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.036.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.022.037.i.i, !17656, !DIExpression(), !17494)
    #dbg_value(i64 %.sroa.020.036.i.i, !17696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17493)
    #dbg_value(i64 %.sroa.020.036.i.i, !17664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17495)
    #dbg_value(i64 %.sroa.020.036.i.i, !17640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17468)
    #dbg_value(ptr %.sroa.022.037.i.i, !17664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17495)
    #dbg_value(ptr %.sroa.022.037.i.i, !17640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17468)
    #dbg_value(ptr %.sroa.022.037.i.i, !17655, !DIExpression(), !17496)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i, i64 1072, !dbg !17844
    #dbg_value(ptr %i.n, !17714, !DIExpression(), !17499)
    #dbg_value(ptr %i.n, !17721, !DIExpression(), !17502)
    #dbg_value(ptr %i.n, !17725, !DIExpression(), !17505)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !17845, !noalias !17727, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.o, !17637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17484)
    #dbg_value(ptr %i.o, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(ptr %i.o, !17662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17486)
    #dbg_value(ptr %i.o, !17696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17493)
    #dbg_value(ptr %i.o, !17656, !DIExpression(), !17494)
    #dbg_value(i64 %.sroa.020.036.i.i, !17662, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17486)
    #dbg_value(i64 %.sroa.020.036.i.i, !17661, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i64 %.sroa.020.036.i.i, !17637, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17484)
    #dbg_value(i64 %.sroa.020.036.i.i, !17696, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17493)
    #dbg_value(i64 %.sroa.020.036.i.i, !17664, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17495)
    #dbg_value(i64 %.sroa.020.036.i.i, !17640, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17468)
    #dbg_value(ptr %i.o, !17664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17495)
    #dbg_value(ptr %i.o, !17640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17468)
    #dbg_value(ptr %i.o, !17655, !DIExpression(), !17496)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1072, !dbg !17844
    #dbg_value(ptr %i.p, !17714, !DIExpression(), !17499)
    #dbg_value(ptr %i.p, !17721, !DIExpression(), !17502)
    #dbg_value(ptr %i.p, !17725, !DIExpression(), !17505)
  %i.q = load ptr, ptr %i.p, align 8, !dbg !17845, !noalias !17727, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.q, !17637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17484)
    #dbg_value(ptr %i.q, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(ptr %i.q, !17662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17486)
    #dbg_value(ptr %i.q, !17696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17493)
    #dbg_value(ptr %i.q, !17656, !DIExpression(), !17494)
    #dbg_value(i64 %.sroa.020.036.i.i, !17662, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17486)
    #dbg_value(i64 %.sroa.020.036.i.i, !17661, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i64 %.sroa.020.036.i.i, !17637, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17484)
    #dbg_value(i64 %.sroa.020.036.i.i, !17696, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17493)
    #dbg_value(i64 %.sroa.020.036.i.i, !17664, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17495)
    #dbg_value(i64 %.sroa.020.036.i.i, !17640, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17468)
    #dbg_value(ptr %i.q, !17664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17495)
    #dbg_value(ptr %i.q, !17640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17468)
    #dbg_value(ptr %i.q, !17655, !DIExpression(), !17496)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1072, !dbg !17844
    #dbg_value(ptr %i.r, !17714, !DIExpression(), !17499)
    #dbg_value(ptr %i.r, !17721, !DIExpression(), !17502)
    #dbg_value(ptr %i.r, !17725, !DIExpression(), !17505)
  %i.s = load ptr, ptr %i.r, align 8, !dbg !17845, !noalias !17727, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.s, !17637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17484)
    #dbg_value(ptr %i.s, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(ptr %i.s, !17662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17486)
    #dbg_value(ptr %i.s, !17696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17493)
    #dbg_value(ptr %i.s, !17656, !DIExpression(), !17494)
    #dbg_value(i64 %.sroa.020.036.i.i, !17662, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17486)
    #dbg_value(i64 %.sroa.020.036.i.i, !17661, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i64 %.sroa.020.036.i.i, !17637, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17484)
    #dbg_value(i64 %.sroa.020.036.i.i, !17696, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17493)
    #dbg_value(i64 %.sroa.020.036.i.i, !17664, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17495)
    #dbg_value(i64 %.sroa.020.036.i.i, !17640, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17468)
    #dbg_value(ptr %i.s, !17664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17495)
    #dbg_value(ptr %i.s, !17640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17468)
    #dbg_value(ptr %i.s, !17655, !DIExpression(), !17496)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1072, !dbg !17844
    #dbg_value(ptr %i.t, !17714, !DIExpression(), !17499)
    #dbg_value(ptr %i.t, !17721, !DIExpression(), !17502)
    #dbg_value(ptr %i.t, !17725, !DIExpression(), !17505)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !17845, !noalias !17727, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.u, !17637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17484)
    #dbg_value(ptr %i.u, !17661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17485)
    #dbg_value(ptr %i.u, !17662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17486)
    #dbg_value(ptr %i.u, !17696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17493)
    #dbg_value(ptr %i.u, !17656, !DIExpression(), !17494)
    #dbg_value(i64 %.sroa.020.036.i.i, !17662, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17486)
    #dbg_value(i64 %.sroa.020.036.i.i, !17661, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17485)
    #dbg_value(i64 %.sroa.020.036.i.i, !17637, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17484)
    #dbg_value(i64 %.sroa.020.036.i.i, !17696, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17493)
    #dbg_value(i64 %.sroa.020.036.i.i, !17664, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17495)
    #dbg_value(i64 %.sroa.020.036.i.i, !17640, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17468)
    #dbg_value(ptr %i.u, !17664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17495)
    #dbg_value(ptr %i.u, !17640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17468)
    #dbg_value(ptr %i.u, !17655, !DIExpression(), !17496)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1072, !dbg !17844
    #dbg_value(ptr %i.v, !17714, !DIExpression(), !17499)
end_hunk_0
begin_hunk_1_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10dying_nextCshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(i64 %.sroa.011.030.i.i, !17768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17549)
    #dbg_value(i64 %.sroa.011.030.i.i, !17761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17537)
    #dbg_value(ptr %.sroa.013.031.i.i, !17768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17549)
    #dbg_value(ptr %.sroa.013.031.i.i, !17761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17537)
    #dbg_value(ptr %.sroa.013.031.i.i, !17762, !DIExpression(), !17550)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 1072, !dbg !17861
    #dbg_value(ptr poison, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(ptr poison, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr poison, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr poison, !17763, !DIExpression(), !17548)
    #dbg_value(i64 %.sroa.011.030.i.i, !17765, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17766, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17544)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !17859, !noalias !17781, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i, !17763, !DIExpression(), !17548)
    #dbg_value(ptr %.sroa.013.0.i.i, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr %.sroa.013.0.i.i, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr %.sroa.013.0.i.i, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
    #dbg_value(i64 %.sroa.011.030.i.i, !17768, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17549)
    #dbg_value(i64 %.sroa.011.030.i.i, !17761, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i, !17768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17549)
    #dbg_value(ptr %.sroa.013.0.i.i, !17761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i, !17762, !DIExpression(), !17550)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 1072, !dbg !17861
    #dbg_value(ptr poison, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(ptr poison, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr poison, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr poison, !17763, !DIExpression(), !17548)
    #dbg_value(i64 %.sroa.011.030.i.i, !17765, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17766, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17544)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !17859, !noalias !17781, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17763, !DIExpression(), !17548)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
    #dbg_value(i64 %.sroa.011.030.i.i, !17768, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17549)
    #dbg_value(i64 %.sroa.011.030.i.i, !17761, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17549)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !17762, !DIExpression(), !17550)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 1072, !dbg !17861
    #dbg_value(ptr poison, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(ptr poison, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr poison, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr poison, !17763, !DIExpression(), !17548)
    #dbg_value(i64 %.sroa.011.030.i.i, !17765, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17766, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17544)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !17859, !noalias !17781, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17763, !DIExpression(), !17548)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
    #dbg_value(i64 %.sroa.011.030.i.i, !17768, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17549)
    #dbg_value(i64 %.sroa.011.030.i.i, !17761, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17549)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !17762, !DIExpression(), !17550)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 1072, !dbg !17861
    #dbg_value(ptr poison, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(ptr poison, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr poison, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr poison, !17763, !DIExpression(), !17548)
    #dbg_value(i64 %.sroa.011.030.i.i, !17765, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17766, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17544)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !17859, !noalias !17781, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17763, !DIExpression(), !17548)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
    #dbg_value(i64 %.sroa.011.030.i.i, !17768, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17549)
    #dbg_value(i64 %.sroa.011.030.i.i, !17761, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17549)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !17762, !DIExpression(), !17550)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 1072, !dbg !17861
    #dbg_value(ptr poison, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(ptr poison, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr poison, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr poison, !17763, !DIExpression(), !17548)
    #dbg_value(i64 %.sroa.011.030.i.i, !17765, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17766, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17544)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !17859, !noalias !17781, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17763, !DIExpression(), !17548)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
    #dbg_value(i64 %.sroa.011.030.i.i, !17768, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17549)
    #dbg_value(i64 %.sroa.011.030.i.i, !17761, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17549)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !17762, !DIExpression(), !17550)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 1072, !dbg !17861
    #dbg_value(ptr poison, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(ptr poison, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr poison, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr poison, !17763, !DIExpression(), !17548)
    #dbg_value(i64 %.sroa.011.030.i.i, !17765, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17766, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17544)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !17859, !noalias !17781, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17763, !DIExpression(), !17548)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
    #dbg_value(i64 %.sroa.011.030.i.i, !17768, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17549)
    #dbg_value(i64 %.sroa.011.030.i.i, !17761, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17549)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !17762, !DIExpression(), !17550)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 1072, !dbg !17861
    #dbg_value(ptr poison, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(ptr poison, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr poison, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr poison, !17763, !DIExpression(), !17548)
    #dbg_value(i64 %.sroa.011.030.i.i, !17765, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17766, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17544)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !17859, !noalias !17781, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17763, !DIExpression(), !17548)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(i64 %.sroa.011.030.i.i, !17779, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17547)
    #dbg_value(i64 %.sroa.011.030.i.i, !17768, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17549)
    #dbg_value(i64 %.sroa.011.030.i.i, !17761, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17549)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17537)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !17762, !DIExpression(), !17550)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 1072, !dbg !17861
    #dbg_value(ptr poison, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
    #dbg_value(ptr poison, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr poison, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr poison, !17763, !DIExpression(), !17548)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !17862 ; 2 uses
    #dbg_value(i64 %i.az, !17765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17543)
    #dbg_value(i64 %i.az, !17766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17544)
    #dbg_value(i64 %i.az, !17779, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17547)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !17859, !noalias !17781, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17763, !DIExpression(), !17548)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17779, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17547)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17544)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !17765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17543)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !17860
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !17860

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !17782, !DIExpression(), !17555)
    #dbg_value(ptr poison, !17735, !DIExpression(), !17556)
    #dbg_value(ptr poison, !17741, !DIExpression(), !17557)
    #dbg_declare(ptr %i.d, !17788, !DIExpression(), !17564)
    #dbg_value(ptr poison, !17793, !DIExpression(), !17565)
    #dbg_value(ptr poison, !17802, !DIExpression(), !17568)
    #dbg_declare(ptr poison, !17794, !DIExpression(), !17569)
    #dbg_declare(ptr poison, !17796, !DIExpression(), !17570)
    #dbg_declare(ptr %i.b, !17797, !DIExpression(), !17571)
    #dbg_declare(ptr %i.b, !17806, !DIExpression(), !17572)
    #dbg_declare(ptr poison, !17795, !DIExpression(), !17573)
    #dbg_declare(ptr poison, !17808, !DIExpression(), !17577)
    #dbg_declare(ptr poison, !17814, !DIExpression(), !17578)
    #dbg_declare(ptr %i.a, !17816, !DIExpression(), !17586)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17865, !noalias !17831
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !17866, !noalias !17832

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !17867, !noalias !17831, !noundef !1631
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !17867
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !17868, !prof !2224

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #13
          to label %.noexc2.i.i unwind label %bb.i, !dbg !17869, !noalias !17833

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !17869

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !17594)
    #dbg_value(ptr poison, !2235, !DIExpression(), !17596)
  tail call void @llvm.trap(), !dbg !17870
  unreachable, !dbg !17870

.critedge.i:                                      ; preds = %bb.e
    #dbg_value(ptr poison, !17782, !DIExpression(), !17555)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #13, !dbg !17871, !noalias !17834
  unreachable, !dbg !17871

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit: ; preds = %.noexc.i.i
    #dbg_value(ptr %i.ai, !17782, !DIExpression(), !17555)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !17872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17873, !noalias !17831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !17874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !17875
  br label %bb.j, !dbg !17852

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit
  ret void, !dbg !17876
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10dying_nextB1e_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17877 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
    #dbg_value(ptr %1, !18042, !DIExpression(), !18044)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !18268 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !18268, !noundef !1631 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !18268
  br i1 %i.g, label %bb.b, label %bb.e, !dbg !18268

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18045), !dbg !18269
    #dbg_value(ptr %1, !18047, !DIExpression(), !17883)
    #dbg_declare(ptr poison, !18051, !DIExpression(), !17884)
    #dbg_declare(ptr %i.c, !18052, !DIExpression(), !17885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18054), !dbg !18270
    #dbg_value(ptr %1, !18055, !DIExpression(), !17898)
    #dbg_value(i64 0, !18073, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17910)
    #dbg_value(ptr %1, !18100, !DIExpression(), !17913)
    #dbg_value(ptr %1, !18105, !DIExpression(), !17916)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !dbg !18271, !alias.scope !18111, !noalias !18112
    #dbg_value(i64 %.sroa.01.0.copyload.i.i, !18113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17925)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18271
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18271, !alias.scope !18111, !noalias !18112 ; 2 uses
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload.i.i, !18113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17925)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18271
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18271, !alias.scope !18111, !noalias !18112 ; 5 uses
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18113, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17925)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18271
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18271, !alias.scope !18111, !noalias !18112 ; 6 uses
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18113, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17925)
  store i64 0, ptr %1, align 8, !dbg !18272, !alias.scope !18111, !noalias !18112
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1, !dbg !18273
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE16deallocating_endNtNtBc_5alloc6GlobalEB1R_.exit, !dbg !18273

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null, !dbg !18274
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i, !dbg !18275

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18070, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17926)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17927)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17928)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17935)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17926)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17927)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17928)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17935)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18089, !DIExpression(), !17936)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17935)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17928)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17927)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18070, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17926)
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0, !dbg !18276
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !18276

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7, !dbg !18276 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0, !dbg !18276
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !18276

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.037.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.036.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !18089, !DIExpression(), !17936)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !18129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17935)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !18097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17937)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !18073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17910)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !18097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17937)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !18073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17910)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !18088, !DIExpression(), !17938)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i.prol, i64 1160, !dbg !18277
    #dbg_value(ptr %i.j, !18147, !DIExpression(), !17941)
    #dbg_value(ptr %i.j, !18154, !DIExpression(), !17944)
    #dbg_value(ptr %i.j, !18158, !DIExpression(), !17947)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !18278, !noalias !18160, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %i.k, !18070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17926)
    #dbg_value(ptr %i.k, !18094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17927)
    #dbg_value(ptr %i.k, !18095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17928)
    #dbg_value(ptr %i.k, !18129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17935)
    #dbg_value(ptr %i.k, !18089, !DIExpression(), !17936)
  %i.l = add i64 %.sroa.020.036.i.i.prol, -1, !dbg !18279 ; 2 uses
    #dbg_value(i64 %i.l, !18129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17935)
    #dbg_value(i64 %i.l, !18095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17928)
    #dbg_value(i64 %i.l, !18094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17927)
    #dbg_value(i64 %i.l, !18070, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17926)
  %prol.iter6.next = add i64 %prol.iter6, 1, !dbg !18276 ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4, !dbg !18276
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !18276, !llvm.loop !17948

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.037.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.036.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8, !dbg !18276
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i, !dbg !18276

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.037.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.037.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.036.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.036.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.022.037.i.i, !18089, !DIExpression(), !17936)
    #dbg_value(i64 %.sroa.020.036.i.i, !18129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17935)
    #dbg_value(i64 %.sroa.020.036.i.i, !18097, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17937)
    #dbg_value(i64 %.sroa.020.036.i.i, !18073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17910)
    #dbg_value(ptr %.sroa.022.037.i.i, !18097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17937)
    #dbg_value(ptr %.sroa.022.037.i.i, !18073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17910)
    #dbg_value(ptr %.sroa.022.037.i.i, !18088, !DIExpression(), !17938)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i, i64 1160, !dbg !18277
    #dbg_value(ptr %i.n, !18147, !DIExpression(), !17941)
    #dbg_value(ptr %i.n, !18154, !DIExpression(), !17944)
    #dbg_value(ptr %i.n, !18158, !DIExpression(), !17947)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !18278, !noalias !18160, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.o, !18070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17926)
    #dbg_value(ptr %i.o, !18094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17927)
    #dbg_value(ptr %i.o, !18095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17928)
    #dbg_value(ptr %i.o, !18129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17935)
    #dbg_value(ptr %i.o, !18089, !DIExpression(), !17936)
    #dbg_value(i64 %.sroa.020.036.i.i, !18095, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17928)
    #dbg_value(i64 %.sroa.020.036.i.i, !18094, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17927)
    #dbg_value(i64 %.sroa.020.036.i.i, !18070, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17926)
    #dbg_value(i64 %.sroa.020.036.i.i, !18129, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17935)
    #dbg_value(i64 %.sroa.020.036.i.i, !18097, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17937)
    #dbg_value(i64 %.sroa.020.036.i.i, !18073, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17910)
    #dbg_value(ptr %i.o, !18097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17937)
    #dbg_value(ptr %i.o, !18073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17910)
    #dbg_value(ptr %i.o, !18088, !DIExpression(), !17938)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1160, !dbg !18277
    #dbg_value(ptr %i.p, !18147, !DIExpression(), !17941)
    #dbg_value(ptr %i.p, !18154, !DIExpression(), !17944)
    #dbg_value(ptr %i.p, !18158, !DIExpression(), !17947)
  %i.q = load ptr, ptr %i.p, align 8, !dbg !18278, !noalias !18160, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.q, !18070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17926)
    #dbg_value(ptr %i.q, !18094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17927)
    #dbg_value(ptr %i.q, !18095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17928)
    #dbg_value(ptr %i.q, !18129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17935)
    #dbg_value(ptr %i.q, !18089, !DIExpression(), !17936)
    #dbg_value(i64 %.sroa.020.036.i.i, !18095, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17928)
    #dbg_value(i64 %.sroa.020.036.i.i, !18094, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17927)
    #dbg_value(i64 %.sroa.020.036.i.i, !18070, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17926)
    #dbg_value(i64 %.sroa.020.036.i.i, !18129, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17935)
    #dbg_value(i64 %.sroa.020.036.i.i, !18097, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17937)
    #dbg_value(i64 %.sroa.020.036.i.i, !18073, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17910)
    #dbg_value(ptr %i.q, !18097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17937)
    #dbg_value(ptr %i.q, !18073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17910)
    #dbg_value(ptr %i.q, !18088, !DIExpression(), !17938)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1160, !dbg !18277
    #dbg_value(ptr %i.r, !18147, !DIExpression(), !17941)
    #dbg_value(ptr %i.r, !18154, !DIExpression(), !17944)
    #dbg_value(ptr %i.r, !18158, !DIExpression(), !17947)
  %i.s = load ptr, ptr %i.r, align 8, !dbg !18278, !noalias !18160, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.s, !18070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17926)
    #dbg_value(ptr %i.s, !18094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17927)
    #dbg_value(ptr %i.s, !18095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17928)
    #dbg_value(ptr %i.s, !18129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17935)
    #dbg_value(ptr %i.s, !18089, !DIExpression(), !17936)
    #dbg_value(i64 %.sroa.020.036.i.i, !18095, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17928)
    #dbg_value(i64 %.sroa.020.036.i.i, !18094, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17927)
    #dbg_value(i64 %.sroa.020.036.i.i, !18070, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17926)
    #dbg_value(i64 %.sroa.020.036.i.i, !18129, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17935)
    #dbg_value(i64 %.sroa.020.036.i.i, !18097, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17937)
    #dbg_value(i64 %.sroa.020.036.i.i, !18073, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17910)
    #dbg_value(ptr %i.s, !18097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17937)
    #dbg_value(ptr %i.s, !18073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17910)
    #dbg_value(ptr %i.s, !18088, !DIExpression(), !17938)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1160, !dbg !18277
    #dbg_value(ptr %i.t, !18147, !DIExpression(), !17941)
    #dbg_value(ptr %i.t, !18154, !DIExpression(), !17944)
    #dbg_value(ptr %i.t, !18158, !DIExpression(), !17947)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !18278, !noalias !18160, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.u, !18070, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17926)
    #dbg_value(ptr %i.u, !18094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17927)
    #dbg_value(ptr %i.u, !18095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17928)
    #dbg_value(ptr %i.u, !18129, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17935)
    #dbg_value(ptr %i.u, !18089, !DIExpression(), !17936)
    #dbg_value(i64 %.sroa.020.036.i.i, !18095, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17928)
    #dbg_value(i64 %.sroa.020.036.i.i, !18094, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17927)
    #dbg_value(i64 %.sroa.020.036.i.i, !18070, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17926)
    #dbg_value(i64 %.sroa.020.036.i.i, !18129, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17935)
    #dbg_value(i64 %.sroa.020.036.i.i, !18097, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17937)
    #dbg_value(i64 %.sroa.020.036.i.i, !18073, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17910)
    #dbg_value(ptr %i.u, !18097, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17937)
    #dbg_value(ptr %i.u, !18073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17910)
    #dbg_value(ptr %i.u, !18088, !DIExpression(), !17938)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1160, !dbg !18277
    #dbg_value(ptr %i.v, !18147, !DIExpression(), !17941)
end_hunk_1
begin_hunk_2_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10dying_nextB1e_:bb.a
    #dbg_value(i64 %.sroa.011.030.i.i, !18201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17991)
    #dbg_value(i64 %.sroa.011.030.i.i, !18194, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17979)
    #dbg_value(ptr %.sroa.013.031.i.i, !18201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17991)
    #dbg_value(ptr %.sroa.013.031.i.i, !18194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17979)
    #dbg_value(ptr %.sroa.013.031.i.i, !18195, !DIExpression(), !17992)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 1160, !dbg !18294
    #dbg_value(ptr poison, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(ptr poison, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr poison, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr poison, !18196, !DIExpression(), !17990)
    #dbg_value(i64 %.sroa.011.030.i.i, !18198, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18199, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17986)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !18292, !noalias !18214, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i, !18196, !DIExpression(), !17990)
    #dbg_value(ptr %.sroa.013.0.i.i, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr %.sroa.013.0.i.i, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr %.sroa.013.0.i.i, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
    #dbg_value(i64 %.sroa.011.030.i.i, !18201, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17991)
    #dbg_value(i64 %.sroa.011.030.i.i, !18194, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i, !18201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17991)
    #dbg_value(ptr %.sroa.013.0.i.i, !18194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i, !18195, !DIExpression(), !17992)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 1160, !dbg !18294
    #dbg_value(ptr poison, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(ptr poison, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr poison, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr poison, !18196, !DIExpression(), !17990)
    #dbg_value(i64 %.sroa.011.030.i.i, !18198, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18199, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17986)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !18292, !noalias !18214, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18196, !DIExpression(), !17990)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
    #dbg_value(i64 %.sroa.011.030.i.i, !18201, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17991)
    #dbg_value(i64 %.sroa.011.030.i.i, !18194, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17991)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18195, !DIExpression(), !17992)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 1160, !dbg !18294
    #dbg_value(ptr poison, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(ptr poison, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr poison, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr poison, !18196, !DIExpression(), !17990)
    #dbg_value(i64 %.sroa.011.030.i.i, !18198, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18199, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17986)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !18292, !noalias !18214, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18196, !DIExpression(), !17990)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
    #dbg_value(i64 %.sroa.011.030.i.i, !18201, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17991)
    #dbg_value(i64 %.sroa.011.030.i.i, !18194, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17991)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18195, !DIExpression(), !17992)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 1160, !dbg !18294
    #dbg_value(ptr poison, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(ptr poison, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr poison, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr poison, !18196, !DIExpression(), !17990)
    #dbg_value(i64 %.sroa.011.030.i.i, !18198, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18199, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17986)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !18292, !noalias !18214, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18196, !DIExpression(), !17990)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
    #dbg_value(i64 %.sroa.011.030.i.i, !18201, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17991)
    #dbg_value(i64 %.sroa.011.030.i.i, !18194, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17991)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18195, !DIExpression(), !17992)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 1160, !dbg !18294
    #dbg_value(ptr poison, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(ptr poison, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr poison, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr poison, !18196, !DIExpression(), !17990)
    #dbg_value(i64 %.sroa.011.030.i.i, !18198, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18199, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17986)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !18292, !noalias !18214, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18196, !DIExpression(), !17990)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
    #dbg_value(i64 %.sroa.011.030.i.i, !18201, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17991)
    #dbg_value(i64 %.sroa.011.030.i.i, !18194, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17991)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18195, !DIExpression(), !17992)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 1160, !dbg !18294
    #dbg_value(ptr poison, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(ptr poison, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr poison, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr poison, !18196, !DIExpression(), !17990)
    #dbg_value(i64 %.sroa.011.030.i.i, !18198, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18199, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17986)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !18292, !noalias !18214, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18196, !DIExpression(), !17990)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
    #dbg_value(i64 %.sroa.011.030.i.i, !18201, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17991)
    #dbg_value(i64 %.sroa.011.030.i.i, !18194, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17991)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18195, !DIExpression(), !17992)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 1160, !dbg !18294
    #dbg_value(ptr poison, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(ptr poison, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr poison, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr poison, !18196, !DIExpression(), !17990)
    #dbg_value(i64 %.sroa.011.030.i.i, !18198, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18199, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17986)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !18292, !noalias !18214, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18196, !DIExpression(), !17990)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(i64 %.sroa.011.030.i.i, !18212, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17989)
    #dbg_value(i64 %.sroa.011.030.i.i, !18201, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17991)
    #dbg_value(i64 %.sroa.011.030.i.i, !18194, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17991)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17979)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18195, !DIExpression(), !17992)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 1160, !dbg !18294
    #dbg_value(ptr poison, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
    #dbg_value(ptr poison, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr poison, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr poison, !18196, !DIExpression(), !17990)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !18295 ; 2 uses
    #dbg_value(i64 %i.az, !18198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17985)
    #dbg_value(i64 %i.az, !18199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17986)
    #dbg_value(i64 %i.az, !18212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17989)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !18292, !noalias !18214, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18196, !DIExpression(), !17990)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17989)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17986)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17985)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !18293
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !18293

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !18215, !DIExpression(), !17997)
    #dbg_value(ptr poison, !18168, !DIExpression(), !17998)
    #dbg_value(ptr poison, !18174, !DIExpression(), !17999)
    #dbg_declare(ptr %i.d, !18221, !DIExpression(), !18006)
    #dbg_value(ptr poison, !18226, !DIExpression(), !18007)
    #dbg_value(ptr poison, !18235, !DIExpression(), !18010)
    #dbg_declare(ptr poison, !18227, !DIExpression(), !18011)
    #dbg_declare(ptr poison, !18229, !DIExpression(), !18012)
    #dbg_declare(ptr %i.b, !18230, !DIExpression(), !18013)
    #dbg_declare(ptr %i.b, !18239, !DIExpression(), !18014)
    #dbg_declare(ptr poison, !18228, !DIExpression(), !18015)
    #dbg_declare(ptr poison, !18241, !DIExpression(), !18019)
    #dbg_declare(ptr poison, !18247, !DIExpression(), !18020)
    #dbg_declare(ptr %i.a, !18249, !DIExpression(), !18028)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18298, !noalias !18264
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB1Z_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !18299, !noalias !18265

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !18300, !noalias !18264, !noundef !1631
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !18300
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1R_.exit, !dbg !18301, !prof !2224

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #13
          to label %.noexc2.i.i unwind label %bb.i, !dbg !18302, !noalias !18266

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !18302

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE10init_frontB1Q_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !18036)
    #dbg_value(ptr poison, !2235, !DIExpression(), !18038)
  tail call void @llvm.trap(), !dbg !18303
  unreachable, !dbg !18303

.critedge.i:                                      ; preds = %bb.e
    #dbg_value(ptr poison, !18215, !DIExpression(), !17997)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #13, !dbg !18304, !noalias !18267
  unreachable, !dbg !18304

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1R_.exit: ; preds = %.noexc.i.i
    #dbg_value(ptr %i.ai, !18215, !DIExpression(), !17997)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !18305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18306, !noalias !18264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !18307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !18308
  br label %bb.j, !dbg !18285

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1R_.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtNtCshovLROGBtMy_11quinn_proto10connection6spaces10SentPacketE16deallocating_endNtNtBc_5alloc6GlobalEB1R_.exit
  ret void, !dbg !18309
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18314 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
    #dbg_value(ptr %1, !18488, !DIExpression(), !18490)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !18706 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !18706, !noundef !1631 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !18706
  br i1 %i.g, label %bb.b, label %bb.e, !dbg !18706

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18491), !dbg !18707
    #dbg_value(ptr %1, !18493, !DIExpression(), !18320)
    #dbg_declare(ptr poison, !18497, !DIExpression(), !18321)
    #dbg_declare(ptr %i.c, !18498, !DIExpression(), !18322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18500), !dbg !18708
    #dbg_value(ptr %1, !18501, !DIExpression(), !18335)
    #dbg_value(i64 0, !18519, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18347)
    #dbg_value(ptr %1, !18546, !DIExpression(), !18350)
    #dbg_value(ptr %1, !18551, !DIExpression(), !18353)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !dbg !18709, !alias.scope !18557, !noalias !18558
    #dbg_value(i64 %.sroa.01.0.copyload.i.i, !18559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18362)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18709
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !18709, !alias.scope !18557, !noalias !18558 ; 2 uses
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload.i.i, !18559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18362)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18709
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18709, !alias.scope !18557, !noalias !18558 ; 5 uses
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18559, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18362)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18709
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !18709, !alias.scope !18557, !noalias !18558 ; 6 uses
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18559, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18362)
  store i64 0, ptr %1, align 8, !dbg !18710, !alias.scope !18557, !noalias !18558
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1, !dbg !18711
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !18711

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null, !dbg !18712
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i, !dbg !18713

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18363)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18364)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18365)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18372)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18363)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18364)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18365)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18372)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !18535, !DIExpression(), !18373)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18372)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18365)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18364)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !18516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18363)
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0, !dbg !18714
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !18714

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7, !dbg !18714 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0, !dbg !18714
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !18714

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.037.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.036.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !18535, !DIExpression(), !18373)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !18575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18372)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !18543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18374)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !18519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18347)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !18543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18374)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !18519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18347)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !18534, !DIExpression(), !18375)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i.prol, i64 192, !dbg !18715
    #dbg_value(ptr %i.j, !18592, !DIExpression(), !18378)
    #dbg_value(ptr %i.j, !18594, !DIExpression(), !18381)
    #dbg_value(ptr %i.j, !18596, !DIExpression(), !18384)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !18716, !noalias !18598, !nonnull !1631, !noundef !1631 ; 3 uses
    #dbg_value(ptr %i.k, !18516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18363)
    #dbg_value(ptr %i.k, !18540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18364)
    #dbg_value(ptr %i.k, !18541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18365)
    #dbg_value(ptr %i.k, !18575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18372)
    #dbg_value(ptr %i.k, !18535, !DIExpression(), !18373)
  %i.l = add i64 %.sroa.020.036.i.i.prol, -1, !dbg !18717 ; 2 uses
    #dbg_value(i64 %i.l, !18575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18372)
    #dbg_value(i64 %i.l, !18541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18365)
    #dbg_value(i64 %i.l, !18540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18364)
    #dbg_value(i64 %i.l, !18516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18363)
  %prol.iter6.next = add i64 %prol.iter6, 1, !dbg !18714 ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4, !dbg !18714
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !18714, !llvm.loop !18385

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.037.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.036.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8, !dbg !18714
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i, !dbg !18714

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.037.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.037.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.036.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.036.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.022.037.i.i, !18535, !DIExpression(), !18373)
    #dbg_value(i64 %.sroa.020.036.i.i, !18575, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18372)
    #dbg_value(i64 %.sroa.020.036.i.i, !18543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18374)
    #dbg_value(i64 %.sroa.020.036.i.i, !18519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18347)
    #dbg_value(ptr %.sroa.022.037.i.i, !18543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18374)
    #dbg_value(ptr %.sroa.022.037.i.i, !18519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18347)
    #dbg_value(ptr %.sroa.022.037.i.i, !18534, !DIExpression(), !18375)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i, i64 192, !dbg !18715
    #dbg_value(ptr %i.n, !18592, !DIExpression(), !18378)
    #dbg_value(ptr %i.n, !18594, !DIExpression(), !18381)
    #dbg_value(ptr %i.n, !18596, !DIExpression(), !18384)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !18716, !noalias !18598, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.o, !18516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18363)
    #dbg_value(ptr %i.o, !18540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18364)
    #dbg_value(ptr %i.o, !18541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18365)
    #dbg_value(ptr %i.o, !18575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18372)
    #dbg_value(ptr %i.o, !18535, !DIExpression(), !18373)
    #dbg_value(i64 %.sroa.020.036.i.i, !18541, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18365)
    #dbg_value(i64 %.sroa.020.036.i.i, !18540, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18364)
    #dbg_value(i64 %.sroa.020.036.i.i, !18516, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18363)
    #dbg_value(i64 %.sroa.020.036.i.i, !18575, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18372)
    #dbg_value(i64 %.sroa.020.036.i.i, !18543, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18374)
    #dbg_value(i64 %.sroa.020.036.i.i, !18519, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18347)
    #dbg_value(ptr %i.o, !18543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18374)
    #dbg_value(ptr %i.o, !18519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18347)
    #dbg_value(ptr %i.o, !18534, !DIExpression(), !18375)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192, !dbg !18715
    #dbg_value(ptr %i.p, !18592, !DIExpression(), !18378)
    #dbg_value(ptr %i.p, !18594, !DIExpression(), !18381)
    #dbg_value(ptr %i.p, !18596, !DIExpression(), !18384)
  %i.q = load ptr, ptr %i.p, align 8, !dbg !18716, !noalias !18598, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.q, !18516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18363)
    #dbg_value(ptr %i.q, !18540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18364)
    #dbg_value(ptr %i.q, !18541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18365)
    #dbg_value(ptr %i.q, !18575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18372)
    #dbg_value(ptr %i.q, !18535, !DIExpression(), !18373)
    #dbg_value(i64 %.sroa.020.036.i.i, !18541, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18365)
    #dbg_value(i64 %.sroa.020.036.i.i, !18540, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18364)
    #dbg_value(i64 %.sroa.020.036.i.i, !18516, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18363)
    #dbg_value(i64 %.sroa.020.036.i.i, !18575, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18372)
    #dbg_value(i64 %.sroa.020.036.i.i, !18543, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18374)
    #dbg_value(i64 %.sroa.020.036.i.i, !18519, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18347)
    #dbg_value(ptr %i.q, !18543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18374)
    #dbg_value(ptr %i.q, !18519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18347)
    #dbg_value(ptr %i.q, !18534, !DIExpression(), !18375)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192, !dbg !18715
    #dbg_value(ptr %i.r, !18592, !DIExpression(), !18378)
    #dbg_value(ptr %i.r, !18594, !DIExpression(), !18381)
    #dbg_value(ptr %i.r, !18596, !DIExpression(), !18384)
  %i.s = load ptr, ptr %i.r, align 8, !dbg !18716, !noalias !18598, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.s, !18516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18363)
    #dbg_value(ptr %i.s, !18540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18364)
    #dbg_value(ptr %i.s, !18541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18365)
    #dbg_value(ptr %i.s, !18575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18372)
    #dbg_value(ptr %i.s, !18535, !DIExpression(), !18373)
    #dbg_value(i64 %.sroa.020.036.i.i, !18541, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18365)
    #dbg_value(i64 %.sroa.020.036.i.i, !18540, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18364)
    #dbg_value(i64 %.sroa.020.036.i.i, !18516, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18363)
    #dbg_value(i64 %.sroa.020.036.i.i, !18575, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18372)
    #dbg_value(i64 %.sroa.020.036.i.i, !18543, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18374)
    #dbg_value(i64 %.sroa.020.036.i.i, !18519, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18347)
    #dbg_value(ptr %i.s, !18543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18374)
    #dbg_value(ptr %i.s, !18519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18347)
    #dbg_value(ptr %i.s, !18534, !DIExpression(), !18375)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192, !dbg !18715
    #dbg_value(ptr %i.t, !18592, !DIExpression(), !18378)
    #dbg_value(ptr %i.t, !18594, !DIExpression(), !18381)
    #dbg_value(ptr %i.t, !18596, !DIExpression(), !18384)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !18716, !noalias !18598, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %i.u, !18516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18363)
    #dbg_value(ptr %i.u, !18540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18364)
    #dbg_value(ptr %i.u, !18541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18365)
    #dbg_value(ptr %i.u, !18575, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18372)
    #dbg_value(ptr %i.u, !18535, !DIExpression(), !18373)
    #dbg_value(i64 %.sroa.020.036.i.i, !18541, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18365)
    #dbg_value(i64 %.sroa.020.036.i.i, !18540, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18364)
    #dbg_value(i64 %.sroa.020.036.i.i, !18516, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18363)
    #dbg_value(i64 %.sroa.020.036.i.i, !18575, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18372)
    #dbg_value(i64 %.sroa.020.036.i.i, !18543, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18374)
    #dbg_value(i64 %.sroa.020.036.i.i, !18519, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18347)
    #dbg_value(ptr %i.u, !18543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18374)
    #dbg_value(ptr %i.u, !18519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18347)
    #dbg_value(ptr %i.u, !18534, !DIExpression(), !18375)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192, !dbg !18715
    #dbg_value(ptr %i.v, !18592, !DIExpression(), !18378)
end_hunk_2
begin_hunk_3_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCshovLROGBtMy_11quinn_proto:bb.a
    #dbg_value(i64 %.sroa.011.030.i.i, !18639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18428)
    #dbg_value(i64 %.sroa.011.030.i.i, !18632, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(ptr %.sroa.013.031.i.i, !18639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18428)
    #dbg_value(ptr %.sroa.013.031.i.i, !18632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(ptr %.sroa.013.031.i.i, !18633, !DIExpression(), !18429)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 192, !dbg !18732
    #dbg_value(ptr poison, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(ptr poison, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr poison, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr poison, !18634, !DIExpression(), !18427)
    #dbg_value(i64 %.sroa.011.030.i.i, !18636, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18637, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18423)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !18730, !noalias !18652, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i, !18634, !DIExpression(), !18427)
    #dbg_value(ptr %.sroa.013.0.i.i, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr %.sroa.013.0.i.i, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr %.sroa.013.0.i.i, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
    #dbg_value(i64 %.sroa.011.030.i.i, !18639, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18428)
    #dbg_value(i64 %.sroa.011.030.i.i, !18632, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i, !18639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18428)
    #dbg_value(ptr %.sroa.013.0.i.i, !18632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i, !18633, !DIExpression(), !18429)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 192, !dbg !18732
    #dbg_value(ptr poison, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(ptr poison, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr poison, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr poison, !18634, !DIExpression(), !18427)
    #dbg_value(i64 %.sroa.011.030.i.i, !18636, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18637, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18423)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !18730, !noalias !18652, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18634, !DIExpression(), !18427)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
    #dbg_value(i64 %.sroa.011.030.i.i, !18639, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18428)
    #dbg_value(i64 %.sroa.011.030.i.i, !18632, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18428)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !18633, !DIExpression(), !18429)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 192, !dbg !18732
    #dbg_value(ptr poison, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(ptr poison, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr poison, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr poison, !18634, !DIExpression(), !18427)
    #dbg_value(i64 %.sroa.011.030.i.i, !18636, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18637, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18423)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !18730, !noalias !18652, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18634, !DIExpression(), !18427)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
    #dbg_value(i64 %.sroa.011.030.i.i, !18639, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18428)
    #dbg_value(i64 %.sroa.011.030.i.i, !18632, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18428)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !18633, !DIExpression(), !18429)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 192, !dbg !18732
    #dbg_value(ptr poison, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(ptr poison, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr poison, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr poison, !18634, !DIExpression(), !18427)
    #dbg_value(i64 %.sroa.011.030.i.i, !18636, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18637, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18423)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !18730, !noalias !18652, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18634, !DIExpression(), !18427)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
    #dbg_value(i64 %.sroa.011.030.i.i, !18639, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18428)
    #dbg_value(i64 %.sroa.011.030.i.i, !18632, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18428)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !18633, !DIExpression(), !18429)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 192, !dbg !18732
    #dbg_value(ptr poison, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(ptr poison, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr poison, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr poison, !18634, !DIExpression(), !18427)
    #dbg_value(i64 %.sroa.011.030.i.i, !18636, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18637, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18423)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !18730, !noalias !18652, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18634, !DIExpression(), !18427)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
    #dbg_value(i64 %.sroa.011.030.i.i, !18639, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18428)
    #dbg_value(i64 %.sroa.011.030.i.i, !18632, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18428)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !18633, !DIExpression(), !18429)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 192, !dbg !18732
    #dbg_value(ptr poison, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(ptr poison, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr poison, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr poison, !18634, !DIExpression(), !18427)
    #dbg_value(i64 %.sroa.011.030.i.i, !18636, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18637, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18423)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !18730, !noalias !18652, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18634, !DIExpression(), !18427)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
    #dbg_value(i64 %.sroa.011.030.i.i, !18639, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18428)
    #dbg_value(i64 %.sroa.011.030.i.i, !18632, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18428)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !18633, !DIExpression(), !18429)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 192, !dbg !18732
    #dbg_value(ptr poison, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(ptr poison, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr poison, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr poison, !18634, !DIExpression(), !18427)
    #dbg_value(i64 %.sroa.011.030.i.i, !18636, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18637, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18423)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !18730, !noalias !18652, !nonnull !1631, !noundef !1631
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18634, !DIExpression(), !18427)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(i64 %.sroa.011.030.i.i, !18650, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18426)
    #dbg_value(i64 %.sroa.011.030.i.i, !18639, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18428)
    #dbg_value(i64 %.sroa.011.030.i.i, !18632, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18428)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18416)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !18633, !DIExpression(), !18429)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 192, !dbg !18732
    #dbg_value(ptr poison, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
    #dbg_value(ptr poison, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr poison, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr poison, !18634, !DIExpression(), !18427)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !18733 ; 2 uses
    #dbg_value(i64 %i.az, !18636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18422)
    #dbg_value(i64 %i.az, !18637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18423)
    #dbg_value(i64 %i.az, !18650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18426)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !18730, !noalias !18652, !nonnull !1631, !noundef !1631 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18634, !DIExpression(), !18427)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18426)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18423)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !18636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18422)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !18731
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !18731

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !18653, !DIExpression(), !18434)
    #dbg_value(ptr poison, !18606, !DIExpression(), !18435)
    #dbg_value(ptr poison, !18612, !DIExpression(), !18436)
    #dbg_declare(ptr %i.d, !18659, !DIExpression(), !18443)
    #dbg_value(ptr poison, !18664, !DIExpression(), !18444)
    #dbg_value(ptr poison, !18673, !DIExpression(), !18447)
    #dbg_declare(ptr poison, !18665, !DIExpression(), !18448)
    #dbg_declare(ptr poison, !18667, !DIExpression(), !18449)
    #dbg_declare(ptr %i.b, !18668, !DIExpression(), !18450)
    #dbg_declare(ptr %i.b, !18677, !DIExpression(), !18451)
    #dbg_declare(ptr poison, !18666, !DIExpression(), !18452)
    #dbg_declare(ptr poison, !18679, !DIExpression(), !18456)
    #dbg_declare(ptr poison, !18685, !DIExpression(), !18457)
    #dbg_declare(ptr %i.a, !18687, !DIExpression(), !18465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18736, !noalias !18702
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyyNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !18737, !noalias !18703

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !18738, !noalias !18702, !noundef !1631
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !18738
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, !dbg !18739, !prof !2224

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #13
          to label %.noexc2.i.i unwind label %bb.i, !dbg !18740, !noalias !18704

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !18740

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCshovLROGBtMy_11quinn_proto.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !2229, !DIExpression(), !18473)
    #dbg_value(ptr poison, !2235, !DIExpression(), !18475)
  tail call void @llvm.trap(), !dbg !18741
  unreachable, !dbg !18741

.critedge.i:                                      ; preds = %bb.e
    #dbg_value(ptr poison, !18653, !DIExpression(), !18434)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #13, !dbg !18742, !noalias !18705
  unreachable, !dbg !18742

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit: ; preds = %.noexc.i.i
    #dbg_value(ptr %i.ai, !18653, !DIExpression(), !18434)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !18743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18744, !noalias !18702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !18745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !18746
  br label %bb.j, !dbg !18723

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE16deallocating_endNtNtBc_5alloc6GlobalECshovLROGBtMy_11quinn_proto.exit
  ret void, !dbg !18747
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18748 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
    #dbg_value(ptr %0, !18774, !DIExpression(), !18776)
    #dbg_value(ptr %0, !18777, !DIExpression(), !18785)
    #dbg_declare(ptr %i.b, !18786, !DIExpression(), !18793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18821
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !dbg !18822 ; 3 uses
    #dbg_value(ptr %.sroa.06.0.copyload, !18794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18808)
    #dbg_value(i64 poison, !18794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18808)
    #dbg_value(i64 poison, !18794, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18808)
    #dbg_value(i64 poison, !18797, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18809)
    #dbg_value(ptr poison, !18797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18809)
    #dbg_value(i64 poison, !18797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18809)
  %.not = icmp eq ptr %.sroa.06.0.copyload, null, !dbg !18823
  br i1 %.not, label %bb.c, label %bb.b, !dbg !18824

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18822
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !18822
    #dbg_value(i64 %.sroa.58.0.copyload, !18794, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18808)
    #dbg_value(i64 %.sroa.58.0.copyload, !18797, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18809)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18822
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !18822 ; 2 uses
    #dbg_value(i64 %.sroa.47.0.copyload, !18794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18808)
    #dbg_value(i64 %.sroa.47.0.copyload, !18797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18809)
    #dbg_value(i64 %.sroa.47.0.copyload, !18798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18810)
    #dbg_value(ptr %.sroa.06.0.copyload, !18798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18810)
    #dbg_value(i64 1, !18799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18811)
    #dbg_value(ptr null, !18799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18811)
    #dbg_value(ptr %.sroa.06.0.copyload, !18799, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18811)
    #dbg_value(i64 %.sroa.47.0.copyload, !18799, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18811)
    #dbg_value(i64 1, !18799, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18811)
    #dbg_value(ptr null, !18799, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !18811)
    #dbg_value(ptr %.sroa.06.0.copyload, !18799, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !18811)
    #dbg_value(i64 %.sroa.47.0.copyload, !18799, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18811)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18825
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !18825
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18825
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !18825
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18825
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !18825
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !18825
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8, !dbg !18825
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !18825
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8, !dbg !18825
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !18825
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8, !dbg !18825
  br label %bb.c, !dbg !18826

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink35 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !18809 ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ], !dbg !18809
  store i64 %.sink35, ptr %i.b, align 8, !dbg !18809
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !18809
  store i64 %.sink35, ptr %i.c, align 8, !dbg !18809
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !18809
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8, !dbg !18809
    #dbg_value(ptr %i.b, !18812, !DIExpression(), !18759)
    #dbg_value(ptr %i.b, !18816, !DIExpression(), !18764)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18827, !noalias !18820
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10dying_nextCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !dbg !18828
  %i.e = load ptr, ptr %i.a, align 8, !dbg !18827, !noalias !18820, !noundef !1631 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.e, null, !dbg !18827
  br i1 %.not7.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtBK_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertEECshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i.i, !dbg !18829

.lr.ph.i.i:                                       ; preds = %bb.c
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d, !dbg !18829

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.h, %bb.f ]
    #dbg_value(ptr %i.f, !18817, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18769)
    #dbg_value(i64 poison, !18817, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18769)
  %.sroa.45.0.copyload.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !dbg !18830, !noalias !18820
    #dbg_value(i64 %.sroa.45.0.copyload.i.i, !18817, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18769)
    #dbg_value(ptr %i.b, !18818, !DIExpression(), !18770)
  invoke fastcc void @_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCshovLROGBtMy_11quinn_proto(ptr nonnull %i.f, i64 %.sroa.45.0.copyload.i.i)
          to label %bb.f unwind label %bb.e, !dbg !18831, !noalias !18820

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXsy_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtBK_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBQ_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertNtNtBQ_5alloc6GlobalEECshovLROGBtMy_11quinn_proto(ptr nonnull align 8 dereferenceable(72) %i.b) #15
          to label %bb.h unwind label %bb.g, !dbg !18832

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18833, !noalias !18820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18827, !noalias !18820
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertE10dying_nextCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !dbg !18828
  %i.h = load ptr, ptr %i.a, align 8, !dbg !18827, !noalias !18820, !noundef !1631 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null, !dbg !18827
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtBK_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertEECshovLROGBtMy_11quinn_proto.exit, label %bb.d, !dbg !18829

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !18834, !noalias !18820
  unreachable, !dbg !18834

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.g, !dbg !18834

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtBK_3vec3VechENtNtNtCsbxHpS8e17M7_6webpki3crl5types16OwnedRevokedCertEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18833, !noalias !18820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18835
  ret void, !dbg !18836
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18837 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
    #dbg_value(ptr %0, !18889, !DIExpression(), !18891)
    #dbg_value(ptr %0, !18892, !DIExpression(), !18899)
    #dbg_declare(ptr %i.b, !18900, !DIExpression(), !18907)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18935
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !dbg !18936 ; 3 uses
    #dbg_value(ptr %.sroa.06.0.copyload, !18908, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18922)
    #dbg_value(i64 poison, !18908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18922)
    #dbg_value(i64 poison, !18908, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18922)
    #dbg_value(i64 poison, !18911, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18923)
    #dbg_value(ptr poison, !18911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18923)
    #dbg_value(i64 poison, !18911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18923)
  %.not = icmp eq ptr %.sroa.06.0.copyload, null, !dbg !18937
  br i1 %.not, label %bb.c, label %bb.b, !dbg !18938

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18936
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !18936
    #dbg_value(i64 %.sroa.58.0.copyload, !18908, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18922)
    #dbg_value(i64 %.sroa.58.0.copyload, !18911, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18923)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18936
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !18936 ; 2 uses
    #dbg_value(i64 %.sroa.47.0.copyload, !18908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18922)
    #dbg_value(i64 %.sroa.47.0.copyload, !18911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18923)
    #dbg_value(i64 %.sroa.47.0.copyload, !18912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18924)
    #dbg_value(ptr %.sroa.06.0.copyload, !18912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18924)
    #dbg_value(i64 1, !18913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18925)
    #dbg_value(ptr null, !18913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18925)
    #dbg_value(ptr %.sroa.06.0.copyload, !18913, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18925)
    #dbg_value(i64 %.sroa.47.0.copyload, !18913, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18925)
    #dbg_value(i64 1, !18913, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18925)
    #dbg_value(ptr null, !18913, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !18925)
    #dbg_value(ptr %.sroa.06.0.copyload, !18913, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !18925)
    #dbg_value(i64 %.sroa.47.0.copyload, !18913, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !18925)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18939
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !18939
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18939
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !18939
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !18939
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !18939
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !18939
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8, !dbg !18939
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !18939
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8, !dbg !18939
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !18939
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8, !dbg !18939
  br label %bb.c, !dbg !18940

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink49 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !18923 ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ], !dbg !18923
  store i64 %.sink49, ptr %i.b, align 8, !dbg !18923
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !18923
  store i64 %.sink49, ptr %i.c, align 8, !dbg !18923
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !18923
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8, !dbg !18923
    #dbg_value(ptr %i.b, !18926, !DIExpression(), !18848)
    #dbg_value(ptr %i.b, !18930, !DIExpression(), !18853)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18941, !noalias !18934
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueE10dying_nextCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !dbg !18942
  %i.e = load ptr, ptr %i.a, align 8, !dbg !18941, !noalias !18934, !noundef !1631 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.e, null, !dbg !18941
  br i1 %.not12.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueEECshovLROGBtMy_11quinn_proto.exit, label %.lr.ph.i.i, !dbg !18943

.lr.ph.i.i:                                       ; preds = %bb.c
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d, !dbg !18943

bb.d:                                             ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCshovLROGBtMy_11quinn_proto.exit.i.i, %.lr.ph.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.p, %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCscFTfv2TGtgR_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCshovLROGBtMy_11quinn_proto.exit.i.i ] ; 2 uses
    #dbg_value(ptr %i.f, !18931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18858)
    #dbg_value(i64 poison, !18931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18858)
  %.sroa.45.0.copyload.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !dbg !18944, !noalias !18934 ; 2 uses
    #dbg_value(i64 %.sroa.45.0.copyload.i.i, !18931, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18858)
    #dbg_value(ptr %i.b, !18932, !DIExpression(), !18859)
end_hunk_3
