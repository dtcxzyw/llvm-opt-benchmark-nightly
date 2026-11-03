Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.04?download=true
inline.NumInlined: 1305
inline.NumDeleted: 669
begin_hunk_0_@_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvYB1l_INtNtBb_7convert4IntoNtNtCs5yXxDE1DkoT_4tera5value5ValueE4intoENtNtNtB9_6traits8iterator8Iterator4nextB1U_:bb.a
  br label %.loopexit61.split.us.i.i.i, !dbg !24370

.split.us180.i.i.i:                               ; preds = %bb.m, %.split.i.i.us.i.i.i, %bb.d, %.split.i.i.us.i.peel.i.i
  %.lcssa43.i.i = phi i64 [ %.promoted176.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted176.i.i.i, %bb.d ], [ %i.bh, %.split.i.i.us.i.i.i ], [ %i.bh, %bb.m ]
  %.lcssa40.i.i = phi i8 [ %.promoted225.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted225.i.i.i, %bb.d ], [ 1, %.split.i.i.us.i.i.i ], [ 1, %bb.m ]
  %i.bz = xor i8 %.lcssa40.i.i, 1
  store i8 %i.bz, ptr %i.k, align 8, !dbg !24380, !alias.scope !24136
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val13.i.i, i64 noundef %.lcssa43.i.i, i64 noundef %.val13.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #28, !dbg !24381, !noalias !24135
  unreachable, !dbg !24381

.split185.us.i.i.i:                               ; preds = %bb.e
  %i.ca = xor i8 %.promoted225.i.i.i, 1
  store i8 %i.ca, ptr %i.k, align 8, !dbg !24380, !alias.scope !24136
    #dbg_value(i32 0, !24103, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !23729)
    #dbg_value(i32 undef, !24103, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !23729)
  br i1 %i.l, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.p, !dbg !24374

.loopexit61.split.us.i.i.i:                       ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i, %bb.o, %bb.h
  %.lcssa45.i.i = phi i64 [ %.promoted176.i.i.i, %bb.h ], [ %i.bh, %bb.o ], [ %i.bh, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i.i ] ; 2 uses
  store i8 0, ptr %i.k, align 8, !dbg !24380, !alias.scope !24136
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24382

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.p:                                             ; preds = %.split185.us.i.i.i
  store i8 1, ptr %i.h, align 2, !dbg !24383, !alias.scope !24136
  br label %bb.ak, !dbg !24384

bb.q:                                             ; preds = %bb.b
    #dbg_value(ptr %1, !24005, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23751)
    #dbg_value(ptr poison, !24006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23752)
    #dbg_value(ptr poison, !24146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23755)
    #dbg_value(ptr poison, !24152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23759)
    #dbg_value(ptr poison, !24159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23762)
    #dbg_value(i64 %.val13.i.i, !24006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23752)
    #dbg_value(i64 %.val13.i.i, !24146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23755)
    #dbg_value(i64 %.val13.i.i, !24152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23759)
    #dbg_value(i64 %.val13.i.i, !24159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23762)
  %i.cb = load i64, ptr %i.g, align 8, !dbg !24385, !alias.scope !24013, !noundef !1322 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.cb, %.val13.i.i, !dbg !24385
  br i1 %.not.i.i.i, label %bb.s, label %bb.ak, !dbg !24385

bb.r:                                             ; preds = %bb.b
    #dbg_value(ptr %i.g, !24010, !DIExpression(), !23763)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !24386 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !24386, !alias.scope !24013, !noundef !1322 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1, !dbg !24386
    #dbg_value(i1 %i.ce, !24011, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23764)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !24387
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !24387, !alias.scope !24013, !nonnull !1322, !noundef !1322 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !24387
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !24387, !alias.scope !24013, !noundef !1322 ; 16 uses
    #dbg_value(ptr poison, !24163, !DIExpression(), !23789)
    #dbg_value(ptr poison, !24163, !DIExpression(), !23795)
    #dbg_value(ptr poison, !24166, !DIExpression(), !23796)
    #dbg_value(ptr poison, !24166, !DIExpression(), !23797)
    #dbg_value(ptr poison, !24169, !DIExpression(), !23798)
    #dbg_value(ptr poison, !24169, !DIExpression(), !23799)
    #dbg_value(ptr poison, !24180, !DIExpression(), !23800)
    #dbg_value(ptr poison, !24180, !DIExpression(), !23801)
    #dbg_value(ptr poison, !24163, !DIExpression(), !23808)
    #dbg_value(ptr poison, !24163, !DIExpression(), !23812)
    #dbg_value(ptr poison, !24205, !DIExpression(), !23813)
    #dbg_value(ptr poison, !24205, !DIExpression(), !23814)
    #dbg_value(ptr poison, !24208, !DIExpression(), !23815)
    #dbg_value(ptr poison, !24208, !DIExpression(), !23816)
    #dbg_value(ptr %i.g, !24189, !DIExpression(), !23817)
    #dbg_value(ptr %i.g, !24189, !DIExpression(), !23818)
    #dbg_value(ptr %i.g, !24211, !DIExpression(), !23821)
    #dbg_value(ptr %i.g, !24211, !DIExpression(), !23823)
    #dbg_value(ptr %.val.i.i, !24190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23817)
    #dbg_value(ptr %.val.i.i, !24190, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23818)
    #dbg_value(ptr %.val.i.i, !24218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23826)
    #dbg_value(ptr %.val.i.i, !24218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23828)
    #dbg_value(ptr %.val.i.i, !24225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23831)
    #dbg_value(ptr %.val.i.i, !24225, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23833)
    #dbg_value(ptr %.val.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23836)
    #dbg_value(ptr %.val.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23838)
    #dbg_value(ptr %.val.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23841)
    #dbg_value(ptr %.val.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23843)
    #dbg_value(ptr %.val.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23845)
    #dbg_value(ptr %.val.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23847)
    #dbg_value(ptr %.val.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23849)
    #dbg_value(ptr %.val.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23851)
    #dbg_value(i64 %.val13.i.i, !24190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23817)
    #dbg_value(i64 %.val13.i.i, !24190, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23818)
    #dbg_value(i64 %.val13.i.i, !24218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23826)
    #dbg_value(i64 %.val13.i.i, !24218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23828)
    #dbg_value(i64 %.val13.i.i, !24225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23831)
    #dbg_value(i64 %.val13.i.i, !24225, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23833)
    #dbg_value(i64 %.val13.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23836)
    #dbg_value(i64 %.val13.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23838)
    #dbg_value(i64 %.val13.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23841)
    #dbg_value(i64 %.val13.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23843)
    #dbg_value(i64 %.val13.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23845)
    #dbg_value(i64 %.val13.i.i, !24231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23847)
    #dbg_value(i64 %.val13.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23849)
    #dbg_value(i64 %.val13.i.i, !24236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23851)
    #dbg_value(ptr %i.cg, !24191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23817)
    #dbg_value(ptr %i.cg, !24191, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23818)
    #dbg_value(i64 %i.ci, !24191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23817)
    #dbg_value(i64 %i.ci, !24191, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23818)
    #dbg_value(i64 1, !24242, !DIExpression(), !23854)
    #dbg_value(i64 1, !24242, !DIExpression(), !23856)
    #dbg_value(i64 1, !24245, !DIExpression(), !23859)
    #dbg_value(i64 1, !24245, !DIExpression(), !23861)
    #dbg_value(i64 1, !24248, !DIExpression(), !23864)
    #dbg_value(i64 1, !24248, !DIExpression(), !23866)
    #dbg_value(i64 1, !24251, !DIExpression(), !23869)
    #dbg_value(i64 1, !24251, !DIExpression(), !23871)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !24388 ; 9 uses
    #dbg_value(i64 poison, !24193, !DIExpression(), !23873)
    #dbg_value(i64 poison, !24193, !DIExpression(), !23874)
  %i.ck = add nsw i64 %i.ci, -1, !dbg !24389      ; 5 uses
  br i1 %i.ce, label %bb.ad, label %bb.v, !dbg !24390

