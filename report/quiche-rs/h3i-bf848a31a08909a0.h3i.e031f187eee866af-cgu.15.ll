Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.15?download=true
inline.NumInlined: 312
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvNtNtCsjfnSKV9Rz3v_3h3i7prompts2h316squish_suggester0INtB7_5FnMutTRRReEE8call_mutBW_:bb.a
    #dbg_value(ptr poison, !2060, !DIExpression(), !18490)
  %i.cx = add nuw nsw i64 %i.ck, 2, !dbg !19974
  %i.cy = icmp samesign ne i64 %i.cx, %i.al, !dbg !19974
  tail call void @llvm.assume(i1 %i.cy), !dbg !19975
    #dbg_value(i8 poison, !19364, !DIExpression(), !18491)
    #dbg_value(i8 poison, !19386, !DIExpression(), !18493)
    #dbg_value(i8 poison, !19383, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !18493)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !19365, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !18494)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !19383, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !18496)
    #dbg_value(!DIArgList(i32 poison, i8 poison, i8 poison), !19363, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 12, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !18481)
  %i.cz = icmp samesign ugt i8 %i.cs, -17, !dbg !19981
  br i1 %i.cz, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit30.i.i.us.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, !dbg !19981

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit30.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit28.i.i.us.i.i.i
    #dbg_value(ptr undef, !2036, !DIExpression(), !18498)
    #dbg_value(i64 1, !2050, !DIExpression(), !18500)
    #dbg_value(!DIArgList(ptr %i.aj, i64 %i.ck), !2046, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !18501)
    #dbg_value(!DIArgList(ptr %i.aj, i64 %i.ck), !2054, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !18500)
    #dbg_value(!DIArgList(ptr %i.aj, i64 %i.al), !2047, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18502)
    #dbg_value(ptr poison, !2057, !DIExpression(), !18504)
    #dbg_value(ptr poison, !2060, !DIExpression(), !18505)
  %i.da = add nuw nsw i64 %i.ck, 3, !dbg !19983
  %i.db = icmp samesign ne i64 %i.da, %i.al, !dbg !19983
  tail call void @llvm.assume(i1 %i.db), !dbg !19984
    #dbg_value(i8 poison, !19366, !DIExpression(), !18506)
    #dbg_value(i8 poison, !19386, !DIExpression(), !18496)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i8 poison), !19363, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 18, DW_OP_shl, DW_OP_constu, 1835008, DW_OP_and, DW_OP_or, DW_OP_stack_value), !18481)
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, !dbg !19990

.split.us181.i.i.i:                               ; preds = %bb.s, %.split.i.i.us.i.i.i, %bb.j, %.split.i.i.us.i.peel.i.i
  %.lcssa72.i.i = phi i64 [ %.promoted177.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted177.i.i.i, %bb.j ], [ %i.ck, %.split.i.i.us.i.i.i ], [ %i.ck, %bb.s ]
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %i.al, i64 noundef %.lcssa72.i.i, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #32
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20000

.noexc8.i:                                        ; preds = %.split.us181.i.i.i
  unreachable, !dbg !20000

default.unreachable:                              ; preds = %.noexc7.i
  unreachable

bb.v:                                             ; preds = %.noexc7.i
    #dbg_value(ptr %i.b, !19243, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18533)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !20001
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !20001, !alias.scope !19222, !noalias !19221, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !19244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18534)
    #dbg_value(ptr poison, !19434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18537)
    #dbg_value(ptr poison, !19438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18541)
    #dbg_value(ptr poison, !19444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18544)
    #dbg_value(i64 %i.dd, !19244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18534)
    #dbg_value(i64 %i.dd, !19434, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18537)
    #dbg_value(i64 %i.dd, !19438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18541)
    #dbg_value(i64 %i.dd, !19444, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18544)
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20002
  %i.df = load i64, ptr %i.de, align 8, !dbg !20002, !alias.scope !19222, !noalias !19221, !noundef !1445 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.df, %i.dd, !dbg !20002
  br i1 %.not.i.i.i, label %bb.x, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !20002

bb.w:                                             ; preds = %.noexc7.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20003 ; 2 uses
    #dbg_value(ptr %i.dg, !19248, !DIExpression(), !18545)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !20004
  %i.di = load i64, ptr %i.dh, align 8, !dbg !20004, !alias.scope !19222, !noalias !19221, !noundef !1445 ; 2 uses
  %i.dj = icmp eq i64 %i.di, -1, !dbg !20004
    #dbg_value(i1 %i.dj, !19249, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18546)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !20005
  %i.dl = load ptr, ptr %i.dk, align 8, !dbg !20005, !alias.scope !19222, !noalias !19221, !nonnull !1445, !noundef !1445 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !20005
  %i.dn = load i64, ptr %i.dm, align 8, !dbg !20005, !alias.scope !19222, !noalias !19221, !noundef !1445 ; 8 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !20005
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !20005, !alias.scope !19222, !noalias !19221, !nonnull !1445, !noundef !1445 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !20005
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !20005, !alias.scope !19222, !noalias !19221, !noundef !1445 ; 12 uses
    #dbg_value(ptr poison, !19448, !DIExpression(), !18571)
    #dbg_value(ptr poison, !19448, !DIExpression(), !18577)
    #dbg_value(ptr poison, !19457, !DIExpression(), !18578)
    #dbg_value(ptr poison, !19457, !DIExpression(), !18579)
    #dbg_value(ptr poison, !19460, !DIExpression(), !18580)
    #dbg_value(ptr poison, !19460, !DIExpression(), !18581)
    #dbg_value(ptr poison, !19474, !DIExpression(), !18582)
    #dbg_value(ptr poison, !19474, !DIExpression(), !18583)
    #dbg_value(ptr poison, !19448, !DIExpression(), !18590)
    #dbg_value(ptr poison, !19448, !DIExpression(), !18594)
    #dbg_value(ptr poison, !19500, !DIExpression(), !18595)
    #dbg_value(ptr poison, !19500, !DIExpression(), !18596)
    #dbg_value(ptr poison, !19504, !DIExpression(), !18597)
    #dbg_value(ptr poison, !19504, !DIExpression(), !18598)
    #dbg_value(ptr %i.dg, !19484, !DIExpression(), !18599)
    #dbg_value(ptr %i.dg, !19484, !DIExpression(), !18600)
    #dbg_value(ptr %i.dg, !19507, !DIExpression(), !18603)
    #dbg_value(ptr %i.dg, !19507, !DIExpression(), !18605)
    #dbg_value(ptr %i.dl, !19485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18599)
    #dbg_value(ptr %i.dl, !19485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18600)
    #dbg_value(ptr %i.dl, !19514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18608)
    #dbg_value(ptr %i.dl, !19514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18610)
    #dbg_value(ptr %i.dl, !19520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18613)
    #dbg_value(ptr %i.dl, !19520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18615)
    #dbg_value(ptr %i.dl, !19526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18618)
    #dbg_value(ptr %i.dl, !19526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18620)
    #dbg_value(ptr %i.dl, !19531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18623)
    #dbg_value(ptr %i.dl, !19531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18625)
    #dbg_value(ptr %i.dl, !19526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18627)
    #dbg_value(ptr %i.dl, !19526, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18629)
    #dbg_value(ptr %i.dl, !19531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18631)
    #dbg_value(ptr %i.dl, !19531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18633)
    #dbg_value(i64 %i.dn, !19485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18599)
    #dbg_value(i64 %i.dn, !19485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18600)
    #dbg_value(i64 %i.dn, !19514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18608)
    #dbg_value(i64 %i.dn, !19514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18610)
    #dbg_value(i64 %i.dn, !19520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18613)
    #dbg_value(i64 %i.dn, !19520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18615)
    #dbg_value(i64 %i.dn, !19526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18618)
    #dbg_value(i64 %i.dn, !19526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18620)
    #dbg_value(i64 %i.dn, !19531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18623)
    #dbg_value(i64 %i.dn, !19531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18625)
    #dbg_value(i64 %i.dn, !19526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18627)
    #dbg_value(i64 %i.dn, !19526, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18629)
    #dbg_value(i64 %i.dn, !19531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18631)
    #dbg_value(i64 %i.dn, !19531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18633)
    #dbg_value(ptr %i.dp, !19486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18599)
    #dbg_value(ptr %i.dp, !19486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18600)
    #dbg_value(i64 %i.dr, !19486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18599)
    #dbg_value(i64 %i.dr, !19486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18600)
    #dbg_value(i64 1, !19537, !DIExpression(), !18636)
    #dbg_value(i64 1, !19537, !DIExpression(), !18638)
    #dbg_value(i64 1, !19541, !DIExpression(), !18641)
    #dbg_value(i64 1, !19541, !DIExpression(), !18643)
    #dbg_value(i64 1, !19544, !DIExpression(), !18646)
    #dbg_value(i64 1, !19544, !DIExpression(), !18648)
    #dbg_value(i64 1, !19547, !DIExpression(), !18651)
    #dbg_value(i64 1, !19547, !DIExpression(), !18653)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !20006 ; 2 uses
    #dbg_value(i64 poison, !19488, !DIExpression(), !18655)
    #dbg_value(i64 poison, !19488, !DIExpression(), !18656)
  %i.dt = add nsw i64 %i.dr, -1, !dbg !20007      ; 4 uses
  br i1 %i.dj, label %bb.ai, label %bb.aa, !dbg !20008

