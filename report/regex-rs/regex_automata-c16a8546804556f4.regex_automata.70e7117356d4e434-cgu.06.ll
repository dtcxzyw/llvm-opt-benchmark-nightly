Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.06?download=true
inline.NumInlined: 353
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB15_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata:bb.a
    #dbg_value(ptr %i.w, !3152, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6232)
    #dbg_value(ptr %i.w, !2705, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6241)
    #dbg_value(ptr %i.w, !2735, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6249)
    #dbg_value(ptr %i.w, !2784, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6259)
    #dbg_value(ptr %i.w, !2799, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6267)
    #dbg_value(ptr %i.w, !2812, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6277)
    #dbg_value(ptr %i.w, !2815, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6278)
    #dbg_value(ptr %i.w, !2827, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6280)
    #dbg_value(ptr %i.w, !2833, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6282)
  %.sroa.014.0.copyload.i.1.i = load i64, ptr %i.w, align 8, !dbg !6319, !alias.scope !6321, !noalias !5990
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 25, !dbg !6319
    #dbg_value(i64 %.sroa.014.0.copyload.i.1.i, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6322)
    #dbg_value(ptr %i.y, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6322)
    #dbg_value(i64 %i.aa, !3076, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6322)
    #dbg_value(i8 %i.al, !3076, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !6322)
    #dbg_value(ptr undef, !3088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6208)
    #dbg_value(ptr %i.w, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(i64 1, !3088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6208)
  %.sroa.0.0.i60.1.i282 = getelementptr inbounds i8, ptr %i.w, i64 -32, !dbg !6323 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i60.1.i282, i64 32, i1 false), !dbg !6325, !alias.scope !6321, !noalias !5990
  %i.as = icmp eq i64 %.sroa.05.08.1.i, 1, !dbg !6326
  br i1 %i.as, label %._crit_edge287, label %.lr.ph286, !dbg !6326

bb.j:                                             ; preds = %.lr.ph286
  %.sroa.0.0.i60.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i60.1.i284, i64 -32, !dbg !6323 ; 3 uses
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(ptr %.sroa.0.0.i60.1.i, !3152, !DIExpression(), !6232)
    #dbg_value(ptr %.sroa.0.0.i60.1.i, !3074, !DIExpression(), !6234)
    #dbg_value(ptr %.sroa.0.0.i60.1.i, !3173, !DIExpression(), !6230)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !3174, !DIExpression(), !6230)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i60.1.i284, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i60.1.i, i64 32, i1 false), !dbg !6325, !alias.scope !6321, !noalias !5990
    #dbg_value(ptr %.sroa.0.0.i60.1.i, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
  %i.at = icmp eq ptr %.sroa.0.0.i60.1.i, %i.r, !dbg !6326
  br i1 %i.at, label %._crit_edge287, label %.lr.ph286, !dbg !6326

.lr.ph286:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i60.1.i284 = phi ptr [ %.sroa.0.0.i60.1.i, %bb.j ], [ %.sroa.0.0.i60.1.i282, %bb.i ] ; 5 uses
  %.sroa.5.0.i.1.i283 = phi ptr [ %.sroa.0.0.i60.1.i284, %bb.j ], [ %i.w, %bb.i ] ; 4 uses
    #dbg_value(ptr %.sroa.5.0.i.1.i283, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !3074, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6234)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !3152, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6232)
  call void @llvm.experimental.noalias.scope.decl(metadata !6327), !dbg !6330
    #dbg_value(ptr undef, !2705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6224)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !2705, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6224)
    #dbg_value(ptr poison, !2714, !DIExpression(), !6224)
  call void @llvm.experimental.noalias.scope.decl(metadata !6331), !dbg !6334
    #dbg_value(ptr undef, !2730, !DIExpression(), !6223)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !2735, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6223)
    #dbg_declare(ptr poison, !2741, !DIExpression(), !6335)
  call void @llvm.experimental.noalias.scope.decl(metadata !6337), !dbg !6340
    #dbg_value(ptr undef, !2777, !DIExpression(), !6222)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !2784, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6222)
  call void @llvm.experimental.noalias.scope.decl(metadata !6341), !dbg !6344
    #dbg_value(ptr undef, !2793, !DIExpression(), !6221)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !2799, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6221)
    #dbg_value(ptr undef, !2804, !DIExpression(), !6220)
    #dbg_value(ptr undef, !2815, !DIExpression(), !6219)
    #dbg_value(ptr undef, !2827, !DIExpression(), !6218)
    #dbg_value(ptr undef, !2833, !DIExpression(), !6209)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !2812, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6345)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !2815, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6346)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !2827, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6348)
    #dbg_value(ptr %.sroa.0.0.i60.1.i284, !2833, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6350)
    #dbg_value(i64 %i.aa, !2874, !DIExpression(), !6352)
    #dbg_value(ptr %i.y, !2904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6355)
    #dbg_value(ptr %i.y, !2884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6356)
    #dbg_value(i64 %i.aa, !2904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6355)
    #dbg_value(i64 %i.aa, !2884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6356)
  %i.au = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i283, i64 -56, !dbg !6357
  %i.av = load ptr, ptr %i.au, align 8, !dbg !6357, !alias.scope !6361, !noalias !6362, !nonnull !29, !noundef !29
  %i.aw = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i283, i64 -48, !dbg !6367
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !6367, !alias.scope !6361, !noalias !6362, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.av, !2905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6355)
    #dbg_value(ptr %i.av, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6356)
    #dbg_value(i64 %i.ax, !2905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6355)
    #dbg_value(i64 %i.ax, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6356)
  %i.ay = sub i64 %i.aa, %i.ax, !dbg !6368
    #dbg_value(i64 %i.ay, !2890, !DIExpression(), !6369)
  %spec.store.select.i.i.i.i16.i.1.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ax), !dbg !6370
    #dbg_value(i64 %spec.store.select.i.i.i.i16.i.1.i, !2874, !DIExpression(), !6352)
    #dbg_value(ptr %i.y, !2891, !DIExpression(), !6371)
    #dbg_value(ptr %i.av, !2893, !DIExpression(), !6372)
  %i.az = call i32 @memcmp(ptr nonnull %i.y, ptr nonnull %i.av, i64 %spec.store.select.i.i.i.i16.i.1.i), !dbg !6373, !noalias !6374 ; 2 uses
  %i.ba = sext i32 %i.az to i64, !dbg !6373
    #dbg_value(i64 %i.ba, !2895, !DIExpression(), !6375)
  %i.bb = icmp eq i32 %i.az, 0, !dbg !6376
  %spec.store.select1.i.i.i.i17.i.1.i = select i1 %i.bb, i64 %i.ay, i64 %i.ba, !dbg !6376 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i.i.i17.i.1.i, !2895, !DIExpression(), !6375)
  %i.bc = icmp eq i64 %spec.store.select1.i.i.i.i17.i.1.i, 0, !dbg !6377
  %i.bd = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i283, i64 -40, !dbg !6377
  %i.be = load i8, ptr %i.bd, align 8, !dbg !6377, !range !2927, !alias.scope !6378, !noalias !6379
    #dbg_value(i8 poison, !2766, !DIExpression(), !6380)
  %i.bf = icmp samesign ult i8 %i.al, %i.be, !dbg !6381
  %i.bg = icmp slt i64 %spec.store.select1.i.i.i.i17.i.1.i, 0, !dbg !6381
  %i.bh = select i1 %i.bc, i1 %i.bf, i1 %i.bg, !dbg !6377
  br i1 %i.bh, label %bb.j, label %._crit_edge287, !dbg !6330

