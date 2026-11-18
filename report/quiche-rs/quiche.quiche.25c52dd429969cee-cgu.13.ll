Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.13?download=true
inline.NumInlined: 323
inline.NumDeleted: 181
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10dying_nextCs3f36owOmepS_6quiche:bb.a
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %.sroa.011.030.i.i, !11449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11236)
    #dbg_value(i64 %.sroa.011.030.i.i, !11442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11225)
    #dbg_value(ptr %.sroa.013.031.i.i, !11449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11236)
    #dbg_value(ptr %.sroa.013.031.i.i, !11442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11225)
    #dbg_value(ptr %.sroa.013.031.i.i, !11443, !DIExpression(), !11237)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 1072, !dbg !11547
    #dbg_value(ptr poison, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr poison, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr poison, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr poison, !11444, !DIExpression(), !11235)
    #dbg_value(i64 %.sroa.011.030.i.i, !11446, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11447, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11231)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !11545, !noalias !11461, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i, !11444, !DIExpression(), !11235)
    #dbg_value(ptr %.sroa.013.0.i.i, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr %.sroa.013.0.i.i, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr %.sroa.013.0.i.i, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %.sroa.011.030.i.i, !11449, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11236)
    #dbg_value(i64 %.sroa.011.030.i.i, !11442, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i, !11449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11236)
    #dbg_value(ptr %.sroa.013.0.i.i, !11442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i, !11443, !DIExpression(), !11237)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 1072, !dbg !11547
    #dbg_value(ptr poison, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr poison, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr poison, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr poison, !11444, !DIExpression(), !11235)
    #dbg_value(i64 %.sroa.011.030.i.i, !11446, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11447, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11231)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !11545, !noalias !11461, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11444, !DIExpression(), !11235)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %.sroa.011.030.i.i, !11449, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11236)
    #dbg_value(i64 %.sroa.011.030.i.i, !11442, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11236)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11443, !DIExpression(), !11237)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 1072, !dbg !11547
    #dbg_value(ptr poison, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr poison, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr poison, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr poison, !11444, !DIExpression(), !11235)
    #dbg_value(i64 %.sroa.011.030.i.i, !11446, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11447, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11231)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !11545, !noalias !11461, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11444, !DIExpression(), !11235)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %.sroa.011.030.i.i, !11449, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11236)
    #dbg_value(i64 %.sroa.011.030.i.i, !11442, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11236)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11443, !DIExpression(), !11237)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 1072, !dbg !11547
    #dbg_value(ptr poison, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr poison, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr poison, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr poison, !11444, !DIExpression(), !11235)
    #dbg_value(i64 %.sroa.011.030.i.i, !11446, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11447, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11231)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !11545, !noalias !11461, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11444, !DIExpression(), !11235)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %.sroa.011.030.i.i, !11449, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11236)
    #dbg_value(i64 %.sroa.011.030.i.i, !11442, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11236)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11443, !DIExpression(), !11237)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 1072, !dbg !11547
    #dbg_value(ptr poison, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr poison, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr poison, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr poison, !11444, !DIExpression(), !11235)
    #dbg_value(i64 %.sroa.011.030.i.i, !11446, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11447, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11231)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !11545, !noalias !11461, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11444, !DIExpression(), !11235)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %.sroa.011.030.i.i, !11449, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11236)
    #dbg_value(i64 %.sroa.011.030.i.i, !11442, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11236)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11443, !DIExpression(), !11237)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 1072, !dbg !11547
    #dbg_value(ptr poison, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr poison, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr poison, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr poison, !11444, !DIExpression(), !11235)
    #dbg_value(i64 %.sroa.011.030.i.i, !11446, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11447, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11231)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !11545, !noalias !11461, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11444, !DIExpression(), !11235)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %.sroa.011.030.i.i, !11449, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11236)
    #dbg_value(i64 %.sroa.011.030.i.i, !11442, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11236)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11443, !DIExpression(), !11237)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 1072, !dbg !11547
    #dbg_value(ptr poison, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr poison, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr poison, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr poison, !11444, !DIExpression(), !11235)
    #dbg_value(i64 %.sroa.011.030.i.i, !11446, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11447, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11231)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !11545, !noalias !11461, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11444, !DIExpression(), !11235)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(i64 %.sroa.011.030.i.i, !11459, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11234)
    #dbg_value(i64 %.sroa.011.030.i.i, !11449, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11236)
    #dbg_value(i64 %.sroa.011.030.i.i, !11442, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11236)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11225)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11443, !DIExpression(), !11237)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 1072, !dbg !11547
    #dbg_value(ptr poison, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
    #dbg_value(ptr poison, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr poison, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr poison, !11444, !DIExpression(), !11235)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !11548 ; 2 uses
    #dbg_value(i64 %i.az, !11446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11230)
    #dbg_value(i64 %i.az, !11447, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11231)
    #dbg_value(i64 %i.az, !11459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11234)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !11545, !noalias !11461, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11444, !DIExpression(), !11235)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11234)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11447, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11231)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11230)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !11546
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !11546

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10init_frontCs3f36owOmepS_6quiche.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !11462, !DIExpression(), !11243)
    #dbg_value(ptr poison, !11422, !DIExpression(), !11244)
    #dbg_value(ptr poison, !11468, !DIExpression(), !11247)
    #dbg_declare(ptr %i.d, !11474, !DIExpression(), !11254)
    #dbg_value(ptr poison, !11479, !DIExpression(), !11255)
    #dbg_value(ptr poison, !11488, !DIExpression(), !11258)
    #dbg_declare(ptr poison, !11482, !DIExpression(), !11259)
    #dbg_declare(ptr %i.b, !11483, !DIExpression(), !11260)
    #dbg_declare(ptr %i.b, !11492, !DIExpression(), !11261)
    #dbg_declare(ptr poison, !11494, !DIExpression(), !11265)
    #dbg_declare(ptr %i.a, !11502, !DIExpression(), !11273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11551, !noalias !11517
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !11552, !noalias !11518

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !11553, !noalias !11517, !noundef !810
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !11553
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !11554, !prof !1448

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18
          to label %.noexc2.i.i unwind label %bb.i, !dbg !11555, !noalias !11519

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !11555

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !11281)
    #dbg_value(ptr poison, !1679, !DIExpression(), !11283)
  tail call void @llvm.trap(), !dbg !11556
  unreachable, !dbg !11556

