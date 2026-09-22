Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.14?download=true
inline.NumInlined: 191
inline.NumDeleted: 61
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_:bb.a
  %i.bu = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -6, !dbg !4360
    #dbg_value(ptr %i.bu, !4088, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3549)
  %.sroa.01.0.i63.i = select i1 %i.bt, ptr %2, ptr %i.bu, !dbg !4361
    #dbg_value(ptr %.sroa.01.0.i63.i, !4152, !DIExpression(), !3620)
    #dbg_value(ptr %.sroa.01.0.i63.i, !4108, !DIExpression(), !3621)
    #dbg_value(i64 %i.bn, !4153, !DIExpression(), !3620)
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i63.i, i64 %i.bn, !dbg !4362
    #dbg_value(ptr %i.bv, !4109, !DIExpression(), !3622)
    #dbg_value(ptr %i.bv, !4147, !DIExpression(), !3616)
    #dbg_value(ptr %i.bo, !4146, !DIExpression(), !3616)
  %i.bw = load i16, ptr %i.bo, align 1, !dbg !4363, !alias.scope !4065, !noalias !4159
  store i16 %i.bw, ptr %i.bv, align 1, !dbg !4363, !alias.scope !4066, !noalias !4160
  %i.bx = zext i1 %i.bt to i64, !dbg !4364
  %i.by = add i64 %i.bn, %i.bx, !dbg !4365        ; 2 uses
    #dbg_value(i64 %i.by, !4088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3549)
    #dbg_value(ptr %i.bo, !4150, !DIExpression(), !3618)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 6, !dbg !4366 ; 2 uses
    #dbg_value(ptr %i.bz, !4088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3549)
  %.val46.i = load i8, ptr %i.bz, align 1, !dbg !4367, !alias.scope !4065, !noalias !4066, !noundef !634 ; 2 uses
  %i.ca = getelementptr i8, ptr %.sroa.9.131.i, i64 7, !dbg !4367
  %.val47.i = load i8, ptr %i.ca, align 1, !dbg !4367, !alias.scope !4065, !noalias !4066
    #dbg_value(ptr poison, !907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3626)
    #dbg_value(ptr poison, !907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3626)
    #dbg_value(ptr poison, !913, !DIExpression(), !3626)
    #dbg_value(ptr poison, !918, !DIExpression(), !3628)
    #dbg_value(ptr poison, !920, !DIExpression(), !3628)
    #dbg_declare(ptr poison, !925, !DIExpression(), !3630)
    #dbg_value(ptr poison, !930, !DIExpression(), !3632)
    #dbg_value(ptr poison, !934, !DIExpression(), !3632)
    #dbg_value(ptr poison, !936, !DIExpression(), !3634)
    #dbg_value(ptr poison, !940, !DIExpression(), !3634)
  %i.cb = icmp eq i8 %.val46.i, %i.ai, !dbg !4368
    #dbg_value(i8 poison, !926, !DIExpression(), !3635)
  %i.cc = icmp ult i8 %.val47.i, %i.ak, !dbg !4369
  %i.cd = icmp ult i8 %.val46.i, %i.ai, !dbg !4369
  %i.ce = select i1 %i.cb, i1 %i.cc, i1 %i.cd, !dbg !4368 ; 2 uses
    #dbg_value(ptr undef, !4103, !DIExpression(), !3508)
    #dbg_value(i1 %i.ce, !4107, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3508)
    #dbg_value(i64 1, !4142, !DIExpression(), !3637)
    #dbg_value(i64 1, !4145, !DIExpression(), !3639)
    #dbg_value(i64 1, !4149, !DIExpression(), !3641)
    #dbg_value(ptr %i.bu, !4143, !DIExpression(), !3637)
  %i.cf = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8, !dbg !4370 ; 3 uses
    #dbg_value(ptr %i.cf, !4088, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3549)
  %.sroa.01.0.i64.i = select i1 %i.ce, ptr %2, ptr %i.cf, !dbg !4371
    #dbg_value(ptr %.sroa.01.0.i64.i, !4152, !DIExpression(), !3643)
    #dbg_value(ptr %.sroa.01.0.i64.i, !4108, !DIExpression(), !3644)
    #dbg_value(i64 %i.by, !4153, !DIExpression(), !3643)
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i64.i, i64 %i.by, !dbg !4372
    #dbg_value(ptr %i.cg, !4109, !DIExpression(), !3645)
    #dbg_value(ptr %i.cg, !4147, !DIExpression(), !3639)
    #dbg_value(ptr %i.bz, !4146, !DIExpression(), !3639)
  %i.ch = load i16, ptr %i.bz, align 1, !dbg !4373, !alias.scope !4065, !noalias !4161
  store i16 %i.ch, ptr %i.cg, align 1, !dbg !4373, !alias.scope !4066, !noalias !4162
  %i.ci = zext i1 %i.ce to i64, !dbg !4374
  %i.cj = add i64 %i.by, %i.ci, !dbg !4375        ; 2 uses
    #dbg_value(i64 %i.cj, !4088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3549)
    #dbg_value(ptr %i.bz, !4150, !DIExpression(), !3641)
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8, !dbg !4376 ; 3 uses
    #dbg_value(ptr %i.ck, !4088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3549)
    #dbg_value(i64 %i.cj, !4088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3549)
    #dbg_value(ptr %i.cf, !4088, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3549)
  %i.cl = icmp ult ptr %i.ck, %i.ar, !dbg !4336
  br i1 %i.cl, label %.lr.ph.i, label %._crit_edge.i, !dbg !4336

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %i.cf, %.lr.ph.i ], !dbg !4333 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.cj, %.lr.ph.i ], !dbg !4333 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.ck, %.lr.ph.i ], !dbg !4333 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i54, !4111, !DIExpression(), !3542)
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.0.0.i54, !dbg !4377 ; 2 uses
    #dbg_value(ptr %i.cm, !4092, !DIExpression(), !3648)
    #dbg_value(ptr %.sroa.9.1.lcssa.i, !4088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3549)
    #dbg_value(i64 %.sroa.27.1.lcssa.i, !4088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3549)
    #dbg_value(ptr %.sroa.43.1.lcssa.i, !4088, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3549)
  %i.cn = icmp ult ptr %.sroa.9.1.lcssa.i, %i.cm, !dbg !4378
  br i1 %i.cn, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !4378

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.cu, %.lr.ph38.i ], !dbg !4333
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.cy, %.lr.ph38.i ], !dbg !4333 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.cz, %.lr.ph38.i ], !dbg !4333 ; 2 uses
  %i.co = icmp eq i64 %.sroa.0.0.i54, %.sroa.16.0140295, !dbg !4379
  br i1 %i.co, label %bb.n, label %bb.m, !dbg !4379

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.cz, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.cy, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.cu, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
    #dbg_value(ptr %.sroa.9.236.i, !4088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3549)
    #dbg_value(i64 %.sroa.27.235.i, !4088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3549)
    #dbg_value(ptr %.sroa.43.234.i, !4088, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3549)
  %.val.i = load i8, ptr %.sroa.9.236.i, align 1, !dbg !4380, !alias.scope !4065, !noalias !4066, !noundef !634 ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.9.236.i, i64 1, !dbg !4380
  %.val43.i = load i8, ptr %i.cp, align 1, !dbg !4380, !alias.scope !4065, !noalias !4066
    #dbg_value(ptr poison, !907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3650)
    #dbg_value(ptr poison, !907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3650)
    #dbg_value(ptr poison, !913, !DIExpression(), !3650)
    #dbg_value(ptr poison, !918, !DIExpression(), !3652)
    #dbg_value(ptr poison, !920, !DIExpression(), !3652)
    #dbg_declare(ptr poison, !925, !DIExpression(), !3654)
    #dbg_value(ptr poison, !930, !DIExpression(), !3656)
    #dbg_value(ptr poison, !934, !DIExpression(), !3656)
    #dbg_value(ptr poison, !936, !DIExpression(), !3658)
    #dbg_value(ptr poison, !940, !DIExpression(), !3658)
  %i.cq = icmp eq i8 %.val.i, %i.ai, !dbg !4381
    #dbg_value(i8 poison, !926, !DIExpression(), !3659)
  %i.cr = icmp ult i8 %.val43.i, %i.ak, !dbg !4382
  %i.cs = icmp ult i8 %.val.i, %i.ai, !dbg !4382
  %i.ct = select i1 %i.cq, i1 %i.cr, i1 %i.cs, !dbg !4381 ; 2 uses
    #dbg_value(ptr undef, !4103, !DIExpression(), !3506)
    #dbg_value(i1 %i.ct, !4107, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3506)
    #dbg_value(i64 1, !4142, !DIExpression(), !3661)
    #dbg_value(i64 1, !4145, !DIExpression(), !3663)
    #dbg_value(i64 1, !4149, !DIExpression(), !3665)
    #dbg_value(ptr %.sroa.43.234.i, !4143, !DIExpression(), !3661)
  %i.cu = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -2, !dbg !4383 ; 3 uses
    #dbg_value(ptr %i.cu, !4088, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3549)
  %.sroa.01.0.i65.i = select i1 %i.ct, ptr %2, ptr %i.cu, !dbg !4384
    #dbg_value(ptr %.sroa.01.0.i65.i, !4152, !DIExpression(), !3667)
    #dbg_value(ptr %.sroa.01.0.i65.i, !4108, !DIExpression(), !3668)
    #dbg_value(i64 %.sroa.27.235.i, !4153, !DIExpression(), !3667)
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i65.i, i64 %.sroa.27.235.i, !dbg !4385
    #dbg_value(ptr %i.cv, !4109, !DIExpression(), !3669)
    #dbg_value(ptr %i.cv, !4147, !DIExpression(), !3663)
    #dbg_value(ptr %.sroa.9.236.i, !4146, !DIExpression(), !3663)
  %i.cw = load i16, ptr %.sroa.9.236.i, align 1, !dbg !4386, !alias.scope !4065, !noalias !4163
  store i16 %i.cw, ptr %i.cv, align 1, !dbg !4386, !alias.scope !4066, !noalias !4164
  %i.cx = zext i1 %i.ct to i64, !dbg !4387
  %i.cy = add i64 %.sroa.27.235.i, %i.cx, !dbg !4388 ; 2 uses
    #dbg_value(i64 %i.cy, !4088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3549)
    #dbg_value(ptr %.sroa.9.236.i, !4150, !DIExpression(), !3665)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 2, !dbg !4389 ; 3 uses
    #dbg_value(ptr %i.cz, !4088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3549)
    #dbg_value(i64 %i.cy, !4088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3549)
    #dbg_value(ptr %i.cu, !4088, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3549)
  %i.da = icmp ult ptr %i.cz, %i.cm, !dbg !4378
  br i1 %i.da, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !4378

