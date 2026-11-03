Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_apps-3178ca8440f7cc12.quiche_apps.d9b5ab2b11efecdc-cgu.09?download=true
inline.NumInlined: 280
inline.NumDeleted: 125
begin_hunk_0_@_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps:bb.a
  br label %.loopexit62.split.us.i.i.i, !dbg !7065

.split.us181.i.i.i:                               ; preds = %bb.n, %.split.i.i.us.i.i.i, %bb.e, %.split.i.i.us.i.peel.i.i
  %.lcssa43.i.i = phi i64 [ %.promoted177.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted177.i.i.i, %bb.e ], [ %i.bk, %.split.i.i.us.i.i.i ], [ %i.bk, %bb.n ]
  %.lcssa40.i.i = phi i8 [ %.promoted226.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted226.i.i.i, %bb.e ], [ 1, %.split.i.i.us.i.i.i ], [ 1, %bb.n ]
  %i.cc = xor i8 %.lcssa40.i.i, 1
  store i8 %i.cc, ptr %i.n, align 8, !dbg !7075, !alias.scope !6837
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val13.i.i, i64 noundef %.lcssa43.i.i, i64 noundef %.val13.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !dbg !7076, !noalias !6836
  unreachable, !dbg !7076

.split186.us.i.i.i:                               ; preds = %bb.f
  %i.cd = xor i8 %.promoted226.i.i.i, 1
  store i8 %i.cd, ptr %i.n, align 8, !dbg !7075, !alias.scope !6837
    #dbg_value(i32 0, !6795, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6348)
    #dbg_value(i32 undef, !6795, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6348)
  br i1 %i.o, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.q, !dbg !7069

.loopexit62.split.us.i.i.i:                       ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.i.i, %bb.p, %bb.i
  %.lcssa45.i.i = phi i64 [ %.promoted177.i.i.i, %bb.i ], [ %i.bk, %bb.p ], [ %i.bk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.i.i ] ; 2 uses
  store i8 0, ptr %i.n, align 8, !dbg !7075, !alias.scope !6837
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !7077

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.q:                                             ; preds = %.split186.us.i.i.i
  store i8 1, ptr %i.k, align 2, !dbg !7078, !alias.scope !6837
  br label %bb.al, !dbg !7079

bb.r:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !6624, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6370)
    #dbg_value(ptr poison, !6625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6371)
    #dbg_value(ptr poison, !6848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6374)
    #dbg_value(ptr poison, !6854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6378)
    #dbg_value(ptr poison, !6861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6381)
    #dbg_value(i64 %.val13.i.i, !6625, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6371)
    #dbg_value(i64 %.val13.i.i, !6848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6374)
    #dbg_value(i64 %.val13.i.i, !6854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6378)
    #dbg_value(i64 %.val13.i.i, !6861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6381)
  %i.ce = load i64, ptr %i.j, align 8, !dbg !7080, !alias.scope !6632, !noundef !593 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.ce, %.val13.i.i, !dbg !7080
  br i1 %.not.i.i.i, label %bb.t, label %bb.al, !dbg !7080

bb.s:                                             ; preds = %bb.c
    #dbg_value(ptr %i.j, !6629, !DIExpression(), !6382)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7081 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !7081, !alias.scope !6632, !noundef !593 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, -1, !dbg !7081
    #dbg_value(i1 %i.ch, !6630, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6383)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7082
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !7082, !alias.scope !6632, !nonnull !593, !noundef !593 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !7082
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !7082, !alias.scope !6632, !noundef !593 ; 16 uses
    #dbg_value(ptr poison, !6865, !DIExpression(), !6408)
    #dbg_value(ptr poison, !6865, !DIExpression(), !6414)
    #dbg_value(ptr poison, !6877, !DIExpression(), !6415)
    #dbg_value(ptr poison, !6877, !DIExpression(), !6416)
    #dbg_value(ptr poison, !6880, !DIExpression(), !6417)
    #dbg_value(ptr poison, !6880, !DIExpression(), !6418)
    #dbg_value(ptr poison, !6894, !DIExpression(), !6419)
    #dbg_value(ptr poison, !6894, !DIExpression(), !6420)
    #dbg_value(ptr poison, !6865, !DIExpression(), !6427)
    #dbg_value(ptr poison, !6865, !DIExpression(), !6431)
    #dbg_value(ptr poison, !6919, !DIExpression(), !6432)
    #dbg_value(ptr poison, !6919, !DIExpression(), !6433)
    #dbg_value(ptr poison, !6923, !DIExpression(), !6434)
    #dbg_value(ptr poison, !6923, !DIExpression(), !6435)
    #dbg_value(ptr %i.j, !6903, !DIExpression(), !6436)
    #dbg_value(ptr %i.j, !6903, !DIExpression(), !6437)
    #dbg_value(ptr %i.j, !6926, !DIExpression(), !6440)
    #dbg_value(ptr %i.j, !6926, !DIExpression(), !6442)
    #dbg_value(ptr %.val.i.i, !6904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6436)
    #dbg_value(ptr %.val.i.i, !6904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
    #dbg_value(ptr %.val.i.i, !6933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6445)
    #dbg_value(ptr %.val.i.i, !6933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6447)
    #dbg_value(ptr %.val.i.i, !6940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6450)
    #dbg_value(ptr %.val.i.i, !6940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6452)
    #dbg_value(ptr %.val.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6455)
    #dbg_value(ptr %.val.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6457)
    #dbg_value(ptr %.val.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6460)
    #dbg_value(ptr %.val.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6462)
    #dbg_value(ptr %.val.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6464)
    #dbg_value(ptr %.val.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6466)
    #dbg_value(ptr %.val.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6468)
    #dbg_value(ptr %.val.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6470)
    #dbg_value(i64 %.val13.i.i, !6904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6436)
    #dbg_value(i64 %.val13.i.i, !6904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
    #dbg_value(i64 %.val13.i.i, !6933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6445)
    #dbg_value(i64 %.val13.i.i, !6933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6447)
    #dbg_value(i64 %.val13.i.i, !6940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6450)
    #dbg_value(i64 %.val13.i.i, !6940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6452)
    #dbg_value(i64 %.val13.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6455)
    #dbg_value(i64 %.val13.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6457)
    #dbg_value(i64 %.val13.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6460)
    #dbg_value(i64 %.val13.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6462)
    #dbg_value(i64 %.val13.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6464)
    #dbg_value(i64 %.val13.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6466)
    #dbg_value(i64 %.val13.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6468)
    #dbg_value(i64 %.val13.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6470)
    #dbg_value(ptr %i.cj, !6905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6436)
    #dbg_value(ptr %i.cj, !6905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
    #dbg_value(i64 %i.cl, !6905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6436)
    #dbg_value(i64 %i.cl, !6905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
    #dbg_value(i64 1, !6957, !DIExpression(), !6473)
    #dbg_value(i64 1, !6957, !DIExpression(), !6475)
    #dbg_value(i64 1, !6961, !DIExpression(), !6478)
    #dbg_value(i64 1, !6961, !DIExpression(), !6480)
    #dbg_value(i64 1, !6966, !DIExpression(), !6483)
    #dbg_value(i64 1, !6966, !DIExpression(), !6485)
    #dbg_value(i64 1, !6969, !DIExpression(), !6488)
    #dbg_value(i64 1, !6969, !DIExpression(), !6490)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7083 ; 9 uses
    #dbg_value(i64 poison, !6907, !DIExpression(), !6492)
    #dbg_value(i64 poison, !6907, !DIExpression(), !6493)
  %i.cn = add nsw i64 %i.cl, -1, !dbg !7084       ; 5 uses
  br i1 %i.ch, label %bb.ae, label %bb.w, !dbg !7085

