Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.00?download=true
inline.NumInlined: 1326
inline.NumDeleted: 379
begin_hunk_0_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser22inner_parse_expression:bb.a
  store i8 4, ptr %i.co, align 8, !dbg !41686, !alias.scope !41351, !noalias !41287
  %.sroa.4.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.co, i64 1, !dbg !41686
  store i8 %i.ic, ptr %.sroa.4.0..sroa_idx.i89, align 1, !dbg !41686, !alias.scope !41351, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !dbg !41687, !noalias !41287
    #dbg_value(ptr undef, !4145, !DIExpression(), !39963)
  %i.id = getelementptr inbounds nuw i8, ptr %i.cn, i64 16, !dbg !41688
  store i64 %.sroa.6190.0.copyload, ptr %i.id, align 8, !dbg !41688, !alias.scope !41352, !noalias !41287
  %i.ie = getelementptr inbounds nuw i8, ptr %i.cn, i64 24, !dbg !41688
  store i64 %.sroa.7191.0.copyload, ptr %i.ie, align 8, !dbg !41688, !alias.scope !41352, !noalias !41287
  %i.if = getelementptr inbounds nuw i8, ptr %i.cn, i64 32, !dbg !41688
  store i64 %.sroa.8192.0.copyload, ptr %i.if, align 8, !dbg !41688, !alias.scope !41352, !noalias !41287
  %i.ig = getelementptr inbounds nuw i8, ptr %i.cn, i64 40, !dbg !41688
  store i64 %.sroa.9193.0.copyload, ptr %i.ig, align 8, !dbg !41688, !alias.scope !41352, !noalias !41287
  store i64 %.sroa.4188.0.copyload, ptr %i.cn, align 8, !dbg !41688, !alias.scope !41352, !noalias !41287
  %i.ih = getelementptr inbounds nuw i8, ptr %i.cn, i64 8, !dbg !41688
  store i64 %.sroa.5189.0.copyload, ptr %i.ih, align 8, !dbg !41688, !alias.scope !41352, !noalias !41287
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtB4_5value5ValueE3newB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.cn)
          to label %bb.ai unwind label %bb.bd, !dbg !41684, !noalias !41167, !inline_history !40229

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !41689, !noalias !41287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !41689, !noalias !41287
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !41690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ii, ptr noundef nonnull align 8 dereferenceable(56) %i.cp, i64 56, i1 false), !dbg !41690
  store i64 0, ptr %i.ar, align 8, !dbg !41690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !41691, !noalias !41287
  br label %bb.v, !dbg !41692

.thread194:                                       ; preds = %bb.q, %bb.e
  %.sroa.019.0.i = phi i8 [ 1, %bb.e ], [ 0, %bb.q ], !dbg !41288 ; 2 uses
    #dbg_value(i8 %.sroa.019.0.i, !40944, !DIExpression(), !40339)
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !41693
  %i.ik = load i8, ptr %i.ij, align 8, !dbg !41693, !range !3052, !alias.scope !41168, !noundef !1314
  switch i8 %i.ik, label %bb.aq [
    i8 18, label %bb.al
    i8 7, label %bb.aj
  ], !dbg !41694

bb.aj:                                            ; preds = %.thread194
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !41695
  %i.im = load i64, ptr %i.il, align 8, !dbg !41695, !alias.scope !41168, !noundef !1314
    #dbg_value(ptr poison, !41211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40114)
    #dbg_value(i64 %i.im, !41211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40114)
    #dbg_value(ptr poison, !41293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40342)
    #dbg_value(i64 %i.im, !41293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40342)
    #dbg_value(ptr poison, !41311, !DIExpression(), !40343)
    #dbg_value(ptr @82, !41294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40342)
    #dbg_value(i64 3, !41294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40342)
    #dbg_value(ptr poison, !41312, !DIExpression(), !40344)
    #dbg_value(i64 %i.im, !41300, !DIExpression(), !40345)
    #dbg_value(i64 %i.im, !41314, !DIExpression(), !40347)
    #dbg_value(i64 %i.im, !41322, !DIExpression(), !40348)
  %i.in = icmp eq i64 %i.im, 3, !dbg !41696
  br i1 %i.in, label %bb.ak, label %bb.aq, !dbg !41696

bb.ak:                                            ; preds = %bb.aj
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !41695
  %i.ip = load ptr, ptr %i.io, align 8, !dbg !41695, !alias.scope !41168, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(ptr %i.ip, !41293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40342)
    #dbg_value(ptr %i.ip, !41211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40114)
    #dbg_value(ptr %i.ip, !41315, !DIExpression(), !40347)
    #dbg_value(ptr @82, !41316, !DIExpression(), !40347)
  %i.iq = load i16, ptr %i.ip, align 1, !dbg !41697
  %i.ir = xor i16 %i.iq, 28526, !dbg !41697
  %i.is = getelementptr i8, ptr %i.ip, i64 2, !dbg !41697
  %i.it = load i8, ptr %i.is, align 1, !dbg !41697
  %i.iu = zext i8 %i.it to i16, !dbg !41697
  %i.iv = xor i16 %i.iu, 116, !dbg !41697
  %i.iw = or i16 %i.ir, %i.iv, !dbg !41697
  %i.ix = icmp ne i16 %i.iw, 0, !dbg !41697
  %i.iy = zext i1 %i.ix to i32, !dbg !41697
  %i.iz = icmp eq i32 %i.iy, 0, !dbg !41697
  br i1 %i.iz, label %bb.al, label %bb.aq, !dbg !41695

bb.al:                                            ; preds = %bb.ak, %.thread194
  %.sroa.023.0.i = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !41698
    #dbg_value(ptr %.sroa.023.0.i, !40945, !DIExpression(), !40349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !41699, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !dbg !41700, !noalias !41287
    #dbg_value(ptr @83, !41229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40350)
    #dbg_value(ptr @83, !41227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40351)
    #dbg_value(ptr @83, !41225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40352)
    #dbg_value(ptr @83, !41232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40353)
    #dbg_value(i64 43, !41229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40350)
    #dbg_value(i64 43, !41227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40351)
    #dbg_value(i64 43, !41225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40352)
    #dbg_value(i64 43, !41232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40353)
    #dbg_value(i64 43, !41233, !DIExpression(), !40354)
    #dbg_value(i64 43, !41241, !DIExpression(), !40355)
    #dbg_value(i64 43, !41244, !DIExpression(), !40356)
    #dbg_value(i64 43, !41356, !DIExpression(), !40359)
    #dbg_value(i64 43, !41360, !DIExpression(), !40362)
    #dbg_value(i64 43, !41247, !DIExpression(), !40363)
    #dbg_value(i64 43, !41258, !DIExpression(), !40164)
    #dbg_value(i64 1, !41248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40363)
    #dbg_value(i64 1, !41259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40164)
    #dbg_value(i64 1, !41248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40363)
    #dbg_value(i64 1, !41259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40164)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !41701, !noalias !41287
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, i64 noundef 43, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.am unwind label %bb.r, !dbg !41701, !noalias !41167, !inline_history !40229

