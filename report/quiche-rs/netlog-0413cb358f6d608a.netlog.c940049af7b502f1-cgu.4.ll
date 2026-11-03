Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.4?download=true
inline.NumInlined: 135
inline.NumDeleted: 85
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCshhfsHpF03Qr_6netlog:bb.a
  br label %.loopexit62.split.us.i, !dbg !6847

.split.us181.i:                                   ; preds = %bb.m, %.split.i.i.us.i, %bb.d, %.split.i.i.us.i.peel
  %.lcssa43 = phi i64 [ %.promoted177.i, %.split.i.i.us.i.peel ], [ %.promoted177.i, %bb.d ], [ %i.bh, %.split.i.i.us.i ], [ %i.bh, %bb.m ]
  %.lcssa40 = phi i8 [ %.promoted226.i, %.split.i.i.us.i.peel ], [ %.promoted226.i, %bb.d ], [ 1, %.split.i.i.us.i ], [ 1, %bb.m ]
  %i.bz = xor i8 %.lcssa40, 1
  store i8 %i.bz, ptr %i.k, align 8, !dbg !6857, !alias.scope !6619
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val13, i64 noundef %.lcssa43, i64 noundef %.val13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #21, !dbg !6858, !noalias !6618
  unreachable, !dbg !6858

.split186.us.i:                                   ; preds = %bb.e
  %i.ca = xor i8 %.promoted226.i, 1
  store i8 %i.ca, ptr %i.k, align 8, !dbg !6857, !alias.scope !6619
    #dbg_value(i32 0, !6578, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6119)
    #dbg_value(i32 undef, !6578, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6119)
  br i1 %i.l, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.p, !dbg !6851

.loopexit62.split.us.i:                           ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i, %bb.o, %bb.h
  %.lcssa45 = phi i64 [ %.promoted177.i, %bb.h ], [ %i.bh, %bb.o ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit26.i.i.us.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit28.i.i.us.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshhfsHpF03Qr_6netlog.exit30.i.i.us.i ] ; 2 uses
  store i8 0, ptr %i.k, align 8, !dbg !6857, !alias.scope !6619
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6859

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.p:                                             ; preds = %.split186.us.i
  store i8 1, ptr %i.h, align 2, !dbg !6860, !alias.scope !6619
  br label %bb.ah, !dbg !6861

bb.q:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !6392, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6141)
    #dbg_value(ptr poison, !6393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6142)
    #dbg_value(ptr poison, !6630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6145)
    #dbg_value(ptr poison, !6637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6149)
    #dbg_value(ptr poison, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6152)
    #dbg_value(i64 %.val13, !6393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6142)
    #dbg_value(i64 %.val13, !6630, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6145)
    #dbg_value(i64 %.val13, !6637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6149)
    #dbg_value(i64 %.val13, !6644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6152)
  %i.cb = load i64, ptr %i.g, align 8, !dbg !6862, !alias.scope !6371, !noundef !520 ; 4 uses
  %.not.i = icmp ult i64 %i.cb, %.val13, !dbg !6862
  br i1 %.not.i, label %bb.s, label %bb.ah, !dbg !6862

bb.r:                                             ; preds = %bb.b
    #dbg_value(ptr %i.g, !6397, !DIExpression(), !6153)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !6863 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !6863, !alias.scope !6371, !noundef !520 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, -1, !dbg !6863
    #dbg_value(i1 %i.ce, !6398, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6154)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !6864
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !6864, !alias.scope !6371, !nonnull !520, !noundef !520 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !6864
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !6864, !alias.scope !6371, !noundef !520 ; 14 uses
    #dbg_value(ptr poison, !6650, !DIExpression(), !6179)
    #dbg_value(ptr poison, !6650, !DIExpression(), !6185)
    #dbg_value(ptr poison, !6653, !DIExpression(), !6186)
    #dbg_value(ptr poison, !6653, !DIExpression(), !6187)
    #dbg_value(ptr poison, !6656, !DIExpression(), !6188)
    #dbg_value(ptr poison, !6656, !DIExpression(), !6189)
    #dbg_value(ptr poison, !6668, !DIExpression(), !6190)
    #dbg_value(ptr poison, !6668, !DIExpression(), !6191)
    #dbg_value(ptr poison, !6650, !DIExpression(), !6198)
    #dbg_value(ptr poison, !6650, !DIExpression(), !6202)
    #dbg_value(ptr poison, !6693, !DIExpression(), !6203)
    #dbg_value(ptr poison, !6693, !DIExpression(), !6204)
    #dbg_value(ptr poison, !6696, !DIExpression(), !6205)
    #dbg_value(ptr poison, !6696, !DIExpression(), !6206)
    #dbg_value(ptr %i.g, !6677, !DIExpression(), !6207)
    #dbg_value(ptr %i.g, !6677, !DIExpression(), !6208)
    #dbg_value(ptr %i.g, !6699, !DIExpression(), !6211)
    #dbg_value(ptr %i.g, !6699, !DIExpression(), !6213)
    #dbg_value(ptr %.val, !6678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6207)
    #dbg_value(ptr %.val, !6678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6208)
    #dbg_value(ptr %.val, !6706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6216)
    #dbg_value(ptr %.val, !6706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6218)
    #dbg_value(ptr %.val, !6712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6221)
    #dbg_value(ptr %.val, !6712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6223)
    #dbg_value(ptr %.val, !6717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6226)
    #dbg_value(ptr %.val, !6717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6228)
    #dbg_value(ptr %.val, !6722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6231)
    #dbg_value(ptr %.val, !6722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6233)
    #dbg_value(ptr %.val, !6717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6235)
    #dbg_value(ptr %.val, !6717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6237)
    #dbg_value(ptr %.val, !6722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6239)
    #dbg_value(ptr %.val, !6722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6241)
    #dbg_value(i64 %.val13, !6678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6207)
    #dbg_value(i64 %.val13, !6678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(i64 %.val13, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6216)
    #dbg_value(i64 %.val13, !6706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6218)
    #dbg_value(i64 %.val13, !6712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6221)
    #dbg_value(i64 %.val13, !6712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6223)
    #dbg_value(i64 %.val13, !6717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6226)
    #dbg_value(i64 %.val13, !6717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6228)
    #dbg_value(i64 %.val13, !6722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6231)
    #dbg_value(i64 %.val13, !6722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6233)
    #dbg_value(i64 %.val13, !6717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6235)
    #dbg_value(i64 %.val13, !6717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6237)
    #dbg_value(i64 %.val13, !6722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6239)
    #dbg_value(i64 %.val13, !6722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6241)
    #dbg_value(ptr %i.cg, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6207)
    #dbg_value(ptr %i.cg, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6208)
    #dbg_value(i64 %i.ci, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6207)
    #dbg_value(i64 %i.ci, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6208)
    #dbg_value(i64 1, !6728, !DIExpression(), !6244)
    #dbg_value(i64 1, !6728, !DIExpression(), !6246)
    #dbg_value(i64 1, !6731, !DIExpression(), !6249)
    #dbg_value(i64 1, !6731, !DIExpression(), !6251)
    #dbg_value(i64 1, !6734, !DIExpression(), !6254)
    #dbg_value(i64 1, !6734, !DIExpression(), !6256)
    #dbg_value(i64 1, !6737, !DIExpression(), !6259)
    #dbg_value(i64 1, !6737, !DIExpression(), !6261)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !6865 ; 8 uses
    #dbg_value(i64 poison, !6681, !DIExpression(), !6263)
    #dbg_value(i64 poison, !6681, !DIExpression(), !6264)
  %i.ck = add nsw i64 %i.ci, -1, !dbg !6866       ; 4 uses
  br i1 %i.ce, label %bb.ad, label %bb.v, !dbg !6867