bb.t:                                             ; preds = %bb.r
    #dbg_value(ptr %.val.i.i, !6625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6371)
    #dbg_value(ptr %.val.i.i, !6848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6374)
    #dbg_value(ptr %.val.i.i, !6854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6378)
    #dbg_value(ptr %.val.i.i, !6861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6381)
    #dbg_value(i64 %i.ce, !6851, !DIExpression(), !6374)
    #dbg_value(i64 %i.ce, !6858, !DIExpression(), !6378)
    #dbg_value(i64 %i.ce, !6862, !DIExpression(), !6381)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7086
  %i.cp = load i8, ptr %i.co, align 8, !dbg !7086, !alias.scope !6632, !noundef !593 ; 2 uses
  %i.cq = sub nuw i64 %.val13.i.i, %i.ce, !dbg !7087 ; 4 uses
    #dbg_value(i64 %i.cq, !6859, !DIExpression(), !6494)
    #dbg_value(i64 %i.cq, !6863, !DIExpression(), !6381)
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ce, !dbg !7088 ; 2 uses
    #dbg_value(i8 %i.cp, !2042, !DIExpression(), !6496)
    #dbg_value(i8 %i.cp, !2047, !DIExpression(), !6498)
    #dbg_value(ptr %i.cr, !2043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6496)
    #dbg_value(ptr %i.cr, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6498)
    #dbg_value(i64 %i.cq, !2043, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6496)
    #dbg_value(i64 %i.cq, !2048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6498)
  %i.cs = icmp samesign ult i64 %i.cq, 16, !dbg !7089
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %bb.u, !dbg !7089

bb.u:                                             ; preds = %bb.t
  %i.ct = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef range(i64 0, -9223372036854775808) %i.cq), !dbg !7090, !noalias !6972 ; 2 uses
  %i.cu = extractvalue { i64, i64 } %i.ct, 0, !dbg !7090
  %i.cv = extractvalue { i64, i64 } %i.ct, 1, !dbg !7090
    #dbg_value(i64 %i.cu, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6499)
    #dbg_value(i64 %i.cv, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6499)
  %i.cw = trunc nuw i64 %i.cu to i1, !dbg !7091
  br i1 %i.cw, label %.loopexit63.i.i.i, label %.loopexit64.i.i.i, !dbg !7091

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.v
  %.sroa.04.015.i.i.i.i = phi i64 [ %i.da, %bb.v ], [ 0, %bb.t ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i, !2049, !DIExpression(), !6500)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.04.015.i.i.i.i, !dbg !7092
  %i.cy = load i8, ptr %i.cx, align 1, !dbg !7092, !alias.scope !6973, !noalias !6972, !noundef !593
  %i.cz = icmp eq i8 %i.cy, %i.cp, !dbg !7092
  br i1 %i.cz, label %.loopexit63.i.i.i, label %bb.v, !dbg !7092

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.da = add nuw nsw i64 %.sroa.04.015.i.i.i.i, 1, !dbg !7093 ; 2 uses
    #dbg_value(i64 %i.da, !2049, !DIExpression(), !6500)
  %exitcond.not.i27.i.i.i = icmp eq i64 %i.da, %i.cq, !dbg !7094
  br i1 %exitcond.not.i27.i.i.i, label %.loopexit64.i.i.i, label %.lr.ph.i.i.i.i, !dbg !7094

.loopexit63.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.u
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.cv, %bb.u ], [ %.sroa.04.015.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !7095 ; 2 uses
    #dbg_value(i64 1, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6499)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6499)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !2045, !DIExpression(), !6503)
  %i.db = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.cq, !dbg !7096
    #dbg_value(i1 true, !2052, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6505)
  tail call void @llvm.assume(i1 %i.db), !dbg !7097
    #dbg_value(i64 1, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6499)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6499)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !6626, !DIExpression(), !6506)
  %i.dc = add i64 %.sroa.5.0.i.i.i.i, %i.ce, !dbg !7098 ; 2 uses
    #dbg_value(i64 %i.dc, !6627, !DIExpression(), !6507)
  %i.dd = add i64 %i.dc, 1, !dbg !7099            ; 2 uses
  store i64 %i.dd, ptr %i.j, align 8, !dbg !7099, !alias.scope !6632
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !7100

.loopexit64.i.i.i:                                ; preds = %bb.v, %bb.u
    #dbg_value(i64 0, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6499)
    #dbg_value(i64 poison, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6499)
  store i64 %.val13.i.i, ptr %i.j, align 8, !dbg !7101, !alias.scope !6632
  br label %bb.al, !dbg !7102

bb.w:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6974), !dbg !7103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6975), !dbg !7103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6976), !dbg !7103
    #dbg_value(i1 false, !6906, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6437)
    #dbg_value(i64 %i.cn, !6908, !DIExpression(), !6512)
  %.promoted.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !6977 ; 2 uses
  %i.de = add i64 %.promoted.i.i.i.i, %i.cn, !dbg !7104 ; 2 uses
  %i.df = icmp ult i64 %i.de, %.val13.i.i, !dbg !7105
  br i1 %i.df, label %.lr.ph.i28.i.i.i, label %._crit_edge.i.i.i.i, !dbg !7105

.lr.ph.i28.i.i.i:                                 ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !6977, !noundef !593
  %i.di = load i64, ptr %i.j, align 8, !alias.scope !6977
  %.fr84.i.i.i.i = freeze i64 %i.di, !dbg !7106   ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !6977 ; 2 uses
  %i.dl = sub i64 %i.cl, %i.dk
  %invariant.op = sub i64 1, %.fr84.i.i.i.i, !dbg !7106
  br label %.lr.ph.split.i.i.i.i, !dbg !7106