.critedge.i:                                      ; preds = %bb.e
    #dbg_value(ptr poison, !11462, !DIExpression(), !11243)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18, !dbg !11557, !noalias !11520
  unreachable, !dbg !11557

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit: ; preds = %.noexc.i.i
    #dbg_value(ptr poison, !11462, !DIExpression(), !11243)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !11558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11559, !noalias !11517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !11560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !11561
  br label %bb.j, !dbg !11538

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit
  ret void, !dbg !11562
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB18_EjE10dying_nextCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11567 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
    #dbg_value(ptr %1, !11735, !DIExpression(), !11737)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !11960 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !11960, !noundef !810 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !11960
  br i1 %i.g, label %bb.b, label %bb.e, !dbg !11960

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11738), !dbg !11961
    #dbg_value(ptr %1, !11740, !DIExpression(), !11573)
    #dbg_declare(ptr %i.c, !11745, !DIExpression(), !11574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11747), !dbg !11962
    #dbg_value(ptr %1, !11748, !DIExpression(), !11587)
    #dbg_value(i64 0, !11766, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11599)
    #dbg_value(ptr %1, !11794, !DIExpression(), !11602)
    #dbg_value(ptr %1, !11799, !DIExpression(), !11605)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !dbg !11963, !alias.scope !11805
    #dbg_value(i64 %.sroa.01.0.copyload.i.i, !11806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11613)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11963
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !11963, !alias.scope !11805 ; 2 uses
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload.i.i, !11806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11613)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11963
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11963, !alias.scope !11805 ; 5 uses
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !11806, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11613)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11963
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !11963, !alias.scope !11805 ; 6 uses
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !11806, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11613)
  store i64 0, ptr %1, align 8, !dbg !11964, !alias.scope !11805
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1, !dbg !11965
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1L_EjE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !11965

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null, !dbg !11966
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i, !dbg !11967

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !11763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11614)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !11788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11615)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !11789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11616)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !11822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11623)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !11763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11614)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !11788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11615)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !11789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11616)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !11822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11623)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !11783, !DIExpression(), !11624)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !11822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11623)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !11789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11616)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !11788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11615)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !11763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11614)
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0, !dbg !11968
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !11968

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7, !dbg !11968 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0, !dbg !11968
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !11968

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.037.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.036.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !11783, !DIExpression(), !11624)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !11822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11623)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !11791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11625)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !11766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11599)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11625)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !11766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11599)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !11782, !DIExpression(), !11626)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i.prol, i64 808, !dbg !11969
    #dbg_value(ptr %i.j, !11840, !DIExpression(), !11629)
    #dbg_value(ptr %i.j, !11847, !DIExpression(), !11632)
    #dbg_value(ptr %i.j, !11851, !DIExpression(), !11635)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !11970, !noalias !11853, !nonnull !810, !noundef !810 ; 3 uses
    #dbg_value(ptr %i.k, !11763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11614)
    #dbg_value(ptr %i.k, !11788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11615)
    #dbg_value(ptr %i.k, !11789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11616)
    #dbg_value(ptr %i.k, !11822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11623)
    #dbg_value(ptr %i.k, !11783, !DIExpression(), !11624)
  %i.l = add i64 %.sroa.020.036.i.i.prol, -1, !dbg !11971 ; 2 uses
    #dbg_value(i64 %i.l, !11822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11623)
    #dbg_value(i64 %i.l, !11789, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11616)
    #dbg_value(i64 %i.l, !11788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11615)
    #dbg_value(i64 %i.l, !11763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11614)
  %prol.iter6.next = add i64 %prol.iter6, 1, !dbg !11968 ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4, !dbg !11968
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !11968, !llvm.loop !11637

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.037.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.036.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8, !dbg !11968
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i, !dbg !11968

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.037.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.037.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.036.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.036.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.022.037.i.i, !11783, !DIExpression(), !11624)
    #dbg_value(i64 %.sroa.020.036.i.i, !11822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11623)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11625)
    #dbg_value(i64 %.sroa.020.036.i.i, !11766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11599)
    #dbg_value(ptr %.sroa.022.037.i.i, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11625)
    #dbg_value(ptr %.sroa.022.037.i.i, !11766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11599)
    #dbg_value(ptr %.sroa.022.037.i.i, !11782, !DIExpression(), !11626)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i, i64 808, !dbg !11969
    #dbg_value(ptr %i.n, !11840, !DIExpression(), !11629)
    #dbg_value(ptr %i.n, !11847, !DIExpression(), !11632)
    #dbg_value(ptr %i.n, !11851, !DIExpression(), !11635)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !11970, !noalias !11853, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.o, !11763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11614)
    #dbg_value(ptr %i.o, !11788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11615)
    #dbg_value(ptr %i.o, !11789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11616)
    #dbg_value(ptr %i.o, !11822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11623)
    #dbg_value(ptr %i.o, !11783, !DIExpression(), !11624)
    #dbg_value(i64 %.sroa.020.036.i.i, !11789, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11616)
    #dbg_value(i64 %.sroa.020.036.i.i, !11788, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11615)
    #dbg_value(i64 %.sroa.020.036.i.i, !11763, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11614)
    #dbg_value(i64 %.sroa.020.036.i.i, !11822, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11623)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11625)
    #dbg_value(i64 %.sroa.020.036.i.i, !11766, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11599)
    #dbg_value(ptr %i.o, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11625)
    #dbg_value(ptr %i.o, !11766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11599)
    #dbg_value(ptr %i.o, !11782, !DIExpression(), !11626)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 808, !dbg !11969
    #dbg_value(ptr %i.p, !11840, !DIExpression(), !11629)
    #dbg_value(ptr %i.p, !11847, !DIExpression(), !11632)
    #dbg_value(ptr %i.p, !11851, !DIExpression(), !11635)
  %i.q = load ptr, ptr %i.p, align 8, !dbg !11970, !noalias !11853, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.q, !11763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11614)
    #dbg_value(ptr %i.q, !11788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11615)
    #dbg_value(ptr %i.q, !11789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11616)
    #dbg_value(ptr %i.q, !11822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11623)
    #dbg_value(ptr %i.q, !11783, !DIExpression(), !11624)
    #dbg_value(i64 %.sroa.020.036.i.i, !11789, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11616)
    #dbg_value(i64 %.sroa.020.036.i.i, !11788, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11615)
    #dbg_value(i64 %.sroa.020.036.i.i, !11763, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11614)
    #dbg_value(i64 %.sroa.020.036.i.i, !11822, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11623)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11625)
    #dbg_value(i64 %.sroa.020.036.i.i, !11766, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11599)
    #dbg_value(ptr %i.q, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11625)
    #dbg_value(ptr %i.q, !11766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11599)
    #dbg_value(ptr %i.q, !11782, !DIExpression(), !11626)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 808, !dbg !11969
    #dbg_value(ptr %i.r, !11840, !DIExpression(), !11629)
    #dbg_value(ptr %i.r, !11847, !DIExpression(), !11632)
    #dbg_value(ptr %i.r, !11851, !DIExpression(), !11635)
  %i.s = load ptr, ptr %i.r, align 8, !dbg !11970, !noalias !11853, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.s, !11763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11614)
    #dbg_value(ptr %i.s, !11788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11615)
    #dbg_value(ptr %i.s, !11789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11616)
    #dbg_value(ptr %i.s, !11822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11623)
    #dbg_value(ptr %i.s, !11783, !DIExpression(), !11624)
    #dbg_value(i64 %.sroa.020.036.i.i, !11789, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11616)
    #dbg_value(i64 %.sroa.020.036.i.i, !11788, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11615)
    #dbg_value(i64 %.sroa.020.036.i.i, !11763, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11614)
    #dbg_value(i64 %.sroa.020.036.i.i, !11822, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11623)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11625)
    #dbg_value(i64 %.sroa.020.036.i.i, !11766, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11599)
    #dbg_value(ptr %i.s, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11625)
    #dbg_value(ptr %i.s, !11766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11599)
    #dbg_value(ptr %i.s, !11782, !DIExpression(), !11626)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 808, !dbg !11969
    #dbg_value(ptr %i.t, !11840, !DIExpression(), !11629)
    #dbg_value(ptr %i.t, !11847, !DIExpression(), !11632)
    #dbg_value(ptr %i.t, !11851, !DIExpression(), !11635)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !11970, !noalias !11853, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.u, !11763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11614)
    #dbg_value(ptr %i.u, !11788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11615)
    #dbg_value(ptr %i.u, !11789, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11616)
    #dbg_value(ptr %i.u, !11822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11623)
    #dbg_value(ptr %i.u, !11783, !DIExpression(), !11624)
    #dbg_value(i64 %.sroa.020.036.i.i, !11789, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11616)
    #dbg_value(i64 %.sroa.020.036.i.i, !11788, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11615)
    #dbg_value(i64 %.sroa.020.036.i.i, !11763, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11614)
    #dbg_value(i64 %.sroa.020.036.i.i, !11822, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11623)
    #dbg_value(i64 %.sroa.020.036.i.i, !11791, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11625)
    #dbg_value(i64 %.sroa.020.036.i.i, !11766, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11599)
    #dbg_value(ptr %i.u, !11791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11625)
    #dbg_value(ptr %i.u, !11766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11599)
    #dbg_value(ptr %i.u, !11782, !DIExpression(), !11626)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 808, !dbg !11969
    #dbg_value(ptr %i.v, !11840, !DIExpression(), !11629)
    #dbg_value(ptr %i.v, !11847, !DIExpression(), !11632)