bb.m:                                             ; preds = %._crit_edge39.i
    #dbg_value(ptr undef, !4103, !DIExpression(), !3504)
    #dbg_value(i1 false, !4107, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3504)
    #dbg_value(i64 1, !4142, !DIExpression(), !3673)
    #dbg_value(i64 1, !4145, !DIExpression(), !3675)
    #dbg_value(i64 1, !4149, !DIExpression(), !3677)
    #dbg_value(ptr %.sroa.43.2.lcssa.i, !4143, !DIExpression(), !3673)
  %i.db = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -2, !dbg !4390 ; 2 uses
    #dbg_value(ptr %i.db, !4088, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3549)
    #dbg_value(ptr %i.db, !4152, !DIExpression(), !3679)
    #dbg_value(ptr %i.db, !4108, !DIExpression(), !3680)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !4153, !DIExpression(), !3679)
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %.sroa.27.2.lcssa.i, !dbg !4391
    #dbg_value(ptr %i.dc, !4109, !DIExpression(), !3681)
    #dbg_value(ptr %i.dc, !4147, !DIExpression(), !3675)
    #dbg_value(ptr %.sroa.9.2.lcssa.i, !4146, !DIExpression(), !3675)
  %i.dd = load i16, ptr %.sroa.9.2.lcssa.i, align 1, !dbg !4392, !alias.scope !4065, !noalias !4165
  store i16 %i.dd, ptr %i.dc, align 1, !dbg !4392, !alias.scope !4066, !noalias !4166
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !4088, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3549)
    #dbg_value(ptr %.sroa.9.2.lcssa.i, !4150, !DIExpression(), !3677)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 2, !dbg !4393
    #dbg_value(ptr %i.de, !4088, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3549)
    #dbg_value(ptr poison, !4089, !DIExpression(), !3550)
    #dbg_value(ptr poison, !4121, !DIExpression(), !3525)
    #dbg_value(i64 %.sroa.16.0140295, !4080, !DIExpression(), !3515)
    #dbg_value(i64 %.sroa.16.0140295, !4090, !DIExpression(), !3516)
    #dbg_value(i64 %.sroa.16.0140295, !4111, !DIExpression(), !3519)
  br label %bb.l, !dbg !4331

bb.n:                                             ; preds = %._crit_edge39.i
    #dbg_value(ptr %.sroa.0.0.ph147, !4093, !DIExpression(), !3684)
    #dbg_value(ptr %.sroa.0.0.ph147, !4121, !DIExpression(), !3686)
    #dbg_value(ptr %.sroa.0.0.ph147, !4137, !DIExpression(), !3688)
    #dbg_value(ptr %2, !4120, !DIExpression(), !3686)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !4122, !DIExpression(), !3686)
  %i.df = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 1, !dbg !4394
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.ph147, ptr nonnull align 1 %2, i64 %i.df, i1 false), !dbg !4394, !alias.scope !4167
  %i.dg = sub i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i, !dbg !4395 ; 9 uses
    #dbg_value(i64 0, !4094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3689)
    #dbg_value(i64 %i.dg, !4094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3689)
    #dbg_value(ptr undef, !4073, !DIExpression(), !3499)
    #dbg_value(ptr undef, !4070, !DIExpression(), !3498)
    #dbg_value(ptr undef, !4067, !DIExpression(), !3497)
    #dbg_value(ptr undef, !4068, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3690)
  %.not47.i = icmp eq i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i, !dbg !4396
  br i1 %.not47.i, label %.loopexit, label %iter.check325, !dbg !4397