._crit_edge.i.i.i.i:                              ; preds = %bb.z, %bb.w
  store i64 %.val13.i.i, ptr %i.cm, align 8, !dbg !7107, !alias.scope !6977
  br label %bb.al, !dbg !7108

.lr.ph.split.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i28.i.i.i
  %i.dm = phi i64 [ %.sink94.i.i.i.i, %bb.z ], [ %i.cg, %.lr.ph.i28.i.i.i ] ; 3 uses
  %i.dn = phi i64 [ %i.dx, %bb.z ], [ %i.de, %.lr.ph.i28.i.i.i ]
  %i.do = phi i64 [ %.sink95.i.i.i.i, %bb.z ], [ %.promoted.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dn, !dbg !7109
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !7110, !alias.scope !6975, !noalias !6972, !noundef !593
    #dbg_value(i8 %i.dq, !6909, !DIExpression(), !6513)
    #dbg_value(i8 %i.dq, !6931, !DIExpression(), !6442)
  %i.dr = and i8 %i.dq, 63, !dbg !7111
  %i.ds = zext nneg i8 %i.dr to i64, !dbg !7112
  %i.dt = shl nuw i64 1, %i.ds, !dbg !7113
  %i.du = and i64 %i.dt, %i.dh, !dbg !7113
  %.not.i29.i.i.i = icmp eq i64 %i.du, 0, !dbg !7113
  br i1 %.not.i29.i.i.i, label %bb.x, label %bb.y, !dbg !7106

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.dv = add i64 %i.do, %i.cl, !dbg !7114
  br label %bb.z, !dbg !7115

bb.y:                                             ; preds = %.lr.ph.split.i.i.i.i
    #dbg_value(i64 %i.di, !6979, !DIExpression(), !6516)
    #dbg_value(i64 %i.dm, !6980, !DIExpression(), !6516)
    #dbg_value(ptr undef, !6983, !DIExpression(DW_OP_deref), !6519)
    #dbg_value(ptr undef, !6985, !DIExpression(DW_OP_deref), !6519)
  %..i.i30.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.dm, i64 %.fr84.i.i.i.i), !dbg !7116 ; 2 uses
    #dbg_value(i64 %..i.i30.i.i.i, !6911, !DIExpression(), !6520)
    #dbg_value(i64 %..i.i30.i.i.i, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6521)
    #dbg_value(i64 %i.cl, !6912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6521)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6435)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6433)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6431)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6522)
  %i.dw = icmp ult i64 %..i.i30.i.i.i, %i.cl, !dbg !7117
  br i1 %i.dw, label %.lr.ph, label %.preheader60.i.i.i.i.preheader, !dbg !7118

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink95.i.i.i.i = phi i64 [ %i.et, %bb.ad ], [ %i.es, %bb.ac ], [ %i.dv, %bb.x ] ; 3 uses
  %.sink94.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.dl, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink95.i.i.i.i, ptr %i.cm, align 8, !dbg !7119, !alias.scope !6977
  store i64 %.sink94.i.i.i.i, ptr %i.cf, align 8, !dbg !7119, !alias.scope !6977
  %i.dx = add i64 %.sink95.i.i.i.i, %i.cn, !dbg !7104 ; 2 uses
    #dbg_value(i64 %i.dx, !6936, !DIExpression(), !6447)
    #dbg_value(i64 %i.dx, !6944, !DIExpression(), !6452)
  %i.dy = icmp ult i64 %i.dx, %.val13.i.i, !dbg !7105
  br i1 %i.dy, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i, !dbg !7105

bb.aa:                                            ; preds = %.lr.ph
  %i.dz = add nuw nsw i64 %.sroa.04.0.i.i.i.i77, 1, !dbg !7120 ; 2 uses
    #dbg_value(i64 %i.dz, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6521)
    #dbg_value(i64 %i.dz, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6521)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6435)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6433)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6431)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6522)
  %i.ea = icmp ult i64 %i.dz, %i.cl, !dbg !7117
  br i1 %i.ea, label %.lr.ph, label %.preheader60.i.i.i.i.preheader, !dbg !7118

.preheader60.i.i.i.i.preheader:                   ; preds = %bb.aa, %bb.y
    #dbg_value(i64 %.fr84.i.i.i.i, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6523)
    #dbg_value(ptr undef, !6894, !DIExpression(), !6420)
    #dbg_value(ptr undef, !6880, !DIExpression(), !6418)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6416)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6414)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6524)
  %i.eb = icmp ult i64 %i.dm, %.fr84.i.i.i.i, !dbg !7121
  br i1 %i.eb, label %.lr.ph79, label %.split.us.i31.i.i.i, !dbg !7122

.lr.ph:                                           ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i.i.i.i77 = phi i64 [ %i.dz, %bb.aa ], [ %..i.i30.i.i.i, %bb.y ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.i.i.i.i77, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6521)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i77, !6920, !DIExpression(), !6525)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i77, !6959, !DIExpression(), !6475)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i77, !6964, !DIExpression(), !6480)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i77, !6912, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6521)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i77, !6913, !DIExpression(), !6526)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.i.i.i.i77, !dbg !7123
  %i.ed = load i8, ptr %i.ec, align 1, !dbg !7123, !alias.scope !6976, !noalias !6972, !noundef !593
  %i.ee = add i64 %.sroa.04.0.i.i.i.i77, %i.do, !dbg !7124 ; 2 uses
    #dbg_value(i64 %i.ee, !6949, !DIExpression(), !6457)
    #dbg_value(i64 %i.ee, !6954, !DIExpression(), !6462)
  %i.ef = icmp ult i64 %i.ee, %.val13.i.i, !dbg !7125
  tail call void @llvm.assume(i1 %i.ef), !dbg !7126
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ee, !dbg !7127
  %i.eh = load i8, ptr %i.eg, align 1, !dbg !7128, !alias.scope !6975, !noalias !6972, !noundef !593
  %.not45.i.i.i.i = icmp eq i8 %i.ed, %i.eh, !dbg !7123
  br i1 %.not45.i.i.i.i, label %bb.aa, label %bb.ad, !dbg !7123

.preheader60.i.i.i.i:                             ; preds = %bb.ab
    #dbg_value(i64 %i.ek, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6523)
    #dbg_value(ptr undef, !6894, !DIExpression(), !6420)
    #dbg_value(ptr undef, !6880, !DIExpression(), !6418)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6416)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6414)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6524)
  %i.ei = icmp ult i64 %i.dm, %i.ek, !dbg !7121
  br i1 %i.ei, label %.lr.ph79, label %.split.us.i31.i.i.i, !dbg !7122