end_hunk_0
begin_hunk_1_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB18_EjE10dying_nextCs3f36owOmepS_6quiche:bb.a
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11673)
    #dbg_value(i64 %.sroa.011.030.i.i, !11888, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 %.sroa.011.030.i.i, !11881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11664)
    #dbg_value(ptr %.sroa.013.031.i.i, !11888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(ptr %.sroa.013.031.i.i, !11881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11664)
    #dbg_value(ptr %.sroa.013.031.i.i, !11882, !DIExpression(), !11676)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 808, !dbg !11986
    #dbg_value(ptr poison, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(ptr poison, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr poison, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr poison, !11883, !DIExpression(), !11674)
    #dbg_value(i64 %.sroa.011.030.i.i, !11885, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11886, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11670)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !11984, !noalias !11900, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i, !11883, !DIExpression(), !11674)
    #dbg_value(ptr %.sroa.013.0.i.i, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr %.sroa.013.0.i.i, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr %.sroa.013.0.i.i, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
    #dbg_value(i64 %.sroa.011.030.i.i, !11888, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 %.sroa.011.030.i.i, !11881, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i, !11888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(ptr %.sroa.013.0.i.i, !11881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i, !11882, !DIExpression(), !11676)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 808, !dbg !11986
    #dbg_value(ptr poison, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(ptr poison, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr poison, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr poison, !11883, !DIExpression(), !11674)
    #dbg_value(i64 %.sroa.011.030.i.i, !11885, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11886, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11670)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !11984, !noalias !11900, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11883, !DIExpression(), !11674)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
    #dbg_value(i64 %.sroa.011.030.i.i, !11888, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 %.sroa.011.030.i.i, !11881, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !11882, !DIExpression(), !11676)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 808, !dbg !11986
    #dbg_value(ptr poison, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(ptr poison, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr poison, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr poison, !11883, !DIExpression(), !11674)
    #dbg_value(i64 %.sroa.011.030.i.i, !11885, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11886, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11670)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !11984, !noalias !11900, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11883, !DIExpression(), !11674)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
    #dbg_value(i64 %.sroa.011.030.i.i, !11888, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 %.sroa.011.030.i.i, !11881, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !11882, !DIExpression(), !11676)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 808, !dbg !11986
    #dbg_value(ptr poison, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(ptr poison, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr poison, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr poison, !11883, !DIExpression(), !11674)
    #dbg_value(i64 %.sroa.011.030.i.i, !11885, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11886, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11670)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !11984, !noalias !11900, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11883, !DIExpression(), !11674)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
    #dbg_value(i64 %.sroa.011.030.i.i, !11888, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 %.sroa.011.030.i.i, !11881, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !11882, !DIExpression(), !11676)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 808, !dbg !11986
    #dbg_value(ptr poison, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(ptr poison, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr poison, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr poison, !11883, !DIExpression(), !11674)
    #dbg_value(i64 %.sroa.011.030.i.i, !11885, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11886, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11670)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !11984, !noalias !11900, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11883, !DIExpression(), !11674)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
    #dbg_value(i64 %.sroa.011.030.i.i, !11888, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 %.sroa.011.030.i.i, !11881, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !11882, !DIExpression(), !11676)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 808, !dbg !11986
    #dbg_value(ptr poison, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(ptr poison, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr poison, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr poison, !11883, !DIExpression(), !11674)
    #dbg_value(i64 %.sroa.011.030.i.i, !11885, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11886, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11670)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !11984, !noalias !11900, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11883, !DIExpression(), !11674)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
    #dbg_value(i64 %.sroa.011.030.i.i, !11888, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 %.sroa.011.030.i.i, !11881, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !11882, !DIExpression(), !11676)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 808, !dbg !11986
    #dbg_value(ptr poison, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(ptr poison, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr poison, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr poison, !11883, !DIExpression(), !11674)
    #dbg_value(i64 %.sroa.011.030.i.i, !11885, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11886, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11670)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !11984, !noalias !11900, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11883, !DIExpression(), !11674)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(i64 %.sroa.011.030.i.i, !11898, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11673)
    #dbg_value(i64 %.sroa.011.030.i.i, !11888, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 %.sroa.011.030.i.i, !11881, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11888, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11664)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !11882, !DIExpression(), !11676)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 808, !dbg !11986
    #dbg_value(ptr poison, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
    #dbg_value(ptr poison, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr poison, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr poison, !11883, !DIExpression(), !11674)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !11987 ; 2 uses
    #dbg_value(i64 %i.az, !11885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11669)
    #dbg_value(i64 %i.az, !11886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11670)
    #dbg_value(i64 %i.az, !11898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11673)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !11984, !noalias !11900, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11883, !DIExpression(), !11674)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11673)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11670)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !11885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11669)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !11985
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !11985

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1K_EjE10init_frontCs3f36owOmepS_6quiche.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !11901, !DIExpression(), !11682)
    #dbg_value(ptr poison, !11861, !DIExpression(), !11683)
    #dbg_value(ptr poison, !11907, !DIExpression(), !11686)
    #dbg_declare(ptr %i.d, !11913, !DIExpression(), !11693)
    #dbg_value(ptr poison, !11918, !DIExpression(), !11694)
    #dbg_value(ptr poison, !11927, !DIExpression(), !11697)
    #dbg_declare(ptr poison, !11921, !DIExpression(), !11698)
    #dbg_declare(ptr %i.b, !11922, !DIExpression(), !11699)
    #dbg_declare(ptr %i.b, !11931, !DIExpression(), !11700)
    #dbg_declare(ptr poison, !11933, !DIExpression(), !11704)
    #dbg_declare(ptr %i.a, !11941, !DIExpression(), !11712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11990, !noalias !11956
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1T_EjNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !11991, !noalias !11957

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1K_EjE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !11992, !noalias !11956, !noundef !810
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !11992
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1L_EjE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !11993, !prof !1448

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18
          to label %.noexc2.i.i unwind label %bb.i, !dbg !11994, !noalias !11958

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !11994

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1K_EjE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !11720)
    #dbg_value(ptr poison, !1679, !DIExpression(), !11722)
  tail call void @llvm.trap(), !dbg !11995
  unreachable, !dbg !11995