bb.x:                                             ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !20001
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !20001, !alias.scope !19222, !noalias !19221, !nonnull !1445, !noundef !1445
    #dbg_value(ptr %i.dv, !19244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18534)
    #dbg_value(ptr %i.dv, !19434, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18537)
    #dbg_value(ptr %i.dv, !19438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18541)
    #dbg_value(ptr %i.dv, !19444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18544)
    #dbg_value(i64 %i.df, !19436, !DIExpression(), !18537)
    #dbg_value(i64 %i.df, !19441, !DIExpression(), !18541)
    #dbg_value(i64 %i.df, !19445, !DIExpression(), !18544)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !20009
  %i.dx = load i8, ptr %i.dw, align 8, !dbg !20009, !alias.scope !19222, !noalias !19221, !noundef !1445 ; 2 uses
  %i.dy = sub nuw i64 %i.dd, %i.df, !dbg !20010   ; 3 uses
    #dbg_value(i64 %i.dy, !19442, !DIExpression(), !18657)
    #dbg_value(i64 %i.dy, !19446, !DIExpression(), !18544)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.df, !dbg !20011 ; 2 uses
    #dbg_value(i8 %i.dx, !19206, !DIExpression(), !18659)
    #dbg_value(i8 %i.dx, !19214, !DIExpression(), !18661)
    #dbg_value(ptr %i.dz, !19210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18659)
    #dbg_value(ptr %i.dz, !19215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18661)
    #dbg_value(i64 %i.dy, !19210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18659)
    #dbg_value(i64 %i.dy, !19215, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18661)
  %i.ea = icmp samesign ult i64 %i.dy, 16, !dbg !20012
  br i1 %i.ea, label %.lr.ph.i.i15.i.i, label %bb.y, !dbg !20012

bb.y:                                             ; preds = %bb.x
  %i.eb = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, -9223372036854775808) %i.dy)
          to label %.noexc9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20013

.noexc9.i:                                        ; preds = %bb.y
  %i.ec = extractvalue { i64, i64 } %i.eb, 0, !dbg !20013
    #dbg_value(i64 %i.ec, !19211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18662)
    #dbg_value(i64 poison, !19211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18662)
  %i.ed = trunc nuw i64 %i.ec to i1, !dbg !20014
  br i1 %i.ed, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !20014

.lr.ph.i.i15.i.i:                                 ; preds = %bb.x, %bb.z
  %.sroa.04.015.i.i16.i.i = phi i64 [ %i.eh, %bb.z ], [ 0, %bb.x ] ; 2 uses
    #dbg_value(i64 %.sroa.04.015.i.i16.i.i, !19216, !DIExpression(), !18663)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.sroa.04.015.i.i16.i.i, !dbg !20015
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !20015, !alias.scope !19550, !noalias !19551, !noundef !1445
  %i.eg = icmp eq i8 %i.ef, %i.dx, !dbg !20015
  br i1 %i.eg, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, label %bb.z, !dbg !20015

bb.z:                                             ; preds = %.lr.ph.i.i15.i.i
  %i.eh = add nuw nsw i64 %.sroa.04.015.i.i16.i.i, 1, !dbg !20016 ; 2 uses
    #dbg_value(i64 %i.eh, !19216, !DIExpression(), !18663)
  %exitcond.not.i27.i.i.i = icmp eq i64 %i.eh, %i.dy, !dbg !20017
  br i1 %exitcond.not.i27.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph.i.i15.i.i, !dbg !20017

bb.aa:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19552), !dbg !20018
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19553), !dbg !20018
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19554), !dbg !20018
    #dbg_value(i1 false, !19487, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18600)
    #dbg_value(i64 %i.dt, !19489, !DIExpression(), !18670)
  %.promoted.i.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !19555, !noalias !19221 ; 2 uses
  %i.ei = add i64 %.promoted.i.i.i.i, %i.dt, !dbg !20019 ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.dn, !dbg !20020
  br i1 %i.ej, label %.lr.ph.i28.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !20020

.lr.ph.i28.i.i.i:                                 ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !19555, !noalias !19221, !noundef !1445
  %i.em = load i64, ptr %i.dg, align 8, !alias.scope !19555, !noalias !19221 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !19555, !noalias !19221 ; 2 uses
  %i.ep = sub i64 %i.dr, %i.eo
  %invariant.op = sub i64 1, %i.em, !dbg !20021
  br label %.lr.ph.split.i.i.i.i, !dbg !20021