.split.us.i31.i.i.i:                              ; preds = %.preheader60.i.i.i.i.preheader, %.preheader60.i.i.i.i
  %i.ej = add i64 %i.do, %i.cl, !dbg !7129        ; 2 uses
  store i64 %i.ej, ptr %i.cm, align 8, !dbg !7129, !alias.scope !6977
  store i64 0, ptr %i.cf, align 8, !dbg !7130, !alias.scope !6977
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !7131

.lr.ph79:                                         ; preds = %.preheader60.i.i.i.i.preheader, %.preheader60.i.i.i.i
  %.sroa.2.0.i.i.i.i78 = phi i64 [ %i.ek, %.preheader60.i.i.i.i ], [ %.fr84.i.i.i.i, %.preheader60.i.i.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.i.i.i.i78, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6523)
    #dbg_value(i64 %.sroa.2.0.i.i.i.i78, !6967, !DIExpression(), !6485)
    #dbg_value(i64 %.sroa.2.0.i.i.i.i78, !6970, !DIExpression(), !6490)
  %i.ek = add i64 %.sroa.2.0.i.i.i.i78, -1, !dbg !7132 ; 6 uses
    #dbg_value(i64 %i.ek, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6523)
    #dbg_value(i64 %i.ek, !6916, !DIExpression(), !6527)
  %i.el = icmp ult i64 %i.ek, %i.cl, !dbg !7133
  br i1 %i.el, label %bb.ab, label %.split56.us.i.i.i.i, !dbg !7133

bb.ab:                                            ; preds = %.lr.ph79
  %i.em = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ek, !dbg !7133
  %i.en = load i8, ptr %i.em, align 1, !dbg !7133, !alias.scope !6976, !noalias !6972, !noundef !593
  %i.eo = add i64 %i.ek, %i.do, !dbg !7134        ; 2 uses
    #dbg_value(i64 %i.eo, !6949, !DIExpression(), !6466)
    #dbg_value(i64 %i.eo, !6954, !DIExpression(), !6470)
  %i.ep = icmp ult i64 %i.eo, %.val13.i.i, !dbg !7135
  tail call void @llvm.assume(i1 %i.ep), !dbg !7136
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.eo, !dbg !7137
  %i.er = load i8, ptr %i.eq, align 1, !dbg !7138, !alias.scope !6975, !noalias !6972, !noundef !593
  %.not44.i.i.i.i = icmp eq i8 %i.en, %i.er, !dbg !7133
  br i1 %.not44.i.i.i.i, label %.preheader60.i.i.i.i, label %bb.ac, !dbg !7133

.split56.us.i.i.i.i:                              ; preds = %.lr.ph79
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef range(i64 0, -9223372036854775808) %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !dbg !7133, !noalias !6991
  unreachable, !dbg !7133

bb.ac:                                            ; preds = %bb.ab
  %i.es = add i64 %i.do, %i.dk, !dbg !7139
  br label %bb.z, !dbg !7140

bb.ad:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.do, %invariant.op
  %i.et = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i77, !dbg !7141
  br label %bb.z, !dbg !7142

bb.ae:                                            ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6992), !dbg !7143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6993), !dbg !7143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6994), !dbg !7143
    #dbg_value(i1 true, !6906, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6436)
    #dbg_value(i64 %i.cn, !6908, !DIExpression(), !6533)
  %.promoted.i32.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !6995 ; 3 uses
  %i.eu = add i64 %.promoted.i32.i.i.i, %i.cn, !dbg !7144 ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %.val13.i.i, !dbg !7145
  br i1 %i.ev, label %.lr.ph.i35.i.i.i, label %._crit_edge.i33.i.i.i, !dbg !7145

.lr.ph.i35.i.i.i:                                 ; preds = %bb.ae
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !6995, !noundef !593 ; 2 uses
  %i.ey = load i64, ptr %i.j, align 8, !alias.scope !6995
  %.fr235.i.i.i = freeze i64 %i.ey, !dbg !7146    ; 10 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !6995
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr235.i.i.i, i64 range(i64 0, -9223372036854775808) %i.cl), !dbg !7146 ; 2 uses
  %i.fb = add i64 %.fr235.i.i.i, -1, !dbg !7146   ; 2 uses
  %.first_iter.i36.i.i.i = icmp ult i64 %i.fb, %i.cl
  %reass.sub91.i.i = sub i64 1, %.fr235.i.i.i     ; 2 uses
  br i1 %.first_iter.i36.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.preheader, label %.lr.ph.split.us.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %.lr.ph.i35.i.i.i
  %exitcond.not.i37.i.i.i81.not = icmp ult i64 %.fr235.i.i.i, %i.cl
  br label %.lr.ph.split.us.i.i.i.i, !dbg !7146

.lr.ph.split.us.i.i.i.us.i.preheader:             ; preds = %.lr.ph.i35.i.i.i
  %exitcond.not.i37.i.i.us.i86.not = icmp ult i64 %.fr235.i.i.i, %i.cl
  %.not58.i.us.i.i.us.i89 = icmp eq i64 %.fr235.i.i.i, 0
  br label %.lr.ph.split.us.i.i.i.us.i, !dbg !7146

.lr.ph.split.us.i.i.i.us.i:                       ; preds = %.lr.ph.split.us.i.i.i.us.i.preheader, %bb.ah
  %i.fc = phi i64 [ %i.gb, %bb.ah ], [ %i.eu, %.lr.ph.split.us.i.i.i.us.i.preheader ]
  %i.fd = phi i64 [ %.sink.i38.i.i.us.i, %bb.ah ], [ %.promoted.i32.i.i.i, %.lr.ph.split.us.i.i.i.us.i.preheader ] ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fc, !dbg !7147
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !7148, !alias.scope !6993, !noalias !6972, !noundef !593
    #dbg_value(i8 %i.ff, !6909, !DIExpression(), !6534)
    #dbg_value(i8 %i.ff, !6931, !DIExpression(), !6440)
  %i.fg = and i8 %i.ff, 63, !dbg !7149
  %i.fh = zext nneg i8 %i.fg to i64, !dbg !7150
  %i.fi = shl nuw i64 1, %i.fh, !dbg !7151
  %i.fj = and i64 %i.fi, %i.ex, !dbg !7151
  %.not.us.i.i.i.us.i = icmp eq i64 %i.fj, 0, !dbg !7151
  br i1 %.not.us.i.i.i.us.i, label %bb.ag, label %.preheader59.i.i.i.us.i.preheader, !dbg !7146

.preheader59.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
    #dbg_value(i64 %.fr235.i.i.i, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6434)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6432)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6427)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6536)
  br i1 %exitcond.not.i37.i.i.us.i86.not, label %.lr.ph88, label %.preheader.i39.us.i.i.us.i.preheader, !dbg !7152