bb.am:                                            ; preds = %bb.al
  %i.ja = load i64, ptr %i.af, align 8, !dbg !41701, !range !3205, !noalias !41287, !noundef !1314
  %i.jb = trunc nuw i64 %i.ja to i1, !dbg !41702
  %i.jc = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !41703
  %i.jd = load i64, ptr %i.jc, align 8, !dbg !41703, !range !3206, !noalias !41287, !noundef !1314 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !41703 ; 2 uses
  br i1 %i.jb, label %bb.an, label %bb.ao, !dbg !41702, !prof !3207

bb.an:                                            ; preds = %bb.am
  %i.jf = load i64, ptr %i.je, align 8, !dbg !41704, !noalias !41287
    #dbg_value(i64 %i.jd, !41250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40364)
    #dbg_value(i64 %i.jf, !41250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40364)
  br label %.invoke, !dbg !41705

bb.ao:                                            ; preds = %bb.am
  %i.jg = load ptr, ptr %i.je, align 8, !dbg !41706, !noalias !41287, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(i64 %i.jd, !41249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40365)
    #dbg_value(ptr %i.jg, !41249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40365)
    #dbg_value(ptr poison, !41257, !DIExpression(), !40366)
  %i.jh = icmp samesign ugt i64 %i.jd, 42, !dbg !41707
    #dbg_value(i1 true, !41364, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !40369)
  tail call void @llvm.assume(i1 %i.jh), !dbg !41708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !41709, !noalias !41287
    #dbg_value(i64 %i.jd, !41366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40372)
    #dbg_value(i64 %i.jd, !41234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40373)
    #dbg_value(ptr %i.jg, !41366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40372)
    #dbg_value(ptr %i.jg, !41234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40373)
    #dbg_value(i64 0, !41366, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40372)
    #dbg_value(i64 0, !41234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40373)
    #dbg_value(ptr @83, !41357, !DIExpression(), !40359)
    #dbg_value(ptr @83, !41361, !DIExpression(), !40362)
    #dbg_value(ptr %i.jg, !41358, !DIExpression(), !40359)
    #dbg_value(ptr %i.jg, !41362, !DIExpression(), !40362)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.jg, ptr noundef nonnull align 1 dereferenceable(43) @83, i64 43, i1 false), !dbg !41710, !noalias !41167
    #dbg_value(i64 43, !41366, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40372)
    #dbg_value(i64 43, !41234, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40373)
  store i64 %i.jd, ptr %i.ci, align 8, !dbg !41711, !noalias !41287
  %.sroa.4253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8, !dbg !41711
  store ptr %i.jg, ptr %.sroa.4253.0..sroa_idx.i, align 8, !dbg !41711, !noalias !41287
  %.sroa.6254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16, !dbg !41711
  store i64 43, ptr %.sroa.6254.0..sroa_idx.i, align 8, !dbg !41711, !noalias !41287
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.023.0.i)
          to label %bb.ap unwind label %bb.r, !dbg !41699, !noalias !41167, !inline_history !40229

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !41712, !noalias !41287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, i64 72, i1 false), !dbg !41713, !noalias !41168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !41714, !noalias !41287
  br label %bb.w, !dbg !41715

bb.aq:                                            ; preds = %.thread194, %bb.aj, %bb.ak
  %i.ji = trunc nuw i8 %.sroa.019.0.i to i1, !dbg !41716 ; 2 uses
    #dbg_value(i1 %i.ji, !41369, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !40377)
  %..i = select i1 %i.ji, i8 20, i8 5, !dbg !41717
    #dbg_value(i8 %..i, !40946, !DIExpression(), !40378)
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser22inner_parse_expression(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, i8 noundef %..i)
          to label %bb.ar unwind label %bb.r, !dbg !41718, !inline_history !40229

bb.ar:                                            ; preds = %bb.aq
  %i.jj = load i8, ptr %i.ae, align 8, !dbg !41719, !range !3289, !noundef !1314 ; 2 uses
  %.not793.i = icmp eq i8 %i.jj, -1, !dbg !41719
  br i1 %.not793.i, label %bb.at, label %bb.as, !dbg !41720

bb.as:                                            ; preds = %bb.ar
  %.sroa.4258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1, !dbg !41721
    #dbg_value(i8 %i.jj, !40948, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40379)
    #dbg_value(i8 %i.jj, !41045, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40380)
  %.sroa.4260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !41722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4260.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4258.0..sroa_idx.i, i64 71, i1 false), !dbg !41723
    #dbg_value(i8 %i.jj, !41047, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40381)
  store i8 %i.jj, ptr %0, align 8, !dbg !41722, !alias.scope !41167
  br label %bb.w, !dbg !41715

bb.at:                                            ; preds = %bb.ar
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !41724 ; 5 uses
  %.sroa.0.0.copyload = load i64, ptr %i.jk, align 8, !dbg !41725
    #dbg_value(i64 %.sroa.0.0.copyload, !40947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41376)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !41725
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !41725 ; 4 uses
    #dbg_value(ptr %.sroa.5.0.copyload, !40947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41376)
    #dbg_value(ptr undef, !3339, !DIExpression(), !39965)
    #dbg_value(ptr %1, !3343, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !39965)
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !41726
  %i.jm = load i64, ptr %i.jl, align 8, !dbg !41726, !alias.scope !41377, !noalias !41167, !noundef !1314 ; 7 uses
    #dbg_value(i64 %i.jm, !40935, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !41288)
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 440, !dbg !41727
  %i.jo = load i64, ptr %i.jn, align 8, !dbg !41727, !alias.scope !41377, !noalias !41167, !noundef !1314 ; 7 uses
    #dbg_value(i64 %i.jo, !40935, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !41288)
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 408, !dbg !41728
  %i.jq = load i64, ptr %i.jp, align 8, !dbg !41728, !alias.scope !41377, !noalias !41167, !noundef !1314 ; 7 uses
    #dbg_value(i64 %i.jq, !40935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41288)
  %i.jr = icmp eq i64 %.sroa.0.0.copyload, 0, !dbg !41729
  %or.cond.i = select i1 %i.ji, i1 %i.jr, i1 false, !dbg !41729
  br i1 %or.cond.i, label %bb.au, label %bb.be, !dbg !41729

bb.au:                                            ; preds = %bb.at
    #dbg_value(ptr undef, !40950, !DIExpression(), !40384)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.js = load i8, ptr %.sroa.5.0.copyload, align 8, !dbg !41730, !range !3690, !noalias !41167, !noundef !1314 ; 3 uses
  %i.jt = icmp ne i8 %i.js, 10, !dbg !41730
  tail call void @llvm.assume(i1 %i.jt), !dbg !41730
  %i.ju = add nsw i8 %i.js, -2, !dbg !41730
  %i.jv = icmp samesign ugt i8 %i.js, 1, !dbg !41730
  %narrow.i = select i1 %i.jv, i8 %i.ju, i8 8, !dbg !41730
  switch i8 %narrow.i, label %bb.bb [
    i8 4, label %bb.av
    i8 5, label %bb.az
  ], !dbg !41731