bb.s:                                             ; preds = %bb.q
    #dbg_value(ptr %.val, !6393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6142)
    #dbg_value(ptr %.val, !6630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6145)
    #dbg_value(ptr %.val, !6637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6149)
    #dbg_value(ptr %.val, !6644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6152)
    #dbg_value(i64 %i.cb, !6634, !DIExpression(), !6145)
    #dbg_value(i64 %i.cb, !6641, !DIExpression(), !6149)
    #dbg_value(i64 %i.cb, !6647, !DIExpression(), !6152)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6868
  %i.cm = load i8, ptr %i.cl, align 8, !dbg !6868, !alias.scope !6371, !noundef !520 ; 2 uses
  %i.cn = sub nuw i64 %.val13, %i.cb, !dbg !6869  ; 4 uses
    #dbg_value(i64 %i.cn, !6642, !DIExpression(), !6265)
    #dbg_value(i64 %i.cn, !6648, !DIExpression(), !6152)
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cb, !dbg !6870 ; 2 uses
    #dbg_value(i8 %i.cm, !6741, !DIExpression(), !6270)
    #dbg_value(i8 %i.cm, !6749, !DIExpression(), !6274)
    #dbg_value(ptr %i.co, !6745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6270)
    #dbg_value(ptr %i.co, !6750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6274)
    #dbg_value(i64 %i.cn, !6745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6270)
    #dbg_value(i64 %i.cn, !6750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6274)
  %i.cp = icmp samesign ult i64 %i.cn, 16, !dbg !6871
  br i1 %i.cp, label %.lr.ph.i.i, label %bb.t, !dbg !6871

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef range(i64 0, -9223372036854775808) %i.cn), !dbg !6872, !noalias !6753 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0, !dbg !6872
  %i.cs = extractvalue { i64, i64 } %i.cq, 1, !dbg !6872
    #dbg_value(i64 %i.cr, !6746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 %i.cs, !6746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6275)
  %i.ct = trunc nuw i64 %i.cr to i1, !dbg !6873
  br i1 %i.ct, label %.loopexit63.i, label %.loopexit64.i, !dbg !6873

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.u
  %.sroa.04.015.i.i = phi i64 [ %i.cx, %bb.u ], [ 0, %bb.s ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i, !6751, !DIExpression(), !6276)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %.sroa.04.015.i.i, !dbg !6874
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !6874, !alias.scope !6754, !noalias !6753, !noundef !520
  %i.cw = icmp eq i8 %i.cv, %i.cm, !dbg !6874
  br i1 %i.cw, label %.loopexit63.i, label %bb.u, !dbg !6874

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cx = add nuw nsw i64 %.sroa.04.015.i.i, 1, !dbg !6875 ; 2 uses
    #dbg_value(i64 %i.cx, !6751, !DIExpression(), !6276)
  %exitcond.not.i27.i = icmp eq i64 %i.cx, %i.cn, !dbg !6876
  br i1 %exitcond.not.i27.i, label %.loopexit64.i, label %.lr.ph.i.i, !dbg !6876