iter.check325:                                    ; preds = %bb.n
  %i.dh = getelementptr [2 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %min.iters.check310 = icmp ult i64 %i.dg, 4, !dbg !4397
  br i1 %min.iters.check310, label %vec.epilog.scalar.ph326.preheader, label %vector.main.loop.iter.check311, !dbg !4397

vector.main.loop.iter.check311:                   ; preds = %iter.check325
  %min.iters.check312 = icmp ult i64 %i.dg, 16, !dbg !4397
  br i1 %min.iters.check312, label %vec.epilog.ph329, label %vector.ph313, !dbg !4397

vector.ph313:                                     ; preds = %vector.main.loop.iter.check311
  %i.di = and i64 %i.dg, 12
  %n.vec314 = and i64 %i.dg, -16                  ; 4 uses
  br label %vector.body315, !dbg !4397

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next321, %vector.body315 ], !dbg !4398 ; 3 uses
  %i.dj = xor i64 %index316, -1, !dbg !4399
  %i.dk = getelementptr [2 x i8], ptr %i.ap, i64 %i.dj, !dbg !4400 ; 2 uses
  %i.dl = getelementptr [2 x i8], ptr %i.dh, i64 %index316, !dbg !4401 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 -14, !dbg !4402
  %i.dn = getelementptr i8, ptr %i.dk, i64 -30, !dbg !4402
  %wide.load317 = load <8 x i16>, ptr %i.dm, align 1, !dbg !4402, !alias.scope !4066, !noalias !4065
  %wide.load318 = load <8 x i16>, ptr %i.dn, align 1, !dbg !4402, !alias.scope !4066, !noalias !4065
  %reverse319 = shufflevector <8 x i16> %wide.load317, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4402
  %reverse320 = shufflevector <8 x i16> %wide.load318, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4402
  %i.do = getelementptr i8, ptr %i.dl, i64 16, !dbg !4402
  store <8 x i16> %reverse319, ptr %i.dl, align 1, !dbg !4402, !alias.scope !4065, !noalias !4066
  store <8 x i16> %reverse320, ptr %i.do, align 1, !dbg !4402, !alias.scope !4065, !noalias !4066
  %index.next321 = add nuw i64 %index316, 16, !dbg !4398 ; 2 uses
  %i.dp = icmp eq i64 %index.next321, %n.vec314, !dbg !4397
  br i1 %i.dp, label %middle.block322, label %vector.body315, !dbg !4397, !llvm.loop !3691

middle.block322:                                  ; preds = %vector.body315
  %cmp.n323 = icmp eq i64 %i.dg, %n.vec314, !dbg !4397
  br i1 %cmp.n323, label %.loopexit, label %vec.epilog.iter.check327, !dbg !4397

vec.epilog.iter.check327:                         ; preds = %middle.block322
  %min.epilog.iters.check328 = icmp eq i64 %i.di, 0
  br i1 %min.epilog.iters.check328, label %vec.epilog.scalar.ph326.preheader, label %vec.epilog.ph329, !prof !4168

vec.epilog.ph329:                                 ; preds = %vector.main.loop.iter.check311, %vec.epilog.iter.check327
  %vec.epilog.resume.val324 = phi i64 [ %n.vec314, %vec.epilog.iter.check327 ], [ 0, %vector.main.loop.iter.check311 ]
  %n.vec330 = and i64 %i.dg, -4                   ; 3 uses
  br label %vec.epilog.vector.body331

vec.epilog.vector.body331:                        ; preds = %vec.epilog.vector.body331, %vec.epilog.ph329
  %index332 = phi i64 [ %vec.epilog.resume.val324, %vec.epilog.ph329 ], [ %index.next335, %vec.epilog.vector.body331 ], !dbg !4398 ; 3 uses
  %i.dq = xor i64 %index332, -1, !dbg !4399
  %i.dr = getelementptr [2 x i8], ptr %i.ap, i64 %i.dq, !dbg !4400
  %i.ds = getelementptr [2 x i8], ptr %i.dh, i64 %index332, !dbg !4401
  %i.dt = getelementptr i8, ptr %i.dr, i64 -6, !dbg !4402
  %wide.load333 = load <4 x i16>, ptr %i.dt, align 1, !dbg !4402, !alias.scope !4066, !noalias !4065
  %reverse334 = shufflevector <4 x i16> %wide.load333, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !4402
  store <4 x i16> %reverse334, ptr %i.ds, align 1, !dbg !4402, !alias.scope !4065, !noalias !4066
  %index.next335 = add nuw i64 %index332, 4, !dbg !4398 ; 2 uses
  %i.du = icmp eq i64 %index.next335, %n.vec330, !dbg !4397
  br i1 %i.du, label %vec.epilog.middle.block336, label %vec.epilog.vector.body331, !dbg !4397, !llvm.loop !3692

vec.epilog.middle.block336:                       ; preds = %vec.epilog.vector.body331
  %cmp.n337 = icmp eq i64 %i.dg, %n.vec330, !dbg !4397
  br i1 %cmp.n337, label %.loopexit, label %vec.epilog.scalar.ph326.preheader, !dbg !4397

vec.epilog.scalar.ph326.preheader:                ; preds = %iter.check325, %vec.epilog.iter.check327, %vec.epilog.middle.block336
  %.sroa.07.043.i.ph = phi i64 [ 0, %iter.check325 ], [ %n.vec314, %vec.epilog.iter.check327 ], [ %n.vec330, %vec.epilog.middle.block336 ]
  br label %vec.epilog.scalar.ph326, !dbg !4397

vec.epilog.scalar.ph326:                          ; preds = %vec.epilog.scalar.ph326.preheader, %vec.epilog.scalar.ph326
  %.sroa.07.043.i = phi i64 [ %i.dv, %vec.epilog.scalar.ph326 ], [ %.sroa.07.043.i.ph, %vec.epilog.scalar.ph326.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.07.043.i, !4071, !DIExpression(), !3693)
    #dbg_value(i64 %.sroa.07.043.i, !4125, !DIExpression(), !3528)
    #dbg_value(i64 %.sroa.07.043.i, !4128, !DIExpression(), !3531)
  %i.dv = add nuw i64 %.sroa.07.043.i, 1, !dbg !4398 ; 2 uses
    #dbg_value(i64 %i.dv, !4094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3689)
    #dbg_value(i64 %.sroa.07.043.i, !4095, !DIExpression(), !3694)
  %i.dw = xor i64 %.sroa.07.043.i, -1, !dbg !4399
    #dbg_value(!DIArgList(i64 %.sroa.16.0140295, i64 %i.dw), !4140, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3546)
  %i.dx = getelementptr [2 x i8], ptr %i.ap, i64 %i.dw, !dbg !4400
    #dbg_value(ptr %i.dx, !4120, !DIExpression(), !3533)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i, i64 %.sroa.07.043.i), !4140, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3688)
  %i.dy = getelementptr [2 x i8], ptr %i.dh, i64 %.sroa.07.043.i, !dbg !4401
    #dbg_value(ptr %i.dy, !4121, !DIExpression(), !3533)
  %i.dz = load i16, ptr %i.dx, align 1, !dbg !4402, !alias.scope !4066, !noalias !4065
  store i16 %i.dz, ptr %i.dy, align 1, !dbg !4402, !alias.scope !4065, !noalias !4066
    #dbg_value(ptr undef, !4073, !DIExpression(), !3499)
    #dbg_value(ptr undef, !4070, !DIExpression(), !3498)
    #dbg_value(ptr undef, !4067, !DIExpression(), !3497)
    #dbg_value(ptr undef, !4068, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3690)
  %exitcond.not.i = icmp eq i64 %i.dv, %i.dg, !dbg !4396
  br i1 %exitcond.not.i, label %.loopexit, label %vec.epilog.scalar.ph326, !dbg !4397, !llvm.loop !3695