.lr.ph.split.i.i.i.i:                             ; preds = %bb.ad, %.lr.ph.i28.i.i.i
  %.sink94.i.i53.i.i = phi i64 [ %.sink94.i.i.i.i, %bb.ad ], [ %i.di, %.lr.ph.i28.i.i.i ] ; 3 uses
  %.sink95.i.i50.i.i = phi i64 [ %.sink95.i.i.i.i, %bb.ad ], [ %.promoted.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 5 uses
  %i.eq = phi i64 [ %i.ez, %bb.ad ], [ %i.ei, %.lr.ph.i28.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.eq, !dbg !20022
  %i.es = load i8, ptr %i.er, align 1, !dbg !20023, !alias.scope !19553, !noalias !19551, !noundef !1445
    #dbg_value(i8 %i.es, !19490, !DIExpression(), !18671)
    #dbg_value(i8 %i.es, !19512, !DIExpression(), !18605)
  %i.et = and i8 %i.es, 63, !dbg !20024
  %i.eu = zext nneg i8 %i.et to i64, !dbg !20025
  %i.ev = shl nuw i64 1, %i.eu, !dbg !20026
  %i.ew = and i64 %i.ev, %i.el, !dbg !20026
  %.not.i29.i.i.i = icmp eq i64 %i.ew, 0, !dbg !20026
  br i1 %.not.i29.i.i.i, label %bb.ab, label %bb.ac, !dbg !20021

bb.ab:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.ex = add i64 %.sink95.i.i50.i.i, %i.dr, !dbg !20027
  br label %bb.ad, !dbg !20028

bb.ac:                                            ; preds = %.lr.ph.split.i.i.i.i
    #dbg_value(i64 %i.em, !19556, !DIExpression(), !18674)
    #dbg_value(i64 %.sink94.i.i53.i.i, !19557, !DIExpression(), !18674)
    #dbg_value(ptr undef, !2940, !DIExpression(DW_OP_deref), !18676)
    #dbg_value(ptr undef, !2942, !DIExpression(DW_OP_deref), !18676)
  %..i.i30.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink94.i.i53.i.i, i64 %i.em), !dbg !20029 ; 2 uses
    #dbg_value(i64 %..i.i30.i.i.i, !19492, !DIExpression(), !18677)
    #dbg_value(i64 %..i.i30.i.i.i, !19493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18678)
    #dbg_value(i64 %i.dr, !19493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18678)
    #dbg_value(ptr undef, !19504, !DIExpression(), !18598)
    #dbg_value(ptr undef, !19500, !DIExpression(), !18596)
    #dbg_value(ptr undef, !19448, !DIExpression(), !18594)
    #dbg_value(ptr undef, !19449, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18679)
  %i.ey = icmp ult i64 %..i.i30.i.i.i, %i.dr, !dbg !20030
  br i1 %i.ey, label %.lr.ph118, label %.preheader60.i.i.i.i.preheader, !dbg !20031

bb.ad:                                            ; preds = %bb.ah, %bb.ag, %bb.ab
  %.sink95.i.i.i.i = phi i64 [ %i.fu, %bb.ah ], [ %i.ft, %bb.ag ], [ %i.ex, %bb.ab ] ; 2 uses
  %.sink94.i.i.i.i = phi i64 [ 0, %bb.ah ], [ %i.ep, %bb.ag ], [ 0, %bb.ab ]
  %i.ez = add i64 %.sink95.i.i.i.i, %i.dt, !dbg !20019 ; 2 uses
    #dbg_value(i64 %i.ez, !19517, !DIExpression(), !18610)
    #dbg_value(i64 %i.ez, !19524, !DIExpression(), !18615)
  %i.fa = icmp ult i64 %i.ez, %i.dn, !dbg !20020
  br i1 %i.fa, label %.lr.ph.split.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !20020

bb.ae:                                            ; preds = %.lr.ph118
  %i.fb = add nuw nsw i64 %.sroa.04.0.i.i.i.i117, 1, !dbg !20032 ; 2 uses
    #dbg_value(i64 %i.fb, !19493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18678)
    #dbg_value(i64 %i.fb, !19493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18678)
    #dbg_value(ptr undef, !19504, !DIExpression(), !18598)
    #dbg_value(ptr undef, !19500, !DIExpression(), !18596)
    #dbg_value(ptr undef, !19448, !DIExpression(), !18594)
    #dbg_value(ptr undef, !19449, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18679)
  %i.fc = icmp ult i64 %i.fb, %i.dr, !dbg !20030
  br i1 %i.fc, label %.lr.ph118, label %.preheader60.i.i.i.i.preheader, !dbg !20031

.preheader60.i.i.i.i.preheader:                   ; preds = %bb.ae, %bb.ac
    #dbg_value(i64 %i.em, !19496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18680)
    #dbg_value(ptr undef, !19474, !DIExpression(), !18583)
    #dbg_value(ptr undef, !19460, !DIExpression(), !18581)
    #dbg_value(ptr undef, !19457, !DIExpression(), !18579)
    #dbg_value(ptr undef, !19448, !DIExpression(), !18577)
    #dbg_value(ptr undef, !19449, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18681)
  %i.fd = icmp ult i64 %.sink94.i.i53.i.i, %i.em, !dbg !20033
  br i1 %i.fd, label %.lr.ph120, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !20034

.lr.ph118:                                        ; preds = %bb.ac, %bb.ae
  %.sroa.04.0.i.i.i.i117 = phi i64 [ %i.fb, %bb.ae ], [ %..i.i30.i.i.i, %bb.ac ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.i.i.i.i117, !19493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18678)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i117, !19501, !DIExpression(), !18682)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i117, !19539, !DIExpression(), !18638)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i117, !19542, !DIExpression(), !18643)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i117, !19493, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18678)
    #dbg_value(i64 %.sroa.04.0.i.i.i.i117, !19494, !DIExpression(), !18683)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.04.0.i.i.i.i117, !dbg !20035
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !20035, !alias.scope !19554, !noalias !19551, !noundef !1445
  %i.fg = add i64 %.sroa.04.0.i.i.i.i117, %.sink95.i.i50.i.i, !dbg !20036 ; 2 uses
    #dbg_value(i64 %i.fg, !19529, !DIExpression(), !18620)
    #dbg_value(i64 %i.fg, !19534, !DIExpression(), !18625)
  %i.fh = icmp ult i64 %i.fg, %i.dn, !dbg !20037
  tail call void @llvm.assume(i1 %i.fh), !dbg !20038
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.fg, !dbg !20039
  %i.fj = load i8, ptr %i.fi, align 1, !dbg !20040, !alias.scope !19553, !noalias !19551, !noundef !1445
  %.not45.i.i.i.i = icmp eq i8 %i.ff, %i.fj, !dbg !20035
  br i1 %.not45.i.i.i.i, label %bb.ae, label %bb.ah, !dbg !20035

.preheader60.i.i.i.i:                             ; preds = %bb.af
    #dbg_value(i64 %i.fl, !19496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18680)
    #dbg_value(ptr undef, !19474, !DIExpression(), !18583)
    #dbg_value(ptr undef, !19460, !DIExpression(), !18581)
    #dbg_value(ptr undef, !19457, !DIExpression(), !18579)
    #dbg_value(ptr undef, !19448, !DIExpression(), !18577)
    #dbg_value(ptr undef, !19449, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18681)
  %i.fk = icmp ult i64 %.sink94.i.i53.i.i, %i.fl, !dbg !20033
  br i1 %i.fk, label %.lr.ph120, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !20034