bb.s:                                             ; preds = %bb.q
    #dbg_value(ptr %.val.i.i, !24006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23752)
    #dbg_value(ptr %.val.i.i, !24146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23755)
    #dbg_value(ptr %.val.i.i, !24152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23759)
    #dbg_value(ptr %.val.i.i, !24159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23762)
    #dbg_value(i64 %i.cb, !24149, !DIExpression(), !23755)
    #dbg_value(i64 %i.cb, !24156, !DIExpression(), !23759)
    #dbg_value(i64 %i.cb, !24160, !DIExpression(), !23762)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24391
  %i.cm = load i8, ptr %i.cl, align 8, !dbg !24391, !alias.scope !24013, !noundef !1322 ; 2 uses
  %i.cn = sub nuw i64 %.val13.i.i, %i.cb, !dbg !24392 ; 4 uses
    #dbg_value(i64 %i.cn, !24157, !DIExpression(), !23875)
    #dbg_value(i64 %i.cn, !24161, !DIExpression(), !23762)
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cb, !dbg !24393 ; 2 uses
    #dbg_value(i8 %i.cm, !4954, !DIExpression(), !23877)
    #dbg_value(i8 %i.cm, !4959, !DIExpression(), !23879)
    #dbg_value(ptr %i.co, !4955, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23877)
    #dbg_value(ptr %i.co, !4960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23879)
    #dbg_value(i64 %i.cn, !4955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23877)
    #dbg_value(i64 %i.cn, !4960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23879)
  %i.cp = icmp samesign ult i64 %i.cn, 16, !dbg !24394
  br i1 %i.cp, label %.lr.ph.i.i.i.i, label %bb.t, !dbg !24394

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef range(i64 0, -9223372036854775808) %i.cn), !dbg !24395, !noalias !24254 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0, !dbg !24395
  %i.cs = extractvalue { i64, i64 } %i.cq, 1, !dbg !24395
    #dbg_value(i64 %i.cr, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23880)
    #dbg_value(i64 %i.cs, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23880)
  %i.ct = trunc nuw i64 %i.cr to i1, !dbg !24396
  br i1 %i.ct, label %.loopexit62.i.i.i, label %.loopexit63.i.i.i, !dbg !24396

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %bb.u
  %.sroa.04.015.i.i.i.i = phi i64 [ %i.cx, %bb.u ], [ 0, %bb.s ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i, !4961, !DIExpression(), !23881)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.04.015.i.i.i.i, !dbg !24397
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !24397, !alias.scope !24255, !noalias !24254, !noundef !1322
  %i.cw = icmp eq i8 %i.cv, %i.cm, !dbg !24397
  br i1 %i.cw, label %.loopexit62.i.i.i, label %bb.u, !dbg !24397

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cx = add nuw nsw i64 %.sroa.04.015.i.i.i.i, 1, !dbg !24398 ; 2 uses
    #dbg_value(i64 %i.cx, !4961, !DIExpression(), !23881)
  %exitcond.not.i27.i.i.i = icmp eq i64 %i.cx, %i.cn, !dbg !24399
  br i1 %exitcond.not.i27.i.i.i, label %.loopexit63.i.i.i, label %.lr.ph.i.i.i.i, !dbg !24399

.loopexit62.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.t
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.cs, %bb.t ], [ %.sroa.04.015.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !24400 ; 2 uses
    #dbg_value(i64 1, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23880)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23880)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !4957, !DIExpression(), !23884)
  %i.cy = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.cn, !dbg !24401
    #dbg_value(i1 true, !4963, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23886)
  tail call void @llvm.assume(i1 %i.cy), !dbg !24402
    #dbg_value(i64 1, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23880)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23880)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !24007, !DIExpression(), !23887)
  %i.cz = add i64 %.sroa.5.0.i.i.i.i, %i.cb, !dbg !24403 ; 2 uses
    #dbg_value(i64 %i.cz, !24008, !DIExpression(), !23888)
  %i.da = add i64 %i.cz, 1, !dbg !24404           ; 2 uses
  store i64 %i.da, ptr %i.g, align 8, !dbg !24404, !alias.scope !24013
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24405

.loopexit63.i.i.i:                                ; preds = %bb.u, %bb.t
    #dbg_value(i64 0, !4956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23880)
    #dbg_value(i64 poison, !4956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23880)
  store i64 %.val13.i.i, ptr %i.g, align 8, !dbg !24406, !alias.scope !24013
  br label %bb.ak, !dbg !24407

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24256), !dbg !24408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24257), !dbg !24408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24258), !dbg !24408
    #dbg_value(i1 false, !24192, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23818)
    #dbg_value(i64 %i.ck, !24194, !DIExpression(), !23893)
  %.promoted.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !24259 ; 2 uses
  %i.db = add i64 %.promoted.i.i.i.i, %i.ck, !dbg !24409 ; 2 uses
  %i.dc = icmp ult i64 %i.db, %.val13.i.i, !dbg !24410
  br i1 %i.dc, label %.lr.ph.i28.i.i.i, label %._crit_edge.i.i.i.i, !dbg !24410