.loopexit:                                        ; preds = %vec.epilog.scalar.ph326, %middle.block322, %vec.epilog.middle.block336, %bb.n
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !3990, !DIExpression(), !4064)
  %i.ea = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !4403
    #dbg_value(i1 %i.ea, !3988, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4062)
  br i1 %i.ea, label %.thread, label %bb.o, !dbg !4404

bb.o:                                             ; preds = %.loopexit
    #dbg_value(ptr %.sroa.0.0.ph147, !4169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3700)
    #dbg_value(ptr %.sroa.0.0.ph147, !4178, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3707)
    #dbg_value(i64 %.sroa.16.0140295, !4169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3700)
    #dbg_value(i64 %.sroa.16.0140295, !4178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3707)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !4175, !DIExpression(), !3700)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !4190, !DIExpression(), !3707)
  %.not.i55 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0140295, !dbg !4405
  br i1 %.not.i55, label %bb.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRange12split_at_mutBy_.exit, !dbg !4405, !prof !769

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !dbg !4406, !noalias !4192
  unreachable, !dbg !4406

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRange12split_at_mutBy_.exit: ; preds = %bb.o
    #dbg_value(ptr %.sroa.0.0.ph147, !4193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3715)
    #dbg_value(i64 poison, !4193, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3715)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !4194, !DIExpression(), !3715)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !4198, !DIExpression(), !3718)
    #dbg_value(i64 poison, !4195, !DIExpression(), !3719)
    #dbg_value(ptr %.sroa.0.0.ph147, !4196, !DIExpression(), !3720)
    #dbg_value(ptr %.sroa.0.0.ph147, !4199, !DIExpression(), !3718)
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i, !dbg !4407
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph147) ]
    #dbg_value(ptr %.sroa.0.0.ph147, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(ptr %.sroa.0.0.ph147, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %.sroa.0.0.ph147, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %.sroa.0.0.ph147, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(ptr %i.eb, !3993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(i64 %i.dg, !3993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull %i.eb, i64 noundef %i.dg, ptr noalias nofree noundef nonnull %2, i64 noundef %3, i32 noundef %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable_or_null(2) %i.a, ptr noalias nofree noundef nonnull %6) #21, !dbg !4408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4409
    #dbg_value(ptr %.sroa.0.0.ph147, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(ptr %.sroa.0.0.ph147, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %.sroa.0.0.ph147, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %.sroa.0.0.ph147, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i32 %i.i, !3981, !DIExpression(), !3995)
    #dbg_value(ptr %.sroa.028.0.ph144, !3982, !DIExpression(), !3995)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !3984, !DIExpression(), !4014)
  %i.ec = icmp ult i64 %.sroa.27.2.lcssa.i, 33, !dbg !4293
  br i1 %i.ec, label %.outer._crit_edge, label %bb.b, !dbg !4293

.thread:                                          ; preds = %bb.h, %.loopexit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4201), !dbg !4410
  call void @llvm.experimental.noalias.scope.decl(metadata !4202), !dbg !4410
    #dbg_value(ptr poison, !4203, !DIExpression(), !3746)
    #dbg_value(ptr poison, !4206, !DIExpression(), !3747)
    #dbg_value(ptr poison, !4209, !DIExpression(), !3748)
    #dbg_value(ptr poison, !4103, !DIExpression(), !3750)
    #dbg_value(ptr poison, !4103, !DIExpression(), !3752)
    #dbg_value(ptr poison, !4103, !DIExpression(), !3754)
    #dbg_value(ptr poison, !4103, !DIExpression(), !3756)
    #dbg_value(ptr poison, !4103, !DIExpression(), !3758)
    #dbg_value(ptr poison, !4103, !DIExpression(), !3760)
    #dbg_value(i64 %.sroa.0.0.i, !4219, !DIExpression(), !3761)
    #dbg_value(i64 %.sroa.0.0.i, !4228, !DIExpression(), !3762)
    #dbg_value(i64 %.sroa.0.0.i, !4237, !DIExpression(), !3765)
    #dbg_value(ptr %.sroa.0.0.ph147, !4217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3761)
    #dbg_value(i64 %.sroa.16.0140295, !4217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3761)
    #dbg_value(ptr %2, !4218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3761)
    #dbg_value(i64 %3, !4218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3761)
    #dbg_value(i1 true, !4220, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3761)
    #dbg_value(ptr poison, !4221, !DIExpression(), !3761)
    #dbg_value(i64 3, !4240, !DIExpression(), !3768)
    #dbg_value(i64 1, !4243, !DIExpression(), !3771)
    #dbg_value(i64 1, !4248, !DIExpression(), !3774)
    #dbg_value(i64 1, !4251, !DIExpression(), !3777)
    #dbg_value(i64 1, !4243, !DIExpression(), !3779)
    #dbg_value(i64 %.sroa.16.0140295, !4222, !DIExpression(), !3780)
    #dbg_value(i64 %.sroa.16.0140295, !4254, !DIExpression(), !3783)
  %.not105 = icmp samesign ult i64 %3, %.sroa.16.0140295, !dbg !4411
  br i1 %.not105, label %bb.r, label %bb.q, !dbg !4411, !prof !1055

bb.q:                                             ; preds = %.thread
    #dbg_value(ptr %.sroa.0.0.ph147, !4223, !DIExpression(), !3784)
    #dbg_value(ptr %.sroa.0.0.ph147, !4238, !DIExpression(), !3765)
    #dbg_value(ptr %.sroa.0.0.ph147, !4255, !DIExpression(), !3783)
    #dbg_value(ptr %.sroa.0.0.ph147, !4238, !DIExpression(), !3786)
    #dbg_value(ptr %.sroa.0.0.ph147, !4238, !DIExpression(), !3788)
    #dbg_value(ptr %2, !4224, !DIExpression(), !3789)
    #dbg_value(ptr %2, !4256, !DIExpression(), !3783)
    #dbg_value(ptr %2, !4258, !DIExpression(), !3792)
    #dbg_value(ptr %i.ah, !4225, !DIExpression(), !3793)
    #dbg_value(ptr %i.ah, !4244, !DIExpression(), !3771)
  %i.ee = getelementptr [2 x i8], ptr %2, i64 %.sroa.16.0140295, !dbg !4412 ; 4 uses
    #dbg_value(ptr %2, !4226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3795)
    #dbg_value(ptr %.sroa.0.0.ph147, !4226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3795)
    #dbg_value(i64 0, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %i.ee, !4226, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3795)
    #dbg_value(ptr null, !4227, !DIExpression(), !3796)
    #dbg_value(ptr null, !4245, !DIExpression(), !3771)
  br label %bb.s, !dbg !4413