.lr.ph120:                                        ; preds = %.preheader60.i.i.i.i.preheader, %.preheader60.i.i.i.i
  %.sroa.2.0.i.i.i.i119 = phi i64 [ %i.fl, %.preheader60.i.i.i.i ], [ %i.em, %.preheader60.i.i.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.i.i.i.i119, !19496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18680)
    #dbg_value(i64 %.sroa.2.0.i.i.i.i119, !19545, !DIExpression(), !18648)
    #dbg_value(i64 %.sroa.2.0.i.i.i.i119, !19548, !DIExpression(), !18653)
  %i.fl = add i64 %.sroa.2.0.i.i.i.i119, -1, !dbg !20041 ; 6 uses
    #dbg_value(i64 %i.fl, !19496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18680)
    #dbg_value(i64 %i.fl, !19497, !DIExpression(), !18684)
  %i.fm = icmp ult i64 %i.fl, %i.dr, !dbg !20042
  br i1 %i.fm, label %bb.af, label %.invoke.i, !dbg !20042

bb.af:                                            ; preds = %.lr.ph120
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.fl, !dbg !20042
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !20042, !alias.scope !19554, !noalias !19551, !noundef !1445
  %i.fp = add i64 %i.fl, %.sink95.i.i50.i.i, !dbg !20043 ; 2 uses
    #dbg_value(i64 %i.fp, !19529, !DIExpression(), !18629)
    #dbg_value(i64 %i.fp, !19534, !DIExpression(), !18633)
  %i.fq = icmp ult i64 %i.fp, %i.dn, !dbg !20044
  tail call void @llvm.assume(i1 %i.fq), !dbg !20045
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.fp, !dbg !20046
  %i.fs = load i8, ptr %i.fr, align 1, !dbg !20047, !alias.scope !19553, !noalias !19551, !noundef !1445
  %.not44.i.i.i.i = icmp eq i8 %i.fo, %i.fs, !dbg !20042
  br i1 %.not44.i.i.i.i, label %.preheader60.i.i.i.i, label %bb.ag, !dbg !20042

bb.ag:                                            ; preds = %bb.af
  %i.ft = add i64 %.sink95.i.i50.i.i, %i.eo, !dbg !20048
  br label %bb.ad, !dbg !20049

bb.ah:                                            ; preds = %.lr.ph118
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %.sink95.i.i50.i.i, %invariant.op
  %i.fu = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i117, !dbg !20050
  br label %bb.ad, !dbg !20051

bb.ai:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19559), !dbg !20052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19560), !dbg !20052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19561), !dbg !20052
    #dbg_value(i1 true, !19487, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18599)
    #dbg_value(i64 %i.dt, !19489, !DIExpression(), !18689)
  %.promoted.i32.i.i.i = load i64, ptr %i.ds, align 8, !alias.scope !19562, !noalias !19221 ; 2 uses
  %i.fv = add i64 %.promoted.i32.i.i.i, %i.dt, !dbg !20053 ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.dn, !dbg !20054
  br i1 %i.fw, label %.lr.ph.i35.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !20054

.lr.ph.i35.i.i.i:                                 ; preds = %bb.ai
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !19562, !noalias !19221, !noundef !1445
  %i.fz = load i64, ptr %i.dg, align 8, !alias.scope !19562, !noalias !19221
  %.fr235.i.i.i = freeze i64 %i.fz, !dbg !20055   ; 7 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !19562, !noalias !19221
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr235.i.i.i, i64 range(i64 0, -9223372036854775808) %i.dr), !dbg !20055
  %i.gc = add i64 %.fr235.i.i.i, -1, !dbg !20055  ; 2 uses
  %.first_iter.i36.i.i.i = icmp ult i64 %i.gc, %i.dr
  %exitcond.not.i37.i.i.i121.not = icmp ult i64 %.fr235.i.i.i, %i.dr
  %invariant.op163 = sub i64 1, %.fr235.i.i.i, !dbg !20055
  %.not58.i.us.i.i.i124 = icmp eq i64 %.fr235.i.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i.i, !dbg !20055

.lr.ph.split.us.i.i.i.i:                          ; preds = %bb.al, %.lr.ph.i35.i.i.i
  %.sink.i38.i56.i.i = phi i64 [ %.sink.i38.i.i.i, %bb.al ], [ %.promoted.i32.i.i.i, %.lr.ph.i35.i.i.i ] ; 5 uses
  %i.gd = phi i64 [ %i.hb, %bb.al ], [ %i.fv, %.lr.ph.i35.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.gd, !dbg !20056
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !20057, !alias.scope !19560, !noalias !19551, !noundef !1445
    #dbg_value(i8 %i.gf, !19490, !DIExpression(), !18690)
    #dbg_value(i8 %i.gf, !19512, !DIExpression(), !18603)
  %i.gg = and i8 %i.gf, 63, !dbg !20058
  %i.gh = zext nneg i8 %i.gg to i64, !dbg !20059
  %i.gi = shl nuw i64 1, %i.gh, !dbg !20060
  %i.gj = and i64 %i.gi, %i.fy, !dbg !20060
  %.not.us.i.i.i.i = icmp eq i64 %i.gj, 0, !dbg !20060
  br i1 %.not.us.i.i.i.i, label %bb.ak, label %.preheader59.i.i.i.i.preheader, !dbg !20055

.preheader59.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
    #dbg_value(i64 %.fr235.i.i.i, !19493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18691)
    #dbg_value(ptr undef, !19504, !DIExpression(), !18597)
    #dbg_value(ptr undef, !19500, !DIExpression(), !18595)
    #dbg_value(ptr undef, !19448, !DIExpression(), !18590)
    #dbg_value(ptr undef, !19449, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18692)
  br i1 %exitcond.not.i37.i.i.i121.not, label %.lr.ph123, label %.preheader.i39.preheader.i.i.i, !dbg !20061

.preheader59.i.i.i.i:                             ; preds = %.lr.ph123
  %i.gk = add i64 %.sroa.04.0.us.i.i.i.i122, 1, !dbg !20062 ; 2 uses
    #dbg_value(i64 %i.gk, !19493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18691)
    #dbg_value(i64 %i.gk, !19493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18691)
    #dbg_value(ptr undef, !19504, !DIExpression(), !18597)
    #dbg_value(ptr undef, !19500, !DIExpression(), !18595)
    #dbg_value(ptr undef, !19448, !DIExpression(), !18590)
    #dbg_value(ptr undef, !19449, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18692)
  %exitcond.not.i37.i.i.i = icmp eq i64 %i.gk, %umax.i.i.i.i, !dbg !20063
  br i1 %exitcond.not.i37.i.i.i, label %.preheader.i39.preheader.i.i.i, label %.lr.ph123, !dbg !20061

.preheader.i39.preheader.i.i.i:                   ; preds = %.preheader59.i.i.i.i, %.preheader59.i.i.i.i.preheader
    #dbg_value(ptr undef, !19474, !DIExpression(), !18582)
    #dbg_value(ptr undef, !19474, !DIExpression(), !18582)
    #dbg_value(ptr undef, !19460, !DIExpression(), !18580)
    #dbg_value(ptr undef, !19460, !DIExpression(), !18580)
    #dbg_value(ptr undef, !19457, !DIExpression(), !18578)
    #dbg_value(ptr undef, !19457, !DIExpression(), !18578)
    #dbg_value(ptr undef, !19448, !DIExpression(), !18571)
    #dbg_value(ptr undef, !19448, !DIExpression(), !18571)
    #dbg_value(ptr undef, !19449, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18693)
    #dbg_value(ptr undef, !19449, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18693)
  br i1 %.first_iter.i36.i.i.i, label %.preheader.i39.us.i.i.i.preheader, label %.preheader.i39.i.i.i

.preheader.i39.us.i.i.i.preheader:                ; preds = %.preheader.i39.preheader.i.i.i
    #dbg_value(i64 %.fr235.i.i.i, !19496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18694)
  br i1 %.not58.i.us.i.i.i124, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph126, !dbg !20064

.preheader.i39.us.i.i.i:                          ; preds = %.lr.ph126
    #dbg_value(i64 %i.gl, !19496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18694)
    #dbg_value(ptr undef, !19474, !DIExpression(), !18582)
    #dbg_value(ptr undef, !19460, !DIExpression(), !18580)
    #dbg_value(ptr undef, !19457, !DIExpression(), !18578)
    #dbg_value(ptr undef, !19448, !DIExpression(), !18571)
    #dbg_value(ptr undef, !19449, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18693)
  %.not58.i.us.i.i.i = icmp eq i64 %i.gl, 0, !dbg !20065
  br i1 %.not58.i.us.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph126, !dbg !20064

.lr.ph126:                                        ; preds = %.preheader.i39.us.i.i.i.preheader, %.preheader.i39.us.i.i.i
  %.sroa.2.0.us.i.us.i.i.i125 = phi i64 [ %i.gl, %.preheader.i39.us.i.i.i ], [ %.fr235.i.i.i, %.preheader.i39.us.i.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.i125, !19496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18694)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.i125, !19545, !DIExpression(), !18646)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.i125, !19548, !DIExpression(), !18651)
  %i.gl = add i64 %.sroa.2.0.us.i.us.i.i.i125, -1, !dbg !20066 ; 4 uses
    #dbg_value(i64 %i.gl, !19496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18694)
    #dbg_value(i64 %i.gl, !19497, !DIExpression(), !18695)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.gl, !dbg !20067
  %i.gn = load i8, ptr %i.gm, align 1, !dbg !20067, !alias.scope !19561, !noalias !19551, !noundef !1445
  %i.go = add i64 %i.gl, %.sink.i38.i56.i.i, !dbg !20068 ; 2 uses
    #dbg_value(i64 %i.go, !19529, !DIExpression(), !18627)
    #dbg_value(i64 %i.go, !19534, !DIExpression(), !18631)
  %i.gp = icmp ult i64 %i.go, %i.dn, !dbg !20069
  tail call void @llvm.assume(i1 %i.gp), !dbg !20070
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.go, !dbg !20071
  %i.gr = load i8, ptr %i.gq, align 1, !dbg !20072, !alias.scope !19560, !noalias !19551, !noundef !1445
  %.not44.us.i.us.i.i.i = icmp eq i8 %i.gn, %i.gr, !dbg !20067
  br i1 %.not44.us.i.us.i.i.i, label %.preheader.i39.us.i.i.i, label %.split.us.i.i.i, !dbg !20067