.preheader59.i.i.i.us.i:                          ; preds = %.lr.ph88
  %i.fk = add i64 %.sroa.04.0.us.i.i.i.us.i87, 1, !dbg !7153 ; 2 uses
    #dbg_value(i64 %i.fk, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %i.fk, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6434)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6432)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6427)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6536)
  %exitcond.not.i37.i.i.us.i = icmp eq i64 %i.fk, %umax.i.i.i.i, !dbg !7154
  br i1 %exitcond.not.i37.i.i.us.i, label %.preheader.i39.us.i.i.us.i.preheader, label %.lr.ph88, !dbg !7152

.preheader.i39.us.i.i.us.i.preheader:             ; preds = %.preheader59.i.i.i.us.i, %.preheader59.i.i.i.us.i.preheader
    #dbg_value(i64 %.fr235.i.i.i, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(ptr undef, !6894, !DIExpression(), !6419)
    #dbg_value(ptr undef, !6880, !DIExpression(), !6417)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6415)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6408)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6538)
  br i1 %.not58.i.us.i.i.us.i89, label %.split.us.i41.i.i.i, label %.lr.ph91, !dbg !7155

.lr.ph88:                                         ; preds = %.preheader59.i.i.i.us.i.preheader, %.preheader59.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i87 = phi i64 [ %i.fk, %.preheader59.i.i.i.us.i ], [ %.fr235.i.i.i, %.preheader59.i.i.i.us.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6920, !DIExpression(), !6539)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6959, !DIExpression(), !6473)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6964, !DIExpression(), !6478)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6912, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6913, !DIExpression(), !6540)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.us.i.i.i.us.i87, !dbg !7156
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !7156, !alias.scope !6994, !noalias !6972, !noundef !593
  %i.fn = add i64 %.sroa.04.0.us.i.i.i.us.i87, %i.fd, !dbg !7157 ; 2 uses
    #dbg_value(i64 %i.fn, !6949, !DIExpression(), !6455)
    #dbg_value(i64 %i.fn, !6954, !DIExpression(), !6460)
  %i.fo = icmp ult i64 %i.fn, %.val13.i.i, !dbg !7158
  tail call void @llvm.assume(i1 %i.fo), !dbg !7159
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fn, !dbg !7160
  %i.fq = load i8, ptr %i.fp, align 1, !dbg !7161, !alias.scope !6993, !noalias !6972, !noundef !593
  %.not45.us.i.i.i.us.i = icmp eq i8 %i.fm, %i.fq, !dbg !7156
  br i1 %.not45.us.i.i.i.us.i, label %.preheader59.i.i.i.us.i, label %bb.af, !dbg !7156

bb.af:                                            ; preds = %.lr.ph88
  %.reass302.i.reass.i.us.i = add i64 %i.fd, %reass.sub91.i.i
  %i.fr = add i64 %.reass302.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i87, !dbg !7162
  br label %bb.ah, !dbg !7163

.preheader.i39.us.i.i.us.i:                       ; preds = %.lr.ph91
    #dbg_value(i64 %i.fs, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(ptr undef, !6894, !DIExpression(), !6419)
    #dbg_value(ptr undef, !6880, !DIExpression(), !6417)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6415)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6408)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6538)
  %.not58.i.us.i.i.us.i = icmp eq i64 %i.fs, 0, !dbg !7164
  br i1 %.not58.i.us.i.i.us.i, label %.split.us.i41.i.i.i, label %.lr.ph91, !dbg !7155

.lr.ph91:                                         ; preds = %.preheader.i39.us.i.i.us.i.preheader, %.preheader.i39.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i90 = phi i64 [ %i.fs, %.preheader.i39.us.i.i.us.i ], [ %.fr235.i.i.i, %.preheader.i39.us.i.i.us.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i90, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i90, !6967, !DIExpression(), !6483)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i90, !6970, !DIExpression(), !6488)
  %i.fs = add i64 %.sroa.2.0.us.i.us.i.i.us.i90, -1, !dbg !7165 ; 4 uses
    #dbg_value(i64 %i.fs, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(i64 %i.fs, !6916, !DIExpression(), !6541)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.fs, !dbg !7166
  %i.fu = load i8, ptr %i.ft, align 1, !dbg !7166, !alias.scope !6994, !noalias !6972, !noundef !593
  %i.fv = add i64 %i.fs, %i.fd, !dbg !7167        ; 2 uses
    #dbg_value(i64 %i.fv, !6949, !DIExpression(), !6464)
    #dbg_value(i64 %i.fv, !6954, !DIExpression(), !6468)
  %i.fw = icmp ult i64 %i.fv, %.val13.i.i, !dbg !7168
  tail call void @llvm.assume(i1 %i.fw), !dbg !7169
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fv, !dbg !7170
  %i.fy = load i8, ptr %i.fx, align 1, !dbg !7171, !alias.scope !6993, !noalias !6972, !noundef !593
  %.not44.us.i.us.i.i.us.i = icmp eq i8 %i.fu, %i.fy, !dbg !7166
  br i1 %.not44.us.i.us.i.i.us.i, label %.preheader.i39.us.i.i.us.i, label %.split.us.i.i.us.i, !dbg !7166

.split.us.i.i.us.i:                               ; preds = %.lr.ph91
  %i.fz = add i64 %i.fd, %i.fa, !dbg !7172
  br label %bb.ah, !dbg !7173

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.ga = add i64 %i.fd, %i.cl, !dbg !7174
  br label %bb.ah, !dbg !7175