bb.av:                                            ; preds = %bb.au
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8, !dbg !41732
  %i.jx = load i64, ptr %i.jw, align 8, !dbg !41732, !noalias !41167, !noundef !1314
    #dbg_value(i64 %i.jx, !40951, !DIExpression(), !40385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !dbg !41733, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !dbg !41734, !noalias !41287
  %i.jy = sub i64 0, %i.jx, !dbg !41735
    #dbg_value(i64 %i.jy, !4844, !DIExpression(), !40387)
  store i8 6, ptr %i.cg, align 8, !dbg !41736, !alias.scope !41378, !noalias !41287
  %.sroa.41.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !41736
  store i64 %i.jy, ptr %.sroa.41.0..sroa_idx.i72, align 8, !dbg !41736, !alias.scope !41378, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !41737, !noalias !41287
    #dbg_value(ptr undef, !4145, !DIExpression(), !39971)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !41738
  store i64 %.sroa.6190.0.copyload, ptr %i.jz, align 8, !dbg !41738, !alias.scope !41379, !noalias !41287
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cf, i64 24, !dbg !41738
  store i64 %.sroa.7191.0.copyload, ptr %i.ka, align 8, !dbg !41738, !alias.scope !41379, !noalias !41287
  %i.kb = getelementptr inbounds nuw i8, ptr %i.cf, i64 32, !dbg !41738
  store i64 %i.jm, ptr %i.kb, align 8, !dbg !41738, !alias.scope !41379, !noalias !41287
  %i.kc = getelementptr inbounds nuw i8, ptr %i.cf, i64 40, !dbg !41738
  store i64 %i.jo, ptr %i.kc, align 8, !dbg !41738, !alias.scope !41379, !noalias !41287
  store i64 %.sroa.4188.0.copyload, ptr %i.cf, align 8, !dbg !41738, !alias.scope !41379, !noalias !41287
  %i.kd = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !41738
  store i64 %i.jq, ptr %i.kd, align 8, !dbg !41738, !alias.scope !41379, !noalias !41287
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtB4_5value5ValueE3newB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.cf)
          to label %bb.aw unwind label %bb.ay, !dbg !41733, !noalias !41167, !inline_history !40229

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !41739, !noalias !41287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !41739, !noalias !41287
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !41740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ke, ptr noundef nonnull align 8 dereferenceable(56) %i.ch, i64 56, i1 false), !dbg !41740
  store i64 0, ptr %i.ar, align 8, !dbg !41740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !41741, !noalias !41287
  br label %bb.ax, !dbg !41742

bb.ax:                                            ; preds = %bb.ba, %bb.aw
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.jk)
          to label %bb.v unwind label %bb.r, !dbg !41743

bb.ay:                                            ; preds = %bb.av, %bb.az
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.jk) #25
          to label %.thread221 unwind label %bb.z, !dbg !41743

bb.az:                                            ; preds = %bb.au
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8, !dbg !41744
  %i.kh = load double, ptr %i.kg, align 8, !dbg !41744, !noalias !41167, !noundef !1314
    #dbg_value(double %i.kh, !40952, !DIExpression(), !40392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !41745, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !41746, !noalias !41287
  %i.ki = fneg double %i.kh, !dbg !41747
    #dbg_value(double %i.ki, !4849, !DIExpression(), !40394)
  store i8 7, ptr %i.cd, align 8, !dbg !41748, !alias.scope !41380, !noalias !41287
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 8, !dbg !41748
  store double %i.ki, ptr %.sroa.41.0..sroa_idx.i, align 8, !dbg !41748, !alias.scope !41380, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !dbg !41749, !noalias !41287
    #dbg_value(ptr undef, !4145, !DIExpression(), !39973)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !41750
  store i64 %.sroa.6190.0.copyload, ptr %i.kj, align 8, !dbg !41750, !alias.scope !41381, !noalias !41287
  %i.kk = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !41750
  store i64 %.sroa.7191.0.copyload, ptr %i.kk, align 8, !dbg !41750, !alias.scope !41381, !noalias !41287
  %i.kl = getelementptr inbounds nuw i8, ptr %i.cc, i64 32, !dbg !41750
  store i64 %i.jm, ptr %i.kl, align 8, !dbg !41750, !alias.scope !41381, !noalias !41287
  %i.km = getelementptr inbounds nuw i8, ptr %i.cc, i64 40, !dbg !41750
  store i64 %i.jo, ptr %i.km, align 8, !dbg !41750, !alias.scope !41381, !noalias !41287
  store i64 %.sroa.4188.0.copyload, ptr %i.cc, align 8, !dbg !41750, !alias.scope !41381, !noalias !41287
  %i.kn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8, !dbg !41750
  store i64 %i.jq, ptr %i.kn, align 8, !dbg !41750, !alias.scope !41381, !noalias !41287
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtB4_5value5ValueE3newB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.cc)
          to label %bb.ba unwind label %bb.ay, !dbg !41745, !noalias !41167, !inline_history !40229

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !dbg !41751, !noalias !41287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !dbg !41751, !noalias !41287
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !41752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ko, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 56, i1 false), !dbg !41752
  store i64 0, ptr %i.ar, align 8, !dbg !41752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !41753, !noalias !41287
  br label %bb.ax, !dbg !41754

bb.bb:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !dbg !41755, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !dbg !41756, !noalias !41287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %i.jk, i64 64, i1 false), !dbg !41757
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ca, i64 64, !dbg !41756
  store i8 1, ptr %i.kp, align 8, !dbg !41756, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !dbg !41758, !noalias !41287
    #dbg_value(ptr undef, !4145, !DIExpression(), !39969)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.bz, i64 16, !dbg !41759
  store i64 %.sroa.6190.0.copyload, ptr %i.kq, align 8, !dbg !41759, !alias.scope !41382, !noalias !41287
  %i.kr = getelementptr inbounds nuw i8, ptr %i.bz, i64 24, !dbg !41759
  store i64 %.sroa.7191.0.copyload, ptr %i.kr, align 8, !dbg !41759, !alias.scope !41382, !noalias !41287
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bz, i64 32, !dbg !41759
  store i64 %i.jm, ptr %i.ks, align 8, !dbg !41759, !alias.scope !41382, !noalias !41287
  %i.kt = getelementptr inbounds nuw i8, ptr %i.bz, i64 40, !dbg !41759
  store i64 %i.jo, ptr %i.kt, align 8, !dbg !41759, !alias.scope !41382, !noalias !41287
  store i64 %.sroa.4188.0.copyload, ptr %i.bz, align 8, !dbg !41759, !alias.scope !41382, !noalias !41287
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bz, i64 8, !dbg !41759
  store i64 %i.jq, ptr %i.ku, align 8, !dbg !41759, !alias.scope !41382, !noalias !41287
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtNtB4_7parsing3ast14UnaryOperationE3newB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bz)
          to label %bb.bc unwind label %bb.bd, !dbg !41755, !noalias !41167, !inline_history !40229

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !dbg !41760, !noalias !41287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !dbg !41760, !noalias !41287
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !41761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kv, ptr noundef nonnull align 8 dereferenceable(56) %i.cb, i64 56, i1 false), !dbg !41761
  store i64 13, ptr %i.ar, align 8, !dbg !41761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !dbg !41762, !noalias !41287
  br label %bb.v, !dbg !41763