.loopexit63.i:                                    ; preds = %.lr.ph.i.i, %bb.t
  %.sroa.5.0.i.i = phi i64 [ %i.cs, %bb.t ], [ %.sroa.04.015.i.i, %.lr.ph.i.i ], !dbg !6877 ; 2 uses
    #dbg_value(i64 1, !6746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 %.sroa.5.0.i.i, !6746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6275)
    #dbg_value(i64 %.sroa.5.0.i.i, !6747, !DIExpression(), !6279)
  %i.cy = icmp ult i64 %.sroa.5.0.i.i, %i.cn, !dbg !6878
    #dbg_value(i1 true, !6755, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6282)
  tail call void @llvm.assume(i1 %i.cy), !dbg !6879
    #dbg_value(i64 1, !6746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 %.sroa.5.0.i.i, !6746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6275)
    #dbg_value(i64 %.sroa.5.0.i.i, !6394, !DIExpression(), !6283)
  %i.cz = add i64 %.sroa.5.0.i.i, %i.cb, !dbg !6880 ; 2 uses
    #dbg_value(i64 %i.cz, !6395, !DIExpression(), !6284)
  %i.da = add i64 %i.cz, 1, !dbg !6881            ; 2 uses
  store i64 %i.da, ptr %i.g, align 8, !dbg !6881, !alias.scope !6371
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6882

.loopexit64.i:                                    ; preds = %bb.u, %bb.t
    #dbg_value(i64 0, !6746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6275)
    #dbg_value(i64 poison, !6746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6275)
  store i64 %.val13, ptr %i.g, align 8, !dbg !6883, !alias.scope !6371
  br label %bb.ah, !dbg !6884

bb.v:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6757), !dbg !6885
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6758), !dbg !6885
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6759), !dbg !6885
    #dbg_value(i1 false, !6680, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6208)
    #dbg_value(i64 %i.ck, !6682, !DIExpression(), !6289)
  %.promoted.i.i = load i64, ptr %i.cj, align 8, !alias.scope !6760 ; 2 uses
  %i.db = add i64 %.promoted.i.i, %i.ck, !dbg !6886 ; 2 uses
  %i.dc = icmp ult i64 %i.db, %.val13, !dbg !6887
  br i1 %i.dc, label %.lr.ph.i28.i, label %._crit_edge.i.i, !dbg !6887

.lr.ph.i28.i:                                     ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !6760, !noundef !520
  %i.df = load i64, ptr %i.g, align 8, !alias.scope !6760 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !6760 ; 2 uses
  %i.di = sub i64 %i.ci, %i.dh
  %invariant.op = sub i64 1, %i.df, !dbg !6888
  br label %.lr.ph.split.i.i, !dbg !6888

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.v
  store i64 %.val13, ptr %i.cj, align 8, !dbg !6889, !alias.scope !6760
  br label %bb.ah, !dbg !6890

.lr.ph.split.i.i:                                 ; preds = %bb.y, %.lr.ph.i28.i
  %i.dj = phi i64 [ %.sink94.i.i, %bb.y ], [ %i.cd, %.lr.ph.i28.i ] ; 3 uses
  %i.dk = phi i64 [ %i.du, %bb.y ], [ %i.db, %.lr.ph.i28.i ]
  %i.dl = phi i64 [ %.sink95.i.i, %bb.y ], [ %.promoted.i.i, %.lr.ph.i28.i ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dk, !dbg !6891
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !6892, !alias.scope !6758, !noalias !6753, !noundef !520
    #dbg_value(i8 %i.dn, !6683, !DIExpression(), !6290)
    #dbg_value(i8 %i.dn, !6704, !DIExpression(), !6213)
  %i.do = and i8 %i.dn, 63, !dbg !6893
  %i.dp = zext nneg i8 %i.do to i64, !dbg !6894
  %i.dq = shl nuw i64 1, %i.dp, !dbg !6895
  %i.dr = and i64 %i.dq, %i.de, !dbg !6895
  %.not.i29.i = icmp eq i64 %i.dr, 0, !dbg !6895
  br i1 %.not.i29.i, label %bb.w, label %bb.x, !dbg !6888

bb.w:                                             ; preds = %.lr.ph.split.i.i
  %i.ds = add i64 %i.dl, %i.ci, !dbg !6896
  br label %bb.y, !dbg !6897

bb.x:                                             ; preds = %.lr.ph.split.i.i
    #dbg_value(i64 %i.df, !6762, !DIExpression(), !6293)
    #dbg_value(i64 %i.dj, !6763, !DIExpression(), !6293)
    #dbg_value(ptr undef, !6765, !DIExpression(DW_OP_deref), !6296)
    #dbg_value(ptr undef, !6767, !DIExpression(DW_OP_deref), !6296)
  %..i.i30.i = tail call noundef i64 @llvm.umax.i64(i64 %i.dj, i64 %i.df), !dbg !6898 ; 2 uses
    #dbg_value(i64 %..i.i30.i, !6685, !DIExpression(), !6297)
    #dbg_value(i64 %..i.i30.i, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6298)
    #dbg_value(i64 %i.ci, !6686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6298)
    #dbg_value(ptr undef, !6696, !DIExpression(), !6206)
    #dbg_value(ptr undef, !6693, !DIExpression(), !6204)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6202)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6299)
  %i.dt = icmp ult i64 %..i.i30.i, %i.ci, !dbg !6899
  br i1 %i.dt, label %.lr.ph, label %.preheader60.i.i.preheader, !dbg !6900

bb.y:                                             ; preds = %bb.ac, %bb.ab, %bb.w
  %.sink95.i.i = phi i64 [ %i.eq, %bb.ac ], [ %i.ep, %bb.ab ], [ %i.ds, %bb.w ] ; 3 uses
  %.sink94.i.i = phi i64 [ 0, %bb.ac ], [ %i.di, %bb.ab ], [ 0, %bb.w ] ; 2 uses
  store i64 %.sink95.i.i, ptr %i.cj, align 8, !dbg !6901, !alias.scope !6760
  store i64 %.sink94.i.i, ptr %i.cc, align 8, !dbg !6901, !alias.scope !6760
  %i.du = add i64 %.sink95.i.i, %i.ck, !dbg !6886 ; 2 uses
    #dbg_value(i64 %i.du, !6709, !DIExpression(), !6218)
    #dbg_value(i64 %i.du, !6715, !DIExpression(), !6223)
  %i.dv = icmp ult i64 %i.du, %.val13, !dbg !6887
  br i1 %i.dv, label %.lr.ph.split.i.i, label %._crit_edge.i.i, !dbg !6887

bb.z:                                             ; preds = %.lr.ph
  %i.dw = add nuw nsw i64 %.sroa.04.0.i.i102, 1, !dbg !6902 ; 2 uses
    #dbg_value(i64 %i.dw, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6298)
    #dbg_value(i64 %i.dw, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6298)
    #dbg_value(ptr undef, !6696, !DIExpression(), !6206)
    #dbg_value(ptr undef, !6693, !DIExpression(), !6204)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6202)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6299)
  %i.dx = icmp ult i64 %i.dw, %i.ci, !dbg !6899
  br i1 %i.dx, label %.lr.ph, label %.preheader60.i.i.preheader, !dbg !6900

.preheader60.i.i.preheader:                       ; preds = %bb.z, %bb.x
    #dbg_value(i64 %i.df, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6300)
    #dbg_value(ptr undef, !6668, !DIExpression(), !6191)
    #dbg_value(ptr undef, !6656, !DIExpression(), !6189)
    #dbg_value(ptr undef, !6653, !DIExpression(), !6187)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6185)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6301)
  %i.dy = icmp ult i64 %i.dj, %i.df, !dbg !6903
  br i1 %i.dy, label %.lr.ph104, label %.split.us.i31.i, !dbg !6904

.lr.ph:                                           ; preds = %bb.x, %bb.z
  %.sroa.04.0.i.i102 = phi i64 [ %i.dw, %bb.z ], [ %..i.i30.i, %bb.x ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.i.i102, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6298)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6694, !DIExpression(), !6302)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6729, !DIExpression(), !6246)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6732, !DIExpression(), !6251)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6686, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6298)
    #dbg_value(i64 %.sroa.04.0.i.i102, !6687, !DIExpression(), !6303)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.i.i102, !dbg !6905
  %i.ea = load i8, ptr %i.dz, align 1, !dbg !6905, !alias.scope !6759, !noalias !6753, !noundef !520
  %i.eb = add i64 %.sroa.04.0.i.i102, %i.dl, !dbg !6906 ; 2 uses
    #dbg_value(i64 %i.eb, !6720, !DIExpression(), !6228)
    #dbg_value(i64 %i.eb, !6725, !DIExpression(), !6233)
  %i.ec = icmp ult i64 %i.eb, %.val13, !dbg !6907
  tail call void @llvm.assume(i1 %i.ec), !dbg !6908
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 %i.eb, !dbg !6909
  %i.ee = load i8, ptr %i.ed, align 1, !dbg !6910, !alias.scope !6758, !noalias !6753, !noundef !520
  %.not45.i.i = icmp eq i8 %i.ea, %i.ee, !dbg !6905
  br i1 %.not45.i.i, label %bb.z, label %bb.ac, !dbg !6905