.split.us.i.i.i:                                  ; preds = %.lr.ph126
  %i.gs = add i64 %.sink.i38.i56.i.i, %i.gb, !dbg !20073
  br label %bb.al, !dbg !20074

.lr.ph123:                                        ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
  %.sroa.04.0.us.i.i.i.i122 = phi i64 [ %i.gk, %.preheader59.i.i.i.i ], [ %.fr235.i.i.i, %.preheader59.i.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i122, !19493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18691)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i122, !19501, !DIExpression(), !18696)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i122, !19539, !DIExpression(), !18636)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i122, !19542, !DIExpression(), !18641)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i122, !19493, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18691)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i122, !19494, !DIExpression(), !18697)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.04.0.us.i.i.i.i122, !dbg !20075
  %i.gu = load i8, ptr %i.gt, align 1, !dbg !20075, !alias.scope !19561, !noalias !19551, !noundef !1445
  %i.gv = add i64 %.sroa.04.0.us.i.i.i.i122, %.sink.i38.i56.i.i, !dbg !20076 ; 2 uses
    #dbg_value(i64 %i.gv, !19529, !DIExpression(), !18618)
    #dbg_value(i64 %i.gv, !19534, !DIExpression(), !18623)
  %i.gw = icmp ult i64 %i.gv, %i.dn, !dbg !20077
  tail call void @llvm.assume(i1 %i.gw), !dbg !20078
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.gv, !dbg !20079
  %i.gy = load i8, ptr %i.gx, align 1, !dbg !20080, !alias.scope !19560, !noalias !19551, !noundef !1445
  %.not45.us.i.i.i.i = icmp eq i8 %i.gu, %i.gy, !dbg !20075
  br i1 %.not45.us.i.i.i.i, label %.preheader59.i.i.i.i, label %bb.aj, !dbg !20075

.preheader.i39.i.i.i:                             ; preds = %.preheader.i39.preheader.i.i.i
    #dbg_value(i64 %i.fz, !19496, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18694)
  br i1 %.not58.i.us.i.i.i124, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.invoke.i, !dbg !20064

bb.aj:                                            ; preds = %.lr.ph123
  %.reass302.i.reass.i.reass.i.reass.reass = add i64 %.sink.i38.i56.i.i, %invariant.op163
  %i.gz = add i64 %.reass302.i.reass.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i.i122, !dbg !20081
  br label %bb.al, !dbg !20082

bb.ak:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.ha = add i64 %.sink.i38.i56.i.i, %i.dr, !dbg !20083
  br label %bb.al, !dbg !20084

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.split.us.i.i.i
  %.sink.i38.i.i.i = phi i64 [ %i.ha, %bb.ak ], [ %i.gz, %bb.aj ], [ %i.gs, %.split.us.i.i.i ] ; 2 uses
  %i.hb = add i64 %.sink.i38.i.i.i, %i.dt, !dbg !20053 ; 2 uses
    #dbg_value(i64 %i.hb, !19517, !DIExpression(), !18608)
    #dbg_value(i64 %i.hb, !19524, !DIExpression(), !18613)
  %i.hc = icmp ult i64 %i.hb, %i.dn, !dbg !20054
  br i1 %i.hc, label %.lr.ph.split.us.i.i.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !20054

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i: ; preds = %.lr.ph.i.i15.i.i, %.noexc9.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit26.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit28.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfnSKV9Rz3v_3h3i.exit30.i.i.us.i.i.i, %bb.u
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !20085

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.ad, %.preheader60.i.i.i.i.preheader, %.preheader60.i.i.i.i, %bb.al, %.preheader.i39.us.i.i.i.preheader, %.preheader.i39.us.i.i.i, %bb.z, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i, %.preheader.i39.i.i.i, %bb.ai, %bb.aa, %.noexc9.i, %bb.v, %bb.t, %bb.n, %bb.k, %.preheader.i.i.i
  %storemerge.i.sink.i.i.i = phi i8 [ 1, %.preheader60.i.i.i.i ], [ 0, %bb.aa ], [ 0, %bb.v ], [ 0, %bb.ai ], [ 1, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i.i ], [ 0, %.noexc9.i ], [ 1, %.preheader.i39.us.i.i.i ], [ 0, %.preheader.i.i.i ], [ 1, %bb.n ], [ 1, %bb.t ], [ 1, %.preheader.i39.us.i.i.i.preheader ], [ 1, %.preheader.i39.i.i.i ], [ %.promoted226.i.i.i, %bb.k ], [ 0, %bb.z ], [ 0, %bb.al ], [ 0, %bb.ad ], [ 1, %.preheader60.i.i.i.i.preheader ]
    #dbg_value(i8 %storemerge.i.sink.i.i.i, !19131, !DIExpression(), !18698)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20085, !noalias !19221
  br label %.loopexit.i, !dbg !20085