.critedge.i:                                      ; preds = %bb.e
    #dbg_value(ptr poison, !11901, !DIExpression(), !11682)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18, !dbg !11996, !noalias !11959
  unreachable, !dbg !11996

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1L_EjE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit: ; preds = %.noexc.i.i
    #dbg_value(ptr poison, !11901, !DIExpression(), !11682)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !11997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11998, !noalias !11956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !11999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !12000
  br label %bb.j, !dbg !11977

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1L_EjE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrB1L_EjE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit
  ret void, !dbg !12001
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10dying_nextB1c_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12006 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
    #dbg_value(ptr %1, !12174, !DIExpression(), !12176)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !12390 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !12390, !noundef !810 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !12390
  br i1 %i.g, label %bb.b, label %bb.e, !dbg !12390

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12177), !dbg !12391
    #dbg_value(ptr %1, !12179, !DIExpression(), !12012)
    #dbg_declare(ptr %i.c, !12184, !DIExpression(), !12013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12186), !dbg !12392
    #dbg_value(ptr %1, !12187, !DIExpression(), !12026)
    #dbg_value(i64 0, !12205, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12038)
    #dbg_value(ptr %1, !12232, !DIExpression(), !12041)
    #dbg_value(ptr %1, !12237, !DIExpression(), !12044)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !dbg !12393, !alias.scope !12243
    #dbg_value(i64 %.sroa.01.0.copyload.i.i, !12244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12052)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12393
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !12393, !alias.scope !12243 ; 2 uses
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload.i.i, !12244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12052)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12393
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12393, !alias.scope !12243 ; 5 uses
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12244, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12052)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12393
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12393, !alias.scope !12243 ; 6 uses
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12244, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12052)
  store i64 0, ptr %1, align 8, !dbg !12394, !alias.scope !12243
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1, !dbg !12395
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE16deallocating_endNtNtBc_5alloc6GlobalEB1P_.exit, !dbg !12395

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null, !dbg !12396
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i, !dbg !12397

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12053)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12054)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12055)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12062)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12054)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12055)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12062)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12221, !DIExpression(), !12063)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12062)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12055)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12054)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12053)
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0, !dbg !12398
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !12398

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7, !dbg !12398 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0, !dbg !12398
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !12398

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.037.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.036.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !12221, !DIExpression(), !12063)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !12260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12062)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !12229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12064)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !12205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12038)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !12229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12064)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !12205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12038)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !12220, !DIExpression(), !12065)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i.prol, i64 720, !dbg !12399
    #dbg_value(ptr %i.j, !12277, !DIExpression(), !12068)
    #dbg_value(ptr %i.j, !12279, !DIExpression(), !12071)
    #dbg_value(ptr %i.j, !12281, !DIExpression(), !12074)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !12400, !noalias !12283, !nonnull !810, !noundef !810 ; 3 uses
    #dbg_value(ptr %i.k, !12202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
    #dbg_value(ptr %i.k, !12226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12054)
    #dbg_value(ptr %i.k, !12227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12055)
    #dbg_value(ptr %i.k, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12062)
    #dbg_value(ptr %i.k, !12221, !DIExpression(), !12063)
  %i.l = add i64 %.sroa.020.036.i.i.prol, -1, !dbg !12401 ; 2 uses
    #dbg_value(i64 %i.l, !12260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12062)
    #dbg_value(i64 %i.l, !12227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12055)
    #dbg_value(i64 %i.l, !12226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12054)
    #dbg_value(i64 %i.l, !12202, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12053)
  %prol.iter6.next = add i64 %prol.iter6, 1, !dbg !12398 ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4, !dbg !12398
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !12398, !llvm.loop !12076

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.037.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.036.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8, !dbg !12398
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i, !dbg !12398

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.037.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.037.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.036.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.036.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.022.037.i.i, !12221, !DIExpression(), !12063)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12062)
    #dbg_value(i64 %.sroa.020.036.i.i, !12229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12064)
    #dbg_value(i64 %.sroa.020.036.i.i, !12205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12038)
    #dbg_value(ptr %.sroa.022.037.i.i, !12229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12064)
    #dbg_value(ptr %.sroa.022.037.i.i, !12205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12038)
    #dbg_value(ptr %.sroa.022.037.i.i, !12220, !DIExpression(), !12065)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i, i64 720, !dbg !12399
    #dbg_value(ptr %i.n, !12277, !DIExpression(), !12068)
    #dbg_value(ptr %i.n, !12279, !DIExpression(), !12071)
    #dbg_value(ptr %i.n, !12281, !DIExpression(), !12074)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !12400, !noalias !12283, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.o, !12202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
    #dbg_value(ptr %i.o, !12226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12054)
    #dbg_value(ptr %i.o, !12227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12055)
    #dbg_value(ptr %i.o, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12062)
    #dbg_value(ptr %i.o, !12221, !DIExpression(), !12063)
    #dbg_value(i64 %.sroa.020.036.i.i, !12227, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12055)
    #dbg_value(i64 %.sroa.020.036.i.i, !12226, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12054)
    #dbg_value(i64 %.sroa.020.036.i.i, !12202, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12053)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12062)
    #dbg_value(i64 %.sroa.020.036.i.i, !12229, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12064)
    #dbg_value(i64 %.sroa.020.036.i.i, !12205, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12038)
    #dbg_value(ptr %i.o, !12229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12064)
    #dbg_value(ptr %i.o, !12205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12038)
    #dbg_value(ptr %i.o, !12220, !DIExpression(), !12065)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 720, !dbg !12399
    #dbg_value(ptr %i.p, !12277, !DIExpression(), !12068)
    #dbg_value(ptr %i.p, !12279, !DIExpression(), !12071)
    #dbg_value(ptr %i.p, !12281, !DIExpression(), !12074)
  %i.q = load ptr, ptr %i.p, align 8, !dbg !12400, !noalias !12283, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.q, !12202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
    #dbg_value(ptr %i.q, !12226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12054)
    #dbg_value(ptr %i.q, !12227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12055)
    #dbg_value(ptr %i.q, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12062)
    #dbg_value(ptr %i.q, !12221, !DIExpression(), !12063)
    #dbg_value(i64 %.sroa.020.036.i.i, !12227, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12055)
    #dbg_value(i64 %.sroa.020.036.i.i, !12226, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12054)
    #dbg_value(i64 %.sroa.020.036.i.i, !12202, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12053)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12062)
    #dbg_value(i64 %.sroa.020.036.i.i, !12229, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12064)
    #dbg_value(i64 %.sroa.020.036.i.i, !12205, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12038)
    #dbg_value(ptr %i.q, !12229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12064)
    #dbg_value(ptr %i.q, !12205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12038)
    #dbg_value(ptr %i.q, !12220, !DIExpression(), !12065)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 720, !dbg !12399
    #dbg_value(ptr %i.r, !12277, !DIExpression(), !12068)
    #dbg_value(ptr %i.r, !12279, !DIExpression(), !12071)
    #dbg_value(ptr %i.r, !12281, !DIExpression(), !12074)
  %i.s = load ptr, ptr %i.r, align 8, !dbg !12400, !noalias !12283, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.s, !12202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
    #dbg_value(ptr %i.s, !12226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12054)
    #dbg_value(ptr %i.s, !12227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12055)
    #dbg_value(ptr %i.s, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12062)
    #dbg_value(ptr %i.s, !12221, !DIExpression(), !12063)
    #dbg_value(i64 %.sroa.020.036.i.i, !12227, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12055)
    #dbg_value(i64 %.sroa.020.036.i.i, !12226, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12054)
    #dbg_value(i64 %.sroa.020.036.i.i, !12202, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12053)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12062)
    #dbg_value(i64 %.sroa.020.036.i.i, !12229, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12064)
    #dbg_value(i64 %.sroa.020.036.i.i, !12205, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12038)
    #dbg_value(ptr %i.s, !12229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12064)
    #dbg_value(ptr %i.s, !12205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12038)
    #dbg_value(ptr %i.s, !12220, !DIExpression(), !12065)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 720, !dbg !12399
    #dbg_value(ptr %i.t, !12277, !DIExpression(), !12068)
    #dbg_value(ptr %i.t, !12279, !DIExpression(), !12071)
    #dbg_value(ptr %i.t, !12281, !DIExpression(), !12074)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12400, !noalias !12283, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.u, !12202, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
    #dbg_value(ptr %i.u, !12226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12054)
    #dbg_value(ptr %i.u, !12227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12055)
    #dbg_value(ptr %i.u, !12260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12062)
    #dbg_value(ptr %i.u, !12221, !DIExpression(), !12063)
    #dbg_value(i64 %.sroa.020.036.i.i, !12227, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12055)
    #dbg_value(i64 %.sroa.020.036.i.i, !12226, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12054)
    #dbg_value(i64 %.sroa.020.036.i.i, !12202, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12053)
    #dbg_value(i64 %.sroa.020.036.i.i, !12260, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12062)
    #dbg_value(i64 %.sroa.020.036.i.i, !12229, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12064)
    #dbg_value(i64 %.sroa.020.036.i.i, !12205, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12038)
    #dbg_value(ptr %i.u, !12229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12064)
    #dbg_value(ptr %i.u, !12205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12038)
    #dbg_value(ptr %i.u, !12220, !DIExpression(), !12065)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 720, !dbg !12399
    #dbg_value(ptr %i.v, !12277, !DIExpression(), !12068)
    #dbg_value(ptr %i.v, !12279, !DIExpression(), !12071)