.preheader60.i.i:                                 ; preds = %bb.aa
    #dbg_value(i64 %i.eh, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6300)
    #dbg_value(ptr undef, !6668, !DIExpression(), !6191)
    #dbg_value(ptr undef, !6656, !DIExpression(), !6189)
    #dbg_value(ptr undef, !6653, !DIExpression(), !6187)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6185)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6301)
  %i.ef = icmp ult i64 %i.dj, %i.eh, !dbg !6903
  br i1 %i.ef, label %.lr.ph104, label %.split.us.i31.i, !dbg !6904

.split.us.i31.i:                                  ; preds = %.preheader60.i.i.preheader, %.preheader60.i.i
  %i.eg = add i64 %i.dl, %i.ci, !dbg !6911        ; 2 uses
  store i64 %i.eg, ptr %i.cj, align 8, !dbg !6911, !alias.scope !6760
  store i64 0, ptr %i.cc, align 8, !dbg !6912, !alias.scope !6760
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6913

.lr.ph104:                                        ; preds = %.preheader60.i.i.preheader, %.preheader60.i.i
  %.sroa.2.0.i.i103 = phi i64 [ %i.eh, %.preheader60.i.i ], [ %i.df, %.preheader60.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.i.i103, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6300)
    #dbg_value(i64 %.sroa.2.0.i.i103, !6735, !DIExpression(), !6256)
    #dbg_value(i64 %.sroa.2.0.i.i103, !6738, !DIExpression(), !6261)
  %i.eh = add i64 %.sroa.2.0.i.i103, -1, !dbg !6914 ; 6 uses
    #dbg_value(i64 %i.eh, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6300)
    #dbg_value(i64 %i.eh, !6690, !DIExpression(), !6304)
  %i.ei = icmp ult i64 %i.eh, %i.ci, !dbg !6915
  br i1 %i.ei, label %bb.aa, label %.split56.us.i.i, !dbg !6915