bb.am:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19563), !dbg !20086
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19564), !dbg !20086
    #dbg_value(ptr poison, !19565, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18728)
    #dbg_value(ptr poison, !19565, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18728)
    #dbg_value(ptr poison, !19604, !DIExpression(), !18755)
    #dbg_value(ptr poison, !19641, !DIExpression(), !18756)
    #dbg_value(ptr poison, !19665, !DIExpression(), !18757)
    #dbg_value(ptr poison, !19670, !DIExpression(), !18782)
    #dbg_value(ptr poison, !19673, !DIExpression(), !18783)
    #dbg_value(ptr poison, !19675, !DIExpression(), !18784)
    #dbg_value(ptr poison, !19700, !DIExpression(), !18785)
    #dbg_value(ptr poison, !19723, !DIExpression(), !18786)
    #dbg_value(ptr poison, !19565, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18728)
    #dbg_value(ptr poison, !19702, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18787)
    #dbg_value(ptr poison, !19724, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18786)
    #dbg_value(ptr poison, !19729, !DIExpression(), !18794)
    #dbg_value(ptr poison, !19643, !DIExpression(), !18756)
    #dbg_value(ptr poison, !19666, !DIExpression(), !18757)
    #dbg_value(ptr %i.m, !19578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18795)
    #dbg_value(i64 %i.o, !19578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18795)
    #dbg_value(ptr %i.i, !19579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18795)
    #dbg_value(i64 %i.k, !19579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18795)
    #dbg_declare(ptr %i.a, !19589, !DIExpression(), !18796)
    #dbg_value(i64 4, !19747, !DIExpression(), !18799)
    #dbg_value(i64 1, !19750, !DIExpression(), !18802)
    #dbg_value(i64 1, !19753, !DIExpression(), !18806)
    #dbg_value(i64 1, !19757, !DIExpression(), !18809)
    #dbg_value(ptr %i.m, !19580, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18810)
    #dbg_value(ptr %i.m, !19751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18802)
    #dbg_value(ptr %i.m, !19754, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18806)
    #dbg_value(ptr %i.m, !19758, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18809)
    #dbg_value(i64 %i.o, !19580, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18810)
    #dbg_value(i64 %i.o, !19751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18802)
    #dbg_value(i64 %i.o, !19754, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18806)
    #dbg_value(i64 %i.o, !19758, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18809)
    #dbg_value(ptr %i.i, !19581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18811)
    #dbg_value(i64 %i.k, !19581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18811)
    #dbg_value(i64 %i.o, !19748, !DIExpression(), !18799)
  %i.hd = load i8, ptr %i.m, align 1, !dbg !20087, !alias.scope !19761, !noundef !1445 ; 3 uses
    #dbg_value(i8 %i.hd, !19582, !DIExpression(), !18812)
    #dbg_value(i8 %i.hd, !19763, !DIExpression(), !18815)
  %i.he = add nsw i64 %i.o, -1, !dbg !20088       ; 2 uses
    #dbg_value(i64 %i.he, !19583, !DIExpression(), !18816)
  %i.hf = icmp eq i64 %i.o, 2, !dbg !20089
  br i1 %i.hf, label %.thread.i.i.i, label %.lr.ph, !dbg !20089

.lr.ph:                                           ; preds = %bb.am
  %i.hg = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.o, i64 4), !dbg !20090
    #dbg_value(ptr undef, !19723, !DIExpression(), !18786)
    #dbg_value(ptr %i.m, !19724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18786)
    #dbg_value(i64 %i.o, !19724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18786)
    #dbg_value(ptr undef, !19724, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18786)
    #dbg_value(ptr %i.m, !19702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18787)
    #dbg_value(i64 %i.o, !19702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18787)
    #dbg_value(ptr undef, !19702, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18787)
    #dbg_value(ptr undef, !19700, !DIExpression(), !18785)
    #dbg_declare(ptr poison, !19701, !DIExpression(), !18817)
    #dbg_declare(ptr poison, !19703, !DIExpression(), !18818)
    #dbg_value(ptr undef, !19675, !DIExpression(), !18784)
    #dbg_value(ptr undef, !19673, !DIExpression(), !18783)
    #dbg_value(ptr undef, !19670, !DIExpression(), !18782)
    #dbg_value(ptr undef, !19671, !DIExpression(), !18782)
  br label %bb.ao, !dbg !20091

bb.an:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i
    #dbg_value(ptr undef, !19675, !DIExpression(), !18784)
    #dbg_value(ptr undef, !19673, !DIExpression(), !18783)
    #dbg_value(ptr undef, !19670, !DIExpression(), !18782)
    #dbg_value(ptr undef, !19671, !DIExpression(), !18782)
  %i.hh = icmp ult i64 %i.hg, %i.hj, !dbg !20092
  br i1 %i.hh, label %bb.ao, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.i.i, !dbg !20091

bb.ao:                                            ; preds = %.lr.ph, %bb.an
  %i.hi = phi i64 [ %i.o, %.lr.ph ], [ %i.hj, %bb.an ]
    #dbg_value(i64 %i.hi, !19768, !DIExpression(), !18821)
    #dbg_value(i64 %i.hi, !19771, !DIExpression(), !18824)
    #dbg_value(i64 1, !19769, !DIExpression(), !18821)
    #dbg_value(i64 1, !19772, !DIExpression(), !18824)
  %i.hj = add nsw i64 %i.hi, -1, !dbg !20093      ; 6 uses
    #dbg_value(i64 %i.hj, !19704, !DIExpression(), !18825)
    #dbg_value(ptr poison, !19774, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18828)
    #dbg_declare(ptr poison, !19779, !DIExpression(), !18829)
    #dbg_value(ptr undef, !19778, !DIExpression(DW_OP_deref), !18828)
    #dbg_value(ptr poison, !19784, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !18833)
    #dbg_value(ptr poison, !19790, !DIExpression(), !18833)
    #dbg_value(i64 %i.hj, !19789, !DIExpression(), !18834)
  %i.hk = icmp ult i64 %i.hj, %i.o, !dbg !20094
  br i1 %i.hk, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i, label %.invoke.i, !dbg !20094

.invoke.i:                                        ; preds = %bb.ao, %.lr.ph120, %.preheader.i39.i.i.i
  %i.hl = phi i64 [ %i.gc, %.preheader.i39.i.i.i ], [ %i.fl, %.lr.ph120 ], [ %i.hj, %bb.ao ]
  %i.hm = phi i64 [ %i.dr, %.preheader.i39.i.i.i ], [ %i.dr, %.lr.ph120 ], [ %i.o, %bb.ao ]
  %i.hn = phi ptr [ @26, %.preheader.i39.i.i.i ], [ @26, %.lr.ph120 ], [ @29, %bb.ao ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hl, i64 noundef range(i64 0, -9223372036854775808) %i.hm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hn) #32
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20095

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i: ; preds = %bb.ao
  %i.ho = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.hj, !dbg !20094
  %i.hp = load i8, ptr %i.ho, align 1, !dbg !20094, !alias.scope !19761, !noalias !19792, !noundef !1445 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i8 %i.hp, %i.hd, !dbg !20094
  br i1 %.not.i.not.i.i.i.i, label %bb.an, label %bb.ap, !dbg !20096