bb.ah:                                            ; preds = %bb.ag, %.split.us.i.i.us.i, %bb.af
  %.sink.i38.i.i.us.i = phi i64 [ %i.ga, %bb.ag ], [ %i.fr, %bb.af ], [ %i.fz, %.split.us.i.i.us.i ] ; 3 uses
  store i64 %.sink.i38.i.i.us.i, ptr %i.cm, align 8, !dbg !7176, !alias.scope !6995
  %i.gb = add i64 %.sink.i38.i.i.us.i, %i.cn, !dbg !7144 ; 2 uses
    #dbg_value(i64 %i.gb, !6936, !DIExpression(), !6445)
    #dbg_value(i64 %i.gb, !6944, !DIExpression(), !6450)
  %i.gc = icmp ult i64 %i.gb, %.val13.i.i, !dbg !7145
  br i1 %i.gc, label %.lr.ph.split.us.i.i.i.us.i, label %._crit_edge.i33.i.i.i, !dbg !7145

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.ak
  %i.gd = phi i64 [ %i.gu, %bb.ak ], [ %i.eu, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.ge = phi i64 [ %.sink.i38.i.i.i, %bb.ak ], [ %.promoted.i32.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gd, !dbg !7147
  %i.gg = load i8, ptr %i.gf, align 1, !dbg !7148, !alias.scope !6993, !noalias !6972, !noundef !593
    #dbg_value(i8 %i.gg, !6909, !DIExpression(), !6534)
    #dbg_value(i8 %i.gg, !6931, !DIExpression(), !6440)
  %i.gh = and i8 %i.gg, 63, !dbg !7149
  %i.gi = zext nneg i8 %i.gh to i64, !dbg !7150
  %i.gj = shl nuw i64 1, %i.gi, !dbg !7151
  %i.gk = and i64 %i.gj, %i.ex, !dbg !7151
  %.not.us.i.i.i.i = icmp eq i64 %i.gk, 0, !dbg !7151
  br i1 %.not.us.i.i.i.i, label %bb.aj, label %.preheader59.i.i.i.i.preheader, !dbg !7146

.preheader59.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
    #dbg_value(i64 %.fr235.i.i.i, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6434)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6432)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6427)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6536)
  br i1 %exitcond.not.i37.i.i.i81.not, label %.lr.ph83, label %.preheader.split.i41.i.i.i, !dbg !7152

.preheader59.i.i.i.i:                             ; preds = %.lr.ph83
  %i.gl = add i64 %.sroa.04.0.us.i.i.i.i82, 1, !dbg !7153 ; 2 uses
    #dbg_value(i64 %i.gl, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %i.gl, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6434)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6432)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6427)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6536)
  %exitcond.not.i37.i.i.i = icmp eq i64 %i.gl, %umax.i.i.i.i, !dbg !7154
  br i1 %exitcond.not.i37.i.i.i, label %.preheader.split.i41.i.i.i, label %.lr.ph83, !dbg !7152

.preheader.split.i41.i.i.i:                       ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
    #dbg_value(i64 %i.ey, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(ptr undef, !6894, !DIExpression(), !6419)
    #dbg_value(ptr undef, !6880, !DIExpression(), !6417)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6415)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6408)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6538)
  %.not58.i.i.i.i = icmp eq i64 %.fr235.i.i.i, 0, !dbg !7164
  br i1 %.not58.i.i.i.i, label %.split.us.i41.i.i.i, label %.split56.us.i42.i.i.i, !dbg !7155

.lr.ph83:                                         ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
  %.sroa.04.0.us.i.i.i.i82 = phi i64 [ %i.gl, %.preheader59.i.i.i.i ], [ %.fr235.i.i.i, %.preheader59.i.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6920, !DIExpression(), !6539)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6959, !DIExpression(), !6473)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6964, !DIExpression(), !6478)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6912, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6913, !DIExpression(), !6540)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.us.i.i.i.i82, !dbg !7156
  %i.gn = load i8, ptr %i.gm, align 1, !dbg !7156, !alias.scope !6994, !noalias !6972, !noundef !593
  %i.go = add i64 %.sroa.04.0.us.i.i.i.i82, %i.ge, !dbg !7157 ; 2 uses
    #dbg_value(i64 %i.go, !6949, !DIExpression(), !6455)
    #dbg_value(i64 %i.go, !6954, !DIExpression(), !6460)
  %i.gp = icmp ult i64 %i.go, %.val13.i.i, !dbg !7158
  tail call void @llvm.assume(i1 %i.gp), !dbg !7159
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.go, !dbg !7160
  %i.gr = load i8, ptr %i.gq, align 1, !dbg !7161, !alias.scope !6993, !noalias !6972, !noundef !593
  %.not45.us.i.i.i.i = icmp eq i8 %i.gn, %i.gr, !dbg !7156
  br i1 %.not45.us.i.i.i.i, label %.preheader59.i.i.i.i, label %bb.ai, !dbg !7156

bb.ai:                                            ; preds = %.lr.ph83
  %.reass302.i.reass.i.i = add i64 %i.ge, %reass.sub91.i.i
  %i.gs = add i64 %.reass302.i.reass.i.i, %.sroa.04.0.us.i.i.i.i82, !dbg !7162
  br label %bb.ak, !dbg !7163

bb.aj:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gt = add i64 %i.ge, %i.cl, !dbg !7174
  br label %bb.ak, !dbg !7175

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink.i38.i.i.i = phi i64 [ %i.gt, %bb.aj ], [ %i.gs, %bb.ai ] ; 3 uses
  store i64 %.sink.i38.i.i.i, ptr %i.cm, align 8, !dbg !7176, !alias.scope !6995
  %i.gu = add i64 %.sink.i38.i.i.i, %i.cn, !dbg !7144 ; 2 uses
    #dbg_value(i64 %i.gu, !6936, !DIExpression(), !6445)
    #dbg_value(i64 %i.gu, !6944, !DIExpression(), !6450)
  %i.gv = icmp ult i64 %i.gu, %.val13.i.i, !dbg !7145
  br i1 %i.gv, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i33.i.i.i, !dbg !7145

._crit_edge.i33.i.i.i:                            ; preds = %bb.ak, %bb.ah, %bb.ae
  store i64 %.val13.i.i, ptr %i.cm, align 8, !dbg !7177, !alias.scope !6995
  br label %bb.al, !dbg !7178

.split.us.i41.i.i.i:                              ; preds = %.preheader.i39.us.i.i.us.i.preheader, %.preheader.i39.us.i.i.us.i, %.preheader.split.i41.i.i.i
  %i.gw = phi i64 [ %i.ge, %.preheader.split.i41.i.i.i ], [ %i.fd, %.preheader.i39.us.i.i.us.i ], [ %i.fd, %.preheader.i39.us.i.i.us.i.preheader ] ; 2 uses
  %i.gx = add i64 %i.gw, %i.cl, !dbg !7179        ; 2 uses
  store i64 %i.gx, ptr %i.cm, align 8, !dbg !7179, !alias.scope !6995
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !7180