bb.aa:                                            ; preds = %.lr.ph104
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.eh, !dbg !6915
  %i.ek = load i8, ptr %i.ej, align 1, !dbg !6915, !alias.scope !6759, !noalias !6753, !noundef !520
  %i.el = add i64 %i.eh, %i.dl, !dbg !6916        ; 2 uses
    #dbg_value(i64 %i.el, !6720, !DIExpression(), !6237)
    #dbg_value(i64 %i.el, !6725, !DIExpression(), !6241)
  %i.em = icmp ult i64 %i.el, %.val13, !dbg !6917
  tail call void @llvm.assume(i1 %i.em), !dbg !6918
  %i.en = getelementptr inbounds nuw i8, ptr %.val, i64 %i.el, !dbg !6919
  %i.eo = load i8, ptr %i.en, align 1, !dbg !6920, !alias.scope !6758, !noalias !6753, !noundef !520
  %.not44.i.i = icmp eq i8 %i.ek, %i.eo, !dbg !6915
  br i1 %.not44.i.i, label %.preheader60.i.i, label %bb.ab, !dbg !6915

.split56.us.i.i:                                  ; preds = %.lr.ph104
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21, !dbg !6915, !noalias !6772
  unreachable, !dbg !6915

bb.ab:                                            ; preds = %bb.aa
  %i.ep = add i64 %i.dl, %i.dh, !dbg !6921
  br label %bb.y, !dbg !6922

bb.ac:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %i.dl, %invariant.op
  %i.eq = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i102, !dbg !6923
  br label %bb.y, !dbg !6924

bb.ad:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6773), !dbg !6925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6774), !dbg !6925
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6775), !dbg !6925
    #dbg_value(i1 true, !6680, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6207)
    #dbg_value(i64 %i.ck, !6682, !DIExpression(), !6310)
  %.promoted.i32.i = load i64, ptr %i.cj, align 8, !alias.scope !6776 ; 2 uses
  %i.er = add i64 %.promoted.i32.i, %i.ck, !dbg !6926 ; 2 uses
  %i.es = icmp ult i64 %i.er, %.val13, !dbg !6927
  br i1 %i.es, label %.lr.ph.i35.i, label %._crit_edge.i33.i, !dbg !6927

.lr.ph.i35.i:                                     ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !6776, !noundef !520
  %i.ev = load i64, ptr %i.g, align 8, !alias.scope !6776
  %.fr235.i = freeze i64 %i.ev, !dbg !6928        ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !6776
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr235.i, i64 range(i64 0, -9223372036854775808) %i.ci), !dbg !6928
  %i.ey = add i64 %.fr235.i, -1, !dbg !6928       ; 2 uses
  %.first_iter.i36.i = icmp ult i64 %i.ey, %i.ci
  %exitcond.not.i37.i106.not = icmp ult i64 %.fr235.i, %i.ci
  %invariant.op146 = sub i64 1, %.fr235.i, !dbg !6928
  %.not58.i.us.i109 = icmp eq i64 %.fr235.i, 0    ; 2 uses
  br label %.lr.ph.split.us.i.i, !dbg !6928

.lr.ph.split.us.i.i:                              ; preds = %bb.ag, %.lr.ph.i35.i
  %i.ez = phi i64 [ %i.fy, %bb.ag ], [ %i.er, %.lr.ph.i35.i ]
  %i.fa = phi i64 [ %.sink.i38.i, %bb.ag ], [ %.promoted.i32.i, %.lr.ph.i35.i ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ez, !dbg !6929
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !6930, !alias.scope !6774, !noalias !6753, !noundef !520
    #dbg_value(i8 %i.fc, !6683, !DIExpression(), !6311)
    #dbg_value(i8 %i.fc, !6704, !DIExpression(), !6211)
  %i.fd = and i8 %i.fc, 63, !dbg !6931
  %i.fe = zext nneg i8 %i.fd to i64, !dbg !6932
  %i.ff = shl nuw i64 1, %i.fe, !dbg !6933
  %i.fg = and i64 %i.ff, %i.eu, !dbg !6933
  %.not.us.i.i = icmp eq i64 %i.fg, 0, !dbg !6933
  br i1 %.not.us.i.i, label %bb.af, label %.preheader59.i.i.preheader, !dbg !6928

.preheader59.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i
    #dbg_value(i64 %.fr235.i, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(ptr undef, !6696, !DIExpression(), !6205)
    #dbg_value(ptr undef, !6693, !DIExpression(), !6203)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6198)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6313)
  br i1 %exitcond.not.i37.i106.not, label %.lr.ph108, label %.preheader.i39.preheader.i, !dbg !6934

.preheader59.i.i:                                 ; preds = %.lr.ph108
  %i.fh = add i64 %.sroa.04.0.us.i.i107, 1, !dbg !6935 ; 2 uses
    #dbg_value(i64 %i.fh, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(i64 %i.fh, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(ptr undef, !6696, !DIExpression(), !6205)
    #dbg_value(ptr undef, !6693, !DIExpression(), !6203)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6198)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6313)
  %exitcond.not.i37.i = icmp eq i64 %i.fh, %umax.i.i, !dbg !6936
  br i1 %exitcond.not.i37.i, label %.preheader.i39.preheader.i, label %.lr.ph108, !dbg !6934

.preheader.i39.preheader.i:                       ; preds = %.preheader59.i.i, %.preheader59.i.i.preheader
    #dbg_value(ptr undef, !6668, !DIExpression(), !6190)
    #dbg_value(ptr undef, !6668, !DIExpression(), !6190)
    #dbg_value(ptr undef, !6656, !DIExpression(), !6188)
    #dbg_value(ptr undef, !6656, !DIExpression(), !6188)
    #dbg_value(ptr undef, !6653, !DIExpression(), !6186)
    #dbg_value(ptr undef, !6653, !DIExpression(), !6186)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6179)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6179)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6314)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6314)
  br i1 %.first_iter.i36.i, label %.preheader.i39.us.i.preheader, label %.preheader.i39.i

.preheader.i39.us.i.preheader:                    ; preds = %.preheader.i39.preheader.i
    #dbg_value(i64 %.fr235.i, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
  br i1 %.not58.i.us.i109, label %.split.us.i41.i, label %.lr.ph111, !dbg !6937

.preheader.i39.us.i:                              ; preds = %.lr.ph111
    #dbg_value(i64 %i.fi, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
    #dbg_value(ptr undef, !6668, !DIExpression(), !6190)
    #dbg_value(ptr undef, !6656, !DIExpression(), !6188)
    #dbg_value(ptr undef, !6653, !DIExpression(), !6186)
    #dbg_value(ptr undef, !6650, !DIExpression(), !6179)
    #dbg_value(ptr undef, !6651, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6314)
  %.not58.i.us.i = icmp eq i64 %i.fi, 0, !dbg !6938
  br i1 %.not58.i.us.i, label %.split.us.i41.i, label %.lr.ph111, !dbg !6937

.lr.ph111:                                        ; preds = %.preheader.i39.us.i.preheader, %.preheader.i39.us.i
  %.sroa.2.0.us.i.us.i110 = phi i64 [ %i.fi, %.preheader.i39.us.i ], [ %.fr235.i, %.preheader.i39.us.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i110, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i110, !6735, !DIExpression(), !6254)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i110, !6738, !DIExpression(), !6259)
  %i.fi = add i64 %.sroa.2.0.us.i.us.i110, -1, !dbg !6939 ; 4 uses
    #dbg_value(i64 %i.fi, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
    #dbg_value(i64 %i.fi, !6690, !DIExpression(), !6316)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.fi, !dbg !6940
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !6940, !alias.scope !6775, !noalias !6753, !noundef !520
  %i.fl = add i64 %i.fi, %i.fa, !dbg !6941        ; 2 uses
    #dbg_value(i64 %i.fl, !6720, !DIExpression(), !6235)
    #dbg_value(i64 %i.fl, !6725, !DIExpression(), !6239)
  %i.fm = icmp ult i64 %i.fl, %.val13, !dbg !6942
  tail call void @llvm.assume(i1 %i.fm), !dbg !6943
  %i.fn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fl, !dbg !6944
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !6945, !alias.scope !6774, !noalias !6753, !noundef !520
  %.not44.us.i.us.i = icmp eq i8 %i.fk, %i.fo, !dbg !6940
  br i1 %.not44.us.i.us.i, label %.preheader.i39.us.i, label %.split.us.i, !dbg !6940