bb.ap:                                            ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsjfnSKV9Rz3v_3h3i.exit.i.i.i.i
  %i.hq = add nuw nsw i64 %i.o, 15, !dbg !20097
  %i.hr = icmp ult i64 %i.k, %i.hq, !dbg !20098
  br i1 %i.hr, label %.lr.ph.split.us.i.i21.i.i, label %bb.aq, !dbg !20098

.thread.i.i.i:                                    ; preds = %bb.am
  %i.hs = icmp ult i64 %i.k, 17, !dbg !20098
  br i1 %i.hs, label %.lr.ph.split.us.i.i21.i.i, label %.thread131.i.i.i, !dbg !20098

.thread131.i.i.i:                                 ; preds = %.thread.i.i.i
    #dbg_value(i8 %i.hd, !19763, !DIExpression(), !18815)
    #dbg_value(i8 %i.hd, !19582, !DIExpression(), !18812)
  %i.ht = insertelement <16 x i8> poison, i8 %i.hd, i64 0, !dbg !20099
  %i.hu = shufflevector <16 x i8> %i.ht, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !20099
    #dbg_value(<16 x i8> %i.hu, !19586, !DIExpression(), !18842)
    #dbg_value(i64 1, !19584, !DIExpression(), !18843)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !dbg !20100, !alias.scope !19761
  br label %bb.ar, !dbg !20100

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(i8 %i.hd, !19763, !DIExpression(), !18815)
    #dbg_value(i8 %i.hd, !19582, !DIExpression(), !18812)
  %i.hv = insertelement <16 x i8> poison, i8 %i.hd, i64 0, !dbg !20099
  %i.hw = shufflevector <16 x i8> %i.hv, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !20099
    #dbg_value(<16 x i8> %i.hw, !19586, !DIExpression(), !18842)
    #dbg_value(i64 %i.hj, !19584, !DIExpression(), !18843)
  br label %bb.ar, !dbg !20100

.lr.ph.split.us.i.i21.i.i:                        ; preds = %.thread.i.i.i, %bb.ap
    #dbg_value(ptr undef, !19665, !DIExpression(), !18757)
    #dbg_value(ptr undef, !19666, !DIExpression(), !18757)
    #dbg_value(ptr undef, !19643, !DIExpression(), !18756)
    #dbg_value(ptr undef, !19641, !DIExpression(), !18756)
    #dbg_declare(ptr poison, !19642, !DIExpression(), !18844)
    #dbg_declare(ptr poison, !19644, !DIExpression(), !18845)
    #dbg_value(ptr undef, !19604, !DIExpression(), !18755)
    #dbg_value(i64 0, !19793, !DIExpression(), !18854)
    #dbg_value(i64 1, !19811, !DIExpression(), !18857)
    #dbg_value(i64 1, !19814, !DIExpression(), !18861)
    #dbg_value(i64 1, !19793, !DIExpression(), !18863)
    #dbg_value(ptr %i.i, !19794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18854)
    #dbg_value(i64 %i.k, !19794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18854)
    #dbg_value(i64 %i.o, !19795, !DIExpression(), !18854)
    #dbg_value(ptr %i.i, !19620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18864)
    #dbg_value(i64 %i.o, !19620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18864)
    #dbg_value(ptr %i.i, !19812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18857)
    #dbg_value(ptr %i.i, !19815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18861)
    #dbg_value(ptr %i.i, !19794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18863)
    #dbg_value(i64 %i.k, !19812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18857)
    #dbg_value(i64 %i.k, !19815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18861)
    #dbg_value(i64 %i.k, !19794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18863)
  %bcmp.i.i.us24.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.i, ptr noundef nonnull readonly dereferenceable(1) %i.m, i64 range(i64 2, 33) %i.o), !dbg !20101, !alias.scope !19819, !noalias !19820
  %i.hx = icmp eq i32 %bcmp.i.i.us24.i.i.i.i, 0, !dbg !20101
  br i1 %i.hx, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i, !dbg !20102

.split.us.i.i.i.i:                                ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1, !dbg !20103 ; 2 uses
    #dbg_value(ptr %i.hy, !19794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18854)
    #dbg_value(i64 %i.ia, !19794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18854)
    #dbg_value(i64 %i.o, !19795, !DIExpression(), !18854)
    #dbg_value(ptr %i.hy, !19812, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18857)
    #dbg_value(ptr %i.hy, !19815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18861)
    #dbg_value(ptr %i.hy, !19794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18863)
    #dbg_value(i64 %i.ia, !19812, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18857)
    #dbg_value(i64 %i.ia, !19815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18861)
    #dbg_value(i64 %i.ia, !19794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18863)
    #dbg_value(i64 %i.ia, !19816, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !18874)
    #dbg_value(i64 %i.ia, !19795, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !18863)
    #dbg_value(ptr %i.hy, !19620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18864)
    #dbg_value(i64 %i.o, !19620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18864)
    #dbg_value(ptr %i.hy, !19645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18875)
    #dbg_value(i64 %i.o, !19645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18875)
    #dbg_value(ptr poison, !19742, !DIExpression(DW_OP_deref), !18876)
    #dbg_declare(ptr poison, !19743, !DIExpression(), !18877)
    #dbg_value(ptr %i.hy, !19741, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18876)
    #dbg_value(i64 %i.o, !19741, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18876)
    #dbg_value(ptr poison, !19736, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18878)
    #dbg_value(ptr %i.hy, !19735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18878)
    #dbg_value(ptr %i.hy, !19826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18879)
    #dbg_value(i64 %i.o, !19735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18878)
    #dbg_value(i64 %i.o, !19826, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18879)
    #dbg_value(ptr poison, !19730, !DIExpression(), !18880)
    #dbg_value(ptr undef, !19729, !DIExpression(), !18794)
    #dbg_value(i64 %i.o, !19827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18879)
    #dbg_value(i64 %i.o, !19828, !DIExpression(), !18881)
    #dbg_value(i64 %i.o, !19823, !DIExpression(), !18882)
    #dbg_value(i64 %i.o, !19824, !DIExpression(), !18883)
    #dbg_value(ptr %i.m, !19827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18879)
    #dbg_value(ptr %i.hy, !19821, !DIExpression(), !18882)
    #dbg_value(ptr %i.m, !19822, !DIExpression(), !18882)
  %bcmp.i.i.us.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.hy, ptr noundef nonnull readonly dereferenceable(1) %i.m, i64 range(i64 2, 33) %i.o), !dbg !20101, !alias.scope !19819, !noalias !19820
  %i.hz = icmp eq i32 %bcmp.i.i.us.i.i.i.i, 0, !dbg !20101
  br i1 %i.hz, label %.loopexit.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i, !dbg !20102

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsjfnSKV9Rz3v_3h3i.exit.backedge.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i21.i.i, %.split.us.i.i.i.i
  %.pn.i.i.i = phi ptr [ %i.hy, %.split.us.i.i.i.i ], [ %i.i, %.lr.ph.split.us.i.i21.i.i ]
  %.in.i.i.i = phi i64 [ %i.ia, %.split.us.i.i.i.i ], [ %i.k, %.lr.ph.split.us.i.i21.i.i ]
  %i.ia = add i64 %.in.i.i.i, -1, !dbg !20104     ; 2 uses
    #dbg_value(ptr undef, !19604, !DIExpression(), !18755)
    #dbg_value(i64 0, !19793, !DIExpression(), !18854)
    #dbg_value(i64 1, !19811, !DIExpression(), !18857)
    #dbg_value(i64 1, !19814, !DIExpression(), !18861)
    #dbg_value(i64 1, !19793, !DIExpression(), !18863)
  %.not29.i.i.i.i = icmp ugt i64 %i.o, %i.ia, !dbg !20105
  br i1 %.not29.i.i.i.i, label %.loopexit.i, label %.split.us.i.i.i.i, !dbg !20105