bb.bd:                                            ; preds = %bb.bb, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.x, %bb.be
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.thread221, !dbg !41764

bb.be:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !41765, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !41766, !noalias !41287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull align 8 dereferenceable(64) %i.jk, i64 64, i1 false), !dbg !41767
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bx, i64 64, !dbg !41766
  store i8 %.sroa.019.0.i, ptr %i.kx, align 8, !dbg !41766, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !41768, !noalias !41287
    #dbg_value(ptr undef, !4145, !DIExpression(), !39967)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !41769
  store i64 %.sroa.6190.0.copyload, ptr %i.ky, align 8, !dbg !41769, !alias.scope !41383, !noalias !41287
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24, !dbg !41769
  store i64 %.sroa.7191.0.copyload, ptr %i.kz, align 8, !dbg !41769, !alias.scope !41383, !noalias !41287
  %i.la = getelementptr inbounds nuw i8, ptr %i.bw, i64 32, !dbg !41769
  store i64 %i.jm, ptr %i.la, align 8, !dbg !41769, !alias.scope !41383, !noalias !41287
  %i.lb = getelementptr inbounds nuw i8, ptr %i.bw, i64 40, !dbg !41769
  store i64 %i.jo, ptr %i.lb, align 8, !dbg !41769, !alias.scope !41383, !noalias !41287
  store i64 %.sroa.4188.0.copyload, ptr %i.bw, align 8, !dbg !41769, !alias.scope !41383, !noalias !41287
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !41769
  store i64 %i.jq, ptr %i.lc, align 8, !dbg !41769, !alias.scope !41383, !noalias !41287
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtNtB4_7parsing3ast14UnaryOperationE3newB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.by, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.bx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bw)
          to label %bb.bf unwind label %bb.bd, !dbg !41765, !noalias !41167, !inline_history !40229

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !41764, !noalias !41287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !41764, !noalias !41287
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !41770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ld, ptr noundef nonnull align 8 dereferenceable(56) %i.by, i64 56, i1 false), !dbg !41770
  store i64 13, ptr %i.ar, align 8, !dbg !41770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !dbg !41771, !noalias !41287
  br label %bb.v, !dbg !41771

bb.bg:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !41772, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !41773, !noalias !41287
    #dbg_value(ptr @84, !41229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40403)
    #dbg_value(ptr @84, !41227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40404)
    #dbg_value(ptr @84, !41225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40405)
    #dbg_value(ptr @84, !41232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40406)
    #dbg_value(i64 105, !41229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40403)
    #dbg_value(i64 105, !41227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40404)
    #dbg_value(i64 105, !41225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40405)
    #dbg_value(i64 105, !41232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40406)
    #dbg_value(i64 105, !41235, !DIExpression(), !40407)
    #dbg_value(i64 105, !41241, !DIExpression(), !40408)
    #dbg_value(i64 105, !41244, !DIExpression(), !40409)
    #dbg_value(i64 105, !41356, !DIExpression(), !40411)
    #dbg_value(i64 105, !41360, !DIExpression(), !40413)
    #dbg_value(i64 105, !41247, !DIExpression(), !40414)
    #dbg_value(i64 105, !41258, !DIExpression(), !40187)
    #dbg_value(i64 1, !41248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40414)
    #dbg_value(i64 1, !41259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40187)
    #dbg_value(i64 1, !41248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40414)
    #dbg_value(i64 1, !41259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40187)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !41774, !noalias !41287
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, i64 noundef 105, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bl unwind label %bb.r, !dbg !41774, !noalias !41167, !inline_history !40229

bb.bh:                                            ; preds = %bb.j
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser27parse_inline_component_call(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.bi unwind label %bb.r, !dbg !41775, !inline_history !40229

bb.bi:                                            ; preds = %bb.bh
  %i.le = load i8, ptr %i.ab, align 8, !dbg !41776, !range !3289, !noundef !1314 ; 2 uses
  %.not.i = icmp eq i8 %i.le, -1, !dbg !41776
  br i1 %.not.i, label %bb.bk, label %bb.bj, !dbg !41777

bb.bj:                                            ; preds = %bb.bi
  %.sroa.4273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 1, !dbg !41778
    #dbg_value(i8 %i.le, !40956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40415)
    #dbg_value(i8 %i.le, !41045, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40416)
  %.sroa.4275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !41779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4275.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4273.0..sroa_idx.i, i64 71, i1 false), !dbg !41780
    #dbg_value(i8 %i.le, !41049, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40417)
  store i8 %i.le, ptr %0, align 8, !dbg !41779, !alias.scope !41167
  br label %bb.w, !dbg !41636

bb.bk:                                            ; preds = %bb.bi
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !41781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %i.lf, i64 64, i1 false), !dbg !41782
  br label %bb.v, !dbg !41783

bb.bl:                                            ; preds = %bb.bg
  %i.lg = load i64, ptr %i.ac, align 8, !dbg !41774, !range !3205, !noalias !41287, !noundef !1314
  %i.lh = trunc nuw i64 %i.lg to i1, !dbg !41784
  %i.li = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !41785
  %i.lj = load i64, ptr %i.li, align 8, !dbg !41785, !range !3206, !noalias !41287, !noundef !1314 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !41785 ; 2 uses
  br i1 %i.lh, label %bb.bm, label %bb.bn, !dbg !41784, !prof !3207

bb.bm:                                            ; preds = %bb.bl
  %i.ll = load i64, ptr %i.lk, align 8, !dbg !41786, !noalias !41287
    #dbg_value(i64 %i.lj, !41252, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40418)
    #dbg_value(i64 %i.ll, !41252, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40418)
  br label %.invoke, !dbg !41787

.invoke:                                          ; preds = %bb.an, %bb.bm
  %i.lm = phi i64 [ %i.lj, %bb.bm ], [ %i.jd, %bb.an ]
  %i.ln = phi i64 [ %i.ll, %bb.bm ], [ %i.jf, %bb.an ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.lm, i64 %i.ln) #27
          to label %.cont unwind label %bb.r, !dbg !41788, !noalias !41167, !inline_history !40229