bb.r:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !4414
  unreachable, !dbg !4414

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i58 = phi ptr [ %i.ee, %bb.q ], [ %i.gq, %bb.u ], !dbg !4415 ; 2 uses
  %.sroa.27.0.i59 = phi i64 [ 0, %bb.q ], [ %i.gt, %bb.u ], !dbg !4415 ; 2 uses
  %.sroa.9.0.i60 = phi ptr [ %.sroa.0.0.ph147, %bb.q ], [ %i.gu, %bb.u ], !dbg !4415 ; 3 uses
  %.sroa.0.0.i61 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0140295, %bb.u ] ; 3 uses
    #dbg_value(ptr %.sroa.9.0.i60, !4226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3795)
    #dbg_value(i64 %.sroa.27.0.i59, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %.sroa.43.0.i58, !4226, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3795)
    #dbg_value(i64 %.sroa.0.0.i61, !4237, !DIExpression(), !3765)
    #dbg_value(i64 %.sroa.0.0.i61, !4228, !DIExpression(), !3762)
    #dbg_value(i64 %.sroa.0.0.i61, !4219, !DIExpression(), !3761)
    #dbg_value(ptr poison, !4245, !DIExpression(), !3771)
    #dbg_value(ptr poison, !4227, !DIExpression(), !3796)
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_:bb.a
  %i.fl = load i16, ptr %i.fd, align 1, !dbg !4445, !alias.scope !4201, !noalias !4271
  store i16 %i.fl, ptr %i.fk, align 1, !dbg !4445, !alias.scope !4202, !noalias !4272
  %i.fm = zext i1 %i.fi to i64, !dbg !4446
  %i.fn = add i64 %i.fc, %i.fm, !dbg !4447        ; 2 uses
    #dbg_value(i64 %i.fn, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %i.fd, !4150, !DIExpression(), !3867)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i85, i64 6, !dbg !4448 ; 2 uses
    #dbg_value(ptr %i.fo, !4226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3795)
  %.val46.i98 = load i8, ptr %i.fo, align 1, !dbg !4449, !alias.scope !4201, !noalias !4202, !noundef !634 ; 2 uses
  %i.fp = getelementptr i8, ptr %.sroa.9.131.i85, i64 7, !dbg !4449
  %.val47.i99 = load i8, ptr %i.fp, align 1, !dbg !4449, !alias.scope !4201, !noalias !4202
    #dbg_value(ptr poison, !4261, !DIExpression(), !3875)
    #dbg_value(ptr poison, !4264, !DIExpression(), !3875)
    #dbg_value(ptr poison, !907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3877)
    #dbg_value(ptr poison, !907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3877)
    #dbg_value(ptr poison, !913, !DIExpression(), !3877)
    #dbg_value(ptr poison, !918, !DIExpression(), !3879)
    #dbg_value(ptr poison, !920, !DIExpression(), !3879)
    #dbg_declare(ptr poison, !925, !DIExpression(), !3881)
    #dbg_value(ptr poison, !930, !DIExpression(), !3883)
    #dbg_value(ptr poison, !934, !DIExpression(), !3883)
    #dbg_value(ptr poison, !936, !DIExpression(), !3885)
    #dbg_value(ptr poison, !940, !DIExpression(), !3885)
  %i.fq = icmp eq i8 %.val60.i84, %.val46.i98, !dbg !4450
    #dbg_value(i8 poison, !926, !DIExpression(), !3886)
  %i.fr = icmp uge i8 %.val61.i90, %.val47.i99, !dbg !4451
  %i.fs = icmp uge i8 %.val60.i84, %.val46.i98, !dbg !4451
  %i.ft = select i1 %i.fq, i1 %i.fr, i1 %i.fs, !dbg !4450 ; 2 uses
    #dbg_value(ptr undef, !4103, !DIExpression(), !3754)
    #dbg_value(i1 %i.ft, !4107, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3754)
    #dbg_value(i64 1, !4142, !DIExpression(), !3888)
    #dbg_value(i64 1, !4145, !DIExpression(), !3890)
    #dbg_value(i64 1, !4149, !DIExpression(), !3892)
    #dbg_value(ptr %i.fj, !4143, !DIExpression(), !3888)
  %i.fu = getelementptr inbounds i8, ptr %.sroa.43.129.i87, i64 -8, !dbg !4452 ; 3 uses
    #dbg_value(ptr %i.fu, !4226, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3795)
  %.sroa.01.0.i64.i100 = select i1 %i.ft, ptr %2, ptr %i.fu, !dbg !4453
    #dbg_value(ptr %.sroa.01.0.i64.i100, !4152, !DIExpression(), !3894)
    #dbg_value(ptr %.sroa.01.0.i64.i100, !4108, !DIExpression(), !3895)
    #dbg_value(i64 %i.fn, !4153, !DIExpression(), !3894)
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i64.i100, i64 %i.fn, !dbg !4454
    #dbg_value(ptr %i.fv, !4109, !DIExpression(), !3896)
    #dbg_value(ptr %i.fv, !4147, !DIExpression(), !3890)
    #dbg_value(ptr %i.fo, !4146, !DIExpression(), !3890)
  %i.fw = load i16, ptr %i.fo, align 1, !dbg !4455, !alias.scope !4201, !noalias !4273
  store i16 %i.fw, ptr %i.fv, align 1, !dbg !4455, !alias.scope !4202, !noalias !4274
  %i.fx = zext i1 %i.ft to i64, !dbg !4456
  %i.fy = add i64 %i.fn, %i.fx, !dbg !4457        ; 2 uses
    #dbg_value(i64 %i.fy, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %i.fo, !4150, !DIExpression(), !3892)
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i85, i64 8, !dbg !4458 ; 3 uses
    #dbg_value(ptr %i.fz, !4226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3795)
    #dbg_value(i64 %i.fy, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %i.fu, !4226, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3795)
  %i.ga = icmp ult ptr %i.fz, %i.eg, !dbg !4418
  br i1 %i.ga, label %bb.t, label %._crit_edge.i62, !dbg !4418

._crit_edge.i62:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i63 = phi ptr [ %.sroa.43.0.i58, %bb.s ], [ %i.fu, %bb.t ], !dbg !4415 ; 2 uses
  %.sroa.27.1.lcssa.i64 = phi i64 [ %.sroa.27.0.i59, %bb.s ], [ %i.fy, %bb.t ], !dbg !4415 ; 2 uses
  %.sroa.9.1.lcssa.i65 = phi ptr [ %.sroa.9.0.i60, %bb.s ], [ %i.fz, %bb.t ], !dbg !4415 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i61, !4237, !DIExpression(), !3788)
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.0.0.i61, !dbg !4459 ; 2 uses
    #dbg_value(ptr %i.gb, !4230, !DIExpression(), !3899)
    #dbg_value(ptr %.sroa.9.1.lcssa.i65, !4226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3795)
    #dbg_value(i64 %.sroa.27.1.lcssa.i64, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %.sroa.43.1.lcssa.i63, !4226, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3795)
  %i.gc = icmp ult ptr %.sroa.9.1.lcssa.i65, %i.gb, !dbg !4460
  br i1 %i.gc, label %.lr.ph38.i74.preheader, label %._crit_edge39.i66, !dbg !4460