._crit_edge287:                                   ; preds = %bb.j, %.lr.ph286, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.w, %bb.i ], [ %.sroa.0.0.i60.1.i284, %bb.j ], [ %.sroa.5.0.i.1.i283, %.lr.ph286 ], !dbg !6322 ; 4 uses
  %.sroa.0.0.i60.lcssa.1.i = phi ptr [ %i.r, %bb.i ], [ %i.r, %bb.j ], [ %.sroa.0.0.i60.1.i284, %.lr.ph286 ], !dbg !6323
    #dbg_value(ptr undef, !3106, !DIExpression(), !6200)
    #dbg_value(ptr undef, !3095, !DIExpression(), !6196)
    #dbg_value(ptr undef, !3125, !DIExpression(), !6206)
    #dbg_value(ptr %.sroa.0.0.i60.lcssa.1.i, !3130, !DIExpression(), !6206)
    #dbg_value(i64 1, !3131, !DIExpression(), !6206)
  store i64 %.sroa.014.0.copyload.i.1.i, ptr %.sroa.0.0.i60.lcssa.1.i, align 8, !dbg !6382, !alias.scope !6321, !noalias !6383
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -24, !dbg !6382
  store ptr %i.y, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !dbg !6382, !alias.scope !6321, !noalias !6383
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -16, !dbg !6382
  store i64 %i.aa, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !dbg !6382, !alias.scope !6321, !noalias !6383
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8, !dbg !6382
  store i8 %i.al, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !dbg !6382, !alias.scope !6321, !noalias !6383
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -7, !dbg !6382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 1 dereferenceable(7) %i.ar, i64 7, i1 false), !dbg !6382, !alias.scope !6169
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.1.i, !dbg !6388

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.1.i: ; preds = %._crit_edge287, %.lr.ph.1.i
  %i.bi = add nuw nsw i64 %.sroa.05.08.1.i, 1, !dbg !6389 ; 2 uses
    #dbg_value(i64 %i.bi, !6063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6187)
    #dbg_value(ptr undef, !6098, !DIExpression(), !6104)
    #dbg_value(ptr undef, !6091, !DIExpression(), !6103)
    #dbg_value(ptr undef, !6071, !DIExpression(), !6080)
    #dbg_value(ptr undef, !6079, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6188)
  %exitcond.1.not.i = icmp eq i64 %i.bi, %i.s, !dbg !6189
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i, !dbg !6190

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.1.i, %.loopexit.i
    #dbg_value(i64 2, !6013, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6176)
    #dbg_value(ptr %2, !6067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6390)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa112, !6067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6390)
    #dbg_value(i64 %.sroa.16.0.lcssa, !6067, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6390)
  call void @llvm.experimental.noalias.scope.decl(metadata !6391), !dbg !6394
    #dbg_value(ptr %.sroa.0.0.ph.lcssa112, !6395, !DIExpression(), !6430)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa112, !6412, !DIExpression(), !6432)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa112, !6433, !DIExpression(), !6438)
    #dbg_value(ptr %2, !6400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6430)
    #dbg_value(i64 %.sroa.16.0.lcssa, !6400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6430)
    #dbg_value(ptr poison, !6401, !DIExpression(), !6430)
    #dbg_value(i64 1, !6440, !DIExpression(), !6444)
    #dbg_value(i64 1, !6457, !DIExpression(), !6461)
    #dbg_value(i64 1, !6463, !DIExpression(), !6469)
    #dbg_value(i64 1, !6471, !DIExpression(), !6477)
    #dbg_value(i64 1, !6463, !DIExpression(), !6479)
    #dbg_value(i64 1, !6471, !DIExpression(), !6481)
    #dbg_value(i64 2, !6484, !DIExpression(), !6490)
    #dbg_value(i64 1, !6437, !DIExpression(), !6438)
    #dbg_value(i64 %.sroa.16.0.lcssa, !6402, !DIExpression(), !6492)
    #dbg_value(i64 %.sroa.16.0.lcssa, !6489, !DIExpression(), !6490)
    #dbg_value(ptr %2, !6404, !DIExpression(), !6493)
    #dbg_value(ptr %2, !6494, !DIExpression(), !6498)
    #dbg_value(ptr %2, !6494, !DIExpression(), !6500)
    #dbg_value(ptr %2, !6494, !DIExpression(), !6502)
    #dbg_value(i64 %i.o, !6406, !DIExpression(), !6504)
    #dbg_value(i64 %i.o, !6497, !DIExpression(), !6498)
    #dbg_value(i64 %i.o, !6497, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !6500)
    #dbg_value(i64 %.sroa.16.0.lcssa, !6497, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !6502)
    #dbg_value(i64 %.sroa.16.0.lcssa, !6505, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !6509)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa112, !6508, !DIExpression(), !6509)
    #dbg_value(!DIArgList(ptr %.sroa.0.0.ph.lcssa112, i64 %.sroa.16.0.lcssa), !6418, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6511)
    #dbg_value(i64 0, !6420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6512)
    #dbg_value(i64 %i.o, !6420, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6512)
    #dbg_value(ptr %2, !6494, !DIExpression(), !6513)
    #dbg_value(ptr %2, !6408, !DIExpression(), !6515)
    #dbg_value(!DIArgList(ptr %2, i64 %i.o), !6494, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6516)
    #dbg_value(!DIArgList(ptr %2, i64 %i.o), !6410, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6518)
    #dbg_value(!DIArgList(ptr %2, i64 %i.o), !6476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6477)
    #dbg_value(!DIArgList(ptr %2, i64 %i.o), !6468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6469)
    #dbg_value(!DIArgList(ptr %2, i64 %i.o), !6414, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6519)
    #dbg_value(!DIArgList(ptr %2, i64 %.sroa.16.0.lcssa), !6476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6481)
    #dbg_value(!DIArgList(ptr %2, i64 %.sroa.16.0.lcssa), !6468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6479)
    #dbg_value(!DIArgList(ptr %2, i64 %.sroa.16.0.lcssa), !6416, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6520)
    #dbg_value(ptr undef, !6454, !DIExpression(), !6521)
    #dbg_value(ptr undef, !6449, !DIExpression(), !6522)
    #dbg_value(ptr undef, !6523, !DIExpression(), !6527)
    #dbg_value(ptr undef, !6526, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6529)
  %i.bj = add nsw i64 %.sroa.16.0.lcssa, -1, !dbg !6530 ; 2 uses
    #dbg_value(!DIArgList(ptr %.sroa.0.0.ph.lcssa112, i64 %i.bj), !6418, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6511)
    #dbg_value(!DIArgList(ptr %2, i64 %i.bj), !6416, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6520)
    #dbg_value(!DIArgList(ptr %2, i64 %i.bj), !6468, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6479)
    #dbg_value(!DIArgList(ptr %2, i64 %i.bj), !6476, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !6481)
    #dbg_value(i64 %i.bj, !6497, !DIExpression(), !6502)
    #dbg_value(i64 %i.bj, !6505, !DIExpression(), !6509)
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa112, i64 %i.bj, !dbg !6531
    #dbg_value(ptr %i.bk, !6418, !DIExpression(), !6511)
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.bj, !dbg !6532
    #dbg_value(ptr %i.bl, !6476, !DIExpression(), !6481)
    #dbg_value(ptr %i.bl, !6468, !DIExpression(), !6479)
    #dbg_value(ptr %i.bl, !6416, !DIExpression(), !6520)
    #dbg_value(ptr %i.r, !6494, !DIExpression(), !6516)
    #dbg_value(ptr %i.r, !6410, !DIExpression(), !6518)
    #dbg_value(ptr %i.r, !6414, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6519)
    #dbg_value(ptr %i.r, !6468, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6469)
    #dbg_value(ptr %i.r, !6476, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6477)
  %i.bm = getelementptr i8, ptr %i.r, i64 -32, !dbg !6533
    #dbg_value(ptr %i.bm, !6476, !DIExpression(), !6477)
    #dbg_value(ptr %i.bm, !6468, !DIExpression(), !6469)
    #dbg_value(ptr %i.bm, !6414, !DIExpression(), !6519)
  br label %.lr.ph.i.i, !dbg !6534

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.bn = getelementptr i8, ptr %i.do, i64 32, !dbg !6535 ; 2 uses
    #dbg_value(ptr %i.bn, !6422, !DIExpression(), !6536)
  %i.bo = getelementptr i8, ptr %i.dn, i64 32, !dbg !6537
    #dbg_value(ptr %i.bo, !6424, !DIExpression(), !6538)
  %i.bp = and i64 %.sroa.16.0.lcssa, 1, !dbg !6539
  %i.bq = icmp eq i64 %i.bp, 0, !dbg !6539
  br i1 %i.bq, label %bb.l, label %bb.k, !dbg !6540

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa112, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 5 uses
  %.sroa.011.07.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %i.r, %.loopexit.1.i ] ; 5 uses
  %.sroa.015.06.i.i = phi ptr [ %i.do, %.lr.ph.i.i ], [ %i.bm, %.loopexit.1.i ] ; 5 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dn, %.lr.ph.i.i ], [ %i.bl, %.loopexit.1.i ] ; 5 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %i.bk, %.loopexit.1.i ] ; 2 uses
    #dbg_value(ptr %.sroa.0.010.i.i, !6433, !DIExpression(), !6438)
    #dbg_value(ptr %.sroa.06.08.i.i, !6494, !DIExpression(), !6513)
    #dbg_value(ptr %.sroa.011.07.i.i, !6494, !DIExpression(), !6516)
    #dbg_value(ptr %.sroa.015.06.i.i, !6476, !DIExpression(), !6477)
    #dbg_value(ptr %.sroa.017.05.i.i, !6476, !DIExpression(), !6481)
    #dbg_value(ptr %.sroa.019.04.i.i, !6418, !DIExpression(), !6511)
    #dbg_value(i64 %.sroa.04.09.i.i, !6450, !DIExpression(), !6541)
    #dbg_value(i64 %.sroa.04.09.i.i, !6443, !DIExpression(), !6444)
    #dbg_value(i64 %.sroa.04.09.i.i, !6460, !DIExpression(), !6461)
  %i.br = add nuw nsw i64 %.sroa.04.09.i.i, 1, !dbg !6542 ; 2 uses
    #dbg_value(i64 %i.br, !6420, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6512)
    #dbg_value(ptr %.sroa.06.08.i.i, !6543, !DIExpression(), !6560)
    #dbg_value(ptr %.sroa.06.08.i.i, !6562, !DIExpression(), !6566)
    #dbg_value(ptr %.sroa.011.07.i.i, !6553, !DIExpression(), !6560)
    #dbg_value(ptr %.sroa.011.07.i.i, !6562, !DIExpression(), !6568)
    #dbg_value(ptr %.sroa.0.010.i.i, !6554, !DIExpression(), !6560)
    #dbg_value(ptr %.sroa.0.010.i.i, !6570, !DIExpression(), !6574)
    #dbg_value(ptr poison, !6555, !DIExpression(), !6560)
    #dbg_value(i64 1, !6576, !DIExpression(), !6581)
    #dbg_value(i64 1, !6573, !DIExpression(), !6574)
  call void @llvm.experimental.noalias.scope.decl(metadata !6583), !dbg !6586
  call void @llvm.experimental.noalias.scope.decl(metadata !6587), !dbg !6586
    #dbg_value(ptr %.sroa.011.07.i.i, !2705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6589)
    #dbg_value(ptr %.sroa.06.08.i.i, !2705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6589)
    #dbg_value(ptr poison, !2714, !DIExpression(), !6589)
  call void @llvm.experimental.noalias.scope.decl(metadata !6591), !dbg !6594
  call void @llvm.experimental.noalias.scope.decl(metadata !6595), !dbg !6594
    #dbg_value(ptr %.sroa.011.07.i.i, !2730, !DIExpression(), !6597)
    #dbg_value(ptr %.sroa.06.08.i.i, !2735, !DIExpression(), !6597)
    #dbg_declare(ptr poison, !2741, !DIExpression(), !6599)
  call void @llvm.experimental.noalias.scope.decl(metadata !6601), !dbg !6604
  call void @llvm.experimental.noalias.scope.decl(metadata !6605), !dbg !6604
    #dbg_value(ptr %.sroa.011.07.i.i, !2777, !DIExpression(), !6607)
    #dbg_value(ptr %.sroa.06.08.i.i, !2784, !DIExpression(), !6607)
  call void @llvm.experimental.noalias.scope.decl(metadata !6609), !dbg !6612
  call void @llvm.experimental.noalias.scope.decl(metadata !6613), !dbg !6612
    #dbg_value(ptr %.sroa.011.07.i.i, !2793, !DIExpression(), !6615)
    #dbg_value(ptr %.sroa.06.08.i.i, !2799, !DIExpression(), !6615)
    #dbg_value(ptr %.sroa.011.07.i.i, !2804, !DIExpression(), !6617)
    #dbg_value(ptr %.sroa.011.07.i.i, !2815, !DIExpression(), !6619)
    #dbg_value(ptr %.sroa.011.07.i.i, !2827, !DIExpression(), !6621)
    #dbg_value(ptr %.sroa.011.07.i.i, !2833, !DIExpression(), !6623)
    #dbg_value(ptr %.sroa.06.08.i.i, !2812, !DIExpression(), !6625)
    #dbg_value(ptr %.sroa.06.08.i.i, !2815, !DIExpression(), !6626)
    #dbg_value(ptr %.sroa.06.08.i.i, !2827, !DIExpression(), !6628)
    #dbg_value(ptr %.sroa.06.08.i.i, !2833, !DIExpression(), !6630)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 8, !dbg !6632
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !6632, !alias.scope !6636, !noalias !6637, !nonnull !29, !noundef !29
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 16, !dbg !6638
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !6638, !alias.scope !6636, !noalias !6637, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.bv, !2874, !DIExpression(), !6639)
    #dbg_value(ptr %i.bt, !2904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6642)
    #dbg_value(ptr %i.bt, !2884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6643)
    #dbg_value(i64 %i.bv, !2904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6642)
    #dbg_value(i64 %i.bv, !2884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6643)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 8, !dbg !6644
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !6644, !alias.scope !6648, !noalias !6649, !nonnull !29, !noundef !29
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 16, !dbg !6650
  %i.bz = load i64, ptr %i.by, align 8, !dbg !6650, !alias.scope !6648, !noalias !6649, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.bx, !2905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6642)
    #dbg_value(ptr %i.bx, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6643)
    #dbg_value(i64 %i.bz, !2905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6642)
    #dbg_value(i64 %i.bz, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6643)
  %i.ca = sub i64 %i.bv, %i.bz, !dbg !6651
    #dbg_value(i64 %i.ca, !2890, !DIExpression(), !6652)
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bz), !dbg !6653
    #dbg_value(i64 %spec.store.select.i.i.i.i.i.i, !2874, !DIExpression(), !6639)
    #dbg_value(ptr %i.bt, !2891, !DIExpression(), !6654)
    #dbg_value(ptr %i.bx, !2893, !DIExpression(), !6655)
  %i.cb = call i32 @memcmp(ptr nonnull %i.bt, ptr nonnull %i.bx, i64 %spec.store.select.i.i.i.i.i.i), !dbg !6656, !noalias !6657 ; 2 uses
  %i.cc = sext i32 %i.cb to i64, !dbg !6656
    #dbg_value(i64 %i.cc, !2895, !DIExpression(), !6658)
  %i.cd = icmp eq i32 %i.cb, 0, !dbg !6659
  %spec.store.select1.i.i.i.i.i.i = select i1 %i.cd, i64 %i.ca, i64 %i.cc, !dbg !6659 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i.i.i.i.i, !2895, !DIExpression(), !6658)
  %i.ce = icmp eq i64 %spec.store.select1.i.i.i.i.i.i, 0, !dbg !6660
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 24, !dbg !6660
  %i.cg = load i8, ptr %i.cf, align 8, !dbg !6660, !range !2927, !alias.scope !6661, !noalias !6662
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 24, !dbg !6660
  %i.ci = load i8, ptr %i.ch, align 8, !dbg !6660, !range !2927, !alias.scope !6663, !noalias !6664
    #dbg_value(i8 poison, !2766, !DIExpression(), !6665)
  %i.cj = icmp samesign ult i8 %i.cg, %i.ci, !dbg !6666
  %i.ck = icmp slt i64 %spec.store.select1.i.i.i.i.i.i, 0, !dbg !6666
  %i.cl = select i1 %i.ce, i1 %i.cj, i1 %i.ck, !dbg !6660 ; 3 uses
    #dbg_value(i1 %i.cl, !6556, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6667)
  %..i43.i.i = select i1 %i.cl, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i, !dbg !6668
  %i.cm = xor i1 %i.cl, true, !dbg !6669
    #dbg_value(i1 %i.cm, !6556, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6667)
    #dbg_value(ptr %..i43.i.i, !6579, !DIExpression(), !6581)
    #dbg_value(ptr %..i43.i.i, !6558, !DIExpression(), !6670)
    #dbg_value(ptr %.sroa.0.010.i.i, !6580, !DIExpression(), !6581)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i43.i.i, i64 32, i1 false), !dbg !6671, !alias.scope !6169, !noalias !6672
  %i.cn = zext i1 %i.cl to i64, !dbg !6676
    #dbg_value(i64 %i.cn, !6565, !DIExpression(), !6568)
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.07.i.i, i64 %i.cn, !dbg !6677 ; 4 uses
    #dbg_value(ptr %i.co, !6553, !DIExpression(), !6560)
    #dbg_value(ptr %i.co, !6562, !DIExpression(), !6568)
  %i.cp = zext i1 %i.cm to i64, !dbg !6678
    #dbg_value(i64 %i.cp, !6565, !DIExpression(), !6566)
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.08.i.i, i64 %i.cp, !dbg !6679 ; 5 uses
    #dbg_value(ptr %i.cq, !6543, !DIExpression(), !6560)
    #dbg_value(ptr %i.cq, !6562, !DIExpression(), !6566)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 32, !dbg !6680 ; 2 uses
    #dbg_value(ptr %i.cr, !6554, !DIExpression(), !6560)
    #dbg_value(ptr %i.cr, !6570, !DIExpression(), !6574)
    #dbg_value(ptr %i.cq, !6408, !DIExpression(), !6515)
    #dbg_value(ptr %i.cq, !6494, !DIExpression(), !6513)
    #dbg_value(ptr %i.co, !6410, !DIExpression(), !6518)
    #dbg_value(ptr %i.co, !6494, !DIExpression(), !6516)
    #dbg_value(ptr %i.cr, !6395, !DIExpression(), !6430)
    #dbg_value(ptr %i.cr, !6412, !DIExpression(), !6432)
    #dbg_value(ptr %i.cr, !6433, !DIExpression(), !6438)
    #dbg_value(ptr %.sroa.015.06.i.i, !6681, !DIExpression(), !6691)
    #dbg_value(ptr %.sroa.015.06.i.i, !6693, !DIExpression(), !6697)
    #dbg_value(ptr %.sroa.015.06.i.i, !6699, !DIExpression(), !6703)
    #dbg_value(ptr %.sroa.017.05.i.i, !6684, !DIExpression(), !6691)
    #dbg_value(ptr %.sroa.017.05.i.i, !6693, !DIExpression(), !6706)
    #dbg_value(ptr %.sroa.017.05.i.i, !6699, !DIExpression(), !6708)
    #dbg_value(ptr %.sroa.019.04.i.i, !6685, !DIExpression(), !6691)
    #dbg_value(ptr %.sroa.019.04.i.i, !6710, !DIExpression(), !6714)
    #dbg_value(ptr poison, !6686, !DIExpression(), !6691)
    #dbg_value(i64 1, !6716, !DIExpression(), !6721)
    #dbg_value(i64 1, !6713, !DIExpression(), !6714)
  call void @llvm.experimental.noalias.scope.decl(metadata !6723), !dbg !6726
  call void @llvm.experimental.noalias.scope.decl(metadata !6727), !dbg !6726
    #dbg_value(ptr %.sroa.017.05.i.i, !2705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6729)
    #dbg_value(ptr %.sroa.015.06.i.i, !2705, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6729)
    #dbg_value(ptr poison, !2714, !DIExpression(), !6729)
  call void @llvm.experimental.noalias.scope.decl(metadata !6731), !dbg !6734
  call void @llvm.experimental.noalias.scope.decl(metadata !6735), !dbg !6734
    #dbg_value(ptr %.sroa.017.05.i.i, !2730, !DIExpression(), !6737)
    #dbg_value(ptr %.sroa.015.06.i.i, !2735, !DIExpression(), !6737)
    #dbg_declare(ptr poison, !2741, !DIExpression(), !6739)
  call void @llvm.experimental.noalias.scope.decl(metadata !6741), !dbg !6744
  call void @llvm.experimental.noalias.scope.decl(metadata !6745), !dbg !6744
    #dbg_value(ptr %.sroa.017.05.i.i, !2777, !DIExpression(), !6747)
    #dbg_value(ptr %.sroa.015.06.i.i, !2784, !DIExpression(), !6747)
  call void @llvm.experimental.noalias.scope.decl(metadata !6749), !dbg !6752
  call void @llvm.experimental.noalias.scope.decl(metadata !6753), !dbg !6752
    #dbg_value(ptr %.sroa.017.05.i.i, !2793, !DIExpression(), !6755)
    #dbg_value(ptr %.sroa.015.06.i.i, !2799, !DIExpression(), !6755)
    #dbg_value(ptr %.sroa.017.05.i.i, !2804, !DIExpression(), !6757)
    #dbg_value(ptr %.sroa.017.05.i.i, !2815, !DIExpression(), !6759)
    #dbg_value(ptr %.sroa.017.05.i.i, !2827, !DIExpression(), !6761)
    #dbg_value(ptr %.sroa.017.05.i.i, !2833, !DIExpression(), !6763)
    #dbg_value(ptr %.sroa.015.06.i.i, !2812, !DIExpression(), !6765)
    #dbg_value(ptr %.sroa.015.06.i.i, !2815, !DIExpression(), !6766)
    #dbg_value(ptr %.sroa.015.06.i.i, !2827, !DIExpression(), !6768)
    #dbg_value(ptr %.sroa.015.06.i.i, !2833, !DIExpression(), !6770)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 8, !dbg !6772
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !6772, !alias.scope !6776, !noalias !6777, !nonnull !29, !noundef !29
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 16, !dbg !6778
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !6778, !alias.scope !6776, !noalias !6777, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.cv, !2874, !DIExpression(), !6779)
    #dbg_value(ptr %i.ct, !2904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6782)
    #dbg_value(ptr %i.ct, !2884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6783)
    #dbg_value(i64 %i.cv, !2904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6782)
    #dbg_value(i64 %i.cv, !2884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6783)
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 8, !dbg !6784
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !6784, !alias.scope !6788, !noalias !6789, !nonnull !29, !noundef !29
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 16, !dbg !6790
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !6790, !alias.scope !6788, !noalias !6789, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.cx, !2905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6782)
    #dbg_value(ptr %i.cx, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6783)
    #dbg_value(i64 %i.cz, !2905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6782)
    #dbg_value(i64 %i.cz, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6783)
  %i.da = sub i64 %i.cv, %i.cz, !dbg !6791
    #dbg_value(i64 %i.da, !2890, !DIExpression(), !6792)
  %spec.store.select.i.i.i.i44.i.i = call i64 @llvm.umin.i64(i64 %i.cv, i64 %i.cz), !dbg !6793
    #dbg_value(i64 %spec.store.select.i.i.i.i44.i.i, !2874, !DIExpression(), !6779)
    #dbg_value(ptr %i.ct, !2891, !DIExpression(), !6794)
    #dbg_value(ptr %i.cx, !2893, !DIExpression(), !6795)
  %i.db = call i32 @memcmp(ptr nonnull %i.ct, ptr nonnull %i.cx, i64 %spec.store.select.i.i.i.i44.i.i), !dbg !6796, !noalias !6797 ; 2 uses
  %i.dc = sext i32 %i.db to i64, !dbg !6796
    #dbg_value(i64 %i.dc, !2895, !DIExpression(), !6798)
  %i.dd = icmp eq i32 %i.db, 0, !dbg !6799
  %spec.store.select1.i.i.i.i45.i.i = select i1 %i.dd, i64 %i.da, i64 %i.dc, !dbg !6799 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i.i.i45.i.i, !2895, !DIExpression(), !6798)
  %i.de = icmp eq i64 %spec.store.select1.i.i.i.i45.i.i, 0, !dbg !6800
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 24, !dbg !6800
  %i.dg = load i8, ptr %i.df, align 8, !dbg !6800, !range !2927, !alias.scope !6801, !noalias !6802
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 24, !dbg !6800
  %i.di = load i8, ptr %i.dh, align 8, !dbg !6800, !range !2927, !alias.scope !6803, !noalias !6804
    #dbg_value(i8 poison, !2766, !DIExpression(), !6805)
  %i.dj = icmp samesign ult i8 %i.dg, %i.di, !dbg !6806
  %i.dk = icmp slt i64 %spec.store.select1.i.i.i.i45.i.i, 0, !dbg !6806
  %i.dl = select i1 %i.de, i1 %i.dj, i1 %i.dk, !dbg !6800 ; 3 uses
    #dbg_value(i1 %i.dl, !6687, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6807)
  %..i.i.i = select i1 %i.dl, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i, !dbg !6808
  %i.dm = xor i1 %i.dl, true, !dbg !6809
    #dbg_value(i1 %i.dm, !6687, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6807)
    #dbg_value(ptr %..i.i.i, !6719, !DIExpression(), !6721)
    #dbg_value(ptr %..i.i.i, !6689, !DIExpression(), !6810)
    #dbg_value(ptr %.sroa.019.04.i.i, !6720, !DIExpression(), !6721)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i, i64 32, i1 false), !dbg !6811, !alias.scope !6169, !noalias !6812
  %.neg.i.i.i = sext i1 %i.dm to i64, !dbg !6816
    #dbg_value(i1 %i.dm, !6696, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !6706)
    #dbg_value(i64 %.neg.i.i.i, !6702, !DIExpression(), !6708)
  %i.dn = getelementptr [32 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i, !dbg !6817 ; 2 uses
    #dbg_value(ptr %i.dn, !6684, !DIExpression(), !6691)
    #dbg_value(ptr %i.dn, !6693, !DIExpression(), !6706)
    #dbg_value(ptr %i.dn, !6699, !DIExpression(), !6708)
  %.neg24.i.i.i = sext i1 %i.dl to i64, !dbg !6818
    #dbg_value(i1 %i.dl, !6696, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !6697)
    #dbg_value(i64 %.neg24.i.i.i, !6702, !DIExpression(), !6703)
  %i.do = getelementptr [32 x i8], ptr %.sroa.015.06.i.i, i64 %.neg24.i.i.i, !dbg !6819 ; 2 uses
    #dbg_value(ptr %i.do, !6681, !DIExpression(), !6691)
    #dbg_value(ptr %i.do, !6693, !DIExpression(), !6697)
    #dbg_value(ptr %i.do, !6699, !DIExpression(), !6703)
  %i.dp = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -32, !dbg !6820
    #dbg_value(ptr %i.dp, !6685, !DIExpression(), !6691)
    #dbg_value(ptr %i.dp, !6710, !DIExpression(), !6714)
    #dbg_value(ptr %i.do, !6476, !DIExpression(), !6477)
    #dbg_value(ptr %i.do, !6468, !DIExpression(), !6469)
    #dbg_value(ptr %i.do, !6414, !DIExpression(), !6519)
    #dbg_value(ptr %i.dn, !6476, !DIExpression(), !6481)
    #dbg_value(ptr %i.dn, !6468, !DIExpression(), !6479)
    #dbg_value(ptr %i.dn, !6416, !DIExpression(), !6520)
    #dbg_value(ptr %i.dp, !6418, !DIExpression(), !6511)
    #dbg_value(ptr undef, !6454, !DIExpression(), !6521)
    #dbg_value(ptr undef, !6449, !DIExpression(), !6522)
    #dbg_value(ptr undef, !6523, !DIExpression(), !6527)
    #dbg_value(ptr undef, !6526, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6529)
  %exitcond.not.i.i = icmp eq i64 %i.br, %i.o, !dbg !6821
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !6534

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dq = icmp ult ptr %i.cq, %i.bn, !dbg !6822   ; 3 uses
    #dbg_value(i1 %i.dq, !6426, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6823)
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dq, ptr %i.cq, ptr %i.co, !dbg !6824
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i.i, !6436, !DIExpression(), !6438)
    #dbg_value(ptr %.sroa.06.0..sroa.011.0.i.i, !6428, !DIExpression(), !6825)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i.i, i64 32, i1 false), !dbg !6826, !alias.scope !6169
  %i.dr = zext i1 %i.dq to i64, !dbg !6827
    #dbg_value(i64 %i.dr, !6497, !DIExpression(), !6513)
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.dr, !dbg !6828
    #dbg_value(ptr %i.ds, !6408, !DIExpression(), !6515)
    #dbg_value(ptr %i.ds, !6494, !DIExpression(), !6513)
  %7 = xor i1 %i.dq, true, !dbg !6829
  %i.dt = zext i1 %7 to i64, !dbg !6829
    #dbg_value(i64 %i.dt, !6497, !DIExpression(), !6516)
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.dt, !dbg !6830
    #dbg_value(ptr %i.du, !6410, !DIExpression(), !6518)
    #dbg_value(ptr %i.du, !6494, !DIExpression(), !6516)
  br label %bb.l, !dbg !6831

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.co, %._crit_edge.i.i ], [ %i.du, %bb.k ], !dbg !6515
  %.sroa.06.1.i.i = phi ptr [ %i.cq, %._crit_edge.i.i ], [ %i.ds, %bb.k ], !dbg !6504
    #dbg_value(ptr %.sroa.06.1.i.i, !6494, !DIExpression(), !6513)
    #dbg_value(ptr %.sroa.06.1.i.i, !6408, !DIExpression(), !6515)
    #dbg_value(ptr %.sroa.011.1.i.i, !6494, !DIExpression(), !6516)
    #dbg_value(ptr %.sroa.011.1.i.i, !6410, !DIExpression(), !6518)
  %i.dv = icmp ne ptr %.sroa.06.1.i.i, %i.bn, !dbg !6832
  %i.dw = icmp ne ptr %.sroa.011.1.i.i, %i.bo
  %or.cond.i.i = select i1 %i.dv, i1 true, i1 %i.dw, !dbg !6832, !prof !6833
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB1s_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !6832, !prof !6833

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #27
          to label %.noexc.i unwind label %bb.n, !dbg !6834, !noalias !5990