.lr.ph.i28.i.i.i:                                 ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !24259, !noundef !1322
  %i.df = load i64, ptr %i.g, align 8, !alias.scope !24259 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !24259 ; 2 uses
  %i.di = sub i64 %i.ci, %i.dh
  %invariant.op = sub i64 1, %i.df, !dbg !24411
  br label %.lr.ph.split.i.i.i.i, !dbg !24411

._crit_edge.i.i.i.i:                              ; preds = %bb.y, %bb.v
  store i64 %.val13.i.i, ptr %i.cj, align 8, !dbg !24412, !alias.scope !24259
  br label %bb.ak, !dbg !24413

.lr.ph.split.i.i.i.i:                             ; preds = %bb.y, %.lr.ph.i28.i.i.i
  %i.dj = phi i64 [ %.sink94.i.i.i.i, %bb.y ], [ %i.cd, %.lr.ph.i28.i.i.i ] ; 3 uses
  %i.dk = phi i64 [ %i.dv, %bb.y ], [ %i.db, %.lr.ph.i28.i.i.i ]
  %i.dl = phi i64 [ %.sink95.i.i.i.i, %bb.y ], [ %.promoted.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dk, !dbg !24414
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !24415, !alias.scope !24257, !noalias !24254, !noundef !1322
    #dbg_value(i8 %i.dn, !24195, !DIExpression(), !23894)
    #dbg_value(i8 %i.dn, !24216, !DIExpression(), !23823)
  %i.do = and i8 %i.dn, 63, !dbg !24416
  %i.dp = zext nneg i8 %i.do to i64, !dbg !24417
  %i.dq = shl nuw i64 1, %i.dp, !dbg !24418
  %i.dr = and i64 %i.dq, %i.de, !dbg !24418
  %.not.i29.i.i.i = icmp eq i64 %i.dr, 0, !dbg !24418
  br i1 %.not.i29.i.i.i, label %bb.w, label %bb.x, !dbg !24411

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.ds = add i64 %i.dl, %i.ci, !dbg !24419
  br label %bb.y, !dbg !24420

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i
    #dbg_value(i64 %i.df, !24261, !DIExpression(), !23897)
    #dbg_value(i64 %i.df, !24264, !DIExpression(), !23900)
    #dbg_value(i64 %i.dj, !24262, !DIExpression(), !23897)
    #dbg_value(i64 %i.dj, !24265, !DIExpression(), !23900)
  %i.dt = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %i.dj), !dbg !24421 ; 2 uses
    #dbg_value(i64 %i.dt, !24197, !DIExpression(), !23901)
    #dbg_value(i64 %i.dt, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23902)
    #dbg_value(i64 %i.ci, !24198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23902)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23816)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23814)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23812)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23903)
  %i.du = icmp ult i64 %i.dt, %i.ci, !dbg !24422
  br i1 %i.du, label %.lr.ph, label %.preheader60.i.i.i.i.preheader, !dbg !24423

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.w
  %.sink95.i.i.i.i = phi i64 [ %i.er, %bb.ac ], [ %i.eq, %bb.ab ], [ %i.ds, %bb.w ] ; 3 uses
  %.sink94.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %i.di, %bb.ab ], [ 0, %bb.w ] ; 2 uses
  store i64 %.sink95.i.i.i.i, ptr %i.cj, align 8, !dbg !24424, !alias.scope !24259
  store i64 %.sink94.i.i.i.i, ptr %i.cc, align 8, !dbg !24424, !alias.scope !24259
  %i.dv = add i64 %.sink95.i.i.i.i, %i.ck, !dbg !24409 ; 2 uses
    #dbg_value(i64 %i.dv, !24221, !DIExpression(), !23828)
    #dbg_value(i64 %i.dv, !24229, !DIExpression(), !23833)
  %i.dw = icmp ult i64 %i.dv, %.val13.i.i, !dbg !24410
  br i1 %i.dw, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i, !dbg !24410

bb.z:                                             ; preds = %.lr.ph
  %i.dx = add nuw nsw i64 %.sroa.04.0.i.i.i.i85, 1, !dbg !24425 ; 2 uses
    #dbg_value(i64 %i.dx, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23902)
    #dbg_value(i64 %i.dx, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23902)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23816)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23814)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23812)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23903)
  %i.dy = icmp ult i64 %i.dx, %i.ci, !dbg !24422
  br i1 %i.dy, label %.lr.ph, label %.preheader60.i.i.i.i.preheader, !dbg !24423

.preheader60.i.i.i.i.preheader:                   ; preds = %bb.z, %bb.x
    #dbg_value(i64 %i.df, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23904)
    #dbg_value(ptr undef, !24180, !DIExpression(), !23801)
    #dbg_value(ptr undef, !24169, !DIExpression(), !23799)
    #dbg_value(ptr undef, !24166, !DIExpression(), !23797)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23795)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23905)
  %i.dz = icmp ult i64 %i.dj, %i.df, !dbg !24426
  br i1 %i.dz, label %.lr.ph87, label %.split.us.i30.i.i.i, !dbg !24427

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.sroa.04.0.i.i.i.i85 = phi i64 [ %i.dx, %bb.z ], [ %i.dt, %bb.x ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.i.i.i.i85, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23902)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i85, !24206, !DIExpression(), !23906)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i85, !24243, !DIExpression(), !23856)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i85, !24246, !DIExpression(), !23861)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i85, !24198, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23902)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i85, !24199, !DIExpression(), !23907)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.i.i.i.i85, !dbg !24428
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !24428, !alias.scope !24258, !noalias !24254, !noundef !1322
  %i.ec = add i64 %.sroa.04.0.i.i.i.i85, %i.dl, !dbg !24429 ; 2 uses
    #dbg_value(i64 %i.ec, !24234, !DIExpression(), !23838)
    #dbg_value(i64 %i.ec, !24239, !DIExpression(), !23843)
  %i.ed = icmp ult i64 %i.ec, %.val13.i.i, !dbg !24430
  tail call void @llvm.assume(i1 %i.ed), !dbg !24431
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ec, !dbg !24432
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !24433, !alias.scope !24257, !noalias !24254, !noundef !1322
  %.not45.i.i.i.i = icmp eq i8 %i.eb, %i.ef, !dbg !24428
  br i1 %.not45.i.i.i.i, label %bb.z, label %bb.ac, !dbg !24428