.cont:                                            ; preds = %.invoke
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.lo = load ptr, ptr %i.lk, align 8, !dbg !41789, !noalias !41287, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(i64 %i.lj, !41251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40419)
    #dbg_value(ptr %i.lo, !41251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40419)
    #dbg_value(ptr poison, !41257, !DIExpression(), !40420)
  %i.lp = icmp samesign ugt i64 %i.lj, 104, !dbg !41790
    #dbg_value(i1 true, !41364, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !40422)
  tail call void @llvm.assume(i1 %i.lp), !dbg !41791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !41792, !noalias !41287
    #dbg_value(i64 %i.lj, !41366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40424)
    #dbg_value(i64 %i.lj, !41236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40425)
    #dbg_value(ptr %i.lo, !41366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40424)
    #dbg_value(ptr %i.lo, !41236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40425)
    #dbg_value(i64 0, !41366, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40424)
    #dbg_value(i64 0, !41236, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40425)
    #dbg_value(ptr @84, !41357, !DIExpression(), !40411)
    #dbg_value(ptr @84, !41361, !DIExpression(), !40413)
    #dbg_value(ptr %i.lo, !41358, !DIExpression(), !40411)
    #dbg_value(ptr %i.lo, !41362, !DIExpression(), !40413)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(105) %i.lo, ptr noundef nonnull align 1 dereferenceable(105) @84, i64 105, i1 false), !dbg !41793, !noalias !41167
    #dbg_value(i64 105, !41366, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40424)
    #dbg_value(i64 105, !41236, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40425)
  store i64 %i.lj, ptr %i.bu, align 8, !dbg !41794, !noalias !41287
  %.sroa.4268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !41794
  store ptr %i.lo, ptr %.sroa.4268.0..sroa_idx.i, align 8, !dbg !41794, !noalias !41287
  %.sroa.6269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16, !dbg !41794
  store i64 105, ptr %.sroa.6269.0..sroa_idx.i, align 8, !dbg !41794, !noalias !41287
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser22inner_parse_expression:bb.a
  store i64 4, ptr %.sroa.4172.sroa.5.0..sroa.4172.0..sroa_idx.sroa_idx.i, align 8, !dbg !41921, !noalias !41287
  %.sroa.4172.sroa.6.0..sroa.4172.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24, !dbg !41921
  store i64 %.sroa.7329.0.copyload.i, ptr %.sroa.4172.sroa.6.0..sroa.4172.0..sroa_idx.sroa_idx.i, align 8, !dbg !41921, !noalias !41287
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bf)
          to label %bb.do unwind label %bb.dg, !dbg !41923, !noalias !41167, !inline_history !40229

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !41923, !noalias !41287
    #dbg_value(ptr %1, !3097, !DIExpression(), !40572)
    #dbg_value(i8 0, !3101, !DIExpression(), !40572)
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser22inner_parse_expression(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, i8 noundef 0)
          to label %_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser16parse_expression.exit unwind label %bb.dg, !dbg !41924, !inline_history !40546

_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser16parse_expression.exit: ; preds = %bb.do
  %i.ou = load i8, ptr %i.r, align 8, !dbg !41925, !range !3289, !noundef !1314 ; 2 uses
  %.not807.i = icmp eq i8 %i.ou, -1, !dbg !41925
  br i1 %.not807.i, label %bb.dq, label %bb.dp, !dbg !41926

bb.dp:                                            ; preds = %_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser16parse_expression.exit
  %.sroa.4380.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !41927
    #dbg_value(i8 %i.ou, !41012, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40573)
    #dbg_value(i8 %i.ou, !41045, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40574)
  %.sroa.4382.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !41928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4382.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(71) %.sroa.4380.0..sroa_idx.i, i64 71, i1 false), !dbg !41929
    #dbg_value(i8 %i.ou, !41062, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40575)
  store i8 %i.ou, ptr %0, align 8, !dbg !41928, !alias.scope !41167
  br label %bb.ds, !dbg !41930

bb.dq:                                            ; preds = %_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser16parse_expression.exit
  %i.ov = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !41931
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ay, i64 128, !dbg !41932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !41932, !noalias !41287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ow, ptr noundef nonnull align 8 dereferenceable(64) %i.ov, i64 64, i1 false), !dbg !41933
    #dbg_value(ptr undef, !3339, !DIExpression(), !39975)
    #dbg_value(ptr %1, !3343, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !39975)
    #dbg_value(i64 poison, !40935, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !41288)
    #dbg_value(i64 poison, !40935, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !41288)
  %i.ox = load i64, ptr %i.fw, align 8, !dbg !41934, !alias.scope !41427, !noalias !41167, !noundef !1314
    #dbg_value(i64 %i.ox, !40935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !41935, !noalias !41287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.oi, i64 64, i1 false), !dbg !41936
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ay, i64 64, !dbg !41932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.oy, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false), !dbg !41937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !41938, !noalias !41287
    #dbg_value(ptr undef, !4145, !DIExpression(), !39977)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !41939
  store i64 %.sroa.6190.0.copyload, ptr %i.oz, align 8, !dbg !41939, !alias.scope !41428, !noalias !41287
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ax, i64 24, !dbg !41939
  store i64 %.sroa.7191.0.copyload, ptr %i.pa, align 8, !dbg !41939, !alias.scope !41428, !noalias !41287
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32, !dbg !41939
  %i.pc = load <2 x i64>, ptr %i.fu, align 8, !dbg !41940, !alias.scope !41427, !noalias !41167
  store <2 x i64> %i.pc, ptr %i.pb, align 8, !dbg !41939, !alias.scope !41428, !noalias !41287
  store i64 %.sroa.4188.0.copyload, ptr %i.ax, align 8, !dbg !41939, !alias.scope !41428, !noalias !41287
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !41939
  store i64 %i.ox, ptr %i.pd, align 8, !dbg !41939, !alias.scope !41428, !noalias !41287
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtNtB4_7parsing3ast7TernaryE3newB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.az, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ax)
          to label %bb.dr unwind label %.loopexit285.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41935, !noalias !41167, !inline_history !40229

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !41941, !noalias !41287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !41941, !noalias !41287
  %.sroa.4181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4181.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !41943, !noalias !41168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !41944, !noalias !41287
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41942
  store i64 9, ptr %i.pe, align 8, !dbg !41942, !alias.scope !41167
  store i8 -1, ptr %0, align 8, !dbg !41942, !alias.scope !41167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !41930, !noalias !41287
  br label %bb.w, !dbg !41890

bb.ds:                                            ; preds = %bb.dw, %bb.dp
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.oi)
          to label %bb.dx unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41930

bb.dt:                                            ; preds = %bb.dm, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit51
  %i.pf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bd) #25
          to label %bb.dy unwind label %bb.z, !dbg !41945, !noalias !41167, !inline_history !40229

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit51: ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !41946, !noalias !41287
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fe)
          to label %bb.du unwind label %bb.dt, !dbg !41918, !noalias !41167, !inline_history !40229

bb.du:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit51
  %.sroa.7126.sroa.6.7.copyload.i = load ptr, ptr %i.bc, align 8, !dbg !41947, !noalias !41287
    #dbg_value(ptr %.sroa.7126.sroa.6.7.copyload.i, !41084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40569)
  %.sroa.7126.sroa.9.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !41947
    #dbg_value(i64 poison, !41084, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40569)
  %i.pg = load <2 x i64>, ptr %.sroa.7126.sroa.9.7..sroa_idx.i, align 8, !dbg !41947, !noalias !41287
    #dbg_value(i64 poison, !41084, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40569)
  %.sroa.7126.sroa.11.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24, !dbg !41947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7126.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7126.sroa.11.7..sroa_idx.i, i64 48, i1 false), !dbg !41947, !noalias !41287
    #dbg_value(i8 -1, !41084, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40569)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !41948, !noalias !41287
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bd)
          to label %bb.dv unwind label %bb.dg, !dbg !41945, !noalias !41167, !inline_history !40229

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !41945, !noalias !41287
  %.sroa.6376.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !41949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6376.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7126.sroa.11.i, i64 48, i1 false), !dbg !41950, !noalias !41168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7126.sroa.11.i), !dbg !41911
    #dbg_value(ptr %.sroa.7126.sroa.6.7.copyload.i, !41009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40580)
    #dbg_value(ptr %.sroa.7126.sroa.6.7.copyload.i, !41045, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40581)
    #dbg_value(i64 poison, !41009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40580)
    #dbg_value(i64 poison, !41045, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40581)
    #dbg_value(i64 poison, !41009, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40580)
    #dbg_value(i64 poison, !41045, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40581)
    #dbg_value(ptr %.sroa.7126.sroa.6.7.copyload.i, !41061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40582)
    #dbg_value(i64 poison, !41061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40582)
    #dbg_value(i64 poison, !41061, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40582)
  store ptr %.sroa.7126.sroa.6.7.copyload.i, ptr %0, align 8, !dbg !41949, !alias.scope !41167
  %.sroa.4374.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41949
  store <2 x i64> %i.pg, ptr %.sroa.4374.0..sroa_idx.i, align 8, !dbg !41949, !alias.scope !41167
  br label %bb.dw, !dbg !41923