.lr.ph38.i74.preheader:                           ; preds = %._crit_edge.i62
  %.val44.i80 = load i8, ptr %i.ah, align 1, !alias.scope !4201, !noalias !4202, !noundef !634 ; 2 uses
  %.val45.i81 = load i8, ptr %i.ed, align 1, !alias.scope !4201, !noalias !4202
  br label %.lr.ph38.i74, !dbg !4460

._crit_edge39.i66:                                ; preds = %.lr.ph38.i74, %._crit_edge.i62
  %.sroa.43.2.lcssa.i67 = phi ptr [ %.sroa.43.1.lcssa.i63, %._crit_edge.i62 ], [ %i.gj, %.lr.ph38.i74 ], !dbg !4415
  %.sroa.27.2.lcssa.i68 = phi i64 [ %.sroa.27.1.lcssa.i64, %._crit_edge.i62 ], [ %i.gn, %.lr.ph38.i74 ], !dbg !4415 ; 9 uses
  %.sroa.9.2.lcssa.i69 = phi ptr [ %.sroa.9.1.lcssa.i65, %._crit_edge.i62 ], [ %i.go, %.lr.ph38.i74 ], !dbg !4415 ; 2 uses
  %i.gd = icmp eq i64 %.sroa.0.0.i61, %.sroa.16.0140295, !dbg !4461
  br i1 %i.gd, label %bb.v, label %bb.u, !dbg !4461

.lr.ph38.i74:                                     ; preds = %.lr.ph38.i74.preheader, %.lr.ph38.i74
  %.sroa.9.236.i75 = phi ptr [ %i.go, %.lr.ph38.i74 ], [ %.sroa.9.1.lcssa.i65, %.lr.ph38.i74.preheader ] ; 4 uses
  %.sroa.27.235.i76 = phi i64 [ %i.gn, %.lr.ph38.i74 ], [ %.sroa.27.1.lcssa.i64, %.lr.ph38.i74.preheader ] ; 2 uses
  %.sroa.43.234.i77 = phi ptr [ %i.gj, %.lr.ph38.i74 ], [ %.sroa.43.1.lcssa.i63, %.lr.ph38.i74.preheader ]
    #dbg_value(ptr %.sroa.9.236.i75, !4226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3795)
    #dbg_value(i64 %.sroa.27.235.i76, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %.sroa.43.234.i77, !4226, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3795)
  %.val.i78 = load i8, ptr %.sroa.9.236.i75, align 1, !dbg !4462, !alias.scope !4201, !noalias !4202, !noundef !634 ; 2 uses
  %i.ge = getelementptr i8, ptr %.sroa.9.236.i75, i64 1, !dbg !4462
  %.val43.i79 = load i8, ptr %i.ge, align 1, !dbg !4462, !alias.scope !4201, !noalias !4202
    #dbg_value(ptr poison, !4261, !DIExpression(), !3901)
    #dbg_value(ptr poison, !4264, !DIExpression(), !3901)
    #dbg_value(ptr poison, !907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3903)
    #dbg_value(ptr poison, !907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3903)
    #dbg_value(ptr poison, !913, !DIExpression(), !3903)
    #dbg_value(ptr poison, !918, !DIExpression(), !3905)
    #dbg_value(ptr poison, !920, !DIExpression(), !3905)
    #dbg_declare(ptr poison, !925, !DIExpression(), !3907)
    #dbg_value(ptr poison, !930, !DIExpression(), !3909)
    #dbg_value(ptr poison, !934, !DIExpression(), !3909)
    #dbg_value(ptr poison, !936, !DIExpression(), !3911)
    #dbg_value(ptr poison, !940, !DIExpression(), !3911)
  %i.gf = icmp eq i8 %.val44.i80, %.val.i78, !dbg !4463
    #dbg_value(i8 poison, !926, !DIExpression(), !3912)
  %i.gg = icmp uge i8 %.val45.i81, %.val43.i79, !dbg !4464
  %i.gh = icmp uge i8 %.val44.i80, %.val.i78, !dbg !4464
  %i.gi = select i1 %i.gf, i1 %i.gg, i1 %i.gh, !dbg !4463 ; 2 uses
    #dbg_value(ptr undef, !4103, !DIExpression(), !3752)
    #dbg_value(i1 %i.gi, !4107, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3752)
    #dbg_value(i64 1, !4142, !DIExpression(), !3914)
    #dbg_value(i64 1, !4145, !DIExpression(), !3916)
    #dbg_value(i64 1, !4149, !DIExpression(), !3918)
    #dbg_value(ptr %.sroa.43.234.i77, !4143, !DIExpression(), !3914)
  %i.gj = getelementptr inbounds i8, ptr %.sroa.43.234.i77, i64 -2, !dbg !4465 ; 3 uses
    #dbg_value(ptr %i.gj, !4226, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3795)
  %.sroa.01.0.i65.i82 = select i1 %i.gi, ptr %2, ptr %i.gj, !dbg !4466
    #dbg_value(ptr %.sroa.01.0.i65.i82, !4152, !DIExpression(), !3920)
    #dbg_value(ptr %.sroa.01.0.i65.i82, !4108, !DIExpression(), !3921)
    #dbg_value(i64 %.sroa.27.235.i76, !4153, !DIExpression(), !3920)
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i65.i82, i64 %.sroa.27.235.i76, !dbg !4467
    #dbg_value(ptr %i.gk, !4109, !DIExpression(), !3922)
    #dbg_value(ptr %i.gk, !4147, !DIExpression(), !3916)
    #dbg_value(ptr %.sroa.9.236.i75, !4146, !DIExpression(), !3916)
  %i.gl = load i16, ptr %.sroa.9.236.i75, align 1, !dbg !4468, !alias.scope !4201, !noalias !4275
  store i16 %i.gl, ptr %i.gk, align 1, !dbg !4468, !alias.scope !4202, !noalias !4276
  %i.gm = zext i1 %i.gi to i64, !dbg !4469
  %i.gn = add i64 %.sroa.27.235.i76, %i.gm, !dbg !4470 ; 2 uses
    #dbg_value(i64 %i.gn, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %.sroa.9.236.i75, !4150, !DIExpression(), !3918)
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i75, i64 2, !dbg !4471 ; 3 uses
    #dbg_value(ptr %i.go, !4226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3795)
    #dbg_value(i64 %i.gn, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %i.gj, !4226, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3795)
  %i.gp = icmp ult ptr %i.go, %i.gb, !dbg !4460
  br i1 %i.gp, label %.lr.ph38.i74, label %._crit_edge39.i66, !dbg !4460