.preheader60.i.i.i.i:                             ; preds = %bb.aa
    #dbg_value(i64 %i.ei, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23904)
    #dbg_value(ptr undef, !24180, !DIExpression(), !23801)
    #dbg_value(ptr undef, !24169, !DIExpression(), !23799)
    #dbg_value(ptr undef, !24166, !DIExpression(), !23797)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23795)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23905)
  %i.eg = icmp ult i64 %i.dj, %i.ei, !dbg !24426
  br i1 %i.eg, label %.lr.ph87, label %.split.us.i30.i.i.i, !dbg !24427

.split.us.i30.i.i.i:                              ; preds = %.preheader60.i.i.i.i.preheader, %.preheader60.i.i.i.i
  %i.eh = add i64 %i.dl, %i.ci, !dbg !24434       ; 2 uses
  store i64 %i.eh, ptr %i.cj, align 8, !dbg !24434, !alias.scope !24259
  store i64 0, ptr %i.cc, align 8, !dbg !24435, !alias.scope !24259
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24436

.lr.ph87:                                         ; preds = %.preheader60.i.i.i.i.preheader, %.preheader60.i.i.i.i
  %.sroa.2.0.i.i.i.i86 = phi i64 [ %i.ei, %.preheader60.i.i.i.i ], [ %i.df, %.preheader60.i.i.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.i.i.i.i86, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23904)
    #dbg_value(i64 %.sroa.2.0.i.i.i.i86, !24249, !DIExpression(), !23866)
    #dbg_value(i64 %.sroa.2.0.i.i.i.i86, !24252, !DIExpression(), !23871)
  %i.ei = add i64 %.sroa.2.0.i.i.i.i86, -1, !dbg !24437 ; 6 uses
    #dbg_value(i64 %i.ei, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23904)
    #dbg_value(i64 %i.ei, !24202, !DIExpression(), !23908)
  %i.ej = icmp ult i64 %i.ei, %i.ci, !dbg !24438
  br i1 %i.ej, label %bb.aa, label %.split56.us.i.i.i.i, !dbg !24438

bb.aa:                                            ; preds = %.lr.ph87
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ei, !dbg !24438
  %i.el = load i8, ptr %i.ek, align 1, !dbg !24438, !alias.scope !24258, !noalias !24254, !noundef !1322
  %i.em = add i64 %i.ei, %i.dl, !dbg !24439       ; 2 uses
    #dbg_value(i64 %i.em, !24234, !DIExpression(), !23847)
    #dbg_value(i64 %i.em, !24239, !DIExpression(), !23851)
  %i.en = icmp ult i64 %i.em, %.val13.i.i, !dbg !24440
  tail call void @llvm.assume(i1 %i.en), !dbg !24441
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.em, !dbg !24442
  %i.ep = load i8, ptr %i.eo, align 1, !dbg !24443, !alias.scope !24257, !noalias !24254, !noundef !1322
  %.not44.i.i.i.i = icmp eq i8 %i.el, %i.ep, !dbg !24438
  br i1 %.not44.i.i.i.i, label %.preheader60.i.i.i.i, label %bb.ab, !dbg !24438

.split56.us.i.i.i.i:                              ; preds = %.lr.ph87
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !dbg !24438, !noalias !24268
  unreachable, !dbg !24438

bb.ab:                                            ; preds = %bb.aa
  %i.eq = add i64 %i.dl, %i.dh, !dbg !24444
  br label %bb.y, !dbg !24445

bb.ac:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.dl, %invariant.op
  %i.er = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i85, !dbg !24446
  br label %bb.y, !dbg !24447

bb.ad:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24269), !dbg !24448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24270), !dbg !24448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24271), !dbg !24448
    #dbg_value(i1 true, !24192, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23817)
    #dbg_value(i64 %i.ck, !24194, !DIExpression(), !23914)
  %.promoted.i31.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !24272 ; 3 uses
  %i.es = add i64 %.promoted.i31.i.i.i, %i.ck, !dbg !24449 ; 3 uses
  %i.et = icmp ult i64 %i.es, %.val13.i.i, !dbg !24450
  br i1 %i.et, label %.lr.ph.i34.i.i.i, label %._crit_edge.i32.i.i.i, !dbg !24450

.lr.ph.i34.i.i.i:                                 ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !24272, !noundef !1322 ; 2 uses
  %i.ew = load i64, ptr %i.g, align 8, !alias.scope !24272
  %.fr234.i.i.i = freeze i64 %i.ew, !dbg !24451   ; 10 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !24272
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr234.i.i.i, i64 range(i64 0, -9223372036854775808) %i.ci), !dbg !24451 ; 2 uses
  %i.ez = add i64 %.fr234.i.i.i, -1, !dbg !24451  ; 2 uses
  %.first_iter.i35.i.i.i = icmp ult i64 %i.ez, %i.ci
  %reass.sub91.i.i = sub i64 1, %.fr234.i.i.i     ; 2 uses
  br i1 %.first_iter.i35.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.preheader, label %.lr.ph.split.us.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %.lr.ph.i34.i.i.i
  %exitcond.not.i36.i.i.i89.not = icmp ult i64 %.fr234.i.i.i, %i.ci
  br label %.lr.ph.split.us.i.i.i.i, !dbg !24451

.lr.ph.split.us.i.i.i.us.i.preheader:             ; preds = %.lr.ph.i34.i.i.i
  %exitcond.not.i36.i.i.us.i94.not = icmp ult i64 %.fr234.i.i.i, %i.ci
  %.not58.i.us.i.i.us.i97 = icmp eq i64 %.fr234.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i, !dbg !24451

.lr.ph.split.us.i.i.i.us.i:                       ; preds = %.lr.ph.split.us.i.i.i.us.i.preheader, %bb.ag
  %i.fa = phi i64 [ %i.fz, %bb.ag ], [ %i.es, %.lr.ph.split.us.i.i.i.us.i.preheader ]
  %i.fb = phi i64 [ %.sink.i37.i.i.us.i, %bb.ag ], [ %.promoted.i31.i.i.i, %.lr.ph.split.us.i.i.i.us.i.preheader ] ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fa, !dbg !24452
  %i.fd = load i8, ptr %i.fc, align 1, !dbg !24453, !alias.scope !24270, !noalias !24254, !noundef !1322
    #dbg_value(i8 %i.fd, !24195, !DIExpression(), !23915)
    #dbg_value(i8 %i.fd, !24216, !DIExpression(), !23821)
  %i.fe = and i8 %i.fd, 63, !dbg !24454
  %i.ff = zext nneg i8 %i.fe to i64, !dbg !24455
  %i.fg = shl nuw i64 1, %i.ff, !dbg !24456
  %i.fh = and i64 %i.fg, %i.ev, !dbg !24456
  %.not.us.i.i.i.us.i = icmp eq i64 %i.fh, 0, !dbg !24456
  br i1 %.not.us.i.i.i.us.i, label %bb.af, label %.preheader59.i.i.i.us.i.preheader, !dbg !24451