bb.dw:                                            ; preds = %bb.dv, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !41923, !noalias !41287
  br label %bb.ds, !dbg !41912

bb.dx:                                            ; preds = %bb.ds, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !41930, !noalias !41287
  br label %bb.dz, !dbg !41890

bb.dy:                                            ; preds = %bb.dg, %bb.dt
  %.pn808.pn.i.ph = phi { ptr, i32 } [ %i.pf, %bb.dt ], [ %i.oj, %bb.dg ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.bg) #25
          to label %.thread227 unwind label %bb.z, !dbg !41930, !noalias !41167, !inline_history !40229

bb.dz:                                            ; preds = %bb.hj, %bb.he, %bb.fi, %bb.ez, %bb.ex, %bb.eq, %bb.eh, %bb.dx, %bb.db
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ar)
          to label %bb.w unwind label %bb.r, !dbg !41951, !inline_history !40229

.thread251:                                       ; preds = %bb.ck
    #dbg_value(i8 poison, !40984, !DIExpression(), !41402)
    #dbg_value(i8 poison, !41429, !DIExpression(), !40586)
  br label %bb.es, !dbg !41952

bb.ea:                                            ; preds = %bb.ck
    #dbg_value(i8 18, !40984, !DIExpression(), !41402)
    #dbg_value(i8 18, !41429, !DIExpression(), !40586)
  br label %bb.es, !dbg !41953

bb.eb:                                            ; preds = %bb.cu
    #dbg_value(i8 16, !41429, !DIExpression(), !40588)
    #dbg_value(i8 5, !40985, !DIExpression(), !40589)
  br i1 %i.fi, label %.thread210, label %bb.ec, !dbg !41954

bb.ec:                                            ; preds = %bb.eb
    #dbg_value(ptr %1, !41436, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !40593)
    #dbg_value(ptr %1, !41440, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !40594)
    #dbg_value(ptr %i.fj, !41442, !DIExpression(), !40598)
    #dbg_value(ptr %i.fj, !41452, !DIExpression(), !40601)
    #dbg_value(ptr %i.fj, !41455, !DIExpression(), !40604)
    #dbg_value(ptr %i.fj, !41457, !DIExpression(), !40608)
    #dbg_value(ptr %1, !41450, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !40598)
    #dbg_declare(ptr poison, !41453, !DIExpression(), !40609)
  %i.ph = load i8, ptr %i.fj, align 8, !dbg !41955, !range !3448, !noundef !1314 ; 2 uses
  %.not.i45 = icmp eq i8 %i.ph, -3, !dbg !41955
  br i1 %.not.i45, label %bb.ed, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1f_5utils4SpanENtNtB1f_6errors5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB32_8PeekableINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB36_6traits8iterator8Iteratorp4ItemBM_EL_EE4peek0EB1f_.exit, !dbg !41956

bb.ed:                                            ; preds = %bb.ec
    #dbg_value(ptr %i.fk, !41440, !DIExpression(), !40594)
    #dbg_value(ptr %i.fk, !41450, !DIExpression(), !40598)
    #dbg_value(ptr poison, !41460, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !40612)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !41957, !noalias !41464
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB2g_5utils4SpanENtNtB2g_6errors5ErrorEEL_EBM_4nextB2g_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.fk)
          to label %.noexc46 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41958

.noexc46:                                         ; preds = %bb.ed
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fj, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false), !dbg !41959, !noalias !41167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41960, !noalias !41464
  %i.pi = load i8, ptr %i.fj, align 8, !dbg !41961, !range !3448, !noundef !1314 ; 2 uses
  %i.pj = icmp ne i8 %i.pi, -3, !dbg !41961
  call void @llvm.assume(i1 %i.pj), !dbg !41962, !noalias !41167
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1f_5utils4SpanENtNtB1f_6errors5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB32_8PeekableINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB36_6traits8iterator8Iteratorp4ItemBM_EL_EE4peek0EB1f_.exit, !dbg !41963

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1f_5utils4SpanENtNtB1f_6errors5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB32_8PeekableINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB36_6traits8iterator8Iteratorp4ItemBM_EL_EE4peek0EB1f_.exit: ; preds = %.noexc46, %bb.ec
  %i.pk = phi i8 [ %i.pi, %.noexc46 ], [ %i.ph, %bb.ec ], !dbg !41964
    #dbg_value(ptr %i.fj, !41465, !DIExpression(), !40618)
  %cond825.i = icmp eq i8 %i.pk, 7, !dbg !41965
  %i.pl = load i64, ptr %i.fl, align 8
    #dbg_value(ptr poison, !41211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40201)
    #dbg_value(i64 %i.pl, !41211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40201)
    #dbg_value(ptr poison, !41293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40621)
    #dbg_value(i64 %i.pl, !41293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40621)
    #dbg_value(ptr poison, !41311, !DIExpression(), !40622)
    #dbg_value(ptr @86, !41294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40621)
    #dbg_value(i64 2, !41294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40621)
    #dbg_value(ptr poison, !41312, !DIExpression(), !40623)
    #dbg_value(i64 %i.pl, !41307, !DIExpression(), !40624)
    #dbg_value(i64 %i.pl, !41314, !DIExpression(), !40626)
    #dbg_value(i64 %i.pl, !41329, !DIExpression(), !40627)
  %i.pm = icmp eq i64 %i.pl, 2
  %or.cond = select i1 %cond825.i, i1 %i.pm, i1 false, !dbg !41965
  br i1 %or.cond, label %bb.ee, label %bb.ef, !dbg !41965

bb.ee:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1f_5utils4SpanENtNtB1f_6errors5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB32_8PeekableINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB36_6traits8iterator8Iteratorp4ItemBM_EL_EE4peek0EB1f_.exit
  %i.pn = load ptr, ptr %i.fm, align 8, !dbg !41966, !alias.scope !41168, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %i.pn, !41293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40621)
    #dbg_value(ptr %i.pn, !41211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40201)
    #dbg_value(ptr %i.pn, !41315, !DIExpression(), !40626)
    #dbg_value(ptr @86, !41316, !DIExpression(), !40626)
  %i.po = load i16, ptr %i.pn, align 1, !dbg !41967
  %i.pp = icmp ne i16 %i.po, 28265, !dbg !41967
  %i.pq = zext i1 %i.pp to i32, !dbg !41967
  %i.pr = icmp eq i32 %i.pq, 0, !dbg !41967
  br label %bb.ef, !dbg !41968