.noexc.i:                                         ; preds = %bb.m
  unreachable, !dbg !6834

bb.n:                                             ; preds = %bb.m
  %i.dx = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr undef, !3106, !DIExpression(), !6070)
    #dbg_value(ptr undef, !3095, !DIExpression(), !5994)
    #dbg_value(ptr %2, !3125, !DIExpression(), !6835)
    #dbg_value(ptr %.sroa.0.0.ph.lcssa112, !3130, !DIExpression(), !6835)
    #dbg_value(i64 %.sroa.16.0.lcssa, !3131, !DIExpression(), !6835)
  %i.dy = shl nuw nsw i64 %.sroa.16.0.lcssa, 5, !dbg !6837
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa112, ptr nonnull align 8 %2, i64 %i.dy, i1 false), !dbg !6837, !alias.scope !6169, !noalias !6838
  resume { ptr, i32 } %i.dx, !dbg !6843

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i
  %.sroa.05.08.i = phi i64 [ %i.fm, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
    #dbg_value(i64 %.sroa.05.08.i, !6092, !DIExpression(), !6191)
    #dbg_value(i64 %.sroa.05.08.i, !6119, !DIExpression(), !6120)
    #dbg_value(i64 %.sroa.05.08.i, !6127, !DIExpression(), !6128)
    #dbg_value(i64 %.sroa.05.08.i, !6063, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6187)
    #dbg_value(i64 %.sroa.05.08.i, !6065, !DIExpression(), !6192)
    #dbg_value(i64 %.sroa.05.08.i, !6133, !DIExpression(), !6179)
    #dbg_value(i64 %.sroa.05.08.i, !6133, !DIExpression(), !6182)
    #dbg_value(i64 %.sroa.05.08.i, !6133, !DIExpression(), !6184)
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.lcssa112, i64 %.sroa.05.08.i, !dbg !6193 ; 2 uses
    #dbg_value(ptr %i.dz, !6109, !DIExpression(), !6130)
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 5, !dbg !6194
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !6194 ; 12 uses
    #dbg_value(ptr %i.ea, !6110, !DIExpression(), !6130)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 32, i1 false), !dbg !6195, !alias.scope !6169
    #dbg_value(ptr poison, !3095, !DIExpression(), !6196)
    #dbg_value(ptr poison, !3106, !DIExpression(), !6200)
    #dbg_value(ptr poison, !3095, !DIExpression(), !6201)
    #dbg_value(ptr poison, !3106, !DIExpression(), !6204)
    #dbg_declare(ptr poison, !3076, !DIExpression(DW_OP_LLVM_fragment, 200, 56), !6205)
    #dbg_value(ptr poison, !3125, !DIExpression(), !6206)
    #dbg_value(ptr poison, !3088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6208)
    #dbg_value(ptr poison, !2833, !DIExpression(), !6209)
    #dbg_value(ptr poison, !2827, !DIExpression(), !6218)
    #dbg_value(ptr poison, !2815, !DIExpression(), !6219)
    #dbg_value(ptr poison, !2804, !DIExpression(), !6220)
    #dbg_value(ptr poison, !2793, !DIExpression(), !6221)
    #dbg_value(ptr poison, !2777, !DIExpression(), !6222)
    #dbg_value(ptr poison, !2730, !DIExpression(), !6223)
    #dbg_value(ptr poison, !2705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6224)
    #dbg_value(ptr %2, !3071, !DIExpression(), !6225)
    #dbg_value(ptr %i.ea, !3072, !DIExpression(), !6225)
    #dbg_value(ptr %i.ea, !3152, !DIExpression(), !6226)
    #dbg_value(ptr %i.ea, !3163, !DIExpression(), !6228)
    #dbg_value(ptr poison, !3073, !DIExpression(), !6225)
    #dbg_value(i64 1, !3160, !DIExpression(), !6226)
    #dbg_value(i64 1, !3170, !DIExpression(), !6230)
    #dbg_value(i64 1, !3160, !DIExpression(), !6232)
    #dbg_value(ptr %i.ea, !3074, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6234)
    #dbg_value(ptr %i.ea, !3152, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6232)
  call void @llvm.experimental.noalias.scope.decl(metadata !6844), !dbg !6238
  call void @llvm.experimental.noalias.scope.decl(metadata !6846), !dbg !6238
    #dbg_value(ptr %i.ea, !2705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6241)
    #dbg_value(ptr %i.ea, !2705, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6241)
    #dbg_value(ptr poison, !2714, !DIExpression(), !6241)
  call void @llvm.experimental.noalias.scope.decl(metadata !6848), !dbg !6246
  call void @llvm.experimental.noalias.scope.decl(metadata !6850), !dbg !6246
    #dbg_value(ptr %i.ea, !2730, !DIExpression(), !6249)
    #dbg_value(ptr %i.ea, !2735, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6249)
    #dbg_declare(ptr poison, !2741, !DIExpression(), !6251)
  call void @llvm.experimental.noalias.scope.decl(metadata !6852), !dbg !6256
  call void @llvm.experimental.noalias.scope.decl(metadata !6854), !dbg !6256
    #dbg_value(ptr %i.ea, !2777, !DIExpression(), !6259)
    #dbg_value(ptr %i.ea, !2784, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6259)
  call void @llvm.experimental.noalias.scope.decl(metadata !6856), !dbg !6264
  call void @llvm.experimental.noalias.scope.decl(metadata !6858), !dbg !6264
    #dbg_value(ptr %i.ea, !2793, !DIExpression(), !6267)
    #dbg_value(ptr %i.ea, !2799, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6267)
    #dbg_value(ptr %i.ea, !2804, !DIExpression(), !6269)
    #dbg_value(ptr %i.ea, !2815, !DIExpression(), !6271)
    #dbg_value(ptr %i.ea, !2827, !DIExpression(), !6273)
    #dbg_value(ptr %i.ea, !2833, !DIExpression(), !6275)
    #dbg_value(ptr %i.ea, !2812, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6277)
    #dbg_value(ptr %i.ea, !2815, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6278)
    #dbg_value(ptr %i.ea, !2827, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6280)
    #dbg_value(ptr %i.ea, !2833, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6282)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8, !dbg !6284
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !6284, !alias.scope !6860, !noalias !6861, !nonnull !29, !noundef !29 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16, !dbg !6290
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !6290, !alias.scope !6860, !noalias !6861, !noundef !29 ; 5 uses
    #dbg_value(i64 %i.ee, !2874, !DIExpression(), !6291)
    #dbg_value(ptr %i.ec, !2904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6294)
    #dbg_value(ptr %i.ec, !2884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6295)
    #dbg_value(i64 %i.ee, !2904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6294)
    #dbg_value(i64 %i.ee, !2884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6295)
  %i.ef = getelementptr inbounds i8, ptr %i.ea, i64 -24, !dbg !6296
  %i.eg = load ptr, ptr %i.ef, align 8, !dbg !6296, !alias.scope !6862, !noalias !6863, !nonnull !29, !noundef !29
  %i.eh = getelementptr inbounds i8, ptr %i.ea, i64 -16, !dbg !6302
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !6302, !alias.scope !6862, !noalias !6863, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.eg, !2905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6294)
    #dbg_value(ptr %i.eg, !2889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6295)
    #dbg_value(i64 %i.ei, !2905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6294)
    #dbg_value(i64 %i.ei, !2889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6295)
  %i.ej = sub i64 %i.ee, %i.ei, !dbg !6303
    #dbg_value(i64 %i.ej, !2890, !DIExpression(), !6304)
  %spec.store.select.i.i.i.i.i58.i = call i64 @llvm.umin.i64(i64 %i.ee, i64 %i.ei), !dbg !6305
    #dbg_value(i64 %spec.store.select.i.i.i.i.i58.i, !2874, !DIExpression(), !6291)
    #dbg_value(ptr %i.ec, !2891, !DIExpression(), !6306)
    #dbg_value(ptr %i.eg, !2893, !DIExpression(), !6307)
  %i.ek = call i32 @memcmp(ptr nonnull %i.ec, ptr nonnull %i.eg, i64 %spec.store.select.i.i.i.i.i58.i), !dbg !6308, !noalias !6864 ; 2 uses
  %i.el = sext i32 %i.ek to i64, !dbg !6308
    #dbg_value(i64 %i.el, !2895, !DIExpression(), !6310)
  %i.em = icmp eq i32 %i.ek, 0, !dbg !6311
  %spec.store.select1.i.i.i.i.i59.i = select i1 %i.em, i64 %i.ej, i64 %i.el, !dbg !6311 ; 2 uses
    #dbg_value(i64 %spec.store.select1.i.i.i.i.i59.i, !2895, !DIExpression(), !6310)
  %i.en = icmp eq i64 %spec.store.select1.i.i.i.i.i59.i, 0, !dbg !6312
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 24, !dbg !6312
  %i.ep = load i8, ptr %i.eo, align 8, !dbg !6312, !alias.scope !6865, !noalias !6866 ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ea, i64 -8, !dbg !6312
  %i.er = load i8, ptr %i.eq, align 8, !dbg !6312, !range !2927, !alias.scope !6867, !noalias !6868
    #dbg_value(i8 poison, !2766, !DIExpression(), !6317)
  %i.es = icmp samesign ult i8 %i.ep, %i.er, !dbg !6318
  %i.et = icmp slt i64 %spec.store.select1.i.i.i.i.i59.i, 0, !dbg !6318
  %i.eu = select i1 %i.en, i1 %i.es, i1 %i.et, !dbg !6312
  br i1 %i.eu, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralNvYB18_NtNtBa_3cmp10PartialOrd2ltECs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !6238