.preheader59.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
    #dbg_value(i64 %.fr234.i.i.i, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23815)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23808)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  br i1 %exitcond.not.i36.i.i.us.i94.not, label %.lr.ph96, label %.preheader.i38.us.i.i.us.i.preheader, !dbg !24457

.preheader59.i.i.i.us.i:                          ; preds = %.lr.ph96
  %i.fi = add i64 %.sroa.04.0.us.i.i.i.us.i95, 1, !dbg !24458 ; 2 uses
    #dbg_value(i64 %i.fi, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %i.fi, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23815)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23808)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  %exitcond.not.i36.i.i.us.i = icmp eq i64 %i.fi, %umax.i.i.i.i, !dbg !24459
  br i1 %exitcond.not.i36.i.i.us.i, label %.preheader.i38.us.i.i.us.i.preheader, label %.lr.ph96, !dbg !24457

.preheader.i38.us.i.i.us.i.preheader:             ; preds = %.preheader59.i.i.i.us.i, %.preheader59.i.i.i.us.i.preheader
    #dbg_value(i64 %.fr234.i.i.i, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(ptr undef, !24180, !DIExpression(), !23800)
    #dbg_value(ptr undef, !24169, !DIExpression(), !23798)
    #dbg_value(ptr undef, !24166, !DIExpression(), !23796)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23789)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23919)
  br i1 %.not58.i.us.i.i.us.i97, label %.split.us.i40.i.i.i, label %.lr.ph99, !dbg !24460

.lr.ph96:                                         ; preds = %.preheader59.i.i.i.us.i.preheader, %.preheader59.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i95 = phi i64 [ %i.fi, %.preheader59.i.i.i.us.i ], [ %.fr234.i.i.i, %.preheader59.i.i.i.us.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24206, !DIExpression(), !23920)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24243, !DIExpression(), !23854)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24246, !DIExpression(), !23859)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24198, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i95, !24199, !DIExpression(), !23921)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i.i.us.i95, !dbg !24461
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !24461, !alias.scope !24271, !noalias !24254, !noundef !1322
  %i.fl = add i64 %.sroa.04.0.us.i.i.i.us.i95, %i.fb, !dbg !24462 ; 2 uses
    #dbg_value(i64 %i.fl, !24234, !DIExpression(), !23836)
    #dbg_value(i64 %i.fl, !24239, !DIExpression(), !23841)
  %i.fm = icmp ult i64 %i.fl, %.val13.i.i, !dbg !24463
  tail call void @llvm.assume(i1 %i.fm), !dbg !24464
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fl, !dbg !24465
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !24466, !alias.scope !24270, !noalias !24254, !noundef !1322
  %.not45.us.i.i.i.us.i = icmp eq i8 %i.fk, %i.fo, !dbg !24461
  br i1 %.not45.us.i.i.i.us.i, label %.preheader59.i.i.i.us.i, label %bb.ae, !dbg !24461

bb.ae:                                            ; preds = %.lr.ph96
  %.reass301.i.reass.i.us.i = add i64 %i.fb, %reass.sub91.i.i
  %i.fp = add i64 %.reass301.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i95, !dbg !24467
  br label %bb.ag, !dbg !24468

.preheader.i38.us.i.i.us.i:                       ; preds = %.lr.ph99
    #dbg_value(i64 %i.fq, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(ptr undef, !24180, !DIExpression(), !23800)
    #dbg_value(ptr undef, !24169, !DIExpression(), !23798)
    #dbg_value(ptr undef, !24166, !DIExpression(), !23796)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23789)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23919)
  %.not58.i.us.i.i.us.i = icmp eq i64 %i.fq, 0, !dbg !24469
  br i1 %.not58.i.us.i.i.us.i, label %.split.us.i40.i.i.i, label %.lr.ph99, !dbg !24460

.lr.ph99:                                         ; preds = %.preheader.i38.us.i.i.us.i.preheader, %.preheader.i38.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i98 = phi i64 [ %i.fq, %.preheader.i38.us.i.i.us.i ], [ %.fr234.i.i.i, %.preheader.i38.us.i.i.us.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i98, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i98, !24249, !DIExpression(), !23864)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i98, !24252, !DIExpression(), !23869)
  %i.fq = add i64 %.sroa.2.0.us.i.us.i.i.us.i98, -1, !dbg !24470 ; 4 uses
    #dbg_value(i64 %i.fq, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(i64 %i.fq, !24202, !DIExpression(), !23922)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fq, !dbg !24471
  %i.fs = load i8, ptr %i.fr, align 1, !dbg !24471, !alias.scope !24271, !noalias !24254, !noundef !1322
  %i.ft = add i64 %i.fq, %i.fb, !dbg !24472       ; 2 uses
    #dbg_value(i64 %i.ft, !24234, !DIExpression(), !23845)
    #dbg_value(i64 %i.ft, !24239, !DIExpression(), !23849)
  %i.fu = icmp ult i64 %i.ft, %.val13.i.i, !dbg !24473
  tail call void @llvm.assume(i1 %i.fu), !dbg !24474
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ft, !dbg !24475
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !24476, !alias.scope !24270, !noalias !24254, !noundef !1322
  %.not44.us.i.us.i.i.us.i = icmp eq i8 %i.fs, %i.fw, !dbg !24471
  br i1 %.not44.us.i.us.i.i.us.i, label %.preheader.i38.us.i.i.us.i, label %.split.us.i.i.us.i, !dbg !24471

.split.us.i.i.us.i:                               ; preds = %.lr.ph99
  %i.fx = add i64 %i.fb, %i.ey, !dbg !24477
  br label %bb.ag, !dbg !24478

bb.af:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.fy = add i64 %i.fb, %i.ci, !dbg !24479
  br label %bb.ag, !dbg !24480