bb.ef:                                            ; preds = %bb.ee, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1f_5utils4SpanENtNtB1f_6errors5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB32_8PeekableINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB36_6traits8iterator8Iteratorp4ItemBM_EL_EE4peek0EB1f_.exit
  %.sroa.086.0.i = phi i1 [ false, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtB1f_5utils4SpanENtNtB1f_6errors5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB32_8PeekableINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtB36_6traits8iterator8Iteratorp4ItemBM_EL_EE4peek0EB1f_.exit ], [ %i.pr, %bb.ee ], !dbg !41969
    #dbg_value(i8 poison, !40986, !DIExpression(), !40628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !dbg !41970, !noalias !41287
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.eg unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41971, !inline_history !40229

bb.eg:                                            ; preds = %bb.ef
  %i.ps = load i8, ptr %i.w, align 8, !dbg !41972, !range !3290, !noundef !1314 ; 3 uses
  %i.pt = icmp eq i8 %i.ps, -1, !dbg !41972
  br i1 %i.pt, label %bb.eh, label %bb.ei, !dbg !41973

bb.eh:                                            ; preds = %bb.eg
  %i.pu = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !41974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.pu, i64 72, i1 false), !dbg !41975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !41976, !noalias !41287
  br label %bb.dz, !dbg !41977

bb.ei:                                            ; preds = %bb.eg
    #dbg_value(i8 %i.ps, !40988, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40629)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.497.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4307.0..sroa_idx.i, i64 79, i1 false), !dbg !41970
  store i8 %i.ps, ptr %i.bl, align 8, !dbg !41978, !noalias !41287
    #dbg_value(ptr %i.bl, !3336, !DIExpression(), !40631)
    #dbg_value(ptr %i.bl, !3222, !DIExpression(), !40633)
  %i.pv = icmp eq i8 %i.ps, 8, !dbg !41979
  br i1 %i.pv, label %bb.ej, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit497, !dbg !41979

bb.ej:                                            ; preds = %bb.ei
    #dbg_value(ptr %i.gk, !3230, !DIExpression(), !40635)
    #dbg_value(ptr %i.gk, !3235, !DIExpression(), !40637)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gk)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i496 unwind label %bb.ek, !dbg !41980, !noalias !41167

bb.ek:                                            ; preds = %bb.ej
  %i.pw = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.gk, !3240, !DIExpression(), !40639)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gk)
          to label %.thread227 unwind label %bb.el, !dbg !41981, !noalias !41167

bb.el:                                            ; preds = %bb.ek
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !41980, !noalias !41167
  unreachable, !dbg !41980

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i496: ; preds = %bb.ej
    #dbg_value(ptr %i.gk, !3240, !DIExpression(), !40641)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gk)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit497 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41982

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit497: ; preds = %bb.ei, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !41976, !noalias !41287
  br i1 %.sroa.086.0.i, label %bb.er, label %bb.em, !dbg !41983

bb.em:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !41984, !noalias !41287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !41985, !noalias !41287
    #dbg_value(ptr @90, !41229, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40642)
    #dbg_value(ptr @90, !41227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40643)
    #dbg_value(ptr @90, !41225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40644)
    #dbg_value(ptr @90, !41232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40645)
    #dbg_value(i64 44, !41229, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40642)
    #dbg_value(i64 44, !41227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40643)
    #dbg_value(i64 44, !41225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40644)
    #dbg_value(i64 44, !41232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40645)
    #dbg_value(i64 44, !41237, !DIExpression(), !40646)
    #dbg_value(i64 44, !41241, !DIExpression(), !40647)
    #dbg_value(i64 44, !41244, !DIExpression(), !40648)
    #dbg_value(i64 44, !41356, !DIExpression(), !40650)
    #dbg_value(i64 44, !41360, !DIExpression(), !40652)
    #dbg_value(i64 44, !41247, !DIExpression(), !40653)
    #dbg_value(i64 44, !41258, !DIExpression(), !40224)
    #dbg_value(i64 1, !41248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40653)
    #dbg_value(i64 1, !41259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40224)
    #dbg_value(i64 1, !41248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40653)
    #dbg_value(i64 1, !41259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !41986, !noalias !41287
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.en unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41986, !noalias !41167, !inline_history !40229

bb.en:                                            ; preds = %bb.em
  %i.py = load i64, ptr %i.v, align 8, !dbg !41986, !range !3205, !noalias !41287, !noundef !1314
  %i.pz = trunc nuw i64 %i.py to i1, !dbg !41987
  %i.qa = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !41988
  %i.qb = load i64, ptr %i.qa, align 8, !dbg !41988, !range !3206, !noalias !41287, !noundef !1314 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !41988 ; 2 uses
  br i1 %i.pz, label %bb.eo, label %bb.ep, !dbg !41987, !prof !3207

bb.eo:                                            ; preds = %bb.en
  %i.qd = load i64, ptr %i.qc, align 8, !dbg !41989, !noalias !41287
    #dbg_value(i64 %i.qb, !41254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40654)
    #dbg_value(i64 %i.qd, !41254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40654)
  br label %.invoke494, !dbg !41990

bb.ep:                                            ; preds = %bb.en
  %i.qe = load ptr, ptr %i.qc, align 8, !dbg !41991, !noalias !41287, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(i64 %i.qb, !41253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40655)
    #dbg_value(ptr %i.qe, !41253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40655)
    #dbg_value(ptr poison, !41257, !DIExpression(), !40656)
  %i.qf = icmp samesign ugt i64 %i.qb, 43, !dbg !41992
    #dbg_value(i1 true, !41364, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !40658)
  call void @llvm.assume(i1 %i.qf), !dbg !41993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !41994, !noalias !41287
    #dbg_value(i64 %i.qb, !41366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40660)
    #dbg_value(i64 %i.qb, !41238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40661)
    #dbg_value(ptr %i.qe, !41366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40660)
    #dbg_value(ptr %i.qe, !41238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40661)
    #dbg_value(i64 0, !41366, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40660)
    #dbg_value(i64 0, !41238, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40661)
    #dbg_value(ptr @90, !41357, !DIExpression(), !40650)
    #dbg_value(ptr @90, !41361, !DIExpression(), !40652)
    #dbg_value(ptr %i.qe, !41358, !DIExpression(), !40650)
    #dbg_value(ptr %i.qe, !41362, !DIExpression(), !40652)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.qe, ptr noundef nonnull align 1 dereferenceable(44) @90, i64 44, i1 false), !dbg !41995, !noalias !41167
    #dbg_value(i64 44, !41366, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40660)
    #dbg_value(i64 44, !41238, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40661)
  store i64 %i.qb, ptr %i.bj, align 8, !dbg !41996, !noalias !41287
  %.sroa.4309.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !41996
  store ptr %i.qe, ptr %.sroa.4309.0..sroa_idx.i, align 8, !dbg !41996, !noalias !41287
  %.sroa.6310.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16, !dbg !41996
  store i64 44, ptr %.sroa.6310.0..sroa_idx.i, align 8, !dbg !41996, !noalias !41287
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fe)
          to label %bb.eq unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !41984, !noalias !41167, !inline_history !40229

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !41997, !noalias !41287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bk, i64 72, i1 false), !dbg !41998, !noalias !41168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !41999, !noalias !41287
  br label %bb.dz, !dbg !41977