.split.us.i:                                      ; preds = %.lr.ph111
  %i.fp = add i64 %i.fa, %i.ex, !dbg !6946
  br label %bb.ag, !dbg !6947

.lr.ph108:                                        ; preds = %.preheader59.i.i.preheader, %.preheader59.i.i
  %.sroa.04.0.us.i.i107 = phi i64 [ %i.fh, %.preheader59.i.i ], [ %.fr235.i, %.preheader59.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6694, !DIExpression(), !6317)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6729, !DIExpression(), !6244)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6732, !DIExpression(), !6249)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6686, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6312)
    #dbg_value(i64 %.sroa.04.0.us.i.i107, !6687, !DIExpression(), !6318)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.04.0.us.i.i107, !dbg !6948
  %i.fr = load i8, ptr %i.fq, align 1, !dbg !6948, !alias.scope !6775, !noalias !6753, !noundef !520
  %i.fs = add i64 %.sroa.04.0.us.i.i107, %i.fa, !dbg !6949 ; 2 uses
    #dbg_value(i64 %i.fs, !6720, !DIExpression(), !6226)
    #dbg_value(i64 %i.fs, !6725, !DIExpression(), !6231)
  %i.ft = icmp ult i64 %i.fs, %.val13, !dbg !6950
  tail call void @llvm.assume(i1 %i.ft), !dbg !6951
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fs, !dbg !6952
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !6953, !alias.scope !6774, !noalias !6753, !noundef !520
  %.not45.us.i.i = icmp eq i8 %i.fr, %i.fv, !dbg !6948
  br i1 %.not45.us.i.i, label %.preheader59.i.i, label %bb.ae, !dbg !6948

.preheader.i39.i:                                 ; preds = %.preheader.i39.preheader.i
    #dbg_value(i64 %i.ev, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
  br i1 %.not58.i.us.i109, label %.split.us.i41.i, label %.split56.us.i40.i, !dbg !6937

.split56.us.i40.i:                                ; preds = %.preheader.i39.i
    #dbg_value(i64 %i.ev, !6735, !DIExpression(), !6254)
    #dbg_value(i64 %i.ev, !6738, !DIExpression(), !6259)
    #dbg_value(i64 %i.ey, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6315)
    #dbg_value(i64 %i.ey, !6690, !DIExpression(), !6316)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21, !dbg !6940, !noalias !6777
  unreachable, !dbg !6940

bb.ae:                                            ; preds = %.lr.ph108
  %.reass302.i.reass.reass = add i64 %i.fa, %invariant.op146
  %i.fw = add i64 %.reass302.i.reass.reass, %.sroa.04.0.us.i.i107, !dbg !6954
  br label %bb.ag, !dbg !6955

bb.af:                                            ; preds = %.lr.ph.split.us.i.i
  %i.fx = add i64 %i.fa, %i.ci, !dbg !6956
  br label %bb.ag, !dbg !6957

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.split.us.i
  %.sink.i38.i = phi i64 [ %i.fx, %bb.af ], [ %i.fw, %bb.ae ], [ %i.fp, %.split.us.i ] ; 3 uses
  store i64 %.sink.i38.i, ptr %i.cj, align 8, !dbg !6958, !alias.scope !6776
  %i.fy = add i64 %.sink.i38.i, %i.ck, !dbg !6926 ; 2 uses
    #dbg_value(i64 %i.fy, !6709, !DIExpression(), !6216)
    #dbg_value(i64 %i.fy, !6715, !DIExpression(), !6221)
  %i.fz = icmp ult i64 %i.fy, %.val13, !dbg !6927
  br i1 %i.fz, label %.lr.ph.split.us.i.i, label %._crit_edge.i33.i, !dbg !6927