bb.ar:                                            ; preds = %bb.aq, %.thread131.i.i.i
  %i.ib = phi i8 [ %.pre.i.i.i, %.thread131.i.i.i ], [ %i.hp, %bb.aq ], !dbg !20100
  %i.ic = phi <16 x i8> [ %i.hu, %.thread131.i.i.i ], [ %i.hw, %bb.aq ] ; 6 uses
  %storemerge130133.i.i.i = phi i64 [ 1, %.thread131.i.i.i ], [ %i.hj, %bb.aq ] ; 6 uses
    #dbg_value(i8 %i.ib, !19763, !DIExpression(), !18885)
  %i.id = insertelement <16 x i8> poison, i8 %i.ib, i64 0, !dbg !20106
  %i.ie = shufflevector <16 x i8> %i.id, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !20106 ; 6 uses
    #dbg_value(<16 x i8> %i.ie, !19587, !DIExpression(), !18886)
    #dbg_value(i64 %i.he, !19755, !DIExpression(), !18887)
    #dbg_value(i64 %i.he, !19759, !DIExpression(), !18809)
  %i.if = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !20107
    #dbg_value(ptr %i.if, !19588, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18888)
    #dbg_value(i64 %i.he, !19588, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20108, !noalias !19819
  store ptr %i.i, ptr %i.a, align 8, !dbg !20109, !noalias !19819
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20109
  store i64 %i.k, ptr %i.ig, align 8, !dbg !20109, !noalias !19819
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20109
  store ptr %i.if, ptr %i.ih, align 8, !dbg !20109, !noalias !19819
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !20109
  store i64 %i.he, ptr %i.ii, align 8, !dbg !20109, !noalias !19819
    #dbg_value(ptr %i.i, !19565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18728)
    #dbg_value(i64 %i.k, !19565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18728)
    #dbg_value(ptr undef, !19565, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18728)
    #dbg_value(ptr undef, !19565, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18728)
    #dbg_value(ptr undef, !19565, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18728)
    #dbg_value(i64 0, !19590, !DIExpression(), !18889)
    #dbg_value(i8 0, !19591, !DIExpression(), !18890)
  %i.ij = add nuw nsw i64 %i.o, 63                ; 2 uses
  %.not.i17.i.i = icmp ult i64 %i.ij, %i.k, !dbg !20110
  br i1 %.not.i17.i.i, label %.lr.ph.i19.i.i, label %.preheader.i18.i.i, !dbg !20110

.preheader.i18.i.i:                               ; preds = %bb.av, %bb.ar
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %bb.ar ], [ %.sroa.014.2.3.i.i.i, %bb.av ], !dbg !20111 ; 2 uses
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %bb.ar ], [ %i.kf, %bb.av ], !dbg !20112 ; 2 uses
  %i.ik = add nuw nsw i64 %i.o, 15                ; 2 uses
    #dbg_value(i64 %.sroa.06.0.lcssa.i.i.i, !19590, !DIExpression(), !18889)
    #dbg_value(i8 %.sroa.014.0.lcssa.i.i.i, !19591, !DIExpression(), !18890)
  %i.il = add i64 %.sroa.06.0.lcssa.i.i.i, %i.ik, !dbg !20113
  %i.im = icmp uge i64 %i.il, %i.k, !dbg !20113
  %i.in = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond3143.i.i.i = select i1 %i.im, i1 true, i1 %i.in, !dbg !20113
  br i1 %or.cond3143.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph145.i.i.i, !dbg !20113

.lr.ph.i19.i.i:                                   ; preds = %bb.ar, %bb.av
  %.sroa.06.0141.i.i.i = phi i64 [ %i.kf, %bb.av ], [ 0, %bb.ar ] ; 6 uses
    #dbg_value(i64 %.sroa.06.0141.i.i.i, !19590, !DIExpression(), !18889)
    #dbg_value(i16 0, !19593, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !18891)
    #dbg_value(i16 0, !19593, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !18891)
    #dbg_value(i16 0, !19593, !DIExpression(DW_OP_LLVM_fragment, 32, 16), !18891)
    #dbg_value(i16 0, !19593, !DIExpression(DW_OP_LLVM_fragment, 48, 16), !18891)
    #dbg_value(i64 0, !19594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18892)
    #dbg_value(i64 4, !19594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18892)
  %i.io = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.06.0141.i.i.i ; 5 uses
    #dbg_value(i64 0, !19594, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !18892)
    #dbg_value(i64 0, !19595, !DIExpression(), !18893)
    #dbg_value(ptr poison, !19835, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !18903)
    #dbg_value(ptr poison, !19841, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 24, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18903)
    #dbg_value(ptr poison, !19842, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 32, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !18903)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 0), !19839, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18903)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 0), !19860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18906)
    #dbg_value(!DIArgList(i64 %.sroa.06.0141.i.i.i, i64 0), !19860, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !18908)
    #dbg_value(ptr %i.i, !19861, !DIExpression(), !18906)
    #dbg_value(ptr %i.io, !19864, !DIExpression(), !18911)
    #dbg_value(ptr %i.io, !19870, !DIExpression(), !18914)
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.io, align 1, !dbg !20114, !alias.scope !19872, !noalias !19873
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i.i.i, !19843, !DIExpression(), !18920)
    #dbg_value(<16 x i8> %.sroa.0.0.copyload.i.i.i.i, !19882, !DIExpression(), !18923)
    #dbg_value(ptr %i.i, !19861, !DIExpression(), !18908)
    #dbg_value(ptr %i.io, !19861, !DIExpression(), !18925)
    #dbg_value(i64 %storemerge130133.i.i.i, !19860, !DIExpression(), !18925)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %storemerge130133.i.i.i, !dbg !20115
    #dbg_value(ptr %i.ip, !19864, !DIExpression(), !18927)
    #dbg_value(ptr %i.ip, !19870, !DIExpression(), !18929)
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.ip, align 1, !dbg !20116, !alias.scope !19872, !noalias !19873
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.i.i.i, !19844, !DIExpression(), !18931)
    #dbg_value(<16 x i8> %.sroa.01.0.copyload.i.i.i.i, !19882, !DIExpression(), !18933)
    #dbg_value(<16 x i8> %i.ic, !19889, !DIExpression(), !18923)
  %i.iq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, %i.ic, !dbg !20117
    #dbg_value(<16 x i8> poison, !19845, !DIExpression(), !18934)
    #dbg_value(<16 x i8> poison, !19894, !DIExpression(), !18937)
end_hunk_0