bb.er:                                            ; preds = %bb.hm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit497
  %.sroa.085.1.i = phi i1 [ %.sroa.085.0.i367, %bb.hm ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit497 ], !dbg !42000
    #dbg_value(i64 %.sroa.17.1.ph374, !40935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41288)
    #dbg_value(i64 %.sroa.59.1.ph373, !40935, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !41288)
    #dbg_value(i64 %.sroa.75.1.ph372, !40935, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !41288)
    #dbg_value(i8 poison, !40982, !DIExpression(), !40308)
  %i.qg = load i8, ptr %i.ez, align 8, !dbg !41640, !range !3052, !alias.scope !41168, !noundef !1314 ; 2 uses
  %switch.i = icmp ugt i8 %i.qg, -3, !dbg !41641
  br i1 %switch.i, label %.thread210, label %bb.ck, !dbg !41641

.loopexit290:                                     ; preds = %bb.ck
  br label %bb.es, !dbg !42001

.loopexit:                                        ; preds = %bb.ck
  br label %bb.es

.loopexit455:                                     ; preds = %bb.ck
  br label %bb.es, !dbg !42001

.loopexit507:                                     ; preds = %bb.ck
  br label %bb.es, !dbg !42001

.loopexit565:                                     ; preds = %bb.ck
  br label %bb.es, !dbg !42001

.loopexit645:                                     ; preds = %bb.ck
  br label %bb.es, !dbg !42001

.loopexit686:                                     ; preds = %bb.ck
  br label %bb.es, !dbg !42001

.loopexit740:                                     ; preds = %bb.ck
  br label %bb.es, !dbg !42001

bb.es:                                            ; preds = %bb.ck, %.loopexit740, %.loopexit686, %.loopexit645, %.loopexit565, %.loopexit507, %.loopexit455, %.loopexit, %.loopexit290, %bb.cp, %bb.ea, %.thread251, %bb.co, %bb.cn, %bb.cm, %bb.cw, %.thread210.thread, %bb.cv, %bb.cx
  %i.qh = phi i1 [ false, %bb.cv ], [ false, %.loopexit565 ], [ false, %.thread251 ], [ false, %bb.co ], [ false, %bb.cw ], [ false, %bb.ea ], [ false, %.thread210.thread ], [ false, %.loopexit507 ], [ false, %.loopexit645 ], [ false, %.loopexit686 ], [ false, %.loopexit740 ], [ false, %bb.cm ], [ false, %bb.cn ], [ false, %bb.cx ], [ false, %.loopexit290 ], [ false, %.loopexit ], [ false, %.loopexit455 ], [ true, %bb.cp ], [ false, %bb.ck ]
  %i.qi = phi i8 [ 16, %bb.cv ], [ 3, %.loopexit565 ], [ 0, %.thread251 ], [ 12, %bb.co ], [ 13, %bb.cw ], [ 18, %bb.ea ], [ 14, %.thread210.thread ], [ 2, %.loopexit507 ], [ 4, %.loopexit645 ], [ 7, %.loopexit686 ], [ 8, %.loopexit740 ], [ 10, %bb.cm ], [ 11, %bb.cn ], [ 17, %bb.cx ], [ 6, %.loopexit290 ], [ 1, %.loopexit ], [ 5, %.loopexit455 ], [ 15, %bb.cp ], [ 9, %bb.ck ] ; 2 uses
  %i.qj = phi i1 [ false, %bb.cv ], [ false, %.loopexit565 ], [ false, %.thread251 ], [ false, %bb.co ], [ false, %bb.cw ], [ false, %bb.ea ], [ false, %.thread210.thread ], [ false, %.loopexit507 ], [ false, %.loopexit645 ], [ false, %.loopexit686 ], [ false, %.loopexit740 ], [ false, %bb.cm ], [ false, %bb.cn ], [ true, %bb.cx ], [ false, %.loopexit290 ], [ false, %.loopexit ], [ false, %.loopexit455 ], [ false, %bb.cp ], [ false, %bb.ck ]
  %.sroa.9.0.i = phi i8 [ 6, %bb.cv ], [ 12, %.loopexit565 ], [ 14, %.thread251 ], [ 8, %bb.co ], [ 4, %bb.cw ], [ 18, %bb.ea ], [ 2, %.thread210.thread ], [ 14, %.loopexit507 ], [ 12, %.loopexit645 ], [ 8, %.loopexit686 ], [ 8, %.loopexit740 ], [ 8, %bb.cm ], [ 8, %bb.cn ], [ 6, %bb.cx ], [ 15, %.loopexit290 ], [ 14, %.loopexit ], [ 14, %.loopexit455 ], [ 14, %bb.cp ], [ 8, %bb.ck ], !dbg !42002
  %.sroa.0.0.i = phi i8 [ 5, %bb.cv ], [ 11, %.loopexit565 ], [ 13, %.thread251 ], [ 7, %bb.co ], [ 3, %bb.cw ], [ 17, %bb.ea ], [ 1, %.thread210.thread ], [ 13, %.loopexit507 ], [ 11, %.loopexit645 ], [ 7, %.loopexit686 ], [ 7, %.loopexit740 ], [ 7, %bb.cm ], [ 7, %bb.cn ], [ 5, %bb.cx ], [ 16, %.loopexit290 ], [ 13, %.loopexit ], [ 13, %.loopexit455 ], [ 13, %bb.cp ], [ 7, %bb.ck ], !dbg !42002
    #dbg_value(i8 %.sroa.0.0.i, !41014, !DIExpression(), !40662)
    #dbg_value(i8 %.sroa.9.0.i, !41015, !DIExpression(), !40662)
  %i.qk = icmp samesign ult i8 %.sroa.0.0.i, %2, !dbg !42001
  br i1 %i.qk, label %.thread210, label %bb.et, !dbg !42001

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !42003, !noalias !41287
  call void @llvm.experimental.noalias.scope.decl(metadata !41474), !dbg !42004
    #dbg_value(ptr %1, !4215, !DIExpression(), !40666)
    #dbg_value(ptr @109, !4220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40668)
    #dbg_value(i64 29, !4220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40668)
    #dbg_value(ptr @109, !4222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40670)
    #dbg_value(i64 29, !4222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40670)
    #dbg_value(ptr @109, !4223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40671)
    #dbg_value(i64 29, !4223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40671)
    #dbg_value(ptr @109, !4225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40673)
    #dbg_value(i64 29, !4225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40673)
    #dbg_value(ptr @109, !4227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40675)
    #dbg_value(i64 29, !4227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40675)
end_hunk_1