bb.o:                                             ; preds = %.lr.ph.i
    #dbg_value(ptr %i.ea, !3074, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6234)
    #dbg_value(ptr %i.ea, !3152, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6232)
    #dbg_value(ptr %i.ea, !2705, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6241)
    #dbg_value(ptr %i.ea, !2735, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6249)
    #dbg_value(ptr %i.ea, !2784, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6259)
    #dbg_value(ptr %i.ea, !2799, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6267)
    #dbg_value(ptr %i.ea, !2812, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6277)
    #dbg_value(ptr %i.ea, !2815, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6278)
    #dbg_value(ptr %i.ea, !2827, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6280)
    #dbg_value(ptr %i.ea, !2833, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6282)
  %.sroa.014.0.copyload.i.i = load i64, ptr %i.ea, align 8, !dbg !6319, !alias.scope !6321, !noalias !5990
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 25, !dbg !6319
    #dbg_value(i64 %.sroa.014.0.copyload.i.i, !3076, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6322)
    #dbg_value(ptr %i.ec, !3076, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6322)
    #dbg_value(i64 %i.ee, !3076, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6322)
    #dbg_value(i8 %i.ep, !3076, !DIExpression(DW_OP_LLVM_fragment, 192, 8), !6322)
    #dbg_value(ptr undef, !3088, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6208)
    #dbg_value(ptr %i.ea, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(i64 1, !3088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6208)
  %.sroa.0.0.i60.i271 = getelementptr inbounds i8, ptr %i.ea, i64 -32, !dbg !6323 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i60.i271, i64 32, i1 false), !dbg !6325, !alias.scope !6321, !noalias !5990
  %i.ew = icmp eq i64 %.sroa.05.08.i, 1, !dbg !6326
  br i1 %i.ew, label %._crit_edge276, label %.lr.ph275, !dbg !6326

bb.p:                                             ; preds = %.lr.ph275
  %.sroa.0.0.i60.i = getelementptr inbounds i8, ptr %.sroa.0.0.i60.i273, i64 -32, !dbg !6323 ; 3 uses
    #dbg_value(ptr %.sroa.0.0.i60.i273, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(ptr %.sroa.0.0.i60.i, !3152, !DIExpression(), !6232)
    #dbg_value(ptr %.sroa.0.0.i60.i, !3074, !DIExpression(), !6234)
    #dbg_value(ptr %.sroa.0.0.i60.i, !3173, !DIExpression(), !6230)
    #dbg_value(ptr %.sroa.0.0.i60.i273, !3174, !DIExpression(), !6230)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i60.i273, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i60.i, i64 32, i1 false), !dbg !6325, !alias.scope !6321, !noalias !5990
    #dbg_value(ptr %.sroa.0.0.i60.i, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
  %i.ex = icmp eq ptr %.sroa.0.0.i60.i, %2, !dbg !6326
  br i1 %i.ex, label %._crit_edge276, label %.lr.ph275, !dbg !6326

.lr.ph275:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i60.i273 = phi ptr [ %.sroa.0.0.i60.i, %bb.p ], [ %.sroa.0.0.i60.i271, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i272 = phi ptr [ %.sroa.0.0.i60.i273, %bb.p ], [ %i.ea, %bb.o ] ; 4 uses
    #dbg_value(ptr %.sroa.5.0.i.i272, !3088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(ptr %.sroa.0.0.i60.i273, !3074, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6234)
    #dbg_value(ptr %.sroa.0.0.i60.i273, !3152, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6232)
  call void @llvm.experimental.noalias.scope.decl(metadata !6869), !dbg !6330
    #dbg_value(ptr undef, !2705, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6224)
    #dbg_value(ptr %.sroa.0.0.i60.i273, !2705, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !6224)
    #dbg_value(ptr poison, !2714, !DIExpression(), !6224)
  call void @llvm.experimental.noalias.scope.decl(metadata !6871), !dbg !6334
    #dbg_value(ptr undef, !2730, !DIExpression(), !6223)
    #dbg_value(ptr %.sroa.0.0.i60.i273, !2735, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6223)
    #dbg_declare(ptr poison, !2741, !DIExpression(), !6335)
  call void @llvm.experimental.noalias.scope.decl(metadata !6873), !dbg !6340
    #dbg_value(ptr undef, !2777, !DIExpression(), !6222)
    #dbg_value(ptr %.sroa.0.0.i60.i273, !2784, !DIExpression(DW_OP_constu, 32, DW_OP_minus, DW_OP_stack_value), !6222)
  call void @llvm.experimental.noalias.scope.decl(metadata !6875), !dbg !6344
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp:bb.a
    #dbg_value(ptr %0, !16388, !DIExpression(), !16443)
    #dbg_value(ptr %1, !16389, !DIExpression(), !16443)
    #dbg_value(ptr %1, !16444, !DIExpression(), !16448)
    #dbg_value(ptr %2, !16390, !DIExpression(), !16443)
    #dbg_value(ptr %2, !16450, !DIExpression(), !16453)
    #dbg_value(ptr %2, !16455, !DIExpression(), !16458)
    #dbg_value(ptr %2, !16455, !DIExpression(), !16460)
    #dbg_value(ptr %2, !16462, !DIExpression(), !16465)
    #dbg_value(ptr %2, !16455, !DIExpression(), !16467)
    #dbg_value(ptr %2, !16455, !DIExpression(), !16473)
    #dbg_value(ptr %2, !16455, !DIExpression(), !16479)
    #dbg_value(ptr %3, !16391, !DIExpression(), !16443)
    #dbg_value(ptr %3, !16483, !DIExpression(), !16490)
    #dbg_value(ptr %3, !16492, !DIExpression(), !16498)
    #dbg_value(ptr %3, !16500, !DIExpression(), !16504)
    #dbg_value(ptr %3, !16492, !DIExpression(), !16506)
    #dbg_value(ptr %3, !16508, !DIExpression(), !16512)
    #dbg_value(i64 0, !16447, !DIExpression(), !16448)
    #dbg_value(i64 0, !16514, !DIExpression(), !16518)
    #dbg_value(i64 0, !16520, !DIExpression(), !16524)
    #dbg_value(i64 0, !16514, !DIExpression(), !16526)
    #dbg_value(i64 0, !16520, !DIExpression(), !16528)
    #dbg_value(i8 1, !16531, !DIExpression(), !16537)
    #dbg_value(ptr %1, !16543, !DIExpression(), !16548)
    #dbg_value(ptr %1, !16550, !DIExpression(), !16553)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !16555 ; 31 uses
    #dbg_value(ptr poison, !16546, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16556)
    #dbg_value(i64 poison, !16546, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16556)
  store i64 0, ptr %i.t, align 8, !dbg !16557
    #dbg_value(ptr %1, !16517, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16558)
    #dbg_value(ptr %1, !16559, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16562)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !16564
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !16564 ; 6 uses
  store i64 0, ptr %i.v, align 8, !dbg !16564
    #dbg_value(ptr %1, !16523, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !16565)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !16566 ; 5 uses
  store i64 0, ptr %i.w, align 8, !dbg !16566
    #dbg_value(ptr %1, !16517, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !16567)
    #dbg_value(ptr %1, !16559, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !16568)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !16570
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !16570 ; 11 uses
  store i64 0, ptr %i.y, align 8, !dbg !16570
    #dbg_value(ptr %1, !16523, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !16571)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208, !dbg !16572 ; 4 uses
  store i64 0, ptr %i.z, align 8, !dbg !16572
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !16573
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !16573, !noundef !29 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !16574
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !16574, !noundef !29 ; 2 uses
  %i.ae = icmp ugt i64 %i.ab, %i.ad, !dbg !16575
  br i1 %i.ae, label %_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, label %bb.b, !dbg !16576

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !16577
  %i.ag = load i64, ptr %i.af, align 8, !dbg !16577, !noundef !29 ; 54 uses
  %.not = icmp eq i64 %i.ag, -1, !dbg !16578
  br i1 %.not, label %bb.c, label %bb.d, !dbg !16578, !prof !7613

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27, !dbg !16579
  unreachable, !dbg !16579

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !16541, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !16580)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16581
  %i.ai = load i8, ptr %i.ah, align 8, !dbg !16581, !range !8442, !noundef !29 ; 2 uses
    #dbg_value(i8 %i.ai, !16534, !DIExpression(), !16537)
  %.not43 = icmp ne i8 %i.ai, 2, !dbg !16582
  %i.aj = and i8 %i.ai, 1, !dbg !16583
  %i.ak = icmp eq i8 %i.aj, 0, !dbg !16583
  %.sroa.0.0 = and i1 %.not43, %i.ak, !dbg !16583 ; 3 uses
    #dbg_value(i1 %.sroa.0.0, !16392, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16584)
  %.val = load ptr, ptr %0, align 8, !dbg !16585, !nonnull !29, !noundef !29 ; 10 uses
  %.val71 = load i32, ptr %2, align 8, !dbg !16585, !range !11528, !noundef !29
    #dbg_value(ptr poison, !11529, !DIExpression(), !16586)
    #dbg_value(ptr poison, !11549, !DIExpression(), !16586)
  switch i32 %.val71, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ], !dbg !16588

default.unreachable:                              ; preds = %.lr.ph4811, %bb.aa, %bb.w, %bb.ho, %bb.hk, %bb.fn, %bb.fj, %bb.ct, %bb.cp, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !11711, !DIExpression(), !16589)
    #dbg_value(ptr poison, !11559, !DIExpression(), !16591)
    #dbg_value(ptr poison, !11719, !DIExpression(), !16593)
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 368, !dbg !16595
  %i.am = load i32, ptr %i.al, align 16, !dbg !16595, !noundef !29 ; 2 uses
    #dbg_value(ptr poison, !11726, !DIExpression(), !16596)
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 372, !dbg !16598
  %i.ao = load i32, ptr %i.an, align 4, !dbg !16598, !noundef !29
    #dbg_value(ptr poison, !11732, !DIExpression(), !16596)
    #dbg_value(ptr poison, !11736, !DIExpression(), !16599)
    #dbg_value(ptr poison, !11742, !DIExpression(), !16599)
  %i.ap = icmp eq i32 %i.am, %i.ao, !dbg !16599
    #dbg_value(ptr poison, !11559, !DIExpression(), !16601)
  br label %.lr.ph1391, !dbg !16603

bb.f:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !11559, !DIExpression(), !16604)
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 368, !dbg !16606
  %i.ar = load i32, ptr %i.aq, align 16, !dbg !16606, !noundef !29
  br label %.lr.ph1391, !dbg !16607

bb.g:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !16585
  %.val72 = load i32, ptr %i.as, align 4, !dbg !16585
    #dbg_value(i32 %.val72, !11550, !DIExpression(), !16608)
    #dbg_value(i32 %.val72, !11570, !DIExpression(), !16609)
    #dbg_value(ptr poison, !11587, !DIExpression(), !16611)
    #dbg_value(ptr %.val, !11591, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !16612)
    #dbg_value(ptr %.val, !11604, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !16614)
    #dbg_value(ptr %.val, !11610, !DIExpression(DW_OP_plus_uconst, 344, DW_OP_stack_value), !16616)
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 360, !dbg !16618
  %i.au = load i64, ptr %i.at, align 8, !dbg !16618, !noundef !29
    #dbg_value(ptr poison, !11620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16619)
    #dbg_value(ptr poison, !11647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16621)
    #dbg_value(i64 %i.au, !11620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16619)
    #dbg_value(i64 %i.au, !11647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16621)
    #dbg_value(ptr poison, !11655, !DIExpression(), !16623)
    #dbg_value(ptr poison, !11665, !DIExpression(), !16625)
  %i.av = zext i32 %.val72 to i64, !dbg !16627    ; 2 uses
    #dbg_value(i64 %i.av, !11639, !DIExpression(), !16619)
    #dbg_value(i64 %i.av, !11652, !DIExpression(), !16621)
  %i.aw = icmp ugt i64 %i.au, %i.av, !dbg !16628
  br i1 %i.aw, label %bb.h, label %_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread, !dbg !16628

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 352, !dbg !16629
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !16629, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.ay, !11620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16619)
    #dbg_value(ptr %i.ay, !11647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16621)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.av, !dbg !16633
    #dbg_value(ptr %i.az, !11699, !DIExpression(), !16634)
  %i.ba = load i32, ptr %i.az, align 4, !dbg !16636, !noundef !29
  br label %.lr.ph1391, !dbg !16637