bb.ag:                                            ; preds = %bb.af, %.split.us.i.i.us.i, %bb.ae
  %.sink.i37.i.i.us.i = phi i64 [ %i.fy, %bb.af ], [ %i.fp, %bb.ae ], [ %i.fx, %.split.us.i.i.us.i ] ; 3 uses
  store i64 %.sink.i37.i.i.us.i, ptr %i.cj, align 8, !dbg !24481, !alias.scope !24272
  %i.fz = add i64 %.sink.i37.i.i.us.i, %i.ck, !dbg !24449 ; 2 uses
    #dbg_value(i64 %i.fz, !24221, !DIExpression(), !23826)
    #dbg_value(i64 %i.fz, !24229, !DIExpression(), !23831)
  %i.ga = icmp ult i64 %i.fz, %.val13.i.i, !dbg !24450
  br i1 %i.ga, label %.lr.ph.split.us.i.i.i.us.i, label %._crit_edge.i32.i.i.i, !dbg !24450

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.aj
  %i.gb = phi i64 [ %i.gs, %bb.aj ], [ %i.es, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.gc = phi i64 [ %.sink.i37.i.i.i, %bb.aj ], [ %.promoted.i31.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gb, !dbg !24452
  %i.ge = load i8, ptr %i.gd, align 1, !dbg !24453, !alias.scope !24270, !noalias !24254, !noundef !1322
    #dbg_value(i8 %i.ge, !24195, !DIExpression(), !23915)
    #dbg_value(i8 %i.ge, !24216, !DIExpression(), !23821)
  %i.gf = and i8 %i.ge, 63, !dbg !24454
  %i.gg = zext nneg i8 %i.gf to i64, !dbg !24455
  %i.gh = shl nuw i64 1, %i.gg, !dbg !24456
  %i.gi = and i64 %i.gh, %i.ev, !dbg !24456
  %.not.us.i.i.i.i = icmp eq i64 %i.gi, 0, !dbg !24456
  br i1 %.not.us.i.i.i.i, label %bb.ai, label %.preheader59.i.i.i.i.preheader, !dbg !24451

.preheader59.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
    #dbg_value(i64 %.fr234.i.i.i, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23815)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23808)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  br i1 %exitcond.not.i36.i.i.i89.not, label %.lr.ph91, label %.preheader.i38.i.i.i, !dbg !24457

.preheader59.i.i.i.i:                             ; preds = %.lr.ph91
  %i.gj = add i64 %.sroa.04.0.us.i.i.i.i90, 1, !dbg !24458 ; 2 uses
    #dbg_value(i64 %i.gj, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %i.gj, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(ptr undef, !24208, !DIExpression(), !23815)
    #dbg_value(ptr undef, !24205, !DIExpression(), !23813)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23808)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23917)
  %exitcond.not.i36.i.i.i = icmp eq i64 %i.gj, %umax.i.i.i.i, !dbg !24459
  br i1 %exitcond.not.i36.i.i.i, label %.preheader.i38.i.i.i, label %.lr.ph91, !dbg !24457

.lr.ph91:                                         ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
  %.sroa.04.0.us.i.i.i.i90 = phi i64 [ %i.gj, %.preheader59.i.i.i.i ], [ %.fr234.i.i.i, %.preheader59.i.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24206, !DIExpression(), !23920)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24243, !DIExpression(), !23854)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24246, !DIExpression(), !23859)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24198, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23916)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i90, !24199, !DIExpression(), !23921)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i.i.i90, !dbg !24461
  %i.gl = load i8, ptr %i.gk, align 1, !dbg !24461, !alias.scope !24271, !noalias !24254, !noundef !1322
  %i.gm = add i64 %.sroa.04.0.us.i.i.i.i90, %i.gc, !dbg !24462 ; 2 uses
    #dbg_value(i64 %i.gm, !24234, !DIExpression(), !23836)
    #dbg_value(i64 %i.gm, !24239, !DIExpression(), !23841)
  %i.gn = icmp ult i64 %i.gm, %.val13.i.i, !dbg !24463
  tail call void @llvm.assume(i1 %i.gn), !dbg !24464
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gm, !dbg !24465
  %i.gp = load i8, ptr %i.go, align 1, !dbg !24466, !alias.scope !24270, !noalias !24254, !noundef !1322
  %.not45.us.i.i.i.i = icmp eq i8 %i.gl, %i.gp, !dbg !24461
  br i1 %.not45.us.i.i.i.i, label %.preheader59.i.i.i.i, label %bb.ah, !dbg !24461

.preheader.i38.i.i.i:                             ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
    #dbg_value(i64 %i.ew, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(ptr undef, !24180, !DIExpression(), !23800)
    #dbg_value(ptr undef, !24169, !DIExpression(), !23798)
    #dbg_value(ptr undef, !24166, !DIExpression(), !23796)
    #dbg_value(ptr undef, !24163, !DIExpression(), !23789)
    #dbg_value(ptr undef, !24164, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23919)
  %.not58.i.i.i.i = icmp eq i64 %.fr234.i.i.i, 0, !dbg !24469
  br i1 %.not58.i.i.i.i, label %.split.us.i40.i.i.i, label %.split56.us.i39.i.i.i, !dbg !24460

.split56.us.i39.i.i.i:                            ; preds = %.preheader.i38.i.i.i
    #dbg_value(i64 %i.ew, !24249, !DIExpression(), !23864)
    #dbg_value(i64 %i.ew, !24252, !DIExpression(), !23869)
    #dbg_value(i64 %i.ez, !24201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23918)
    #dbg_value(i64 %i.ez, !24202, !DIExpression(), !23922)
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ez, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !dbg !24471, !noalias !24273
  unreachable, !dbg !24471

bb.ah:                                            ; preds = %.lr.ph91
  %.reass301.i.reass.i.i = add i64 %i.gc, %reass.sub91.i.i
  %i.gq = add i64 %.reass301.i.reass.i.i, %.sroa.04.0.us.i.i.i.i90, !dbg !24467
  br label %bb.aj, !dbg !24468

bb.ai:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gr = add i64 %i.gc, %i.ci, !dbg !24479
  br label %bb.aj, !dbg !24480

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sink.i37.i.i.i = phi i64 [ %i.gr, %bb.ai ], [ %i.gq, %bb.ah ] ; 3 uses
  store i64 %.sink.i37.i.i.i, ptr %i.cj, align 8, !dbg !24481, !alias.scope !24272
  %i.gs = add i64 %.sink.i37.i.i.i, %i.ck, !dbg !24449 ; 2 uses
    #dbg_value(i64 %i.gs, !24221, !DIExpression(), !23826)
    #dbg_value(i64 %i.gs, !24229, !DIExpression(), !23831)
  %i.gt = icmp ult i64 %i.gs, %.val13.i.i, !dbg !24450
  br i1 %i.gt, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i32.i.i.i, !dbg !24450