end_hunk_1
begin_hunk_2_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10dying_nextB1c_:bb.a
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12112)
    #dbg_value(i64 %.sroa.011.030.i.i, !12318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12114)
    #dbg_value(i64 %.sroa.011.030.i.i, !12311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12103)
    #dbg_value(ptr %.sroa.013.031.i.i, !12318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12114)
    #dbg_value(ptr %.sroa.013.031.i.i, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12103)
    #dbg_value(ptr %.sroa.013.031.i.i, !12312, !DIExpression(), !12115)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 720, !dbg !12416
    #dbg_value(ptr poison, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(ptr poison, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr poison, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr poison, !12313, !DIExpression(), !12113)
    #dbg_value(i64 %.sroa.011.030.i.i, !12315, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12316, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12109)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !12414, !noalias !12330, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i, !12313, !DIExpression(), !12113)
    #dbg_value(ptr %.sroa.013.0.i.i, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr %.sroa.013.0.i.i, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr %.sroa.013.0.i.i, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
    #dbg_value(i64 %.sroa.011.030.i.i, !12318, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12114)
    #dbg_value(i64 %.sroa.011.030.i.i, !12311, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i, !12318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12114)
    #dbg_value(ptr %.sroa.013.0.i.i, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i, !12312, !DIExpression(), !12115)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 720, !dbg !12416
    #dbg_value(ptr poison, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(ptr poison, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr poison, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr poison, !12313, !DIExpression(), !12113)
    #dbg_value(i64 %.sroa.011.030.i.i, !12315, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12316, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12109)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !12414, !noalias !12330, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12313, !DIExpression(), !12113)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
    #dbg_value(i64 %.sroa.011.030.i.i, !12318, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12114)
    #dbg_value(i64 %.sroa.011.030.i.i, !12311, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12114)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12312, !DIExpression(), !12115)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 720, !dbg !12416
    #dbg_value(ptr poison, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(ptr poison, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr poison, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr poison, !12313, !DIExpression(), !12113)
    #dbg_value(i64 %.sroa.011.030.i.i, !12315, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12316, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12109)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !12414, !noalias !12330, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12313, !DIExpression(), !12113)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
    #dbg_value(i64 %.sroa.011.030.i.i, !12318, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12114)
    #dbg_value(i64 %.sroa.011.030.i.i, !12311, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12114)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12312, !DIExpression(), !12115)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 720, !dbg !12416
    #dbg_value(ptr poison, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(ptr poison, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr poison, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr poison, !12313, !DIExpression(), !12113)
    #dbg_value(i64 %.sroa.011.030.i.i, !12315, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12316, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12109)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !12414, !noalias !12330, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12313, !DIExpression(), !12113)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
    #dbg_value(i64 %.sroa.011.030.i.i, !12318, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12114)
    #dbg_value(i64 %.sroa.011.030.i.i, !12311, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12114)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12312, !DIExpression(), !12115)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 720, !dbg !12416
    #dbg_value(ptr poison, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(ptr poison, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr poison, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr poison, !12313, !DIExpression(), !12113)
    #dbg_value(i64 %.sroa.011.030.i.i, !12315, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12316, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12109)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !12414, !noalias !12330, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12313, !DIExpression(), !12113)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
    #dbg_value(i64 %.sroa.011.030.i.i, !12318, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12114)
    #dbg_value(i64 %.sroa.011.030.i.i, !12311, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12114)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12312, !DIExpression(), !12115)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 720, !dbg !12416
    #dbg_value(ptr poison, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(ptr poison, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr poison, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr poison, !12313, !DIExpression(), !12113)
    #dbg_value(i64 %.sroa.011.030.i.i, !12315, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12316, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12109)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !12414, !noalias !12330, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12313, !DIExpression(), !12113)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
    #dbg_value(i64 %.sroa.011.030.i.i, !12318, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12114)
    #dbg_value(i64 %.sroa.011.030.i.i, !12311, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12114)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12312, !DIExpression(), !12115)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 720, !dbg !12416
    #dbg_value(ptr poison, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(ptr poison, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr poison, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr poison, !12313, !DIExpression(), !12113)
    #dbg_value(i64 %.sroa.011.030.i.i, !12315, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12316, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12109)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !12414, !noalias !12330, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12313, !DIExpression(), !12113)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(i64 %.sroa.011.030.i.i, !12328, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12112)
    #dbg_value(i64 %.sroa.011.030.i.i, !12318, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12114)
    #dbg_value(i64 %.sroa.011.030.i.i, !12311, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12114)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12103)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12312, !DIExpression(), !12115)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 720, !dbg !12416
    #dbg_value(ptr poison, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
    #dbg_value(ptr poison, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr poison, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr poison, !12313, !DIExpression(), !12113)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !12417 ; 2 uses
    #dbg_value(i64 %i.az, !12315, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12108)
    #dbg_value(i64 %i.az, !12316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12109)
    #dbg_value(i64 %i.az, !12328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12112)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !12414, !noalias !12330, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12313, !DIExpression(), !12113)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12112)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12109)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12315, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12108)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !12415
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !12415

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10init_frontB1O_.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !12331, !DIExpression(), !12121)
    #dbg_value(ptr poison, !12291, !DIExpression(), !12122)
    #dbg_value(ptr poison, !12337, !DIExpression(), !12125)
    #dbg_declare(ptr %i.d, !12343, !DIExpression(), !12132)
    #dbg_value(ptr poison, !12348, !DIExpression(), !12133)
    #dbg_value(ptr poison, !12357, !DIExpression(), !12136)
    #dbg_declare(ptr poison, !12351, !DIExpression(), !12137)
    #dbg_declare(ptr %i.b, !12352, !DIExpression(), !12138)
    #dbg_declare(ptr %i.b, !12361, !DIExpression(), !12139)
    #dbg_declare(ptr poison, !12363, !DIExpression(), !12143)
    #dbg_declare(ptr %i.a, !12371, !DIExpression(), !12151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12420, !noalias !12386
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB1X_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !12421, !noalias !12387

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10init_frontB1O_.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !12422, !noalias !12386, !noundef !810
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !12422
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1P_.exit, !dbg !12423, !prof !1448

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18
          to label %.noexc2.i.i unwind label %bb.i, !dbg !12424, !noalias !12388

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !12424

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE10init_frontB1O_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !12159)
    #dbg_value(ptr poison, !1679, !DIExpression(), !12161)
  tail call void @llvm.trap(), !dbg !12425
  unreachable, !dbg !12425