.lr.ph1391:                                       ; preds = %bb.f, %bb.e, %bb.h
  %.sroa.5.1.i.ph = phi i32 [ %i.ar, %bb.f ], [ %i.am, %bb.e ], [ %i.ba, %bb.h ]
  %.sroa.0.1.i.ph = phi i1 [ true, %bb.f ], [ %i.ap, %bb.e ], [ true, %bb.h ]
    #dbg_value(i1 %.sroa.0.1.i.ph, !16394, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16638)
    #dbg_value(i32 %.sroa.5.1.i.ph, !16396, !DIExpression(), !16638)
    #dbg_value(ptr %1, !16399, !DIExpression(), !16639)
    #dbg_value(ptr %i.u, !16401, !DIExpression(), !16639)
    #dbg_value(ptr %i.u, !16640, !DIExpression(), !16644)
    #dbg_value(ptr %i.x, !16402, !DIExpression(), !16639)
    #dbg_value(ptr %i.x, !16643, !DIExpression(), !16644)
    #dbg_value(i64 %i.ab, !16403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16646)
    #dbg_value(i64 %i.ad, !16403, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16646)
    #dbg_value(i8 poison, !16403, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !16646)
    #dbg_value(ptr undef, !16437, !DIExpression(), !16442)
    #dbg_value(ptr undef, !16421, !DIExpression(), !16430)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.sroa.0.0.not = xor i1 %.sroa.0.0, true
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 336 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 328 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !29 ; 32 uses
  %.not23.i = icmp eq i64 %i.ag, 0                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 386
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 387
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ca = load i8, ptr %i.bz, align 8, !range !2927
  %i.cb = trunc nuw i8 %i.ca to i1
  %.pre = load i64, ptr %i.bb, align 8, !dbg !16647
  br label %bb.i, !dbg !16648

_RNvXsd_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCs9GYDdpCSJ4S_14regex_automata.exit.thread: ; preds = %bb.is, %bb.it, %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit, %bb.g, %bb.a
  ret void, !dbg !16649

bb.i:                                             ; preds = %.lr.ph1391, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit
  %i.cc = phi i64 [ %.pre, %.lr.ph1391 ], [ %i.ahh, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit ] ; 2 uses
  %.sroa.0.02611389 = phi i64 [ %i.ab, %.lr.ph1391 ], [ %i.cd, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit ] ; 28 uses
    #dbg_value(i64 %.sroa.0.02611389, !16403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16646)
    #dbg_value(i64 %.sroa.0.02611389, !16650, !DIExpression(), !16656)
    #dbg_value(i64 1, !16655, !DIExpression(), !16656)
  %i.cd = add i64 %.sroa.0.02611389, 1, !dbg !16658 ; 27 uses
    #dbg_value(i64 %i.cd, !16403, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16646)
    #dbg_value(i64 %.sroa.0.02611389, !16403, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 8), !16646)
    #dbg_value(i64 %.sroa.0.02611389, !16410, !DIExpression(), !16661)
  %4 = icmp eq i64 %i.cc, 0, !dbg !16662          ; 2 uses
    #dbg_value(i1 %4, !16412, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16663)
    #dbg_value(ptr %i.u, !16664, !DIExpression(), !16667)
    #dbg_value(ptr %i.u, !16669, !DIExpression(), !16672)
  %5 = load i64, ptr %i.v, align 8, !dbg !16674, !noundef !29
  %i.ce = icmp eq i64 %5, 0, !dbg !16675
  br i1 %i.ce, label %bb.k, label %bb.j, !dbg !16676

bb.j:                                             ; preds = %bb.i
  %brmerge = or i1 %.sroa.0.0, %4, !dbg !16677
  br i1 %brmerge, label %bb.l, label %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit, !dbg !16677

bb.k:                                             ; preds = %bb.i
    #dbg_value(i1 %4, !16412, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16663)
  %i.cf = icmp ugt i64 %.sroa.0.02611389, %i.ab
  %or.cond46 = select i1 %.sroa.0.1.i.ph, i1 %i.cf, i1 false ; 2 uses
  br i1 %4, label %bb.is, label %bb.it, !dbg !16678

bb.l:                                             ; preds = %bb.it, %bb.is, %bb.j
    #dbg_value(ptr inttoptr (i64 8 to ptr), !16414, !DIExpression(), !16679)
    #dbg_value(ptr %0, !12619, !DIExpression(), !16680)
    #dbg_value(ptr %1, !12625, !DIExpression(), !16680)
    #dbg_value(ptr %1, !12640, !DIExpression(), !16682)
    #dbg_value(ptr %1, !12649, !DIExpression(), !16684)
    #dbg_value(ptr %1, !12668, !DIExpression(), !16686)
    #dbg_value(ptr %1, !12677, !DIExpression(), !16688)
    #dbg_value(ptr %1, !12686, !DIExpression(), !16690)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !12626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16680)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !12692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16692)
    #dbg_value(i64 0, !12626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16680)
    #dbg_value(i64 0, !12692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16692)
    #dbg_value(ptr %i.u, !12627, !DIExpression(), !16680)
    #dbg_value(ptr %2, !12628, !DIExpression(), !16680)
    #dbg_value(i64 %.sroa.0.02611389, !12629, !DIExpression(), !16680)
    #dbg_value(i32 %.sroa.5.1.i.ph, !12630, !DIExpression(), !16680)
    #dbg_value(i64 16, !12702, !DIExpression(), !16694)
    #dbg_value(i32 %.sroa.5.1.i.ph, !12646, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !16682)
    #dbg_value(i32 %.sroa.5.1.i.ph, !12719, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !16697)
    #dbg_value(i32 %.sroa.5.1.i.ph, !12734, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !16699)
    #dbg_value(i32 0, !12646, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !16682)
    #dbg_value(i32 0, !12719, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !16697)
    #dbg_value(i32 0, !12734, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !16699)
    #dbg_value(ptr %1, !12726, !DIExpression(), !16697)
    #dbg_value(ptr %1, !12742, !DIExpression(), !16701)
    #dbg_value(i64 16, !12750, !DIExpression(), !16703)
  %i.cg = load i64, ptr %i.t, align 8, !dbg !16706, !alias.scope !16707, !noalias !16710, !noundef !29 ; 3 uses
    #dbg_value(i64 %i.cg, !12727, !DIExpression(), !16717)
    #dbg_value(i64 %i.cg, !12770, !DIExpression(), !16718)
    #dbg_value(ptr %1, !12758, !DIExpression(), !16720)
  %i.ch = load i64, ptr %1, align 8, !dbg !16721, !range !12780, !alias.scope !16707, !noalias !16710, !noundef !29
  %i.ci = icmp eq i64 %i.cg, %i.ch, !dbg !16722
  br i1 %i.ci, label %bb.m, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit, !dbg !16722

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26, !dbg !16723, !noalias !16710
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit, !dbg !16724

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit: ; preds = %bb.l, %bb.m
  %i.cj = load ptr, ptr %i.bc, align 8, !dbg !16725, !alias.scope !16707, !noalias !16710, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.cj, !12775, !DIExpression(), !16718)
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cg, !dbg !16729 ; 2 uses
    #dbg_value(ptr %i.ck, !12729, !DIExpression(), !16730)
    #dbg_value(ptr %i.ck, !12739, !DIExpression(), !16699)
  store i32 0, ptr %i.ck, align 8, !dbg !16731, !noalias !16732
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4, !dbg !16731
  store i32 %.sroa.5.1.i.ph, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !16731, !noalias !16732
  %i.cl = add i64 %i.cg, 1, !dbg !16733           ; 3 uses
  store i64 %i.cl, ptr %i.t, align 8, !dbg !16733, !alias.scope !16707, !noalias !16710
  %i.cm = icmp eq i64 %i.cl, 0, !dbg !16734
  br i1 %i.cm, label %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit, label %.lr.ph1356, !dbg !16734

.lr.ph1356:                                       ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_.exit
  %i.cn = icmp ult i64 %.sroa.0.02611389, %i.ag   ; 9 uses
  %i.co = getelementptr i8, ptr %i.bl, i64 %.sroa.0.02611389 ; 10 uses
  %.not.i98 = icmp eq i64 %.sroa.0.02611389, 0    ; 9 uses
  %i.cp = add i64 %.sroa.0.02611389, -1           ; 9 uses
  %i.cq = icmp ult i64 %i.cp, %i.ag               ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cp ; 7 uses
  %i.cs = icmp eq i64 %.sroa.0.02611389, %i.ag    ; 3 uses
  %i.ct = getelementptr i8, ptr %i.co, i64 -1
  br label %bb.n, !dbg !16734

bb.n:                                             ; preds = %.lr.ph1356, %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit
  %i.cu = phi i64 [ %i.cl, %.lr.ph1356 ], [ %.pr, %_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit ] ; 2 uses
  %i.cv = add nsw i64 %i.cu, -1, !dbg !16735      ; 3 uses
  store i64 %i.cv, ptr %i.t, align 8, !dbg !16735, !alias.scope !16736, !noalias !16732
  %i.cw = load i64, ptr %1, align 8, !dbg !16738, !range !12780, !alias.scope !16736, !noalias !16732, !noundef !29
  %i.cx = icmp samesign ult i64 %i.cv, %i.cw, !dbg !16739
    #dbg_value(i1 true, !12816, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !16740)
  tail call void @llvm.assume(i1 %i.cx), !dbg !16742
  %i.cy = load ptr, ptr %i.bc, align 8, !dbg !16743, !alias.scope !16736, !noalias !16732, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.cy, !12829, !DIExpression(), !16747)
    #dbg_value(i64 %i.cv, !12834, !DIExpression(), !16747)
  %i.cz = icmp samesign ult i64 %i.cu, 576460752303423489, !dbg !16749
  tail call void @llvm.assume(i1 %i.cz), !dbg !16750
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cv, !dbg !16751 ; 2 uses
    #dbg_value(ptr %i.da, !12840, !DIExpression(), !16752)
  %.sroa.04.0.copyload.i = load i32, ptr %i.da, align 8, !dbg !16754
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 4, !dbg !16754
  %.sroa.45.0.copyload.i = load i32, ptr %.sroa.45.0..sroa_idx.i, align 4, !dbg !16754 ; 4 uses
    #dbg_value(i32 %.sroa.04.0.copyload.i, !12631, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !16755)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !12631, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !16755)
    #dbg_value(i64 poison, !12631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16755)
  %i.db = trunc i32 %.sroa.04.0.copyload.i to i1, !dbg !16756
  br i1 %i.db, label %bb.o, label %bb.p, !dbg !16756

bb.o:                                             ; preds = %bb.n
    #dbg_value(i32 %.sroa.45.0.copyload.i, !12633, !DIExpression(), !16757)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !12699, !DIExpression(), !16692)
    #dbg_value(i64 poison, !12635, !DIExpression(), !16757)
    #dbg_value(ptr poison, !12851, !DIExpression(), !16758)
  %i.dc = zext i32 %.sroa.45.0.copyload.i to i64, !dbg !16760
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dc, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #27, !dbg !16761
  unreachable, !dbg !16761

bb.p:                                             ; preds = %bb.n
    #dbg_value(i32 %.sroa.45.0.copyload.i, !12636, !DIExpression(), !16762)
    #dbg_value(ptr %0, !12863, !DIExpression(), !16763)
    #dbg_value(ptr %1, !12867, !DIExpression(), !16763)
    #dbg_value(ptr %1, !12889, !DIExpression(), !16765)
    #dbg_value(ptr %1, !12895, !DIExpression(), !16767)
    #dbg_value(ptr %1, !12930, !DIExpression(), !16769)
    #dbg_value(ptr %1, !12889, !DIExpression(), !16771)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !12868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16763)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !12942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16773)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !12948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16775)
    #dbg_value(i64 0, !12868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16763)
    #dbg_value(i64 0, !12942, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16773)
    #dbg_value(i64 0, !12948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16775)
    #dbg_value(ptr %i.u, !12869, !DIExpression(), !16763)
    #dbg_value(ptr %2, !12870, !DIExpression(), !16763)
    #dbg_value(i64 %.sroa.0.02611389, !12871, !DIExpression(), !16763)
    #dbg_value(i64 %.sroa.0.02611389, !12958, !DIExpression(), !16777)
    #dbg_declare(ptr poison, !12892, !DIExpression(), !16779)
    #dbg_value(i64 0, !12966, !DIExpression(), !16780)
    #dbg_value(i64 0, !12972, !DIExpression(), !16782)
    #dbg_value(i64 1, !12978, !DIExpression(), !16784)
    #dbg_value(i64 1, !12987, !DIExpression(), !16786)
    #dbg_value(i64 1, !12997, !DIExpression(), !16788)
    #dbg_declare(ptr poison, !13006, !DIExpression(), !16790)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !12884, !DIExpression(), !16792)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !12881, !DIExpression(), !16793)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !12875, !DIExpression(), !16794)
    #dbg_value(i32 %.sroa.45.0.copyload.i, !12872, !DIExpression(), !16763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.45.0.copyload.i, ptr %i.g, align 4, !noalias !16795
  %i.dd = zext i32 %.sroa.45.0.copyload.i to i64, !dbg !16802 ; 3 uses
  %i.de = load i64, ptr %i.bd, align 8, !dbg !16808, !alias.scope !16812, !noalias !16815, !noundef !29 ; 2 uses
  %i.df = icmp ugt i64 %i.de, %i.dd, !dbg !16816
  br i1 %i.df, label %.lr.ph, label %._crit_edge, !dbg !16816