._crit_edge.i32.i.i.i:                            ; preds = %bb.aj, %bb.ag, %bb.ad
  store i64 %.val13.i.i, ptr %i.cj, align 8, !dbg !24482, !alias.scope !24272
  br label %bb.ak, !dbg !24483

.split.us.i40.i.i.i:                              ; preds = %.preheader.i38.us.i.i.us.i.preheader, %.preheader.i38.us.i.i.us.i, %.preheader.i38.i.i.i
  %i.gu = phi i64 [ %i.gc, %.preheader.i38.i.i.i ], [ %i.fb, %.preheader.i38.us.i.i.us.i ], [ %i.fb, %.preheader.i38.us.i.i.us.i.preheader ] ; 2 uses
  %i.gv = add i64 %i.gu, %i.ci, !dbg !24484       ; 2 uses
  store i64 %i.gv, ptr %i.cj, align 8, !dbg !24484, !alias.scope !24272
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !24485

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %.split.us.i40.i.i.i, %.split.us.i30.i.i.i, %.loopexit62.i.i.i, %.loopexit61.split.us.i.i.i, %.split185.us.i.i.i, %.split185.us.i.thread.i.i
  %.sroa.9.0.i.i = phi i64 [ %.val13.i.i, %.split185.us.i.i.i ], [ %i.eh, %.split.us.i30.i.i.i ], [ %.lcssa45.i.i, %.loopexit61.split.us.i.i.i ], [ %i.da, %.loopexit62.i.i.i ], [ %i.gv, %.split.us.i40.i.i.i ], [ %.val13.i.i, %.split185.us.i.thread.i.i ], !dbg !24486
  %.sroa.4.015.i.i = phi i64 [ %.val13.i.i, %.split185.us.i.i.i ], [ %i.dl, %.split.us.i30.i.i.i ], [ %.lcssa45.i.i, %.loopexit61.split.us.i.i.i ], [ %i.cz, %.loopexit62.i.i.i ], [ %i.gu, %.split.us.i40.i.i.i ], [ %.val13.i.i, %.split185.us.i.thread.i.i ], !dbg !24486
    #dbg_value(ptr %.val.i.i, !23972, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23583)
    #dbg_value(ptr %.val.i.i, !23979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23586)
    #dbg_value(ptr %.val.i.i, !23987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23591)
    #dbg_value(i64 %.sroa.4.015.i.i, !23973, !DIExpression(), !23924)
    #dbg_value(i64 %.sroa.4.015.i.i, !23983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23586)
    #dbg_value(i64 %.sroa.4.015.i.i, !23992, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23591)
    #dbg_value(i64 %.sroa.9.0.i.i, !23974, !DIExpression(), !23924)
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !24487 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !24487, !alias.scope !23977, !noundef !1322 ; 2 uses
    #dbg_value(i64 %i.gx, !23983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23586)
    #dbg_value(i64 %i.gx, !23992, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23591)
    #dbg_value(ptr %.val.i.i, !23993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23925)
    #dbg_value(i64 poison, !23993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23925)
  %i.gy = sub nuw i64 %.sroa.4.015.i.i, %i.gx, !dbg !24488
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.gx), !23975, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !23926)
    #dbg_value(i64 %i.gy, !23975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23926)
  store i64 %.sroa.9.0.i.i, ptr %i.gw, align 8, !dbg !24489, !alias.scope !23977
  br label %bb.an, !dbg !24490

bb.ak:                                            ; preds = %._crit_edge.i32.i.i.i, %._crit_edge.i.i.i.i, %.loopexit63.i.i.i, %bb.q, %bb.p, %.preheader.i.i.i
    #dbg_value(ptr %1, !24274, !DIExpression(), !23930)
  store i8 1, ptr %i.a, align 1, !dbg !24491, !alias.scope !24278
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !24492
  %i.ha = load i8, ptr %i.gz, align 8, !dbg !24492, !range !3505, !alias.scope !24278, !noundef !1322
  %i.hb = trunc nuw i8 %i.ha to i1, !dbg !24492
  br i1 %i.hb, label %._crit_edge.i.i.i, label %bb.al, !dbg !24492

._crit_edge.i.i.i:                                ; preds = %bb.ak
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !24493, !alias.scope !24278
  %.phi.trans.insert13.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre14.i.i.i = load i64, ptr %.phi.trans.insert13.i.i.i, align 8, !dbg !24494, !alias.scope !24278
  br label %bb.am, !dbg !24492

bb.al:                                            ; preds = %bb.ak
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !24495
  %i.hd = load i64, ptr %i.hc, align 8, !dbg !24495, !alias.scope !24278, !noundef !1322 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !24496
  %i.hf = load i64, ptr %i.he, align 8, !dbg !24496, !alias.scope !24278, !noundef !1322 ; 2 uses
  %.not.i14.i.i = icmp eq i64 %i.hd, %i.hf, !dbg !24495
  br i1 %.not.i14.i.i, label %bb.ao, label %bb.am, !dbg !24495

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i.i
  %i.hg = phi i64 [ %.pre14.i.i.i, %._crit_edge.i.i.i ], [ %i.hd, %bb.al ], !dbg !24494
  %i.hh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hf, %bb.al ], !dbg !24493 ; 2 uses
    #dbg_value(ptr %.val.i.i, !24279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23935)
    #dbg_value(ptr %.val.i.i, !24282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23940)
    #dbg_value(i64 poison, !24279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23935)
    #dbg_value(i64 poison, !24282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23940)
    #dbg_value(i64 %i.hh, !24280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23935)
    #dbg_value(i64 %i.hh, !24283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23940)
    #dbg_value(i64 %i.hg, !24280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23935)
    #dbg_value(i64 %i.hg, !24283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23940)
    #dbg_value(ptr %.val.i.i, !24284, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23941)
    #dbg_value(i64 poison, !24284, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23941)
  %i.hi = sub nuw i64 %i.hg, %i.hh, !dbg !24497
  br label %bb.an, !dbg !24498