.critedge.i:                                      ; preds = %bb.e
    #dbg_value(ptr poison, !12331, !DIExpression(), !12121)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18, !dbg !12426, !noalias !12389
  unreachable, !dbg !12426

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1P_.exit: ; preds = %.noexc.i.i
    #dbg_value(ptr poison, !12331, !DIExpression(), !12121)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !12427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12428, !noalias !12386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !12429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !12430
  br label %bb.j, !dbg !12407

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1P_.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE16deallocating_endNtNtBc_5alloc6GlobalEB1P_.exit
  ret void, !dbg !12431
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCs3f36owOmepS_6quiche(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12432 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
    #dbg_value(ptr %1, !12591, !DIExpression(), !12593)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !12807 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !12807, !noundef !810 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !12807
  br i1 %i.g, label %bb.b, label %bb.e, !dbg !12807

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12594), !dbg !12808
    #dbg_value(ptr %1, !12596, !DIExpression(), !12438)
    #dbg_declare(ptr %i.c, !12601, !DIExpression(), !12439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12603), !dbg !12809
    #dbg_value(ptr %1, !12604, !DIExpression(), !12452)
    #dbg_value(i64 0, !12622, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12464)
    #dbg_value(ptr %1, !12649, !DIExpression(), !12467)
    #dbg_value(ptr %1, !12654, !DIExpression(), !12470)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !dbg !12810, !alias.scope !12660
    #dbg_value(i64 %.sroa.01.0.copyload.i.i, !12661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12478)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12810
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !12810, !alias.scope !12660 ; 2 uses
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload.i.i, !12661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12478)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12810
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12810, !alias.scope !12660 ; 5 uses
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12661, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12478)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !12810
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !12810, !alias.scope !12660 ; 6 uses
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12661, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12478)
  store i64 0, ptr %1, align 8, !dbg !12811, !alias.scope !12660
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1, !dbg !12812
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !12812

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null, !dbg !12813
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i, !dbg !12814

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12479)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12480)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12481)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12488)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12479)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12480)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12481)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12488)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload.i.i, !12638, !DIExpression(), !12489)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12488)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12481)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12480)
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload.i.i, !12619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12479)
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0, !dbg !12815
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !12815

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7, !dbg !12815 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0, !dbg !12815
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !12815

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.037.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.036.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !12638, !DIExpression(), !12489)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12488)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !12646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12490)
    #dbg_value(i64 %.sroa.020.036.i.i.prol, !12622, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12464)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !12646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12490)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !12622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12464)
    #dbg_value(ptr %.sroa.022.037.i.i.prol, !12637, !DIExpression(), !12491)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i.prol, i64 192, !dbg !12816
    #dbg_value(ptr %i.j, !12694, !DIExpression(), !12494)
    #dbg_value(ptr %i.j, !12696, !DIExpression(), !12497)
    #dbg_value(ptr %i.j, !12698, !DIExpression(), !12500)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !12817, !noalias !12700, !nonnull !810, !noundef !810 ; 3 uses
    #dbg_value(ptr %i.k, !12619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12479)
    #dbg_value(ptr %i.k, !12643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12480)
    #dbg_value(ptr %i.k, !12644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12481)
    #dbg_value(ptr %i.k, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12488)
    #dbg_value(ptr %i.k, !12638, !DIExpression(), !12489)
  %i.l = add i64 %.sroa.020.036.i.i.prol, -1, !dbg !12818 ; 2 uses
    #dbg_value(i64 %i.l, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12488)
    #dbg_value(i64 %i.l, !12644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12481)
    #dbg_value(i64 %i.l, !12643, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12480)
    #dbg_value(i64 %i.l, !12619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12479)
  %prol.iter6.next = add i64 %prol.iter6, 1, !dbg !12815 ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4, !dbg !12815
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !12815, !llvm.loop !12502

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.037.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.036.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8, !dbg !12815
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i, !dbg !12815

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.037.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.037.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.036.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.036.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.022.037.i.i, !12638, !DIExpression(), !12489)
    #dbg_value(i64 %.sroa.020.036.i.i, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12488)
    #dbg_value(i64 %.sroa.020.036.i.i, !12646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12490)
    #dbg_value(i64 %.sroa.020.036.i.i, !12622, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12464)
    #dbg_value(ptr %.sroa.022.037.i.i, !12646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12490)
    #dbg_value(ptr %.sroa.022.037.i.i, !12622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12464)
    #dbg_value(ptr %.sroa.022.037.i.i, !12637, !DIExpression(), !12491)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.037.i.i, i64 192, !dbg !12816
    #dbg_value(ptr %i.n, !12694, !DIExpression(), !12494)
    #dbg_value(ptr %i.n, !12696, !DIExpression(), !12497)
    #dbg_value(ptr %i.n, !12698, !DIExpression(), !12500)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !12817, !noalias !12700, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.o, !12619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12479)
    #dbg_value(ptr %i.o, !12643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12480)
    #dbg_value(ptr %i.o, !12644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12481)
    #dbg_value(ptr %i.o, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12488)
    #dbg_value(ptr %i.o, !12638, !DIExpression(), !12489)
    #dbg_value(i64 %.sroa.020.036.i.i, !12644, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12481)
    #dbg_value(i64 %.sroa.020.036.i.i, !12643, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12480)
    #dbg_value(i64 %.sroa.020.036.i.i, !12619, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12479)
    #dbg_value(i64 %.sroa.020.036.i.i, !12677, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12488)
    #dbg_value(i64 %.sroa.020.036.i.i, !12646, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12490)
    #dbg_value(i64 %.sroa.020.036.i.i, !12622, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12464)
    #dbg_value(ptr %i.o, !12646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12490)
    #dbg_value(ptr %i.o, !12622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12464)
    #dbg_value(ptr %i.o, !12637, !DIExpression(), !12491)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192, !dbg !12816
    #dbg_value(ptr %i.p, !12694, !DIExpression(), !12494)
    #dbg_value(ptr %i.p, !12696, !DIExpression(), !12497)
    #dbg_value(ptr %i.p, !12698, !DIExpression(), !12500)
  %i.q = load ptr, ptr %i.p, align 8, !dbg !12817, !noalias !12700, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.q, !12619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12479)
    #dbg_value(ptr %i.q, !12643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12480)
    #dbg_value(ptr %i.q, !12644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12481)
    #dbg_value(ptr %i.q, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12488)
    #dbg_value(ptr %i.q, !12638, !DIExpression(), !12489)
    #dbg_value(i64 %.sroa.020.036.i.i, !12644, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12481)
    #dbg_value(i64 %.sroa.020.036.i.i, !12643, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12480)
    #dbg_value(i64 %.sroa.020.036.i.i, !12619, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12479)
    #dbg_value(i64 %.sroa.020.036.i.i, !12677, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12488)
    #dbg_value(i64 %.sroa.020.036.i.i, !12646, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12490)
    #dbg_value(i64 %.sroa.020.036.i.i, !12622, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12464)
    #dbg_value(ptr %i.q, !12646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12490)
    #dbg_value(ptr %i.q, !12622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12464)
    #dbg_value(ptr %i.q, !12637, !DIExpression(), !12491)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192, !dbg !12816
    #dbg_value(ptr %i.r, !12694, !DIExpression(), !12494)
    #dbg_value(ptr %i.r, !12696, !DIExpression(), !12497)
    #dbg_value(ptr %i.r, !12698, !DIExpression(), !12500)
  %i.s = load ptr, ptr %i.r, align 8, !dbg !12817, !noalias !12700, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.s, !12619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12479)
    #dbg_value(ptr %i.s, !12643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12480)
    #dbg_value(ptr %i.s, !12644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12481)
    #dbg_value(ptr %i.s, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12488)
    #dbg_value(ptr %i.s, !12638, !DIExpression(), !12489)
    #dbg_value(i64 %.sroa.020.036.i.i, !12644, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12481)
    #dbg_value(i64 %.sroa.020.036.i.i, !12643, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12480)
    #dbg_value(i64 %.sroa.020.036.i.i, !12619, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12479)
    #dbg_value(i64 %.sroa.020.036.i.i, !12677, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12488)
    #dbg_value(i64 %.sroa.020.036.i.i, !12646, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12490)
    #dbg_value(i64 %.sroa.020.036.i.i, !12622, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12464)
    #dbg_value(ptr %i.s, !12646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12490)
    #dbg_value(ptr %i.s, !12622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12464)
    #dbg_value(ptr %i.s, !12637, !DIExpression(), !12491)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192, !dbg !12816
    #dbg_value(ptr %i.t, !12694, !DIExpression(), !12494)
    #dbg_value(ptr %i.t, !12696, !DIExpression(), !12497)
    #dbg_value(ptr %i.t, !12698, !DIExpression(), !12500)
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12817, !noalias !12700, !nonnull !810, !noundef !810
    #dbg_value(ptr %i.u, !12619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12479)
    #dbg_value(ptr %i.u, !12643, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12480)
    #dbg_value(ptr %i.u, !12644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12481)
    #dbg_value(ptr %i.u, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12488)
    #dbg_value(ptr %i.u, !12638, !DIExpression(), !12489)
    #dbg_value(i64 %.sroa.020.036.i.i, !12644, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12481)
    #dbg_value(i64 %.sroa.020.036.i.i, !12643, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12480)
    #dbg_value(i64 %.sroa.020.036.i.i, !12619, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12479)
    #dbg_value(i64 %.sroa.020.036.i.i, !12677, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12488)
    #dbg_value(i64 %.sroa.020.036.i.i, !12646, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12490)
    #dbg_value(i64 %.sroa.020.036.i.i, !12622, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12464)
    #dbg_value(ptr %i.u, !12646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12490)
    #dbg_value(ptr %i.u, !12622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12464)
    #dbg_value(ptr %i.u, !12637, !DIExpression(), !12491)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192, !dbg !12816
    #dbg_value(ptr %i.v, !12694, !DIExpression(), !12494)
    #dbg_value(ptr %i.v, !12696, !DIExpression(), !12497)