.lr.ph:                                           ; preds = %bb.p, %.backedge392
  %i.dg = phi i64 [ %i.ie, %.backedge392 ], [ %i.dd, %bb.p ] ; 5 uses
  %i.dh = phi i32 [ %.sroa.0.0.i49.be, %.backedge392 ], [ %.sroa.45.0.copyload.i, %bb.p ] ; 3 uses
    #dbg_value(i32 %i.dh, !12884, !DIExpression(), !16792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16819), !dbg !16821
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16822), !dbg !16824
  %i.di = load ptr, ptr %i.be, align 8, !dbg !16825, !alias.scope !16822, !noalias !16815, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.di, !13198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16830)
    #dbg_value(ptr %i.di, !13192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16831)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dg, !dbg !16832
  %i.dk = load i32, ptr %i.dj, align 4, !dbg !16833, !noalias !16834, !noundef !29
    #dbg_value(i32 %i.dk, !13068, !DIExpression(), !16835)
    #dbg_value(ptr poison, !13051, !DIExpression(), !16836)
    #dbg_value(ptr poison, !13047, !DIExpression(), !16838)
    #dbg_value(i32 %i.dk, !13059, !DIExpression(), !16840)
  %i.dl = zext i32 %i.dk to i64, !dbg !16842      ; 4 uses
    #dbg_value(i64 %i.dl, !13179, !DIExpression(), !16843)
    #dbg_value(i64 %i.dl, !13199, !DIExpression(), !16845)
    #dbg_value(i64 %i.dl, !13191, !DIExpression(), !16847)
  %i.dm = load i64, ptr %i.v, align 8, !dbg !16849, !alias.scope !16822, !noalias !16815, !noundef !29 ; 5 uses
  %i.dn = icmp ugt i64 %i.dm, %i.dl, !dbg !16851
  %.pre2628 = load i64, ptr %i.bf, align 8, !dbg !16852, !noalias !16815 ; 5 uses
  br i1 %i.dn, label %bb.q, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread, !dbg !16851

._crit_edge:                                      ; preds = %bb.p, %.backedge392
  %.lcssa421 = phi i64 [ %i.ie, %.backedge392 ], [ %i.dd, %bb.p ], !dbg !16802
  %.lcssa402 = phi i64 [ %i.if, %.backedge392 ], [ %i.de, %bb.p ], !dbg !16808
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.lcssa421, i64 noundef %.lcssa402, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #27, !dbg !16816, !noalias !16834
  unreachable, !dbg !16816