.split56.us.i42.i.i.i:                            ; preds = %.preheader.split.i41.i.i.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !dbg !7166, !noalias !6996
  unreachable, !dbg !7166

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %.split.us.i41.i.i.i, %.split.us.i31.i.i.i, %.loopexit63.i.i.i, %.loopexit62.split.us.i.i.i, %.split186.us.i.i.i, %.split186.us.i.thread.i.i
  %.sroa.9.0.i.i = phi i64 [ %.val13.i.i, %.split186.us.i.i.i ], [ %i.ej, %.split.us.i31.i.i.i ], [ %.lcssa45.i.i, %.loopexit62.split.us.i.i.i ], [ %i.dd, %.loopexit63.i.i.i ], [ %i.gx, %.split.us.i41.i.i.i ], [ %.val13.i.i, %.split186.us.i.thread.i.i ], !dbg !7181
  %.sroa.4.015.i.i = phi i64 [ %.val13.i.i, %.split186.us.i.i.i ], [ %i.do, %.split.us.i31.i.i.i ], [ %.lcssa45.i.i, %.loopexit62.split.us.i.i.i ], [ %i.dc, %.loopexit63.i.i.i ], [ %i.gw, %.split.us.i41.i.i.i ], [ %.val13.i.i, %.split186.us.i.thread.i.i ], !dbg !7181
    #dbg_value(ptr %.val.i.i, !6601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6175)
    #dbg_value(ptr %.val.i.i, !6607, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6178)
    #dbg_value(ptr %.val.i.i, !6610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6183)
    #dbg_value(i64 %.sroa.4.015.i.i, !6602, !DIExpression(), !6543)
    #dbg_value(i64 %.sroa.4.015.i.i, !6608, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6178)
    #dbg_value(i64 %.sroa.4.015.i.i, !6611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6183)
    #dbg_value(i64 %.sroa.9.0.i.i, !6603, !DIExpression(), !6543)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7182 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !dbg !7182, !alias.scope !6606, !noundef !593 ; 2 uses
    #dbg_value(i64 %i.gz, !6608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6178)
    #dbg_value(i64 %i.gz, !6611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6183)
    #dbg_value(i64 %i.gz, !6997, !DIExpression(), !6546)
    #dbg_value(ptr %.val.i.i, !6612, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6547)
    #dbg_value(i64 poison, !6612, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6547)
  %i.ha = sub nuw i64 %.sroa.4.015.i.i, %i.gz, !dbg !7183
    #dbg_value(i64 %i.ha, !6613, !DIExpression(), !6548)
    #dbg_value(ptr %.val.i.i, !6998, !DIExpression(), !6546)
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gz, !dbg !7184
    #dbg_value(ptr %i.hb, !6604, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6549)
    #dbg_value(i64 %i.ha, !6604, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6549)
  store i64 %.sroa.9.0.i.i, ptr %i.gy, align 8, !dbg !7185, !alias.scope !6606
  br label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !7186

bb.al:                                            ; preds = %._crit_edge.i33.i.i.i, %._crit_edge.i.i.i.i, %.loopexit64.i.i.i, %bb.r, %bb.q, %.preheader.i.i.i
    #dbg_value(ptr %0, !7000, !DIExpression(), !6553)
  store i8 1, ptr %i.d, align 1, !dbg !7187, !alias.scope !7004
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !7188
  %i.hd = load i8, ptr %i.hc, align 8, !dbg !7188, !range !1982, !alias.scope !7004, !noundef !593
  %i.he = trunc nuw i8 %i.hd to i1, !dbg !7188
  br i1 %i.he, label %._crit_edge.i.i.i, label %bb.am, !dbg !7188

._crit_edge.i.i.i:                                ; preds = %bb.al
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !7189, !alias.scope !7004
  %.phi.trans.insert13.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre14.i.i.i = load i64, ptr %.phi.trans.insert13.i.i.i, align 8, !dbg !7190, !alias.scope !7004
  br label %bb.an, !dbg !7188

bb.am:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !7191
  %i.hg = load i64, ptr %i.hf, align 8, !dbg !7191, !alias.scope !7004, !noundef !593 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7192
  %i.hi = load i64, ptr %i.hh, align 8, !dbg !7192, !alias.scope !7004, !noundef !593 ; 2 uses
  %.not.i14.i.i = icmp eq i64 %i.hg, %i.hi, !dbg !7191
  br i1 %.not.i14.i.i, label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, label %bb.an, !dbg !7191

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i.i
  %i.hj = phi i64 [ %.pre14.i.i.i, %._crit_edge.i.i.i ], [ %i.hg, %bb.am ], !dbg !7190
  %i.hk = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hi, %bb.am ], !dbg !7189 ; 2 uses
    #dbg_value(ptr %.val.i.i, !7005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6558)
    #dbg_value(ptr %.val.i.i, !7008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6563)
    #dbg_value(i64 poison, !7005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6558)
    #dbg_value(i64 poison, !7008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6563)
    #dbg_value(i64 %i.hk, !7006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6558)
    #dbg_value(i64 %i.hk, !7009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6563)
    #dbg_value(i64 %i.hk, !7013, !DIExpression(), !6566)
    #dbg_value(i64 %i.hj, !7006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6558)
    #dbg_value(i64 %i.hj, !7009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6563)
    #dbg_value(ptr %.val.i.i, !7010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6567)
    #dbg_value(i64 poison, !7010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6567)
  %i.hl = sub nuw i64 %i.hj, %i.hk, !dbg !7193
    #dbg_value(i64 %i.hl, !7011, !DIExpression(), !6568)
    #dbg_value(ptr %.val.i.i, !7014, !DIExpression(), !6566)
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.hk, !dbg !7194
  br label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !7195

bb.ao:                                            ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !dbg !7196, !alias.scope !6588
    #dbg_value(ptr %0, !7000, !DIExpression(), !6570)
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 121, !dbg !7197 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !dbg !7197, !range !1982, !alias.scope !7016, !noundef !593
  %i.hp = trunc nuw i8 %i.ho to i1, !dbg !7197
  br i1 %i.hp, label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, label %bb.ap, !dbg !7197

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.hn, align 1, !dbg !7198, !alias.scope !7016
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !7199
  %i.hr = load i8, ptr %i.hq, align 8, !dbg !7199, !range !1982, !alias.scope !7016, !noundef !593
  %i.hs = trunc nuw i8 %i.hr to i1, !dbg !7199
  br i1 %i.hs, label %._crit_edge.i.i, label %bb.aq, !dbg !7199

._crit_edge.i.i:                                  ; preds = %bb.ap
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !dbg !7200, !alias.scope !7016
  %.phi.trans.insert13.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre14.i.i = load i64, ptr %.phi.trans.insert13.i.i, align 8, !dbg !7201, !alias.scope !7016
  br label %bb.ar, !dbg !7199