bb.u:                                             ; preds = %._crit_edge39.i66
    #dbg_value(ptr undef, !4103, !DIExpression(), !3750)
    #dbg_value(i1 true, !4107, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3750)
    #dbg_value(i64 1, !4142, !DIExpression(), !3926)
    #dbg_value(i64 1, !4145, !DIExpression(), !3928)
    #dbg_value(i64 1, !4149, !DIExpression(), !3930)
    #dbg_value(ptr %.sroa.43.2.lcssa.i67, !4143, !DIExpression(), !3926)
  %i.gq = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i67, i64 -2, !dbg !4472
    #dbg_value(ptr %i.gq, !4226, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3795)
    #dbg_value(ptr %2, !4152, !DIExpression(), !3932)
    #dbg_value(ptr %2, !4108, !DIExpression(), !3933)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !4153, !DIExpression(), !3932)
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i68, !dbg !4473
    #dbg_value(ptr %i.gr, !4109, !DIExpression(), !3934)
    #dbg_value(ptr %i.gr, !4147, !DIExpression(), !3928)
    #dbg_value(ptr %.sroa.9.2.lcssa.i69, !4146, !DIExpression(), !3928)
  %i.gs = load i16, ptr %.sroa.9.2.lcssa.i69, align 1, !dbg !4474, !alias.scope !4201, !noalias !4277
  store i16 %i.gs, ptr %i.gr, align 1, !dbg !4474, !alias.scope !4202, !noalias !4278
  %i.gt = add i64 %.sroa.27.2.lcssa.i68, 1, !dbg !4475
    #dbg_value(i64 %i.gt, !4226, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3795)
    #dbg_value(ptr %.sroa.9.2.lcssa.i69, !4150, !DIExpression(), !3930)
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i69, i64 2, !dbg !4476
    #dbg_value(ptr %i.gu, !4226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3795)
    #dbg_value(ptr poison, !4227, !DIExpression(), !3796)
    #dbg_value(ptr poison, !4245, !DIExpression(), !3771)
    #dbg_value(i64 %.sroa.16.0140295, !4219, !DIExpression(), !3761)
    #dbg_value(i64 %.sroa.16.0140295, !4228, !DIExpression(), !3762)
    #dbg_value(i64 %.sroa.16.0140295, !4237, !DIExpression(), !3765)
  br label %bb.s, !dbg !4413

bb.v:                                             ; preds = %._crit_edge39.i66
    #dbg_value(ptr %.sroa.0.0.ph147, !4231, !DIExpression(), !3937)
    #dbg_value(ptr %.sroa.0.0.ph147, !4245, !DIExpression(), !3939)
    #dbg_value(ptr %.sroa.0.0.ph147, !4258, !DIExpression(), !3941)
    #dbg_value(ptr %2, !4244, !DIExpression(), !3939)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !4246, !DIExpression(), !3939)
  %i.gv = shl nuw nsw i64 %.sroa.27.2.lcssa.i68, 1, !dbg !4477
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.ph147, ptr nonnull align 1 %2, i64 %i.gv, i1 false), !dbg !4477, !alias.scope !4279
  %i.gw = sub i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i68, !dbg !4478 ; 11 uses
    #dbg_value(i64 0, !4232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3942)
    #dbg_value(i64 %i.gw, !4232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3942)
    #dbg_value(ptr undef, !4209, !DIExpression(), !3748)
    #dbg_value(ptr undef, !4206, !DIExpression(), !3747)
    #dbg_value(ptr undef, !4203, !DIExpression(), !3746)
    #dbg_value(ptr undef, !4204, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3943)
  %.not47.i70 = icmp eq i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i68, !dbg !4479
  %i.gx = getelementptr [2 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i68 ; 4 uses
  br i1 %.not47.i70, label %.outer.thread, label %iter.check, !dbg !4480

iter.check:                                       ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.gw, 4, !dbg !4480
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !4480

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check301 = icmp ult i64 %i.gw, 16, !dbg !4480
  br i1 %min.iters.check301, label %vec.epilog.ph, label %vector.ph, !dbg !4480

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gy = and i64 %i.gw, 12
  %n.vec = and i64 %i.gw, -16                     ; 4 uses
  br label %vector.body, !dbg !4480

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !4481 ; 3 uses
  %i.gz = xor i64 %index, -1, !dbg !4482
  %i.ha = getelementptr [2 x i8], ptr %i.ee, i64 %i.gz, !dbg !4483 ; 2 uses
  %i.hb = getelementptr [2 x i8], ptr %i.gx, i64 %index, !dbg !4484 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 -14, !dbg !4485
  %i.hd = getelementptr i8, ptr %i.ha, i64 -30, !dbg !4485
  %wide.load = load <8 x i16>, ptr %i.hc, align 1, !dbg !4485, !alias.scope !4202, !noalias !4201
  %wide.load302 = load <8 x i16>, ptr %i.hd, align 1, !dbg !4485, !alias.scope !4202, !noalias !4201
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4485
  %reverse303 = shufflevector <8 x i16> %wide.load302, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !4485
  %i.he = getelementptr i8, ptr %i.hb, i64 16, !dbg !4485
  store <8 x i16> %reverse, ptr %i.hb, align 1, !dbg !4485, !alias.scope !4201, !noalias !4202
  store <8 x i16> %reverse303, ptr %i.he, align 1, !dbg !4485, !alias.scope !4201, !noalias !4202
  %index.next = add nuw i64 %index, 16, !dbg !4481 ; 2 uses
  %i.hf = icmp eq i64 %index.next, %n.vec, !dbg !4480
  br i1 %i.hf, label %middle.block, label %vector.body, !dbg !4480, !llvm.loop !3944

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gw, %n.vec, !dbg !4480
  br i1 %cmp.n, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %vec.epilog.iter.check, !dbg !4480

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4168

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec304 = and i64 %i.gw, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index305 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next308, %vec.epilog.vector.body ], !dbg !4481 ; 3 uses
  %i.hg = xor i64 %index305, -1, !dbg !4482
  %i.hh = getelementptr [2 x i8], ptr %i.ee, i64 %i.hg, !dbg !4483
  %i.hi = getelementptr [2 x i8], ptr %i.gx, i64 %index305, !dbg !4484
  %i.hj = getelementptr i8, ptr %i.hh, i64 -6, !dbg !4485
  %wide.load306 = load <4 x i16>, ptr %i.hj, align 1, !dbg !4485, !alias.scope !4202, !noalias !4201
  %reverse307 = shufflevector <4 x i16> %wide.load306, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !4485
  store <4 x i16> %reverse307, ptr %i.hi, align 1, !dbg !4485, !alias.scope !4201, !noalias !4202
  %index.next308 = add nuw i64 %index305, 4, !dbg !4481 ; 2 uses
  %i.hk = icmp eq i64 %index.next308, %n.vec304, !dbg !4480
  br i1 %i.hk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !4480, !llvm.loop !3945

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n309 = icmp eq i64 %i.gw, %n.vec304, !dbg !4480
  br i1 %cmp.n309, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !4480

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.07.043.i72.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec304, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !4480

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.07.043.i72 = phi i64 [ %i.hl, %vec.epilog.scalar.ph ], [ %.sroa.07.043.i72.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.07.043.i72, !4207, !DIExpression(), !3946)
    #dbg_value(i64 %.sroa.07.043.i72, !4249, !DIExpression(), !3774)
    #dbg_value(i64 %.sroa.07.043.i72, !4252, !DIExpression(), !3777)
  %i.hl = add nuw i64 %.sroa.07.043.i72, 1, !dbg !4481 ; 2 uses
    #dbg_value(i64 %i.hl, !4232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3942)
    #dbg_value(i64 %.sroa.07.043.i72, !4233, !DIExpression(), !3947)
  %i.hm = xor i64 %.sroa.07.043.i72, -1, !dbg !4482
    #dbg_value(!DIArgList(i64 %.sroa.16.0140295, i64 %i.hm), !4259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3792)
  %i.hn = getelementptr [2 x i8], ptr %i.ee, i64 %i.hm, !dbg !4483
    #dbg_value(ptr %i.hn, !4244, !DIExpression(), !3779)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i68, i64 %.sroa.07.043.i72), !4259, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3941)
  %i.ho = getelementptr [2 x i8], ptr %i.gx, i64 %.sroa.07.043.i72, !dbg !4484
    #dbg_value(ptr %i.ho, !4245, !DIExpression(), !3779)
  %i.hp = load i16, ptr %i.hn, align 1, !dbg !4485, !alias.scope !4202, !noalias !4201
  store i16 %i.hp, ptr %i.ho, align 1, !dbg !4485, !alias.scope !4201, !noalias !4202
    #dbg_value(ptr undef, !4209, !DIExpression(), !3748)
    #dbg_value(ptr undef, !4206, !DIExpression(), !3747)
    #dbg_value(ptr undef, !4203, !DIExpression(), !3746)
    #dbg_value(ptr undef, !4204, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3943)
  %exitcond.not.i73 = icmp eq i64 %i.hl, %i.gw, !dbg !4479
  br i1 %exitcond.not.i73, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit, label %vec.epilog.scalar.ph, !dbg !4480, !llvm.loop !3948

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !3991, !DIExpression(), !4280)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !4000, !DIExpression(), !4004)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !4008, !DIExpression(), !4012)
    #dbg_value(i64 %.sroa.27.2.lcssa.i68, !4281, !DIExpression(), !4291)
  %i.hq = icmp ugt i64 %.sroa.27.2.lcssa.i68, %.sroa.16.0140295, !dbg !4486
  br i1 %i.hq, label %bb.w, label %.outer, !dbg !4486, !prof !769