bb.an:                                            ; preds = %bb.am, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.hi, %bb.am ], [ %i.gy, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], !dbg !24499
  %.pn = phi i64 [ %i.hh, %bb.am ], [ %i.gx, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn, !dbg !24500
    #dbg_value(ptr %.sroa.0.1.i.i, !24287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24298)
    #dbg_value(ptr %1, !24294, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24298)
    #dbg_value(ptr %1, !24299, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24309)
    #dbg_value(i64 %.sroa.4.1.i.i, !24287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24298)
    #dbg_value(ptr %.sroa.0.1.i.i, !24295, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24310)
    #dbg_value(i64 %.sroa.4.1.i.i, !24295, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24310)
    #dbg_value(ptr %.sroa.0.1.i.i, !24302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24309)
    #dbg_value(i64 %.sroa.4.1.i.i, !24302, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24309)
    #dbg_value(ptr %.sroa.0.1.i.i, !24311, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23948)
    #dbg_value(i64 %.sroa.4.1.i.i, !24311, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23948)
    #dbg_value(ptr poison, !24314, !DIExpression(), !23948)
    #dbg_value(ptr %.sroa.0.1.i.i, !24319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23951)
    #dbg_value(i64 %.sroa.4.1.i.i, !24319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23951)
  tail call void @_RNvXsc_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i, i64 noundef %.sroa.4.1.i.i), !dbg !24501
  br label %bb.ap, !dbg !24502

bb.ao:                                            ; preds = %bb.a, %bb.al
    #dbg_value(ptr null, !24287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24298)
    #dbg_value(i64 poison, !24287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24298)
    #dbg_value(ptr %1, !24294, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24298)
    #dbg_value(ptr %1, !24299, !DIExpression(DW_OP_plus_uconst, 128, DW_OP_stack_value), !24309)
  store i8 -1, ptr %0, align 8, !dbg !24503
  br label %bb.ap, !dbg !24504

bb.ap:                                            ; preds = %bb.ao, %bb.an
  ret void, !dbg !24505
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtB1S_5ValueENCNvNtB1U_7filters5pairs0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24506 {
bb.a:
  %.sroa.7.i.i = alloca [6 x i8], align 2         ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !24708, !DIExpression(), !24711)
    #dbg_value(ptr %1, !4584, !DIExpression(), !24508)
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBO_5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !dbg !24862 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0, !dbg !24863 ; 11 uses
    #dbg_value(ptr %i.e, !24712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24723)
    #dbg_value(ptr poison, !24712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24723)
    #dbg_value(ptr %1, !24719, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24723)
    #dbg_value(ptr %1, !24724, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24731)
  %.not = icmp eq ptr %i.e, null, !dbg !24864
  br i1 %.not, label %bb.ap, label %bb.b, !dbg !24865

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !24719, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24723)
    #dbg_value(ptr %1, !24724, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !24731)
  %i.f = extractvalue { ptr, ptr } %i.d, 1, !dbg !24863 ; 18 uses
    #dbg_value(ptr %i.f, !24712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24723)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
    #dbg_value(ptr %i.e, !24720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24732)
    #dbg_value(ptr %i.f, !24720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24732)
    #dbg_value(ptr %i.e, !24727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24731)
    #dbg_value(ptr %i.f, !24727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24733), !dbg !24866
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24734), !dbg !24866
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !24867
    #dbg_value(ptr poison, !24738, !DIExpression(), !24518)
    #dbg_value(ptr %i.e, !24739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24518)
    #dbg_value(ptr %i.f, !24739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24518)
    #dbg_declare(ptr poison, !24741, !DIExpression(), !24528)
    #dbg_declare(ptr poison, !24767, !DIExpression(), !24531)
    #dbg_value(ptr %i.e, !24736, !DIExpression(), !24532)
    #dbg_value(ptr %i.f, !24737, !DIExpression(), !24532)
    #dbg_value(ptr %i.f, !24775, !DIExpression(), !24535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24867, !noalias !24777
    #dbg_value(i64 8, !24778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24543)
    #dbg_value(i64 8, !24788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24551)
    #dbg_value(i64 8, !24805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24554)
    #dbg_value(i64 48, !24778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24543)
    #dbg_value(i64 48, !24788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24551)
    #dbg_value(i64 48, !24805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24554)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !24803, !DIExpression(), !24551)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !24809, !DIExpression(), !24554)
    #dbg_value(i8 0, !24810, !DIExpression(), !24554)
    #dbg_value(i64 8, !24812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24566)
    #dbg_value(i64 8, !24832, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24569)
    #dbg_value(i64 48, !24812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24566)
    #dbg_value(i64 48, !24832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24569)
    #dbg_value(i1 false, !24816, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24566)
    #dbg_value(i64 48, !24817, !DIExpression(), !24570)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !24868, !noalias !24777
  %i.g = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #22, !dbg !24869, !noalias !24777 ; 9 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !24870
  br i1 %i.h, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !dbg !24871, !prof !3490

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26, !dbg !24872, !noalias !24777
  unreachable, !dbg !24872

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24873, !noalias !24777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24874, !noalias !24777
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24834), !dbg !24875
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24835), !dbg !24875
    #dbg_value(ptr %i.e, !3585, !DIExpression(), !24575)
    #dbg_value(i64 1, !3603, !DIExpression(), !24578)
    #dbg_value(i8 0, !3606, !DIExpression(), !24578)
    #dbg_value(i64 1, !3614, !DIExpression(), !24580)
    #dbg_value(i8 0, !3616, !DIExpression(), !24580)
  %i.i = load i8, ptr %i.e, align 16, !dbg !24876, !range !3385, !alias.scope !24836, !noundef !1322 ; 2 uses
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
  ], !dbg !24876

default.unreachable:                              ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  unreachable

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
    #dbg_value(ptr %i.e, !3590, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !24581)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !24877
  %i.k = load i8, ptr %i.j, align 1, !dbg !24877, !range !3505, !alias.scope !24836, !noundef !1322
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !24878
  store i8 %i.k, ptr %i.l, align 1, !dbg !24878, !alias.scope !24834, !noalias !24777
  br label %bb.n, !dbg !24879

bb.e:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
    #dbg_value(ptr %i.e, !3592, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24582)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !24880
  %i.n = load i64, ptr %i.m, align 8, !dbg !24880, !alias.scope !24836, !noundef !1322
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24881
  store i64 %i.n, ptr %i.o, align 8, !dbg !24881, !alias.scope !24834, !noalias !24777
  br label %bb.n, !dbg !24879

bb.f:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
    #dbg_value(ptr %i.e, !3594, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !24583)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !24882
end_hunk_0