._crit_edge.i33.i:                                ; preds = %bb.ag, %bb.ad
  store i64 %.val13, ptr %i.cj, align 8, !dbg !6959, !alias.scope !6776
  br label %bb.ah, !dbg !6960

.split.us.i41.i:                                  ; preds = %.preheader.i39.us.i.preheader, %.preheader.i39.us.i, %.preheader.i39.i
  %i.ga = add i64 %i.fa, %i.ci, !dbg !6961        ; 2 uses
  store i64 %i.ga, ptr %i.cj, align 8, !dbg !6961, !alias.scope !6776
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !6962

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.split186.us.i.thread, %.split.us.i41.i, %.split.us.i31.i, %.loopexit63.i, %.loopexit62.split.us.i, %.split186.us.i
  %.sroa.9.0 = phi i64 [ %.val13, %.split186.us.i ], [ %i.eg, %.split.us.i31.i ], [ %.lcssa45, %.loopexit62.split.us.i ], [ %i.da, %.loopexit63.i ], [ %i.ga, %.split.us.i41.i ], [ %.val13, %.split186.us.i.thread ], !dbg !6963
  %.sroa.4.015 = phi i64 [ %.val13, %.split186.us.i ], [ %i.dl, %.split.us.i31.i ], [ %.lcssa45, %.loopexit62.split.us.i ], [ %i.cz, %.loopexit63.i ], [ %i.fa, %.split.us.i41.i ], [ %.val13, %.split186.us.i.thread ], !dbg !6963
    #dbg_value(ptr %.val, !6345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6352)
    #dbg_value(ptr %.val, !6353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6360)
    #dbg_value(ptr %.val, !6361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6370)
    #dbg_value(i64 %.sroa.4.015, !6346, !DIExpression(), !6778)
    #dbg_value(i64 %.sroa.4.015, !6356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(i64 %.sroa.4.015, !6365, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6370)
    #dbg_value(i64 %.sroa.9.0, !6347, !DIExpression(), !6778)
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !6964 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !dbg !6964, !noundef !520 ; 2 uses
    #dbg_value(i64 %i.gc, !6356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6360)
    #dbg_value(i64 %i.gc, !6365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6370)
    #dbg_value(i64 %i.gc, !6779, !DIExpression(), !6783)
    #dbg_value(ptr %.val, !6366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6784)
    #dbg_value(i64 poison, !6366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6784)
  %i.gd = sub nuw i64 %.sroa.4.015, %i.gc, !dbg !6965
    #dbg_value(i64 %i.gd, !6367, !DIExpression(), !6785)
    #dbg_value(ptr %.val, !6780, !DIExpression(), !6783)
  %i.ge = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gc, !dbg !6966
    #dbg_value(ptr %i.ge, !6348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6786)
    #dbg_value(i64 %i.gd, !6348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6786)
  store i64 %.sroa.9.0, ptr %i.gb, align 8, !dbg !6967
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, !dbg !6968

bb.ah:                                            ; preds = %bb.p, %.preheader.i, %._crit_edge.i33.i, %._crit_edge.i.i, %.loopexit64.i, %bb.q
    #dbg_value(ptr %0, !6787, !DIExpression(), !6324)
  store i8 1, ptr %i.a, align 1, !dbg !6969, !alias.scope !6791
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !6970
  %i.gg = load i8, ptr %i.gf, align 8, !dbg !6970, !range !6351, !alias.scope !6791, !noundef !520
  %i.gh = trunc nuw i8 %i.gg to i1, !dbg !6970
  br i1 %i.gh, label %._crit_edge.i, label %bb.ai, !dbg !6970

._crit_edge.i:                                    ; preds = %bb.ah
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !6971, !alias.scope !6791
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre14.i = load i64, ptr %.phi.trans.insert13.i, align 8, !dbg !6972, !alias.scope !6791
  br label %bb.aj, !dbg !6970