.outer.thread:                                    ; preds = %bb.v
    #dbg_value(i64 poison, !3991, !DIExpression(), !4280)
    #dbg_value(i64 poison, !4000, !DIExpression(), !4004)
    #dbg_value(i64 poison, !4008, !DIExpression(), !4012)
    #dbg_value(i64 poison, !4281, !DIExpression(), !4291)
    #dbg_value(i64 poison, !4009, !DIExpression(), !4292)
    #dbg_value(i64 poison, !4288, !DIExpression(), !4291)
    #dbg_value(ptr poison, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4291)
    #dbg_value(i64 poison, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4291)
    #dbg_value(ptr %i.gx, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(ptr %i.gx, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %i.gx, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %i.gx, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(i64 poison, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i64 poison, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 poison, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 poison, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(ptr null, !3982, !DIExpression(), !3995)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4409
    #dbg_value(ptr %i.gx, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(ptr %i.gx, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %i.gx, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %i.gx, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(i64 poison, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 poison, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 poison, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 poison, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i32 %i.i, !3981, !DIExpression(), !3995)
    #dbg_value(i64 poison, !3984, !DIExpression(), !4014)
  br label %.outer._crit_edge, !dbg !4293

.outer:                                           ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit
    #dbg_value(i64 %i.gw, !4009, !DIExpression(), !4292)
    #dbg_value(i64 %i.gw, !4288, !DIExpression(), !4291)
    #dbg_value(ptr %.sroa.0.0.ph147, !4287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4291)
    #dbg_value(i64 poison, !4287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4291)
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i68, !dbg !4487 ; 2 uses
    #dbg_value(ptr %i.hr, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(ptr %i.hr, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %i.hr, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %i.hr, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(i64 %i.gw, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i64 %i.gw, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 %i.gw, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 %i.gw, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(ptr null, !3982, !DIExpression(), !3995)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4409
    #dbg_value(ptr %i.hr, !4005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4012)
    #dbg_value(ptr %i.hr, !3997, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4004)
    #dbg_value(ptr %i.hr, !3992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3996)
    #dbg_value(ptr %i.hr, !3979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3995)
    #dbg_value(i64 %i.gw, !4005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4012)
    #dbg_value(i64 %i.gw, !3997, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4004)
    #dbg_value(i64 %i.gw, !3992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3996)
    #dbg_value(i64 %i.gw, !3979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3995)
    #dbg_value(i32 %i.i, !3981, !DIExpression(), !3995)
    #dbg_value(i64 %i.gw, !3984, !DIExpression(), !4014)
  %i.hs = icmp ult i64 %i.gw, 33, !dbg !4293
  br i1 %i.hs, label %.outer._crit_edge, label %.lr.ph, !dbg !4293

bb.w:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1h_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i68, i64 noundef %.sroa.16.0140295, i64 noundef %.sroa.16.0140295, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !dbg !4488
  unreachable, !dbg !4488
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #4 !dbg !4507 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
    #dbg_value(ptr %0, !5105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5121)
    #dbg_value(ptr %0, !5118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5122)
    #dbg_value(ptr %0, !5123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5130)
    #dbg_value(ptr %0, !5131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5138)
    #dbg_value(i64 %1, !5105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5121)
    #dbg_value(i64 %1, !5118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5122)
    #dbg_value(i64 %1, !5123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5130)
    #dbg_value(i64 %1, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i32 %4, !5107, !DIExpression(), !5121)
    #dbg_value(ptr %5, !5108, !DIExpression(), !5121)
    #dbg_value(ptr %2, !5106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5121)
    #dbg_value(i64 %3, !5106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5121)
    #dbg_value(ptr %6, !5109, !DIExpression(), !5121)
    #dbg_declare(ptr %i.a, !5112, !DIExpression(), !5139)
    #dbg_value(i64 %1, !5110, !DIExpression(), !5140)
  %i.b = icmp samesign ult i64 %1, 33, !dbg !5418
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !5418

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph, !dbg !5418

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph147 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.ha, %.outer ] ; 23 uses
  %.sroa.16.0.ph146 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.gl, %.outer ] ; 2 uses
  %.sroa.025.0.ph145 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.i, %.outer ] ; 2 uses
  %.sroa.028.0.ph144 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
    #dbg_value(ptr %.sroa.0.0.ph147, !5131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5138)
    #dbg_value(i64 %.sroa.16.0.ph146, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i32 %.sroa.025.0.ph145, !5107, !DIExpression(), !5121)
    #dbg_value(ptr %.sroa.028.0.ph144, !5108, !DIExpression(), !5121)
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph147, i64 4
  %i.e = ptrtoint ptr %.sroa.0.0.ph147 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph144, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph144, i64 4
    #dbg_value(i64 %.sroa.16.0.ph146, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i32 %.sroa.025.0.ph145, !5107, !DIExpression(), !5121)
  %i.g = icmp eq i32 %.sroa.025.0.ph145, 0, !dbg !5419
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph297, !dbg !5419

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange12split_at_mutBy_.exit
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5138)
    #dbg_value(i32 %i.i, !5107, !DIExpression(), !5121)
  %i.h = icmp eq i32 %i.i, 0, !dbg !5419
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph297, !dbg !5419

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange12split_at_mutBy_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa137 = phi ptr [ %i.gm, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph147, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRange12split_at_mutBy_.exit ], [ %i.ha, %.outer ]
end_hunk_1