end_hunk_2
begin_hunk_3_@_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIteryyE10dying_nextCs3f36owOmepS_6quiche:bb.a
  %.sroa.013.031.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.031.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.030.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.030.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12538)
    #dbg_value(i64 %.sroa.011.030.i.i, !12735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12540)
    #dbg_value(i64 %.sroa.011.030.i.i, !12728, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(ptr %.sroa.013.031.i.i, !12735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12540)
    #dbg_value(ptr %.sroa.013.031.i.i, !12728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(ptr %.sroa.013.031.i.i, !12729, !DIExpression(), !12541)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.031.i.i, i64 192, !dbg !12833
    #dbg_value(ptr poison, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(ptr poison, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr poison, !12730, !DIExpression(), !12539)
    #dbg_value(i64 %.sroa.011.030.i.i, !12732, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12733, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !12831, !noalias !12747, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i, !12730, !DIExpression(), !12539)
    #dbg_value(ptr %.sroa.013.0.i.i, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr %.sroa.013.0.i.i, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr %.sroa.013.0.i.i, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
    #dbg_value(i64 %.sroa.011.030.i.i, !12735, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12540)
    #dbg_value(i64 %.sroa.011.030.i.i, !12728, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i, !12735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12540)
    #dbg_value(ptr %.sroa.013.0.i.i, !12728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i, !12729, !DIExpression(), !12541)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 192, !dbg !12833
    #dbg_value(ptr poison, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(ptr poison, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr poison, !12730, !DIExpression(), !12539)
    #dbg_value(i64 %.sroa.011.030.i.i, !12732, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12733, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !12831, !noalias !12747, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12730, !DIExpression(), !12539)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
    #dbg_value(i64 %.sroa.011.030.i.i, !12735, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12540)
    #dbg_value(i64 %.sroa.011.030.i.i, !12728, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12540)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.1, !12729, !DIExpression(), !12541)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 192, !dbg !12833
    #dbg_value(ptr poison, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(ptr poison, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr poison, !12730, !DIExpression(), !12539)
    #dbg_value(i64 %.sroa.011.030.i.i, !12732, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12733, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !12831, !noalias !12747, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12730, !DIExpression(), !12539)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
    #dbg_value(i64 %.sroa.011.030.i.i, !12735, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12540)
    #dbg_value(i64 %.sroa.011.030.i.i, !12728, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12540)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.2, !12729, !DIExpression(), !12541)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 192, !dbg !12833
    #dbg_value(ptr poison, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(ptr poison, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr poison, !12730, !DIExpression(), !12539)
    #dbg_value(i64 %.sroa.011.030.i.i, !12732, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12733, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !12831, !noalias !12747, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12730, !DIExpression(), !12539)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
    #dbg_value(i64 %.sroa.011.030.i.i, !12735, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12540)
    #dbg_value(i64 %.sroa.011.030.i.i, !12728, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12540)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.3, !12729, !DIExpression(), !12541)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 192, !dbg !12833
    #dbg_value(ptr poison, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(ptr poison, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr poison, !12730, !DIExpression(), !12539)
    #dbg_value(i64 %.sroa.011.030.i.i, !12732, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12733, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !12831, !noalias !12747, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12730, !DIExpression(), !12539)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
    #dbg_value(i64 %.sroa.011.030.i.i, !12735, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12540)
    #dbg_value(i64 %.sroa.011.030.i.i, !12728, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12540)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.4, !12729, !DIExpression(), !12541)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 192, !dbg !12833
    #dbg_value(ptr poison, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(ptr poison, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr poison, !12730, !DIExpression(), !12539)
    #dbg_value(i64 %.sroa.011.030.i.i, !12732, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12733, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !12831, !noalias !12747, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12730, !DIExpression(), !12539)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
    #dbg_value(i64 %.sroa.011.030.i.i, !12735, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12540)
    #dbg_value(i64 %.sroa.011.030.i.i, !12728, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12540)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.5, !12729, !DIExpression(), !12541)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 192, !dbg !12833
    #dbg_value(ptr poison, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(ptr poison, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr poison, !12730, !DIExpression(), !12539)
    #dbg_value(i64 %.sroa.011.030.i.i, !12732, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12733, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !12831, !noalias !12747, !nonnull !810, !noundef !810
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12730, !DIExpression(), !12539)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(i64 %.sroa.011.030.i.i, !12745, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12538)
    #dbg_value(i64 %.sroa.011.030.i.i, !12735, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12540)
    #dbg_value(i64 %.sroa.011.030.i.i, !12728, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12540)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(ptr %.sroa.013.0.i.i.6, !12729, !DIExpression(), !12541)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 192, !dbg !12833
    #dbg_value(ptr poison, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
    #dbg_value(ptr poison, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr poison, !12730, !DIExpression(), !12539)
  %i.az = add i64 %.sroa.011.030.i.i, -8, !dbg !12834 ; 2 uses
    #dbg_value(i64 %i.az, !12732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12534)
    #dbg_value(i64 %i.az, !12733, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12535)
    #dbg_value(i64 %i.az, !12745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12538)
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !12831, !noalias !12747, !nonnull !810, !noundef !810 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12730, !DIExpression(), !12539)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12733, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12535)
    #dbg_value(ptr %.sroa.013.0.i.i.7, !12732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12534)
  %i.ba = icmp eq i64 %i.az, 0, !dbg !12832
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !12832

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCs3f36owOmepS_6quiche.exit.i: ; preds = %._crit_edge.i.i, %bb.f
    #dbg_value(ptr poison, !12748, !DIExpression(), !12547)
    #dbg_value(ptr poison, !12708, !DIExpression(), !12548)
    #dbg_value(ptr poison, !12754, !DIExpression(), !12551)
    #dbg_declare(ptr %i.d, !12760, !DIExpression(), !12558)
    #dbg_value(ptr poison, !12765, !DIExpression(), !12559)
    #dbg_value(ptr poison, !12774, !DIExpression(), !12562)
    #dbg_declare(ptr poison, !12768, !DIExpression(), !12563)
    #dbg_declare(ptr %i.b, !12769, !DIExpression(), !12564)
    #dbg_declare(ptr %i.b, !12778, !DIExpression(), !12565)
    #dbg_declare(ptr poison, !12780, !DIExpression(), !12569)
    #dbg_declare(ptr %i.a, !12788, !DIExpression(), !12577)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12837, !noalias !12803
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingyyNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !12838, !noalias !12804

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !12839, !noalias !12803, !noundef !810
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !12839
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, !dbg !12840, !prof !1448

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #18
          to label %.noexc2.i.i unwind label %bb.i, !dbg !12841, !noalias !12805

.noexc2.i.i:                                      ; preds = %bb.h
  unreachable, !dbg !12841

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyyE10init_frontCs3f36owOmepS_6quiche.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
    #dbg_value(ptr poison, !1673, !DIExpression(), !12585)
    #dbg_value(ptr poison, !1679, !DIExpression(), !12587)
  tail call void @llvm.trap(), !dbg !12842
  unreachable, !dbg !12842