bb.ai:                                            ; preds = %bb.ah
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !6973
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !6973, !alias.scope !6791, !noundef !520 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !6974
  %i.gl = load i64, ptr %i.gk, align 8, !dbg !6974, !alias.scope !6791, !noundef !520 ; 2 uses
  %.not.i14 = icmp eq i64 %i.gj, %i.gl, !dbg !6973
  br i1 %.not.i14, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, label %bb.aj, !dbg !6973

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i
  %i.gm = phi i64 [ %.pre14.i, %._crit_edge.i ], [ %i.gj, %bb.ai ], !dbg !6972
  %i.gn = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gl, %bb.ai ], !dbg !6971 ; 2 uses
    #dbg_value(ptr %.val, !6792, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6329)
    #dbg_value(ptr %.val, !6795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6334)
    #dbg_value(i64 poison, !6792, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6329)
    #dbg_value(i64 poison, !6795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6334)
    #dbg_value(i64 %i.gn, !6793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6329)
    #dbg_value(i64 %i.gn, !6796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6334)
    #dbg_value(i64 %i.gn, !6800, !DIExpression(), !6337)
    #dbg_value(i64 %i.gm, !6793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6329)
    #dbg_value(i64 %i.gm, !6796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6334)
    #dbg_value(ptr %.val, !6797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6338)
    #dbg_value(i64 poison, !6797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6338)
  %i.go = sub nuw i64 %i.gm, %i.gn, !dbg !6975
    #dbg_value(i64 %i.go, !6798, !DIExpression(), !6339)
    #dbg_value(ptr %.val, !6801, !DIExpression(), !6337)
  %i.gp = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gn, !dbg !6976
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit, !dbg !6977

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.aj, %bb.ai, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.gd, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.go, %bb.aj ], [ undef, %bb.ai ], !dbg !6350
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.ge, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.gp, %bb.aj ], [ null, %bb.ai ], !dbg !6350
  %i.gq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0, !dbg !6978
  %i.gr = insertvalue { ptr, i64 } %i.gq, i64 %.sroa.4.1, 1, !dbg !6978
  ret { ptr, i64 } %i.gr, !dbg !6978
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringB1p_NtB19_4LeafE16push_with_handleCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6981 {
bb.a:
    #dbg_value(ptr %1, !6996, !DIExpression(), !7002)
    #dbg_value(ptr %1, !7003, !DIExpression(), !7010)
    #dbg_value(ptr %1, !7011, !DIExpression(), !7017)
    #dbg_value(ptr %1, !7018, !DIExpression(), !7021)
    #dbg_value(ptr %1, !7022, !DIExpression(), !7026)
    #dbg_value(ptr %1, !7011, !DIExpression(), !7028)
    #dbg_value(ptr %1, !7018, !DIExpression(), !7031)
    #dbg_value(ptr %1, !7032, !DIExpression(), !7036)
    #dbg_value(ptr %1, !7011, !DIExpression(), !7038)
    #dbg_value(ptr %1, !7018, !DIExpression(), !7041)
    #dbg_declare(ptr %2, !6997, !DIExpression(), !7042)
    #dbg_declare(ptr %3, !6998, !DIExpression(), !7043)
    #dbg_declare(ptr poison, !7044, !DIExpression(), !7048)
    #dbg_declare(ptr poison, !7049, !DIExpression(), !7055)
    #dbg_declare(ptr poison, !7044, !DIExpression(), !7057)
    #dbg_declare(ptr poison, !7049, !DIExpression(), !7060)
  %i.a = load ptr, ptr %1, align 8, !dbg !7093, !nonnull !520, !noundef !520 ; 4 uses
    #dbg_value(ptr %i.a, !6999, !DIExpression(DW_OP_plus_uconst, 538, DW_OP_stack_value), !7061)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 538, !dbg !7094 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !dbg !7094, !noundef !520 ; 3 uses
    #dbg_value(i16 %i.c, !7062, !DIExpression(), !7065)
    #dbg_value(i16 %i.c, !7000, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7066)
    #dbg_value(i16 %i.c, !7023, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7026)
    #dbg_value(i16 %i.c, !7067, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7071)
    #dbg_value(i16 %i.c, !7072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7076)
    #dbg_value(i16 %i.c, !7033, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7036)
    #dbg_value(i16 %i.c, !7067, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7078)
    #dbg_value(i16 %i.c, !7072, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7081)
    #dbg_value(i16 %i.c, !7082, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !7090)
  %i.d = icmp ult i16 %i.c, 11, !dbg !7095
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !7095, !prof !1027

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #17
          to label %bb.e unwind label %bb.d, !dbg !7096

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i16 %i.c to i64, !dbg !7097    ; 3 uses
    #dbg_value(i64 %i.e, !7000, !DIExpression(), !7066)
    #dbg_value(i64 %i.e, !7023, !DIExpression(), !7026)
    #dbg_value(i64 %i.e, !7067, !DIExpression(), !7071)
    #dbg_value(i64 %i.e, !7072, !DIExpression(), !7076)
    #dbg_value(i64 %i.e, !7033, !DIExpression(), !7036)
    #dbg_value(i64 %i.e, !7067, !DIExpression(), !7078)
    #dbg_value(i64 %i.e, !7072, !DIExpression(), !7081)
    #dbg_value(i64 %i.e, !7082, !DIExpression(), !7090)
  %i.f = add nuw nsw i16 %i.c, 1, !dbg !7098
  store i16 %i.f, ptr %i.b, align 2, !dbg !7098
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7099
    #dbg_value(ptr %i.g, !7068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7071)
    #dbg_value(i64 11, !7068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7071)
    #dbg_value(ptr %i.g, !7073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7076)
    #dbg_value(i64 11, !7073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7076)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.e, !dbg !7100
    #dbg_value(ptr %i.h, !7045, !DIExpression(), !7091)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !7101
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 272, !dbg !7102
    #dbg_value(ptr %i.i, !7068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7078)
    #dbg_value(i64 11, !7068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7078)
    #dbg_value(ptr %i.i, !7073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7081)
    #dbg_value(i64 11, !7073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7081)
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e, !dbg !7103
    #dbg_value(ptr %i.j, !7045, !DIExpression(), !7092)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !7104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !7105
  %i.l = load i64, ptr %i.k, align 8, !dbg !7105, !noundef !520
    #dbg_value(ptr %i.a, !7087, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7090)
    #dbg_value(i64 %i.l, !7087, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7090)
  store ptr %i.a, ptr %0, align 8, !dbg !7106
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7106
  store i64 %i.l, ptr %i.m, align 8, !dbg !7106
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7106
  store i64 %i.e, ptr %i.n, align 8, !dbg !7106
  ret void, !dbg !7107

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %3) #18
          to label %bb.g unwind label %bb.f, !dbg !7108

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !7109
  unreachable, !dbg !7109

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #18
          to label %bb.h unwind label %bb.f, !dbg !7108

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.o, !dbg !7109
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCshhfsHpF03Qr_6netlog4http11parse_event(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7285 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
end_hunk_0