bb.aq:                                            ; preds = %bb.ap
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !7202
  %i.hu = load i64, ptr %i.ht, align 8, !dbg !7202, !alias.scope !7016, !noundef !593 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7203
  %i.hw = load i64, ptr %i.hv, align 8, !dbg !7203, !alias.scope !7016, !noundef !593 ; 2 uses
  %.not.i.i = icmp eq i64 %i.hu, %i.hw, !dbg !7202
  br i1 %.not.i.i, label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, label %bb.ar, !dbg !7202

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i
  %i.hx = phi i64 [ %.pre14.i.i, %._crit_edge.i.i ], [ %i.hu, %bb.aq ], !dbg !7201
  %i.hy = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.hw, %bb.aq ], !dbg !7200 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7204
  %.val.i2.i = load ptr, ptr %i.hz, align 8, !dbg !7204, !alias.scope !7016, !nonnull !593, !noundef !593
    #dbg_value(ptr %.val.i2.i, !7005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6574)
    #dbg_value(ptr %.val.i2.i, !7008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6576)
    #dbg_value(i64 poison, !7005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6574)
    #dbg_value(i64 poison, !7008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6576)
    #dbg_value(i64 %i.hy, !7006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6574)
    #dbg_value(i64 %i.hy, !7009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6576)
    #dbg_value(i64 %i.hy, !7013, !DIExpression(), !6578)
    #dbg_value(i64 %i.hx, !7006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6574)
    #dbg_value(i64 %i.hx, !7009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6576)
    #dbg_value(ptr %.val.i2.i, !7010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6579)
    #dbg_value(i64 poison, !7010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6579)
  %i.ia = sub nuw i64 %i.hx, %i.hy, !dbg !7205
    #dbg_value(i64 %i.ia, !7011, !DIExpression(), !6580)
    #dbg_value(ptr %.val.i2.i, !7014, !DIExpression(), !6578)
  %i.ib = getelementptr inbounds nuw i8, ptr %.val.i2.i, i64 %i.hy, !dbg !7206
  br label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !7207

_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.a, %bb.b, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.ar
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ undef, %bb.am ], [ undef, %bb.b ], [ %i.ha, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %i.hl, %bb.an ], [ %i.ia, %bb.ar ], [ undef, %bb.aq ], [ undef, %bb.ao ], !dbg !7208
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %bb.am ], [ null, %bb.b ], [ %i.hb, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %i.hm, %bb.an ], [ %i.ib, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ao ], !dbg !7208
  %i.ic = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0, !dbg !7209
  %i.id = insertvalue { ptr, i64 } %i.ic, i64 %.sroa.4.0.i, 1, !dbg !7209
  ret { ptr, i64 } %i.id, !dbg !7210
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecRShEINtB5_10SpecExtendRBU_INtNtNtCskKLDkoKarTP_4core5slice4iter4IterBU_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 !dbg !7216 {
bb.a:
    #dbg_value(ptr poison, !7308, !DIExpression(), !7222)
    #dbg_value(ptr poison, !7317, !DIExpression(), !7320)
    #dbg_value(ptr %1, !7300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7321)
    #dbg_value(ptr %2, !7300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7321)
    #dbg_value(ptr %0, !7299, !DIExpression(), !7321)
    #dbg_value(ptr undef, !7317, !DIExpression(), !7320)
    #dbg_value(ptr undef, !7308, !DIExpression(), !7222)
    #dbg_value(i64 16, !7322, !DIExpression(), !7230)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !7313, !DIExpression(), !7231)
    #dbg_value(ptr %2, !7337, !DIExpression(), !7232)
    #dbg_value(ptr %1, !7338, !DIExpression(), !7232)
    #dbg_value(ptr %2, !7331, !DIExpression(), !7233)
    #dbg_value(ptr %1, !7332, !DIExpression(), !7233)
    #dbg_value(ptr %1, !7326, !DIExpression(), !7234)
    #dbg_value(ptr %2, !7325, !DIExpression(), !7234)
  %i.a = ptrtoint ptr %2 to i64, !dbg !7421
  %i.b = ptrtoint ptr %1 to i64, !dbg !7421
  %i.c = sub nuw i64 %i.a, %i.b, !dbg !7421       ; 2 uses
  %i.d = lshr exact i64 %i.c, 4, !dbg !7421       ; 3 uses
    #dbg_value(ptr %1, !7301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7340)
    #dbg_value(i64 %i.d, !7301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7340)
    #dbg_value(ptr %0, !7341, !DIExpression(), !7238)
    #dbg_value(ptr %0, !7350, !DIExpression(), !7243)
    #dbg_value(ptr %0, !7356, !DIExpression(), !7246)
    #dbg_value(ptr %0, !7362, !DIExpression(), !7249)
    #dbg_value(ptr %1, !7348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7238)
    #dbg_value(ptr %1, !7352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7243)
    #dbg_value(i64 %i.d, !7348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7238)
    #dbg_value(i64 %i.d, !7352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7243)
    #dbg_value(i64 %i.d, !7353, !DIExpression(), !7250)
    #dbg_value(i64 %i.d, !7367, !DIExpression(), !7253)
    #dbg_value(ptr %0, !7373, !DIExpression(), !7256)
    #dbg_value(i64 %i.d, !7377, !DIExpression(), !7256)
    #dbg_value(i64 %i.d, !7379, !DIExpression(), !7259)
    #dbg_value(i64 %i.d, !7387, !DIExpression(), !7262)
    #dbg_value(i64 %i.d, !7392, !DIExpression(), !7265)
    #dbg_value(ptr %0, !7384, !DIExpression(), !7266)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7422 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !7422, !alias.scope !7397, !noundef !593 ; 5 uses
    #dbg_value(i64 %i.f, !7385, !DIExpression(), !7259)
    #dbg_value(i64 %i.f, !7389, !DIExpression(), !7262)
    #dbg_value(i64 %i.f, !7394, !DIExpression(), !7265)
    #dbg_value(i64 %i.f, !7398, !DIExpression(), !7273)
    #dbg_value(ptr %0, !7388, !DIExpression(), !7262)
    #dbg_value(ptr %0, !7393, !DIExpression(), !7265)
    #dbg_value(ptr %0, !7401, !DIExpression(), !7276)
    #dbg_value(i64 8, !7390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7262)
    #dbg_value(i64 8, !7395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7265)
    #dbg_value(i64 16, !7390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7262)
    #dbg_value(i64 16, !7395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7265)
    #dbg_value(i64 16, !7402, !DIExpression(), !7276)
  %i.g = load i64, ptr %0, align 8, !dbg !7423, !range !1743, !alias.scope !7397, !noundef !593
    #dbg_value(i64 %i.g, !7399, !DIExpression(), !7273)
  %i.h = sub i64 %i.g, %i.f, !dbg !7424
  %i.i = icmp ugt i64 %i.d, %i.h, !dbg !7425
  br i1 %i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i, !dbg !7426, !prof !1744

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.thread.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef range(i64 0, 1152921504606846976) %i.d, i64 noundef 8, i64 noundef 16), !dbg !7427
  %i.j = load i64, ptr %i.e, align 8, !dbg !7428, !alias.scope !7404, !noundef !593 ; 2 uses
    #dbg_value(i64 %i.j, !7354, !DIExpression(), !7277)
    #dbg_value(i64 %i.j, !7405, !DIExpression(), !7280)
  %i.k = icmp ult i64 %i.j, 576460752303423488, !dbg !7429
  tail call void @llvm.assume(i1 %i.k), !dbg !7430
  br label %bb.b, !dbg !7431

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %bb.a
end_hunk_0