.critedge.i:                                      ; preds = %bb.e
    #dbg_value(ptr poison, !12748, !DIExpression(), !12547)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18, !dbg !12843, !noalias !12806
  unreachable, !dbg !12843

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit: ; preds = %.noexc.i.i
    #dbg_value(ptr poison, !12748, !DIExpression(), !12547)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !12844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12845, !noalias !12803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !12846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !12847
  br label %bb.j, !dbg !12824

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyyE16deallocating_endNtNtBc_5alloc6GlobalECs3f36owOmepS_6quiche.exit
  ret void, !dbg !12848
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs3f36owOmepS_6quiche4rand10rand_bytes(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #3 !dbg !653 {
bb.a:
    #dbg_value(ptr %0, !3526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12849)
    #dbg_value(i64 %1, !3526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12849)
  %i.a = tail call noundef i32 @RAND_bytes(ptr noundef nonnull %0, i64 noundef %1) #23, !dbg !12850 ; 0 uses
  ret void, !dbg !12851
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -1) i64 @_RNvNtCs3f36owOmepS_6quiche4rand16rand_u64_uniform(i64 noundef %0) unnamed_addr #0 !dbg !12855 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(i64 %0, !12866, !DIExpression(), !12871)
  %i.c = icmp eq i64 %0, 0, !dbg !12875
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !12875

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 -1, %0, !dbg !12875             ; 2 uses
    #dbg_value(i64 %i.d, !12867, !DIExpression(), !12872)
  %i.e = mul i64 %i.d, %0, !dbg !12876            ; 2 uses
    #dbg_value(i64 %i.e, !12868, !DIExpression(), !12873)
    #dbg_declare(ptr %i.b, !3528, !DIExpression(), !12857)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12877
  store i64 0, ptr %i.b, align 8, !dbg !12878
    #dbg_value(ptr %i.b, !3526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12859)
    #dbg_value(i64 8, !3526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12859)
  %i.f = call noundef i32 @RAND_bytes(ptr noundef nonnull %i.b, i64 noundef 8) #23, !dbg !12879 ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !dbg !12880 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12881
    #dbg_value(i64 %.sroa.0.0.copyload.i, !12869, !DIExpression(), !12874)
  %.not6 = icmp ult i64 %.sroa.0.0.copyload.i, %i.e, !dbg !12882
  br i1 %.not6, label %._crit_edge, label %.lr.ph, !dbg !12882

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #18, !dbg !12875
  unreachable, !dbg !12875

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
    #dbg_declare(ptr %i.a, !3528, !DIExpression(), !12861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12883
  store i64 0, ptr %i.a, align 8, !dbg !12884
    #dbg_value(ptr %i.a, !3526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12863)
    #dbg_value(i64 8, !3526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12863)
  %i.g = call noundef i32 @RAND_bytes(ptr noundef nonnull %i.a, i64 noundef 8) #23, !dbg !12885 ; 0 uses
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.a, align 8, !dbg !12886 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12887
    #dbg_value(i64 %.sroa.0.0.copyload.i5, !12869, !DIExpression(), !12874)
  %.not = icmp ult i64 %.sroa.0.0.copyload.i5, %i.e, !dbg !12882
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !12882

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload.i5, %.lr.ph ], !dbg !12873
  %i.h = udiv i64 %.sroa.0.0.lcssa, %i.d, !dbg !12888
  ret i64 %i.h, !dbg !12889
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i8 @_RNvNtCs3f36owOmepS_6quiche4rand7rand_u8() unnamed_addr #3 !dbg !12891 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
    #dbg_declare(ptr %i.a, !12897, !DIExpression(), !12899)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12900
  store i8 0, ptr %i.a, align 1, !dbg !12901
    #dbg_value(ptr %i.a, !3526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12893)
    #dbg_value(i64 1, !3526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12893)
  %i.b = call noundef i32 @RAND_bytes(ptr noundef nonnull %i.a, i64 noundef 1) #23, !dbg !12902 ; 0 uses
  %i.c = load i8, ptr %i.a, align 1, !dbg !12903, !noundef !810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12904
  ret i8 %i.c, !dbg !12905
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @_RNvNtCs3f36owOmepS_6quiche4rand8rand_u64() unnamed_addr #3 !dbg !654 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_declare(ptr %i.a, !3528, !DIExpression(), !12908)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12909
  store i64 0, ptr %i.a, align 8, !dbg !12910
    #dbg_value(ptr %i.a, !3526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12907)
    #dbg_value(i64 8, !3526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12907)
  %i.b = call noundef i32 @RAND_bytes(ptr noundef nonnull %i.a, i64 noundef 8) #23, !dbg !12911 ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !dbg !12912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12913
  ret i64 %.sroa.0.0.copyload, !dbg !12914
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12915 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
    #dbg_value(ptr %0, !12982, !DIExpression(), !12984)
    #dbg_value(ptr %0, !12985, !DIExpression(), !12990)
    #dbg_declare(ptr %i.b, !12991, !DIExpression(), !12998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13026
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !dbg !13027 ; 3 uses
    #dbg_value(ptr %.sroa.06.0.copyload, !12999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13013)
    #dbg_value(i64 poison, !12999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13013)
    #dbg_value(i64 poison, !12999, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13013)
    #dbg_value(i64 poison, !13002, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13014)
    #dbg_value(ptr poison, !13002, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13014)
    #dbg_value(i64 poison, !13002, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13014)
  %.not = icmp eq ptr %.sroa.06.0.copyload, null, !dbg !13028
  br i1 %.not, label %bb.c, label %bb.b, !dbg !13029

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13027
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !dbg !13027
    #dbg_value(i64 %.sroa.58.0.copyload, !12999, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13013)
    #dbg_value(i64 %.sroa.58.0.copyload, !13002, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13014)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13027
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !13027 ; 2 uses
    #dbg_value(i64 %.sroa.47.0.copyload, !12999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13013)
    #dbg_value(i64 %.sroa.47.0.copyload, !13002, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13014)
    #dbg_value(i64 %.sroa.47.0.copyload, !13003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13015)
    #dbg_value(ptr %.sroa.06.0.copyload, !13003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13015)
    #dbg_value(i64 1, !13004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13016)
    #dbg_value(ptr null, !13004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13016)
    #dbg_value(ptr %.sroa.06.0.copyload, !13004, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13016)
    #dbg_value(i64 %.sroa.47.0.copyload, !13004, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13016)
    #dbg_value(i64 1, !13004, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13016)
    #dbg_value(ptr null, !13004, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !13016)
    #dbg_value(ptr %.sroa.06.0.copyload, !13004, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !13016)
    #dbg_value(i64 %.sroa.47.0.copyload, !13004, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !13016)
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13030
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8, !dbg !13030
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !13030
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !13030
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !13030
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8, !dbg !13030
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !13030
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8, !dbg !13030
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !13030
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8, !dbg !13030
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !13030
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8, !dbg !13030
  br label %bb.c, !dbg !13031

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink49 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !13014 ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ], !dbg !13014
  store i64 %.sink49, ptr %i.b, align 8, !dbg !13014
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !13014
  store i64 %.sink49, ptr %i.c, align 8, !dbg !13014
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !13014
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8, !dbg !13014
    #dbg_value(ptr %i.b, !13017, !DIExpression(), !12926)
    #dbg_value(ptr %i.b, !13021, !DIExpression(), !12931)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13032, !noalias !13025
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE10dying_nextCs3f36owOmepS_6quiche(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !dbg !13033
  %i.e = load ptr, ptr %i.a, align 8, !dbg !13032, !noalias !13025, !noundef !810 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.e, null, !dbg !13032
  br i1 %.not12.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEECs3f36owOmepS_6quiche.exit, label %.lr.ph.i.i, !dbg !13034

.lr.ph.i.i:                                       ; preds = %bb.c
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d, !dbg !13034

bb.d:                                             ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs3f36owOmepS_6quiche.exit.i.i, %.lr.ph.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.p, %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs3f36owOmepS_6quiche.exit.i.i ] ; 2 uses
    #dbg_value(ptr %i.f, !13022, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12936)
    #dbg_value(i64 poison, !13022, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12936)
  %.sroa.45.0.copyload.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !dbg !13035, !noalias !13025 ; 2 uses
    #dbg_value(i64 %.sroa.45.0.copyload.i.i, !13022, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12936)
    #dbg_value(ptr %i.b, !13023, !DIExpression(), !12937)
    #dbg_declare(ptr poison, !2428, !DIExpression(), !12939)
    #dbg_value(ptr %i.f, !2436, !DIExpression(), !12940)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !13036
    #dbg_value(ptr %i.g, !2448, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12942)
    #dbg_value(i64 11, !2448, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12942)
    #dbg_value(i64 %.sroa.45.0.copyload.i.i, !2457, !DIExpression(), !12942)
    #dbg_value(i64 %.sroa.45.0.copyload.i.i, !2463, !DIExpression(), !12944)
    #dbg_value(i64 %.sroa.45.0.copyload.i.i, !2474, !DIExpression(), !12946)
    #dbg_value(i64 %.sroa.45.0.copyload.i.i, !2485, !DIExpression(), !12948)
    #dbg_value(ptr %i.g, !2471, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12944)
    #dbg_value(i64 11, !2471, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12944)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.45.0.copyload.i.i, !dbg !13037 ; 3 uses
    #dbg_value(ptr %i.h, !2438, !DIExpression(), !12949)
    #dbg_value(ptr %i.h, !2497, !DIExpression(), !12951)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 272, !dbg !13038
    #dbg_value(ptr %i.i, !2481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12946)
    #dbg_value(i64 11, !2481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12946)
    #dbg_value(ptr %i.i, !2492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12948)
    #dbg_value(i64 11, !2492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12948)
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %.sroa.45.0.copyload.i.i, !dbg !13039 ; 2 uses
    #dbg_value(ptr %i.j, !2440, !DIExpression(), !12952)
    #dbg_value(ptr %i.j, !2441, !DIExpression(), !12953)
    #dbg_value(ptr %i.h, !2503, !DIExpression(), !12955)
end_hunk_3