bb.q:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.u, !13058, !DIExpression(), !16855)
    #dbg_value(ptr %i.u, !13178, !DIExpression(), !16856)
    #dbg_value(ptr %i.u, !13172, !DIExpression(), !16857)
    #dbg_value(ptr %i.u, !13168, !DIExpression(), !16859)
    #dbg_value(ptr %i.u, !13216, !DIExpression(), !16861)
    #dbg_value(ptr poison, !13051, !DIExpression(), !16863)
    #dbg_value(ptr poison, !13047, !DIExpression(), !16865)
    #dbg_value(ptr poison, !13198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16845)
    #dbg_value(ptr poison, !13192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16847)
    #dbg_value(i64 %.pre2628, !13198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16845)
    #dbg_value(i64 %.pre2628, !13192, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16847)
  %i.do = icmp ugt i64 %.pre2628, %i.dl, !dbg !16867
  br i1 %i.do, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit, label %bb.r, !dbg !16867

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef %.pre2628, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #27, !dbg !16867, !noalias !16834
  unreachable, !dbg !16867

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit: ; preds = %bb.q
  %i.dp = load ptr, ptr %i.bg, align 8, !dbg !16868, !alias.scope !16822, !noalias !16815, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.dp, !13198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16845)
    #dbg_value(ptr %i.dp, !13192, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16847)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dl, !dbg !16872
    #dbg_value(ptr %i.dq, !13284, !DIExpression(), !16873)
    #dbg_value(ptr poison, !13287, !DIExpression(), !16875)
    #dbg_value(ptr %i.dq, !13291, !DIExpression(), !16876)
    #dbg_value(ptr poison, !13294, !DIExpression(), !16876)
  %i.dr = load i32, ptr %i.dq, align 4, !dbg !16876, !noalias !16834, !noundef !29
  %i.ds = icmp eq i32 %i.dr, %i.dh, !dbg !16876
  br i1 %i.ds, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit70, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread, !dbg !16878

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread: ; preds = %.lr.ph, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16879, !noalias !16880
    #dbg_value(i64 %i.dm, !13078, !DIExpression(), !16881)
    #dbg_value(i64 %i.dm, !13301, !DIExpression(), !16882)
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!16462 = !DILocalVariable(name: "self", arg: 1, scope: !16463, file: !11340, line: 593, type: !11129)
!16463 = distinct !DISubprogram(name: "haystack", linkageName: "_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB2_5Input8haystack", scope: !11130, file: !11340, line: 593, type: !11359, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !11361, retainedNodes: !16464)
!16464 = !{!16462}
!16465 = !DILocation(line: 0, scope: !16463, inlinedAt: !16466)
!16466 = !DILocation(line: 1416, column: 19, scope: !16373)
!16467 = !DILocation(line: 0, scope: !16456, inlinedAt: !16468)
!16468 = !DILocation(line: 618, column: 14, scope: !16469, inlinedAt: !16472)
!16469 = distinct !DISubprogram(name: "start", linkageName: "_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB2_5Input5start", scope: !11130, file: !11340, line: 617, type: !11368, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !11370, retainedNodes: !16470)
!16470 = !{!16471}
!16471 = !DILocalVariable(name: "self", arg: 1, scope: !16469, file: !11340, line: 617, type: !11129)
!16472 = !DILocation(line: 1429, column: 25, scope: !16400)
!16473 = !DILocation(line: 0, scope: !16456, inlinedAt: !16474)
!16474 = !DILocation(line: 641, column: 14, scope: !16475, inlinedAt: !16478)
!16475 = distinct !DISubprogram(name: "end", linkageName: "_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB2_5Input3end", scope: !11130, file: !11340, line: 640, type: !11368, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !11377, retainedNodes: !16476)
!16476 = !{!16477}
!16477 = !DILocalVariable(name: "self", arg: 1, scope: !16475, file: !11340, line: 640, type: !11129)
!16478 = !DILocation(line: 1429, column: 41, scope: !16400)
!16479 = !DILocation(line: 0, scope: !16456, inlinedAt: !16480)
!16480 = !DILocation(line: 618, column: 14, scope: !16481, inlinedAt: !16482)
!16481 = !DILexicalBlockFile(scope: !16469, file: !11340, discriminator: 2)
!16482 = !DILocation(line: 1435, column: 43, scope: !16413)
!16483 = !DILocalVariable(name: "self", arg: 1, scope: !16484, file: !11340, line: 1283, type: !16376)
!16484 = distinct !DISubprogram(name: "is_empty", linkageName: "_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet8is_empty", scope: !16377, file: !11340, line: 1283, type: !16485, scopeLine: 1283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !16488, retainedNodes: !16489)
!16485 = !DISubroutineType(types: !16486)
!16486 = !{!215, !16487}
!16487 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_automata::util::search::PatternSet", baseType: !16377, size: 64, align: 64, dwarfAddressSpace: 0)
!16488 = !DISubprogram(name: "is_empty", linkageName: "_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet8is_empty", scope: !16377, file: !11340, line: 1283, type: !16485, scopeLine: 1283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !29)
!16489 = !{!16483}
!16490 = !DILocation(line: 0, scope: !16484, inlinedAt: !16491)
!16491 = !DILocation(line: 1430, column: 39, scope: !16411)
!16492 = !DILocalVariable(name: "self", arg: 1, scope: !16493, file: !11340, line: 1302, type: !16376)
!16493 = distinct !DISubprogram(name: "len", linkageName: "_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet3len", scope: !16377, file: !11340, line: 1302, type: !16494, scopeLine: 1302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !16496, retainedNodes: !16497)
!16494 = !DISubroutineType(types: !16495)
!16495 = !{!9, !16487}
!16496 = !DISubprogram(name: "len", linkageName: "_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet3len", scope: !16377, file: !11340, line: 1302, type: !16494, scopeLine: 1302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !29)
!16497 = !{!16492}
!16498 = !DILocation(line: 0, scope: !16493, inlinedAt: !16499)
!16499 = !DILocation(line: 1284, column: 14, scope: !16484, inlinedAt: !16491)
!16500 = !DILocalVariable(name: "self", arg: 1, scope: !16501, file: !11340, line: 1297, type: !16376)
!16501 = distinct !DISubprogram(name: "is_full", linkageName: "_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet7is_full", scope: !16377, file: !11340, line: 1297, type: !16485, scopeLine: 1297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !16502, retainedNodes: !16503)
!16502 = !DISubprogram(name: "is_full", linkageName: "_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet7is_full", scope: !16377, file: !11340, line: 1297, type: !16485, scopeLine: 1297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !29)
!16503 = !{!16500}
!16504 = !DILocation(line: 0, scope: !16501, inlinedAt: !16505)
!16505 = !DILocation(line: 1448, column: 23, scope: !16413)
!16506 = !DILocation(line: 0, scope: !16493, inlinedAt: !16507)
!16507 = !DILocation(line: 1298, column: 14, scope: !16501, inlinedAt: !16505)
!16508 = !DILocalVariable(name: "self", arg: 1, scope: !16509, file: !11340, line: 1313, type: !16376)
!16509 = distinct !DISubprogram(name: "capacity", linkageName: "_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet8capacity", scope: !16377, file: !11340, line: 1313, type: !16494, scopeLine: 1313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !16510, retainedNodes: !16511)
!16510 = !DISubprogram(name: "capacity", linkageName: "_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet8capacity", scope: !16377, file: !11340, line: 1313, type: !16494, scopeLine: 1313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !29)
!16511 = !{!16508}
!16512 = !DILocation(line: 0, scope: !16509, inlinedAt: !16513)
!16513 = !DILocation(line: 1298, column: 28, scope: !16501, inlinedAt: !16505)
!16514 = !DILocalVariable(name: "captures_slot_len", scope: !16515, file: !7942, line: 2038, type: !9, align: 64)
!16515 = distinct !DISubprogram(name: "setup_search", linkageName: "_RNvMs7_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_12ActiveStates12setup_search", scope: !1704, file: !7942, line: 2038, type: !11446, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !11448, retainedNodes: !16516)
!16516 = !{!16517, !16514}
!16517 = !DILocalVariable(name: "self", arg: 1, scope: !16515, file: !7942, line: 2038, type: !1703)
!16518 = !DILocation(line: 0, scope: !16515, inlinedAt: !16519)
!16519 = !DILocation(line: 1973, column: 19, scope: !16445, inlinedAt: !16449)
!16520 = !DILocalVariable(name: "captures_slot_len", scope: !16521, file: !7942, line: 2138, type: !9, align: 64)
!16521 = distinct !DISubprogram(name: "setup_search", linkageName: "_RNvMs8_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable12setup_search", scope: !1708, file: !7942, line: 2138, type: !11455, scopeLine: 2138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !11457, retainedNodes: !16522)
!16522 = !{!16523, !16520}
!16523 = !DILocalVariable(name: "self", arg: 1, scope: !16521, file: !7942, line: 2138, type: !1735)
!16524 = !DILocation(line: 0, scope: !16521, inlinedAt: !16525)
!16525 = !DILocation(line: 2040, column: 25, scope: !16515, inlinedAt: !16519)
!16526 = !DILocation(line: 0, scope: !16515, inlinedAt: !16527)
!16527 = !DILocation(line: 1974, column: 19, scope: !16445, inlinedAt: !16449)
!16528 = !DILocation(line: 0, scope: !16521, inlinedAt: !16529)
!16529 = !DILocation(line: 2040, column: 25, scope: !16530, inlinedAt: !16527)
!16530 = !DILexicalBlockFile(scope: !16515, file: !7942, discriminator: 2)
!16531 = !DILocalVariable(name: "default", scope: !16532, file: !2743, line: 1036, type: !104, align: 8)
!16532 = distinct !DISubprogram(name: "unwrap_or<regex_automata::util::search::MatchKind>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search9MatchKindE9unwrap_orBN_", scope: !116, file: !2743, line: 1036, type: !11397, scopeLine: 1036, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !124, declaration: !11399, retainedNodes: !16533)
!16533 = !{!16534, !16531, !16535}
!16534 = !DILocalVariable(name: "self", arg: 1, scope: !16532, file: !2743, line: 1036, type: !116)
!16535 = !DILocalVariable(name: "x", scope: !16536, file: !2743, line: 1041, type: !104, align: 8)
!16536 = distinct !DILexicalBlock(scope: !16532, file: !2743, line: 1041, column: 13)
!16537 = !DILocation(line: 0, scope: !16532, inlinedAt: !16538)
!16538 = !DILocation(line: 166, column: 25, scope: !16539, inlinedAt: !16542)
!16539 = distinct !DISubprogram(name: "get_match_kind", linkageName: "_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB2_6Config14get_match_kind", scope: !235, file: !7942, line: 165, type: !11407, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !11409, retainedNodes: !16540)
!16540 = !{!16541}
!16541 = !DILocalVariable(name: "self", arg: 1, scope: !16539, file: !7942, line: 165, type: !8419)
!16542 = !DILocation(line: 1422, column: 25, scope: !16373)
!16543 = !DILocalVariable(name: "self", arg: 1, scope: !16544, file: !2806, line: 3068, type: !1496)
!16544 = distinct !DISubprogram(name: "clear<regex_automata::nfa::thompson::pikevm::FollowEpsilon, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE5clearBM_", scope: !1497, file: !2806, line: 3068, type: !1494, scopeLine: 3068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !1544, declaration: !11469, retainedNodes: !16545)
!16545 = !{!16543, !16546}
!16546 = !DILocalVariable(name: "elems", scope: !16547, file: !2806, line: 3073, type: !11473, align: 64)
!16547 = distinct !DILexicalBlock(scope: !16544, file: !2806, line: 3073, column: 9)
!16548 = !DILocation(line: 3068, column: 18, scope: !16544, inlinedAt: !16549)
!16549 = !DILocation(line: 1972, column: 20, scope: !16445, inlinedAt: !16449)
!16550 = !DILocalVariable(name: "self", arg: 1, scope: !16551, file: !2806, line: 1884, type: !1496)
!16551 = distinct !DISubprogram(name: "as_mut_slice<regex_automata::nfa::thompson::pikevm::FollowEpsilon, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE12as_mut_sliceBM_", scope: !1497, file: !2806, line: 1884, type: !11482, scopeLine: 1884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !1544, declaration: !11488, retainedNodes: !16552)
!16552 = !{!16550}
!16553 = !DILocation(line: 1884, column: 31, scope: !16551, inlinedAt: !16554)
!16554 = !DILocation(line: 3073, column: 36, scope: !16544, inlinedAt: !16549)
!16555 = !DILocation(line: 1904, column: 92, scope: !16551, inlinedAt: !16554)
!16556 = !DILocation(line: 0, scope: !16547, inlinedAt: !16549)
!16557 = !DILocation(line: 3082, column: 13, scope: !16547, inlinedAt: !16549)
!16558 = !DILocation(line: 2038, column: 21, scope: !16515, inlinedAt: !16519)
!16559 = !DILocalVariable(name: "self", arg: 1, scope: !16560, file: !11498, line: 203, type: !1577)
!16560 = distinct !DISubprogram(name: "clear", linkageName: "_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet5clear", scope: !1578, file: !11498, line: 203, type: !1575, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !11499, retainedNodes: !16561)
!16561 = !{!16559}
!16562 = !DILocation(line: 203, column: 25, scope: !16560, inlinedAt: !16563)
!16563 = !DILocation(line: 2039, column: 18, scope: !16515, inlinedAt: !16519)
!16564 = !DILocation(line: 204, column: 9, scope: !16560, inlinedAt: !16563)
!16565 = !DILocation(line: 2138, column: 21, scope: !16521, inlinedAt: !16525)
!16566 = !DILocation(line: 2139, column: 9, scope: !16521, inlinedAt: !16525)
!16567 = !DILocation(line: 2038, column: 21, scope: !16515, inlinedAt: !16527)
!16568 = !DILocation(line: 203, column: 25, scope: !16560, inlinedAt: !16569)
!16569 = !DILocation(line: 2039, column: 18, scope: !16530, inlinedAt: !16527)
!16570 = !DILocation(line: 204, column: 9, scope: !16560, inlinedAt: !16569)
!16571 = !DILocation(line: 2138, column: 21, scope: !16521, inlinedAt: !16529)
!16572 = !DILocation(line: 2139, column: 9, scope: !16521, inlinedAt: !16529)
!16573 = !DILocation(line: 662, column: 9, scope: !16456, inlinedAt: !16459)
!16574 = !DILocation(line: 662, column: 9, scope: !16456, inlinedAt: !16461)
!16575 = !DILocation(line: 742, column: 9, scope: !16451, inlinedAt: !16454)
!16576 = !DILocation(line: 1412, column: 12, scope: !16373)
!16577 = !DILocation(line: 594, column: 9, scope: !16463, inlinedAt: !16466)
!16578 = !DILocation(line: 1416, column: 13, scope: !16373)
!16579 = !DILocation(line: 1415, column: 9, scope: !16373)
!16580 = !DILocation(line: 165, column: 27, scope: !16539, inlinedAt: !16542)
!16581 = !DILocation(line: 166, column: 9, scope: !16539, inlinedAt: !16542)
!16582 = !DILocation(line: 1040, column: 15, scope: !16532, inlinedAt: !16538)
!16583 = !DILocation(line: 1040, column: 9, scope: !16532, inlinedAt: !16538)
!16584 = !DILocation(line: 0, scope: !16393)
!16585 = !DILocation(line: 1423, column: 47, scope: !16393)
!16586 = !DILocation(line: 0, scope: !11530, inlinedAt: !16587)
!16587 = distinct !DILocation(line: 1423, column: 47, scope: !16393)
!16588 = !DILocation(line: 1772, column: 9, scope: !11530, inlinedAt: !16587)
!16589 = !DILocation(line: 964, column: 37, scope: !11712, inlinedAt: !16590)
!16590 = distinct !DILocation(line: 1776, column: 26, scope: !11530, inlinedAt: !16587)
!16591 = !DILocation(line: 473, column: 27, scope: !11560, inlinedAt: !16592)
!16592 = distinct !DILocation(line: 965, column: 14, scope: !11712, inlinedAt: !16590)
!16593 = !DILocation(line: 501, column: 29, scope: !11720, inlinedAt: !16594)
!16594 = distinct !DILocation(line: 965, column: 39, scope: !11712, inlinedAt: !16590)
!16595 = !DILocation(line: 474, column: 9, scope: !11560, inlinedAt: !16592)
!16596 = !DILocation(line: 748, column: 42, scope: !11727, inlinedAt: !16597)
!16597 = distinct !DILocation(line: 965, column: 9, scope: !11712, inlinedAt: !16590)
!16598 = !DILocation(line: 502, column: 9, scope: !11720, inlinedAt: !16594)
!16599 = !DILocation(line: 141, column: 44, scope: !11737, inlinedAt: !16600)
!16600 = distinct !DILocation(line: 748, column: 42, scope: !11727, inlinedAt: !16597)
!16601 = !DILocation(line: 473, column: 27, scope: !11560, inlinedAt: !16602)
!16602 = distinct !DILocation(line: 1777, column: 26, scope: !11530, inlinedAt: !16587)
!16603 = !DILocation(line: 1778, column: 14, scope: !11530, inlinedAt: !16587)
!16604 = !DILocation(line: 473, column: 27, scope: !11560, inlinedAt: !16605)
!16605 = distinct !DILocation(line: 1779, column: 51, scope: !11530, inlinedAt: !16587)
!16606 = !DILocation(line: 474, column: 9, scope: !11560, inlinedAt: !16605)
!16607 = !DILocation(line: 1779, column: 68, scope: !11530, inlinedAt: !16587)
!16608 = !DILocation(line: 0, scope: !11551, inlinedAt: !16587)
!16609 = !DILocation(line: 0, scope: !11571, inlinedAt: !16610)
!16610 = distinct !DILocation(line: 1781, column: 38, scope: !11551, inlinedAt: !16587)
!16611 = !DILocation(line: 545, column: 26, scope: !11571, inlinedAt: !16610)
!16612 = !DILocation(line: 3854, column: 14, scope: !11592, inlinedAt: !16613)
!16613 = distinct !DILocation(line: 546, column: 9, scope: !11603, inlinedAt: !16610)
!16614 = !DILocation(line: 1848, column: 27, scope: !11605, inlinedAt: !16615)
!16615 = distinct !DILocation(line: 3855, column: 14, scope: !11592, inlinedAt: !16613)
!16616 = !DILocation(line: 1966, column: 25, scope: !11611, inlinedAt: !16617)
!16617 = distinct !DILocation(line: 1865, column: 76, scope: !11605, inlinedAt: !16615)
!16618 = !DILocation(line: 1865, column: 86, scope: !11605, inlinedAt: !16615)
!16619 = !DILocation(line: 0, scope: !11621, inlinedAt: !16620)
!16620 = distinct !DILocation(line: 546, column: 30, scope: !11571, inlinedAt: !16610)
!16621 = !DILocation(line: 0, scope: !11648, inlinedAt: !16622)
!16622 = distinct !DILocation(line: 576, column: 15, scope: !11621, inlinedAt: !16620)
!16623 = !DILocation(line: 472, column: 35, scope: !11656, inlinedAt: !16624)
!16624 = distinct !DILocation(line: 546, column: 38, scope: !11571, inlinedAt: !16610)
!16625 = !DILocation(line: 200, column: 27, scope: !11666, inlinedAt: !16626)
!16626 = distinct !DILocation(line: 473, column: 24, scope: !11656, inlinedAt: !16624)
!16627 = !DILocation(line: 202, column: 9, scope: !11666, inlinedAt: !16626)
!16628 = !DILocation(line: 184, column: 12, scope: !11648, inlinedAt: !16622)
!16629 = !DILocation(line: 611, column: 9, scope: !11677, inlinedAt: !16630)
!16630 = distinct !DILocation(line: 606, column: 14, scope: !11686, inlinedAt: !16631)
!16631 = distinct !DILocation(line: 296, column: 20, scope: !11692, inlinedAt: !16632)
!16632 = distinct !DILocation(line: 1969, column: 18, scope: !11611, inlinedAt: !16617)
!16633 = !DILocation(line: 186, column: 27, scope: !11648, inlinedAt: !16622)
!16634 = !DILocation(line: 0, scope: !11700, inlinedAt: !16635)
!16635 = distinct !DILocation(line: 546, column: 50, scope: !11571, inlinedAt: !16610)
!16636 = !DILocation(line: 2138, column: 19, scope: !11700, inlinedAt: !16635)
!16637 = !DILocation(line: 1782, column: 13, scope: !11530, inlinedAt: !16587)
!16638 = !DILocation(line: 0, scope: !16395)
!16639 = !DILocation(line: 0, scope: !16400)
!16640 = !DILocalVariable(name: "x", arg: 1, scope: !16641, file: !5179, line: 830, type: !1703)
!16641 = distinct !DISubprogram(name: "swap<regex_automata::nfa::thompson::pikevm::ActiveStates>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3mem4swapNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm12ActiveStatesEBE_", scope: !668, file: !5179, line: 830, type: !11781, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !1727, retainedNodes: !16642)
!16642 = !{!16640, !16643}
!16643 = !DILocalVariable(name: "y", arg: 2, scope: !16641, file: !5179, line: 830, type: !1703)
!16644 = !DILocation(line: 0, scope: !16641, inlinedAt: !16645)
!16645 = !DILocation(line: 1451, column: 13, scope: !16413)
!16646 = !DILocation(line: 0, scope: !16404)
!16647 = !DILocation(line: 1303, column: 9, scope: !16493, inlinedAt: !16499)
!16648 = !DILocation(line: 575, column: 9, scope: !16422, inlinedAt: !16431)
!16649 = !DILocation(line: 1455, column: 6, scope: !16373)
!16650 = !DILocalVariable(name: "start", arg: 1, scope: !16651, file: !6083, line: 348, type: !9)
!16651 = distinct !DISubprogram(name: "forward_overflowing", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step19forward_overflowing", scope: !6117, file: !6083, line: 348, type: !16652, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, retainedNodes: !16654)
!16652 = !DISubroutineType(types: !16653)
!16653 = !{!4718, !9, !9}
!16654 = !{!16650, !16655}
!16655 = !DILocalVariable(name: "n", arg: 2, scope: !16651, file: !6083, line: 348, type: !9)
!16656 = !DILocation(line: 0, scope: !16651, inlinedAt: !16657)
!16657 = distinct !DILocation(line: 1535, column: 22, scope: !16432, inlinedAt: !16441)
!16658 = !DILocation(line: 2990, column: 26, scope: !16659, inlinedAt: !16660)
!16659 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj15overflowing_add", scope: !5381, file: !4584, line: 2989, type: !16652, scopeLine: 2989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29)
!16660 = distinct !DILocation(line: 350, column: 40, scope: !16651, inlinedAt: !16657)
!16661 = !DILocation(line: 0, scope: !16411)
!16662 = !DILocation(line: 1284, column: 9, scope: !16484, inlinedAt: !16491)
!16663 = !DILocation(line: 0, scope: !16413)
!16664 = !DILocalVariable(name: "self", arg: 1, scope: !16665, file: !11498, line: 157, type: !11794)
!16665 = distinct !DISubprogram(name: "is_empty", linkageName: "_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8is_empty", scope: !1578, file: !11498, line: 157, type: !11792, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !11795, retainedNodes: !16666)
!16666 = !{!16664}
!16667 = !DILocation(line: 157, column: 28, scope: !16665, inlinedAt: !16668)
!16668 = !DILocation(line: 1431, column: 25, scope: !16413)
!16669 = !DILocalVariable(name: "self", arg: 1, scope: !16670, file: !11498, line: 151, type: !11794)
!16670 = distinct !DISubprogram(name: "len", linkageName: "_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet3len", scope: !1578, file: !11498, line: 151, type: !11801, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, templateParams: !29, declaration: !11803, retainedNodes: !16671)
!16671 = !{!16669}
!16672 = !DILocation(line: 151, column: 23, scope: !16670, inlinedAt: !16673)
!16673 = !DILocation(line: 158, column: 14, scope: !16665, inlinedAt: !16668)
!16674 = !DILocation(line: 152, column: 9, scope: !16670, inlinedAt: !16673)
!16675 = !DILocation(line: 158, column: 9, scope: !16665, inlinedAt: !16668)
!16676 = !DILocation(line: 1431, column: 16, scope: !16413)
!16677 = !DILocation(line: 1439, column: 17, scope: !16413)
!16678 = !DILocation(line: 1432, column: 20, scope: !16413)
!16679 = !DILocation(line: 0, scope: !16415)
!16680 = !DILocation(line: 0, scope: !12620, inlinedAt: !16681)
!16681 = distinct !DILocation(line: 1441, column: 22, scope: !16415)
!16682 = !DILocation(line: 0, scope: !12641, inlinedAt: !16683)
!16683 = distinct !DILocation(line: 1624, column: 15, scope: !12620, inlinedAt: !16681)
!16684 = !DILocation(line: 0, scope: !12650, inlinedAt: !16685)
!16685 = distinct !DILocation(line: 1625, column: 39, scope: !12632, inlinedAt: !16681)
!16686 = !DILocation(line: 0, scope: !12669, inlinedAt: !16687)
!16687 = distinct !DILocation(line: 2878, column: 62, scope: !12650, inlinedAt: !16685)
!16688 = !DILocation(line: 0, scope: !12678, inlinedAt: !16689)
!16689 = distinct !DILocation(line: 2879, column: 37, scope: !12650, inlinedAt: !16685)
!16690 = !DILocation(line: 0, scope: !12687, inlinedAt: !16691)
!16691 = distinct !DILocation(line: 2879, column: 55, scope: !12650, inlinedAt: !16685)
!16692 = !DILocation(line: 0, scope: !12693, inlinedAt: !16693)
!16693 = distinct !DILocation(line: 1628, column: 31, scope: !12634, inlinedAt: !16681)
!16694 = !DILocation(line: 0, scope: !12703, inlinedAt: !16695)
!16695 = distinct !DILocation(line: 309, column: 20, scope: !12711, inlinedAt: !16696)
!16696 = distinct !DILocation(line: 1437, column: 18, scope: !12669, inlinedAt: !16687)
!16697 = !DILocation(line: 0, scope: !12720, inlinedAt: !16698)
!16698 = distinct !DILocation(line: 996, column: 22, scope: !12641, inlinedAt: !16683)
!16699 = !DILocation(line: 0, scope: !12735, inlinedAt: !16700)
!16700 = distinct !DILocation(line: 1037, column: 13, scope: !12730, inlinedAt: !16698)
!16701 = !DILocation(line: 0, scope: !12743, inlinedAt: !16702)
!16702 = distinct !DILocation(line: 1036, column: 28, scope: !12728, inlinedAt: !16698)
!16703 = !DILocation(line: 0, scope: !12751, inlinedAt: !16704)
!16704 = distinct !DILocation(line: 309, column: 20, scope: !12756, inlinedAt: !16705)
!16705 = distinct !DILocation(line: 1032, column: 28, scope: !12728, inlinedAt: !16698)
!16706 = !DILocation(line: 1029, column: 19, scope: !12720, inlinedAt: !16698)
!16707 = !{!16708}
!16708 = distinct !{!16708, !16709, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_: argument 0"}
!16709 = distinct !{!16709, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_"}
!16710 = !{!16711, !16712, !16714, !16715, !16716}
!16711 = distinct !{!16711, !16709, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBN_: argument 1"}
!16712 = distinct !{!16712, !16713, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure: argument 0"}
!16713 = distinct !{!16713, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure"}
!16714 = distinct !{!16714, !16713, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure: argument 2"}
!16715 = distinct !{!16715, !16713, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure: argument 3"}
!16716 = distinct !{!16716, !16713, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure: argument 4"}
!16717 = !DILocation(line: 0, scope: !12728, inlinedAt: !16698)
!16718 = !DILocation(line: 0, scope: !12771, inlinedAt: !16719)
!16719 = distinct !DILocation(line: 1036, column: 41, scope: !12728, inlinedAt: !16698)
!16720 = !DILocation(line: 308, column: 34, scope: !12756, inlinedAt: !16705)
!16721 = !DILocation(line: 616, column: 49, scope: !12751, inlinedAt: !16704)
!16722 = !DILocation(line: 1032, column: 12, scope: !12728, inlinedAt: !16698)
!16723 = !DILocation(line: 1033, column: 22, scope: !12728, inlinedAt: !16698)
!16724 = !DILocation(line: 1032, column: 9, scope: !12728, inlinedAt: !16698)
!16725 = !DILocation(line: 611, column: 9, scope: !12785, inlinedAt: !16726)
!16726 = distinct !DILocation(line: 606, column: 14, scope: !12794, inlinedAt: !16727)
!16727 = distinct !DILocation(line: 296, column: 20, scope: !12799, inlinedAt: !16728)
!16728 = distinct !DILocation(line: 2053, column: 18, scope: !12743, inlinedAt: !16702)
!16729 = !DILocation(line: 970, column: 18, scope: !12771, inlinedAt: !16719)
!16730 = !DILocation(line: 0, scope: !12730, inlinedAt: !16698)
!16731 = !DILocation(line: 1963, column: 41, scope: !12735, inlinedAt: !16700)
!16732 = !{!16712, !16714, !16715, !16716}
!16733 = !DILocation(line: 1038, column: 13, scope: !12730, inlinedAt: !16698)
!16734 = !DILocation(line: 2873, column: 12, scope: !12650, inlinedAt: !16685)
!16735 = !DILocation(line: 2877, column: 17, scope: !12650, inlinedAt: !16685)
!16736 = !{!16737}
!16737 = distinct !{!16737, !16713, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure: argument 1"}
!16738 = !DILocation(line: 616, column: 49, scope: !12703, inlinedAt: !16695)
!16739 = !DILocation(line: 2878, column: 46, scope: !12650, inlinedAt: !16685)
!16740 = !DILocation(line: 0, scope: !12817, inlinedAt: !16741)
!16741 = distinct !DILocation(line: 2878, column: 17, scope: !12650, inlinedAt: !16685)
!16742 = !DILocation(line: 210, column: 9, scope: !12817, inlinedAt: !16741)
!16743 = !DILocation(line: 611, column: 9, scope: !12823, inlinedAt: !16744)
!16744 = distinct !DILocation(line: 606, column: 14, scope: !12825, inlinedAt: !16745)
!16745 = distinct !DILocation(line: 296, column: 20, scope: !12827, inlinedAt: !16746)
!16746 = distinct !DILocation(line: 1969, column: 18, scope: !12678, inlinedAt: !16689)
!16747 = !DILocation(line: 0, scope: !12830, inlinedAt: !16748)
!16748 = distinct !DILocation(line: 2879, column: 46, scope: !12650, inlinedAt: !16685)
!16749 = !DILocation(line: 3106, column: 37, scope: !12687, inlinedAt: !16691)
!16750 = !DILocation(line: 3106, column: 18, scope: !12687, inlinedAt: !16691)
!16751 = !DILocation(line: 871, column: 18, scope: !12830, inlinedAt: !16748)
!16752 = !DILocation(line: 0, scope: !12841, inlinedAt: !16753)
!16753 = distinct !DILocation(line: 2879, column: 22, scope: !12650, inlinedAt: !16685)
!16754 = !DILocation(line: 1755, column: 9, scope: !12841, inlinedAt: !16753)
!16755 = !DILocation(line: 0, scope: !12632, inlinedAt: !16681)
!16756 = !DILocation(line: 1626, column: 13, scope: !12632, inlinedAt: !16681)
!16757 = !DILocation(line: 0, scope: !12634, inlinedAt: !16681)
!16758 = !DILocation(line: 200, column: 27, scope: !12852, inlinedAt: !16759)
!16759 = distinct !DILocation(line: 283, column: 25, scope: !12693, inlinedAt: !16693)
!16760 = !DILocation(line: 202, column: 9, scope: !12852, inlinedAt: !16759)
!16761 = !DILocation(line: 283, column: 14, scope: !12693, inlinedAt: !16693)
!16762 = !DILocation(line: 0, scope: !12637, inlinedAt: !16681)
!16763 = !DILocation(line: 0, scope: !12864, inlinedAt: !16764)
!16764 = distinct !DILocation(line: 1631, column: 26, scope: !12637, inlinedAt: !16681)
!16765 = !DILocation(line: 0, scope: !12890, inlinedAt: !16766)
!16766 = distinct !DILocation(line: 1729, column: 27, scope: !12882, inlinedAt: !16764)
!16767 = !DILocation(line: 0, scope: !12896, inlinedAt: !16768)
!16768 = distinct !DILocation(line: 1718, column: 27, scope: !12877, inlinedAt: !16764)
!16769 = !DILocation(line: 0, scope: !12931, inlinedAt: !16770)
!16770 = distinct !DILocation(line: 4067, column: 9, scope: !12896, inlinedAt: !16768)
!16771 = !DILocation(line: 0, scope: !12890, inlinedAt: !16772)
!16772 = distinct !DILocation(line: 1738, column: 31, scope: !12885, inlinedAt: !16764)
!16773 = !DILocation(line: 0, scope: !12943, inlinedAt: !16774)
!16774 = distinct !DILocation(line: 1692, column: 52, scope: !12864, inlinedAt: !16764)
!16775 = !DILocation(line: 0, scope: !12949, inlinedAt: !16776)
!16776 = distinct !DILocation(line: 1740, column: 47, scope: !12885, inlinedAt: !16764)
!16777 = !DILocation(line: 0, scope: !12959, inlinedAt: !16778)
!16778 = distinct !DILocation(line: 1743, column: 49, scope: !12885, inlinedAt: !16764)
!16779 = !DILocation(line: 995, column: 28, scope: !12890, inlinedAt: !16772)
!16780 = !DILocation(line: 0, scope: !12967, inlinedAt: !16781)
!16781 = distinct !DILocation(line: 1709, column: 44, scope: !12877, inlinedAt: !16764)
!16782 = !DILocation(line: 0, scope: !12973, inlinedAt: !16783)
!16783 = distinct !DILocation(line: 576, column: 15, scope: !12967, inlinedAt: !16781)
!16784 = !DILocation(line: 0, scope: !12979, inlinedAt: !16785)
!16785 = distinct !DILocation(line: 1719, column: 35, scope: !12877, inlinedAt: !16764)
!16786 = !DILocation(line: 0, scope: !12988, inlinedAt: !16787)
!16787 = distinct !DILocation(line: 19, column: 15, scope: !12979, inlinedAt: !16785)
!16788 = !DILocation(line: 0, scope: !12998, inlinedAt: !16789)
!16789 = distinct !DILocation(line: 550, column: 15, scope: !12994, inlinedAt: !16787)
!16790 = !DILocation(line: 1158, column: 34, scope: !13007, inlinedAt: !16791)
!16791 = distinct !DILocation(line: 64, column: 50, scope: !12959, inlinedAt: !16778)
!16792 = !DILocation(line: 0, scope: !12885, inlinedAt: !16764)
!16793 = !DILocation(line: 0, scope: !12882, inlinedAt: !16764)
!16794 = !DILocation(line: 0, scope: !12874, inlinedAt: !16764)
!16795 = !{!16796, !16798, !16800, !16801}
!16796 = distinct !{!16796, !16797, !"_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet6insert: argument 0:pre.rot"}
!16797 = distinct !{!16797, !"_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet6insert"}
!16798 = distinct !{!16798, !16799, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore: argument 0"}
!16799 = distinct !{!16799, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore"}
!16800 = distinct !{!16800, !16799, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore: argument 2"}
!16801 = distinct !{!16801, !16799, !"_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore: argument 4"}
!16802 = !DILocation(line: 202, column: 9, scope: !13045, inlinedAt: !16803)
!16803 = distinct !DILocation(line: 473, column: 24, scope: !13049, inlinedAt: !16804)
!16804 = distinct !DILocation(line: 574, column: 29, scope: !13053, inlinedAt: !16805)
!16805 = distinct !DILocation(line: 197, column: 32, scope: !13061, inlinedAt: !16806)
!16806 = distinct !DILocation(line: 173, column: 17, scope: !13071, inlinedAt: !16807)
!16807 = distinct !DILocation(line: 1683, column: 26, scope: !12864, inlinedAt: !16764)
!16808 = !DILocation(line: 1865, column: 86, scope: !13166, inlinedAt: !16809)
!16809 = distinct !DILocation(line: 3855, column: 14, scope: !13170, inlinedAt: !16810)
!16810 = distinct !DILocation(line: 3937, column: 23, scope: !13174, inlinedAt: !16811)
!16811 = distinct !DILocation(line: 574, column: 22, scope: !13053, inlinedAt: !16805)
!16812 = !{!16813}
!16813 = distinct !{!16813, !16814, !"_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains: argument 0:pre.rot"}
!16814 = distinct !{!16814, !"_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains"}
!16815 = !{!16798, !16800, !16801}
!16816 = !DILocation(line: 238, column: 10, scope: !13187, inlinedAt: !16817)
!16817 = distinct !DILocation(line: 19, column: 15, scope: !13194, inlinedAt: !16818)
!16818 = distinct !DILocation(line: 3937, column: 9, scope: !13174, inlinedAt: !16811)
!16819 = !{!16820}
!16820 = distinct !{!16820, !16797, !"_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet6insert: argument 0"}
!16821 = !DILocation(line: 1683, column: 26, scope: !12864, inlinedAt: !16764)
!16822 = !{!16823}
!16823 = distinct !{!16823, !16814, !"_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata4util10sparse_setNtB4_9SparseSet8contains: argument 0"}
!16824 = !DILocation(line: 173, column: 17, scope: !13071, inlinedAt: !16807)
!16825 = !DILocation(line: 611, column: 9, scope: !13208, inlinedAt: !16826)
!16826 = distinct !DILocation(line: 606, column: 14, scope: !13210, inlinedAt: !16827)
!16827 = distinct !DILocation(line: 296, column: 20, scope: !13212, inlinedAt: !16828)
!16828 = distinct !DILocation(line: 1969, column: 18, scope: !13214, inlinedAt: !16829)
!16829 = distinct !DILocation(line: 1865, column: 76, scope: !13166, inlinedAt: !16809)
!16830 = !DILocation(line: 0, scope: !13194, inlinedAt: !16818)
!16831 = !DILocation(line: 0, scope: !13187, inlinedAt: !16817)
!16832 = !DILocation(line: 238, column: 9, scope: !13187, inlinedAt: !16817)
!16833 = !DILocation(line: 197, column: 21, scope: !13061, inlinedAt: !16806)
!16834 = !{!16823, !16798, !16800, !16801}
!16835 = !DILocation(line: 0, scope: !13069, inlinedAt: !16806)
!16836 = !DILocation(line: 472, column: 35, scope: !13049, inlinedAt: !16837)
!16837 = distinct !DILocation(line: 198, column: 15, scope: !13069, inlinedAt: !16806)
!16838 = !DILocation(line: 200, column: 27, scope: !13045, inlinedAt: !16839)
!16839 = distinct !DILocation(line: 473, column: 24, scope: !13228, inlinedAt: !16837)
!16840 = !DILocation(line: 0, scope: !13053, inlinedAt: !16841)
!16841 = distinct !DILocation(line: 198, column: 52, scope: !13069, inlinedAt: !16806)
!16842 = !DILocation(line: 202, column: 9, scope: !13045, inlinedAt: !16839)
!16843 = !DILocation(line: 0, scope: !13174, inlinedAt: !16844)
!16844 = distinct !DILocation(line: 574, column: 22, scope: !13234, inlinedAt: !16841)
!16845 = !DILocation(line: 0, scope: !13194, inlinedAt: !16846)
!16846 = distinct !DILocation(line: 3937, column: 9, scope: !13237, inlinedAt: !16844)
!16847 = !DILocation(line: 0, scope: !13187, inlinedAt: !16848)
!16848 = distinct !DILocation(line: 19, column: 15, scope: !13240, inlinedAt: !16846)
!16849 = !DILocation(line: 152, column: 9, scope: !13242, inlinedAt: !16850)
!16850 = distinct !DILocation(line: 198, column: 33, scope: !13069, inlinedAt: !16806)
!16851 = !DILocation(line: 198, column: 9, scope: !13069, inlinedAt: !16806)
!16852 = !DILocation(line: 3101, column: 19, scope: !13248, inlinedAt: !16853)
!16853 = distinct !DILocation(line: 146, column: 20, scope: !13255, inlinedAt: !16854)
!16854 = distinct !DILocation(line: 179, column: 22, scope: !13079, inlinedAt: !16807)
!16855 = !DILocation(line: 573, column: 22, scope: !13053, inlinedAt: !16841)
!16856 = !DILocation(line: 3936, column: 14, scope: !13174, inlinedAt: !16844)
!16857 = !DILocation(line: 3854, column: 14, scope: !13170, inlinedAt: !16858)
!16858 = distinct !DILocation(line: 3937, column: 23, scope: !13237, inlinedAt: !16844)
!16859 = !DILocation(line: 1848, column: 27, scope: !13166, inlinedAt: !16860)
!16860 = distinct !DILocation(line: 3855, column: 14, scope: !13266, inlinedAt: !16858)
!16861 = !DILocation(line: 1966, column: 25, scope: !13214, inlinedAt: !16862)
!16862 = distinct !DILocation(line: 1865, column: 76, scope: !13269, inlinedAt: !16860)
!16863 = !DILocation(line: 472, column: 35, scope: !13049, inlinedAt: !16864)
!16864 = distinct !DILocation(line: 574, column: 29, scope: !13234, inlinedAt: !16841)
!16865 = !DILocation(line: 200, column: 27, scope: !13045, inlinedAt: !16866)
!16866 = distinct !DILocation(line: 473, column: 24, scope: !13274, inlinedAt: !16864)
!16867 = !DILocation(line: 238, column: 10, scope: !13187, inlinedAt: !16848)
!16868 = !DILocation(line: 611, column: 9, scope: !13208, inlinedAt: !16869)
!16869 = distinct !DILocation(line: 606, column: 14, scope: !13278, inlinedAt: !16870)
!16870 = distinct !DILocation(line: 296, column: 20, scope: !13280, inlinedAt: !16871)
!16871 = distinct !DILocation(line: 1969, column: 18, scope: !13282, inlinedAt: !16862)
!16872 = !DILocation(line: 238, column: 9, scope: !13187, inlinedAt: !16848)
!16873 = !DILocation(line: 0, scope: !13285, inlinedAt: !16874)
!16874 = distinct !DILocation(line: 198, column: 42, scope: !13069, inlinedAt: !16806)
!16875 = !DILocation(line: 748, column: 42, scope: !13285, inlinedAt: !16874)
end_hunk_2
