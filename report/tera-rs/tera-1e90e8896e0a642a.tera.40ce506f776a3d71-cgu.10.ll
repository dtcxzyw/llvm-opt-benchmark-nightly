Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.10?download=true
inline.NumInlined: 539
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value8contains:bb.a
    #dbg_value(ptr undef, !5506, !DIExpression(), !15317)
    #dbg_value(i64 1, !5520, !DIExpression(), !15319)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.du), !5516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !15320)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.du), !5524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !15319)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.bv), !5517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15321)
    #dbg_value(ptr poison, !5527, !DIExpression(), !15323)
    #dbg_value(ptr poison, !5530, !DIExpression(), !15324)
  %i.eh = add nuw nsw i64 %i.du, 2, !dbg !16779
  %i.ei = icmp samesign ne i64 %i.eh, %i.bv, !dbg !16779
  tail call void @llvm.assume(i1 %i.ei), !dbg !16780
    #dbg_value(i8 poison, !16153, !DIExpression(), !15325)
    #dbg_value(i8 poison, !16168, !DIExpression(), !15327)
    #dbg_value(i8 poison, !16165, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !15327)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !16154, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !15328)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !16165, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !15330)
    #dbg_value(!DIArgList(i32 poison, i8 poison, i8 poison), !16152, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 12, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !15315)
  %i.ej = icmp samesign ugt i8 %i.ec, -17, !dbg !16786
  br i1 %i.ej, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, !dbg !16786

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i
    #dbg_value(ptr undef, !5506, !DIExpression(), !15332)
    #dbg_value(i64 1, !5520, !DIExpression(), !15334)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.du), !5516, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !15335)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.du), !5524, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !15334)
    #dbg_value(!DIArgList(ptr %i.bt, i64 %i.bv), !5517, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !15336)
    #dbg_value(ptr poison, !5527, !DIExpression(), !15338)
    #dbg_value(ptr poison, !5530, !DIExpression(), !15339)
  %i.ek = add nuw nsw i64 %i.du, 3, !dbg !16788
  %i.el = icmp samesign ne i64 %i.ek, %i.bv, !dbg !16788
  tail call void @llvm.assume(i1 %i.el), !dbg !16789
    #dbg_value(i8 poison, !16155, !DIExpression(), !15340)
    #dbg_value(i8 poison, !16168, !DIExpression(), !15330)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i8 poison), !16152, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 18, DW_OP_shl, DW_OP_constu, 1835008, DW_OP_and, DW_OP_or, DW_OP_stack_value), !15315)
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, !dbg !16795

.split.us180.i.i:                                 ; preds = %bb.ag, %.split.i.i.us.i.i, %bb.x, %.split.i.i.us.i.peel.i
  %.lcssa72.i = phi i64 [ %.promoted176.i.i, %.split.i.i.us.i.peel.i ], [ %.promoted176.i.i, %bb.x ], [ %i.du, %.split.i.i.us.i.i ], [ %i.du, %bb.ag ]
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.bv, i64 noundef %.lcssa72.i, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #25, !dbg !16805, !noalias !16203
  unreachable, !dbg !16805

default.unreachable:                              ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i
  unreachable

bb.aj:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i
    #dbg_value(ptr %i.b, !16040, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15367)
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !16806
  %i.en = load i64, ptr %i.em, align 8, !dbg !16806, !alias.scope !16031, !noalias !16030, !noundef !1568 ; 2 uses
    #dbg_value(ptr poison, !16041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15368)
    #dbg_value(ptr poison, !16213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15371)
    #dbg_value(ptr poison, !16216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15375)
    #dbg_value(ptr poison, !16222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15378)
    #dbg_value(i64 %i.en, !16041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15368)
    #dbg_value(i64 %i.en, !16213, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15371)
    #dbg_value(i64 %i.en, !16216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15375)
    #dbg_value(i64 %i.en, !16222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15378)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16807
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !16807, !alias.scope !16031, !noalias !16030, !noundef !1568 ; 3 uses
  %.not.i.i = icmp ult i64 %i.ep, %i.en, !dbg !16807
  br i1 %.not.i.i, label %bb.al, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16807

bb.ak:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16808 ; 2 uses
    #dbg_value(ptr %i.eq, !16045, !DIExpression(), !15379)
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !16809
  %i.es = load i64, ptr %i.er, align 8, !dbg !16809, !alias.scope !16031, !noalias !16030, !noundef !1568 ; 2 uses
  %i.et = icmp eq i64 %i.es, -1, !dbg !16809
    #dbg_value(i1 %i.et, !16046, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15380)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !16810
  %i.ev = load ptr, ptr %i.eu, align 8, !dbg !16810, !alias.scope !16031, !noalias !16030, !nonnull !1568, !noundef !1568 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !16810
  %i.ex = load i64, ptr %i.ew, align 8, !dbg !16810, !alias.scope !16031, !noalias !16030, !noundef !1568 ; 8 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !16810
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !16810, !alias.scope !16031, !noalias !16030, !nonnull !1568, !noundef !1568 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !16810
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !16810, !alias.scope !16031, !noalias !16030, !noundef !1568 ; 12 uses
    #dbg_value(ptr poison, !16226, !DIExpression(), !15405)
    #dbg_value(ptr poison, !16226, !DIExpression(), !15411)
    #dbg_value(ptr poison, !16237, !DIExpression(), !15412)
    #dbg_value(ptr poison, !16237, !DIExpression(), !15413)
    #dbg_value(ptr poison, !16240, !DIExpression(), !15414)
    #dbg_value(ptr poison, !16240, !DIExpression(), !15415)
    #dbg_value(ptr poison, !16253, !DIExpression(), !15416)
    #dbg_value(ptr poison, !16253, !DIExpression(), !15417)
    #dbg_value(ptr poison, !16226, !DIExpression(), !15424)
    #dbg_value(ptr poison, !16226, !DIExpression(), !15428)
    #dbg_value(ptr poison, !16279, !DIExpression(), !15429)
    #dbg_value(ptr poison, !16279, !DIExpression(), !15430)
    #dbg_value(ptr poison, !16283, !DIExpression(), !15431)
    #dbg_value(ptr poison, !16283, !DIExpression(), !15432)
    #dbg_value(ptr %i.eq, !16263, !DIExpression(), !15433)
    #dbg_value(ptr %i.eq, !16263, !DIExpression(), !15434)
    #dbg_value(ptr %i.eq, !16286, !DIExpression(), !15437)
    #dbg_value(ptr %i.eq, !16286, !DIExpression(), !15439)
    #dbg_value(ptr %i.ev, !16264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15433)
    #dbg_value(ptr %i.ev, !16264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15434)
    #dbg_value(ptr %i.ev, !16293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15442)
    #dbg_value(ptr %i.ev, !16293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15444)
    #dbg_value(ptr %i.ev, !16299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15447)
    #dbg_value(ptr %i.ev, !16299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15449)
    #dbg_value(ptr %i.ev, !16304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15452)
    #dbg_value(ptr %i.ev, !16304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15454)
    #dbg_value(ptr %i.ev, !16309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15457)
    #dbg_value(ptr %i.ev, !16309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15459)
    #dbg_value(ptr %i.ev, !16304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15461)
    #dbg_value(ptr %i.ev, !16304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15463)
    #dbg_value(ptr %i.ev, !16309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15465)
    #dbg_value(ptr %i.ev, !16309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15467)
    #dbg_value(i64 %i.ex, !16264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15433)
    #dbg_value(i64 %i.ex, !16264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15434)
    #dbg_value(i64 %i.ex, !16293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15442)
    #dbg_value(i64 %i.ex, !16293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15444)
    #dbg_value(i64 %i.ex, !16299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15447)
    #dbg_value(i64 %i.ex, !16299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15449)
    #dbg_value(i64 %i.ex, !16304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15452)
    #dbg_value(i64 %i.ex, !16304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15454)
    #dbg_value(i64 %i.ex, !16309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15457)
    #dbg_value(i64 %i.ex, !16309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15459)
    #dbg_value(i64 %i.ex, !16304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15461)
    #dbg_value(i64 %i.ex, !16304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15463)
    #dbg_value(i64 %i.ex, !16309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15465)
    #dbg_value(i64 %i.ex, !16309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15467)
    #dbg_value(ptr %i.ez, !16265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15433)
    #dbg_value(ptr %i.ez, !16265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15434)
    #dbg_value(i64 %i.fb, !16265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15433)
    #dbg_value(i64 %i.fb, !16265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15434)
    #dbg_value(i64 1, !16315, !DIExpression(), !15470)
    #dbg_value(i64 1, !16315, !DIExpression(), !15472)
    #dbg_value(i64 1, !16319, !DIExpression(), !15475)
    #dbg_value(i64 1, !16319, !DIExpression(), !15477)
    #dbg_value(i64 1, !16324, !DIExpression(), !15480)
    #dbg_value(i64 1, !16324, !DIExpression(), !15482)
    #dbg_value(i64 1, !16327, !DIExpression(), !15485)
    #dbg_value(i64 1, !16327, !DIExpression(), !15487)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16811 ; 2 uses
    #dbg_value(i64 poison, !16267, !DIExpression(), !15489)
    #dbg_value(i64 poison, !16267, !DIExpression(), !15490)
  %i.fd = add nsw i64 %i.fb, -1, !dbg !16812      ; 4 uses
  br i1 %i.et, label %bb.aw, label %bb.ao, !dbg !16813

bb.al:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !16806
  %i.ff = load ptr, ptr %i.fe, align 8, !dbg !16806, !alias.scope !16031, !noalias !16030, !nonnull !1568, !noundef !1568
    #dbg_value(ptr %i.ff, !16041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15368)
    #dbg_value(ptr %i.ff, !16213, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15371)
    #dbg_value(ptr %i.ff, !16216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15375)
    #dbg_value(ptr %i.ff, !16222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15378)
    #dbg_value(i64 %i.ep, !16214, !DIExpression(), !15371)
    #dbg_value(i64 %i.ep, !16219, !DIExpression(), !15375)
    #dbg_value(i64 %i.ep, !16223, !DIExpression(), !15378)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !16814
  %i.fh = load i8, ptr %i.fg, align 8, !dbg !16814, !alias.scope !16031, !noalias !16030, !noundef !1568 ; 2 uses
  %i.fi = sub nuw i64 %i.en, %i.ep, !dbg !16815   ; 3 uses
    #dbg_value(i64 %i.fi, !16220, !DIExpression(), !15491)
    #dbg_value(i64 %i.fi, !16224, !DIExpression(), !15378)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ep, !dbg !16816 ; 2 uses
    #dbg_value(i8 %i.fh, !4878, !DIExpression(), !15493)
    #dbg_value(i8 %i.fh, !4886, !DIExpression(), !15495)
    #dbg_value(ptr %i.fj, !4882, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15493)
    #dbg_value(ptr %i.fj, !4887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15495)
    #dbg_value(i64 %i.fi, !4882, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15493)
    #dbg_value(i64 %i.fi, !4887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15495)
  %i.fk = icmp samesign ult i64 %i.fi, 16, !dbg !16817
  br i1 %i.fk, label %.lr.ph.i.i15.i, label %bb.am, !dbg !16817

bb.am:                                            ; preds = %bb.al
  %i.fl = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fj, i64 noundef range(i64 0, -9223372036854775808) %i.fi), !dbg !16818, !noalias !16330
  %i.fm = extractvalue { i64, i64 } %i.fl, 0, !dbg !16818
    #dbg_value(i64 %i.fm, !4883, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15496)
    #dbg_value(i64 poison, !4883, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15496)
  %i.fn = trunc nuw i64 %i.fm to i1, !dbg !16819
  br i1 %i.fn, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16819

.lr.ph.i.i15.i:                                   ; preds = %bb.al, %bb.an
  %.sroa.04.015.i.i16.i = phi i64 [ %i.fr, %bb.an ], [ 0, %bb.al ] ; 2 uses
    #dbg_value(i64 %.sroa.04.015.i.i16.i, !4888, !DIExpression(), !15497)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.04.015.i.i16.i, !dbg !16820
  %i.fp = load i8, ptr %i.fo, align 1, !dbg !16820, !alias.scope !16331, !noalias !16330, !noundef !1568
  %i.fq = icmp eq i8 %i.fp, %i.fh, !dbg !16820
  br i1 %i.fq, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, label %bb.an, !dbg !16820

bb.an:                                            ; preds = %.lr.ph.i.i15.i
  %i.fr = add nuw nsw i64 %.sroa.04.015.i.i16.i, 1, !dbg !16821 ; 2 uses
    #dbg_value(i64 %i.fr, !4888, !DIExpression(), !15497)
  %exitcond.not.i27.i.i = icmp eq i64 %i.fr, %i.fi, !dbg !16822
  br i1 %exitcond.not.i27.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph.i.i15.i, !dbg !16822

bb.ao:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16332), !dbg !16823
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16333), !dbg !16823
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16334), !dbg !16823
    #dbg_value(i1 false, !16266, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15434)
    #dbg_value(i64 %i.fd, !16268, !DIExpression(), !15504)
  %.promoted.i.i.i = load i64, ptr %i.fc, align 8, !alias.scope !16335, !noalias !16030 ; 2 uses
  %i.fs = add i64 %.promoted.i.i.i, %i.fd, !dbg !16824 ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.ex, !dbg !16825
  br i1 %i.ft, label %.lr.ph.i28.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16825

.lr.ph.i28.i.i:                                   ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !16335, !noalias !16030, !noundef !1568
  %i.fw = load i64, ptr %i.eq, align 8, !alias.scope !16335, !noalias !16030 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !16335, !noalias !16030 ; 2 uses
  %i.fz = sub i64 %i.fb, %i.fy
  %invariant.op = sub i64 1, %i.fw, !dbg !16826
  br label %.lr.ph.split.i.i.i, !dbg !16826

.lr.ph.split.i.i.i:                               ; preds = %bb.ar, %.lr.ph.i28.i.i
  %.sink94.i.i53.i = phi i64 [ %.sink94.i.i.i, %bb.ar ], [ %i.es, %.lr.ph.i28.i.i ] ; 3 uses
  %.sink95.i.i50.i = phi i64 [ %.sink95.i.i.i, %bb.ar ], [ %.promoted.i.i.i, %.lr.ph.i28.i.i ] ; 5 uses
  %i.ga = phi i64 [ %i.gk, %bb.ar ], [ %i.fs, %.lr.ph.i28.i.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ga, !dbg !16827
  %i.gc = load i8, ptr %i.gb, align 1, !dbg !16828, !alias.scope !16333, !noalias !16330, !noundef !1568
    #dbg_value(i8 %i.gc, !16269, !DIExpression(), !15505)
    #dbg_value(i8 %i.gc, !16291, !DIExpression(), !15439)
  %i.gd = and i8 %i.gc, 63, !dbg !16829
  %i.ge = zext nneg i8 %i.gd to i64, !dbg !16830
  %i.gf = shl nuw i64 1, %i.ge, !dbg !16831
  %i.gg = and i64 %i.gf, %i.fv, !dbg !16831
  %.not.i29.i.i = icmp eq i64 %i.gg, 0, !dbg !16831
  br i1 %.not.i29.i.i, label %bb.ap, label %bb.aq, !dbg !16826

bb.ap:                                            ; preds = %.lr.ph.split.i.i.i
  %i.gh = add i64 %.sink95.i.i50.i, %i.fb, !dbg !16832
  br label %bb.ar, !dbg !16833

bb.aq:                                            ; preds = %.lr.ph.split.i.i.i
    #dbg_value(i64 %i.fw, !16336, !DIExpression(), !15508)
    #dbg_value(i64 %i.fw, !16339, !DIExpression(), !15511)
    #dbg_value(i64 %.sink94.i.i53.i, !16337, !DIExpression(), !15508)
    #dbg_value(i64 %.sink94.i.i53.i, !16340, !DIExpression(), !15511)
  %i.gi = tail call i64 @llvm.umax.i64(i64 %i.fw, i64 %.sink94.i.i53.i), !dbg !16834 ; 2 uses
    #dbg_value(i64 %i.gi, !16271, !DIExpression(), !15512)
    #dbg_value(i64 %i.gi, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15513)
    #dbg_value(i64 %i.fb, !16272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15513)
    #dbg_value(ptr undef, !16283, !DIExpression(), !15432)
    #dbg_value(ptr undef, !16279, !DIExpression(), !15430)
    #dbg_value(ptr undef, !16226, !DIExpression(), !15428)
    #dbg_value(ptr undef, !16229, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15514)
  %i.gj = icmp ult i64 %i.gi, %i.fb, !dbg !16835
  br i1 %i.gj, label %.lr.ph148, label %.preheader60.i.i.i.preheader, !dbg !16836

bb.ar:                                            ; preds = %bb.av, %bb.au, %bb.ap
  %.sink95.i.i.i = phi i64 [ %i.hf, %bb.av ], [ %i.he, %bb.au ], [ %i.gh, %bb.ap ] ; 2 uses
  %.sink94.i.i.i = phi i64 [ 0, %bb.av ], [ %i.fz, %bb.au ], [ 0, %bb.ap ]
  %i.gk = add i64 %.sink95.i.i.i, %i.fd, !dbg !16824 ; 2 uses
    #dbg_value(i64 %i.gk, !16296, !DIExpression(), !15444)
    #dbg_value(i64 %i.gk, !16302, !DIExpression(), !15449)
  %i.gl = icmp ult i64 %i.gk, %i.ex, !dbg !16825
  br i1 %i.gl, label %.lr.ph.split.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16825

bb.as:                                            ; preds = %.lr.ph148
  %i.gm = add nuw nsw i64 %.sroa.04.0.i.i.i147, 1, !dbg !16837 ; 2 uses
    #dbg_value(i64 %i.gm, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15513)
    #dbg_value(i64 %i.gm, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15513)
    #dbg_value(ptr undef, !16283, !DIExpression(), !15432)
    #dbg_value(ptr undef, !16279, !DIExpression(), !15430)
    #dbg_value(ptr undef, !16226, !DIExpression(), !15428)
    #dbg_value(ptr undef, !16229, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15514)
  %i.gn = icmp ult i64 %i.gm, %i.fb, !dbg !16835
  br i1 %i.gn, label %.lr.ph148, label %.preheader60.i.i.i.preheader, !dbg !16836

.preheader60.i.i.i.preheader:                     ; preds = %bb.as, %bb.aq
    #dbg_value(i64 %i.fw, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15515)
    #dbg_value(ptr undef, !16253, !DIExpression(), !15417)
    #dbg_value(ptr undef, !16240, !DIExpression(), !15415)
    #dbg_value(ptr undef, !16237, !DIExpression(), !15413)
    #dbg_value(ptr undef, !16226, !DIExpression(), !15411)
    #dbg_value(ptr undef, !16229, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15516)
  %i.go = icmp ult i64 %.sink94.i.i53.i, %i.fw, !dbg !16838
  br i1 %i.go, label %.lr.ph150, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16839

.lr.ph148:                                        ; preds = %bb.aq, %bb.as
  %.sroa.04.0.i.i.i147 = phi i64 [ %i.gm, %bb.as ], [ %i.gi, %bb.aq ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15513)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16280, !DIExpression(), !15517)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16317, !DIExpression(), !15472)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16322, !DIExpression(), !15477)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16272, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15513)
    #dbg_value(i64 %.sroa.04.0.i.i.i147, !16273, !DIExpression(), !15518)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.04.0.i.i.i147, !dbg !16840
  %i.gq = load i8, ptr %i.gp, align 1, !dbg !16840, !alias.scope !16334, !noalias !16330, !noundef !1568
  %i.gr = add i64 %.sroa.04.0.i.i.i147, %.sink95.i.i50.i, !dbg !16841 ; 2 uses
    #dbg_value(i64 %i.gr, !16307, !DIExpression(), !15454)
    #dbg_value(i64 %i.gr, !16312, !DIExpression(), !15459)
  %i.gs = icmp ult i64 %i.gr, %i.ex, !dbg !16842
  tail call void @llvm.assume(i1 %i.gs), !dbg !16843
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gr, !dbg !16844
  %i.gu = load i8, ptr %i.gt, align 1, !dbg !16845, !alias.scope !16333, !noalias !16330, !noundef !1568
  %.not45.i.i.i = icmp eq i8 %i.gq, %i.gu, !dbg !16840
  br i1 %.not45.i.i.i, label %bb.as, label %bb.av, !dbg !16840

.preheader60.i.i.i:                               ; preds = %bb.at
    #dbg_value(i64 %i.gw, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15515)
    #dbg_value(ptr undef, !16253, !DIExpression(), !15417)
    #dbg_value(ptr undef, !16240, !DIExpression(), !15415)
    #dbg_value(ptr undef, !16237, !DIExpression(), !15413)
    #dbg_value(ptr undef, !16226, !DIExpression(), !15411)
    #dbg_value(ptr undef, !16229, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15516)
  %i.gv = icmp ult i64 %.sink94.i.i53.i, %i.gw, !dbg !16838
  br i1 %i.gv, label %.lr.ph150, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16839

.lr.ph150:                                        ; preds = %.preheader60.i.i.i.preheader, %.preheader60.i.i.i
  %.sroa.2.0.i.i.i149 = phi i64 [ %i.gw, %.preheader60.i.i.i ], [ %i.fw, %.preheader60.i.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.i.i.i149, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15515)
    #dbg_value(i64 %.sroa.2.0.i.i.i149, !16325, !DIExpression(), !15482)
    #dbg_value(i64 %.sroa.2.0.i.i.i149, !16328, !DIExpression(), !15487)
  %i.gw = add i64 %.sroa.2.0.i.i.i149, -1, !dbg !16846 ; 6 uses
    #dbg_value(i64 %i.gw, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15515)
    #dbg_value(i64 %i.gw, !16276, !DIExpression(), !15519)
  %i.gx = icmp ult i64 %i.gw, %i.fb, !dbg !16847
  br i1 %i.gx, label %bb.at, label %.split56.us.i.i.i, !dbg !16847

bb.at:                                            ; preds = %.lr.ph150
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.gw, !dbg !16847
  %i.gz = load i8, ptr %i.gy, align 1, !dbg !16847, !alias.scope !16334, !noalias !16330, !noundef !1568
  %i.ha = add i64 %i.gw, %.sink95.i.i50.i, !dbg !16848 ; 2 uses
    #dbg_value(i64 %i.ha, !16307, !DIExpression(), !15463)
    #dbg_value(i64 %i.ha, !16312, !DIExpression(), !15467)
  %i.hb = icmp ult i64 %i.ha, %i.ex, !dbg !16849
  tail call void @llvm.assume(i1 %i.hb), !dbg !16850
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ha, !dbg !16851
  %i.hd = load i8, ptr %i.hc, align 1, !dbg !16852, !alias.scope !16333, !noalias !16330, !noundef !1568
  %.not44.i.i.i = icmp eq i8 %i.gz, %i.hd, !dbg !16847
  br i1 %.not44.i.i.i, label %.preheader60.i.i.i, label %bb.au, !dbg !16847

.split56.us.i.i.i:                                ; preds = %.lr.ph150
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gw, i64 noundef range(i64 0, -9223372036854775808) %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #25, !dbg !16847, !noalias !16342
  unreachable, !dbg !16847

bb.au:                                            ; preds = %bb.at
  %i.he = add i64 %.sink95.i.i50.i, %i.fy, !dbg !16853
  br label %bb.ar, !dbg !16854

bb.av:                                            ; preds = %.lr.ph148
  %.reass.i.reass.i.reass.reass = add i64 %.sink95.i.i50.i, %invariant.op
  %i.hf = add i64 %.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i147, !dbg !16855
  br label %bb.ar, !dbg !16856

bb.aw:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16343), !dbg !16857
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16344), !dbg !16857
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16345), !dbg !16857
    #dbg_value(i1 true, !16266, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15433)
    #dbg_value(i64 %i.fd, !16268, !DIExpression(), !15525)
  %.promoted.i31.i.i = load i64, ptr %i.fc, align 8, !alias.scope !16346, !noalias !16030 ; 2 uses
  %i.hg = add i64 %.promoted.i31.i.i, %i.fd, !dbg !16858 ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.ex, !dbg !16859
  br i1 %i.hh, label %.lr.ph.i34.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16859

.lr.ph.i34.i.i:                                   ; preds = %bb.aw
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !16346, !noalias !16030, !noundef !1568
  %i.hk = load i64, ptr %i.eq, align 8, !alias.scope !16346, !noalias !16030
  %.fr234.i.i = freeze i64 %i.hk, !dbg !16860     ; 7 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !16346, !noalias !16030
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr234.i.i, i64 range(i64 0, -9223372036854775808) %i.fb), !dbg !16860
  %i.hn = add i64 %.fr234.i.i, -1, !dbg !16860    ; 2 uses
  %.first_iter.i35.i.i = icmp ult i64 %i.hn, %i.fb
  %exitcond.not.i36.i.i151.not = icmp ult i64 %.fr234.i.i, %i.fb
  %invariant.op191 = sub i64 1, %.fr234.i.i, !dbg !16860
  %.not58.i.us.i.i154 = icmp eq i64 %.fr234.i.i, 0 ; 2 uses
  br label %.lr.ph.split.us.i.i.i, !dbg !16860

.lr.ph.split.us.i.i.i:                            ; preds = %bb.az, %.lr.ph.i34.i.i
  %.sink.i37.i56.i = phi i64 [ %.sink.i37.i.i, %bb.az ], [ %.promoted.i31.i.i, %.lr.ph.i34.i.i ] ; 5 uses
  %i.ho = phi i64 [ %i.im, %bb.az ], [ %i.hg, %.lr.ph.i34.i.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ho, !dbg !16861
  %i.hq = load i8, ptr %i.hp, align 1, !dbg !16862, !alias.scope !16344, !noalias !16330, !noundef !1568
    #dbg_value(i8 %i.hq, !16269, !DIExpression(), !15526)
    #dbg_value(i8 %i.hq, !16291, !DIExpression(), !15437)
  %i.hr = and i8 %i.hq, 63, !dbg !16863
  %i.hs = zext nneg i8 %i.hr to i64, !dbg !16864
  %i.ht = shl nuw i64 1, %i.hs, !dbg !16865
  %i.hu = and i64 %i.ht, %i.hj, !dbg !16865
  %.not.us.i.i.i = icmp eq i64 %i.hu, 0, !dbg !16865
  br i1 %.not.us.i.i.i, label %bb.ay, label %.preheader59.i.i.i.preheader, !dbg !16860

.preheader59.i.i.i.preheader:                     ; preds = %.lr.ph.split.us.i.i.i
    #dbg_value(i64 %.fr234.i.i, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15527)
    #dbg_value(ptr undef, !16283, !DIExpression(), !15431)
    #dbg_value(ptr undef, !16279, !DIExpression(), !15429)
    #dbg_value(ptr undef, !16226, !DIExpression(), !15424)
    #dbg_value(ptr undef, !16229, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15528)
  br i1 %exitcond.not.i36.i.i151.not, label %.lr.ph153, label %.preheader.i38.preheader.i.i, !dbg !16866

.preheader59.i.i.i:                               ; preds = %.lr.ph153
  %i.hv = add i64 %.sroa.04.0.us.i.i.i152, 1, !dbg !16867 ; 2 uses
    #dbg_value(i64 %i.hv, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15527)
    #dbg_value(i64 %i.hv, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15527)
    #dbg_value(ptr undef, !16283, !DIExpression(), !15431)
    #dbg_value(ptr undef, !16279, !DIExpression(), !15429)
    #dbg_value(ptr undef, !16226, !DIExpression(), !15424)
    #dbg_value(ptr undef, !16229, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15528)
  %exitcond.not.i36.i.i = icmp eq i64 %i.hv, %umax.i.i.i, !dbg !16868
  br i1 %exitcond.not.i36.i.i, label %.preheader.i38.preheader.i.i, label %.lr.ph153, !dbg !16866

.preheader.i38.preheader.i.i:                     ; preds = %.preheader59.i.i.i, %.preheader59.i.i.i.preheader
    #dbg_value(ptr undef, !16253, !DIExpression(), !15416)
    #dbg_value(ptr undef, !16253, !DIExpression(), !15416)
    #dbg_value(ptr undef, !16240, !DIExpression(), !15414)
    #dbg_value(ptr undef, !16240, !DIExpression(), !15414)
    #dbg_value(ptr undef, !16237, !DIExpression(), !15412)
    #dbg_value(ptr undef, !16237, !DIExpression(), !15412)
    #dbg_value(ptr undef, !16226, !DIExpression(), !15405)
    #dbg_value(ptr undef, !16226, !DIExpression(), !15405)
    #dbg_value(ptr undef, !16229, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15529)
    #dbg_value(ptr undef, !16229, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15529)
  br i1 %.first_iter.i35.i.i, label %.preheader.i38.us.i.i.preheader, label %.preheader.i38.i.i

.preheader.i38.us.i.i.preheader:                  ; preds = %.preheader.i38.preheader.i.i
    #dbg_value(i64 %.fr234.i.i, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15530)
  br i1 %.not58.i.us.i.i154, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph156, !dbg !16869

.preheader.i38.us.i.i:                            ; preds = %.lr.ph156
    #dbg_value(i64 %i.hw, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15530)
    #dbg_value(ptr undef, !16253, !DIExpression(), !15416)
    #dbg_value(ptr undef, !16240, !DIExpression(), !15414)
    #dbg_value(ptr undef, !16237, !DIExpression(), !15412)
    #dbg_value(ptr undef, !16226, !DIExpression(), !15405)
    #dbg_value(ptr undef, !16229, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !15529)
  %.not58.i.us.i.i = icmp eq i64 %i.hw, 0, !dbg !16870
  br i1 %.not58.i.us.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph156, !dbg !16869

.lr.ph156:                                        ; preds = %.preheader.i38.us.i.i.preheader, %.preheader.i38.us.i.i
  %.sroa.2.0.us.i.us.i.i155 = phi i64 [ %i.hw, %.preheader.i38.us.i.i ], [ %.fr234.i.i, %.preheader.i38.us.i.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i155, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15530)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i155, !16325, !DIExpression(), !15480)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i155, !16328, !DIExpression(), !15485)
  %i.hw = add i64 %.sroa.2.0.us.i.us.i.i155, -1, !dbg !16871 ; 4 uses
    #dbg_value(i64 %i.hw, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15530)
    #dbg_value(i64 %i.hw, !16276, !DIExpression(), !15531)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.hw, !dbg !16872
  %i.hy = load i8, ptr %i.hx, align 1, !dbg !16872, !alias.scope !16345, !noalias !16330, !noundef !1568
  %i.hz = add i64 %i.hw, %.sink.i37.i56.i, !dbg !16873 ; 2 uses
    #dbg_value(i64 %i.hz, !16307, !DIExpression(), !15461)
    #dbg_value(i64 %i.hz, !16312, !DIExpression(), !15465)
  %i.ia = icmp ult i64 %i.hz, %i.ex, !dbg !16874
  tail call void @llvm.assume(i1 %i.ia), !dbg !16875
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.hz, !dbg !16876
  %i.ic = load i8, ptr %i.ib, align 1, !dbg !16877, !alias.scope !16344, !noalias !16330, !noundef !1568
  %.not44.us.i.us.i.i = icmp eq i8 %i.hy, %i.ic, !dbg !16872
  br i1 %.not44.us.i.us.i.i, label %.preheader.i38.us.i.i, label %.split.us.i.i, !dbg !16872

.split.us.i.i:                                    ; preds = %.lr.ph156
  %i.id = add i64 %.sink.i37.i56.i, %i.hm, !dbg !16878
  br label %bb.az, !dbg !16879

.lr.ph153:                                        ; preds = %.preheader59.i.i.i.preheader, %.preheader59.i.i.i
  %.sroa.04.0.us.i.i.i152 = phi i64 [ %i.hv, %.preheader59.i.i.i ], [ %.fr234.i.i, %.preheader59.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15527)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16280, !DIExpression(), !15532)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16317, !DIExpression(), !15470)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16322, !DIExpression(), !15475)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16272, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15527)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i152, !16273, !DIExpression(), !15533)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.04.0.us.i.i.i152, !dbg !16880
  %i.if = load i8, ptr %i.ie, align 1, !dbg !16880, !alias.scope !16345, !noalias !16330, !noundef !1568
  %i.ig = add i64 %.sroa.04.0.us.i.i.i152, %.sink.i37.i56.i, !dbg !16881 ; 2 uses
    #dbg_value(i64 %i.ig, !16307, !DIExpression(), !15452)
    #dbg_value(i64 %i.ig, !16312, !DIExpression(), !15457)
  %i.ih = icmp ult i64 %i.ig, %i.ex, !dbg !16882
  tail call void @llvm.assume(i1 %i.ih), !dbg !16883
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ig, !dbg !16884
  %i.ij = load i8, ptr %i.ii, align 1, !dbg !16885, !alias.scope !16344, !noalias !16330, !noundef !1568
  %.not45.us.i.i.i = icmp eq i8 %i.if, %i.ij, !dbg !16880
  br i1 %.not45.us.i.i.i, label %.preheader59.i.i.i, label %bb.ax, !dbg !16880

.preheader.i38.i.i:                               ; preds = %.preheader.i38.preheader.i.i
    #dbg_value(i64 %i.hk, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15530)
  br i1 %.not58.i.us.i.i154, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.split56.us.i39.i.i, !dbg !16869

.split56.us.i39.i.i:                              ; preds = %.preheader.i38.i.i
    #dbg_value(i64 %i.hk, !16325, !DIExpression(), !15480)
    #dbg_value(i64 %i.hk, !16328, !DIExpression(), !15485)
    #dbg_value(i64 %i.hn, !16275, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15530)
    #dbg_value(i64 %i.hn, !16276, !DIExpression(), !15531)
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hn, i64 noundef range(i64 0, -9223372036854775808) %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #25, !dbg !16872, !noalias !16347
  unreachable, !dbg !16872

bb.ax:                                            ; preds = %.lr.ph153
  %.reass301.i.reass.i.reass.reass = add i64 %.sink.i37.i56.i, %invariant.op191
  %i.ik = add i64 %.reass301.i.reass.i.reass.reass, %.sroa.04.0.us.i.i.i152, !dbg !16886
  br label %bb.az, !dbg !16887

bb.ay:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.il = add i64 %.sink.i37.i56.i, %i.fb, !dbg !16888
  br label %bb.az, !dbg !16889

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.split.us.i.i
  %.sink.i37.i.i = phi i64 [ %i.il, %bb.ay ], [ %i.ik, %bb.ax ], [ %i.id, %.split.us.i.i ] ; 2 uses
  %i.im = add i64 %.sink.i37.i.i, %i.fd, !dbg !16858 ; 2 uses
    #dbg_value(i64 %i.im, !16296, !DIExpression(), !15442)
    #dbg_value(i64 %i.im, !16302, !DIExpression(), !15447)
  %i.in = icmp ult i64 %i.im, %i.ex, !dbg !16859
  br i1 %i.in, label %.lr.ph.split.us.i.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16859

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i: ; preds = %.lr.ph.i.i15.i, %bb.am, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit26.i.i.us.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit28.i.i.us.i.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yXxDE1DkoT_4tera.exit30.i.i.us.i.i, %bb.ai
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, !dbg !16890

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %bb.ar, %.preheader60.i.i.i.preheader, %.preheader60.i.i.i, %bb.az, %.preheader.i38.us.i.i.preheader, %.preheader.i38.us.i.i, %bb.an, %bb.y, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i, %.preheader.i38.i.i, %bb.aw, %bb.ao, %bb.am, %bb.aj, %bb.ah, %bb.ab, %.preheader.i.i
  %storemerge.i.sink.i.i = phi i8 [ 1, %.preheader.i38.us.i.i ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.aw ], [ 1, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split.i ], [ 0, %bb.am ], [ 1, %.preheader60.i.i.i ], [ 0, %.preheader.i.i ], [ 1, %bb.ab ], [ 1, %bb.ah ], [ 0, %bb.an ], [ 1, %.preheader.i38.i.i ], [ %.promoted225.i.i, %bb.y ], [ 1, %.preheader.i38.us.i.i.preheader ], [ 0, %bb.az ], [ 0, %bb.ar ], [ 1, %.preheader60.i.i.i.preheader ]
    #dbg_value(i8 %storemerge.i.sink.i.i, !15955, !DIExpression(), !15535)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16890, !noalias !16030
  br label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, !dbg !16890

bb.ba:                                            ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16348), !dbg !16891
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16349), !dbg !16891
    #dbg_value(ptr poison, !16350, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !15569)
    #dbg_value(ptr poison, !16350, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !15569)
    #dbg_value(ptr poison, !16397, !DIExpression(), !15584)
    #dbg_value(ptr poison, !16414, !DIExpression(), !15585)
    #dbg_value(ptr poison, !16427, !DIExpression(), !15586)
    #dbg_value(ptr poison, !16432, !DIExpression(), !15611)
    #dbg_value(ptr poison, !16435, !DIExpression(), !15612)
    #dbg_value(ptr poison, !16437, !DIExpression(), !15613)
    #dbg_value(ptr poison, !16462, !DIExpression(), !15614)
    #dbg_value(ptr poison, !16485, !DIExpression(), !15615)
    #dbg_value(ptr poison, !16350, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15569)
    #dbg_value(ptr poison, !16464, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15616)
    #dbg_value(ptr poison, !16486, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15615)
    #dbg_value(ptr poison, !16491, !DIExpression(), !15623)
    #dbg_value(ptr poison, !16416, !DIExpression(), !15585)
    #dbg_value(ptr poison, !16428, !DIExpression(), !15586)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16371, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15624)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16371, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15624)
    #dbg_value(ptr %.sroa.0.0.i33, !16372, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15624)
    #dbg_value(i64 %.sroa.3.0.i32, !16372, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15624)
    #dbg_declare(ptr %i.a, !16382, !DIExpression(), !15625)
    #dbg_value(i64 4, !16509, !DIExpression(), !15628)
    #dbg_value(i64 1, !16512, !DIExpression(), !15631)
    #dbg_value(i64 1, !16515, !DIExpression(), !15635)
    #dbg_value(i64 1, !16519, !DIExpression(), !15638)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15639)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15631)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15635)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15638)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15639)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15631)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15635)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15638)
    #dbg_value(ptr %.sroa.0.0.i33, !16374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15640)
    #dbg_value(i64 %.sroa.3.0.i32, !16374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15640)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16510, !DIExpression(), !15628)
  %i.io = load i8, ptr %.sroa.0.0.i.ph, align 1, !dbg !16892, !alias.scope !16523, !noundef !1568 ; 3 uses
    #dbg_value(i8 %i.io, !16375, !DIExpression(), !15641)
    #dbg_value(i8 %i.io, !16525, !DIExpression(), !15644)
  %i.ip = add nsw i64 %.sroa.3.0.i.ph, -1, !dbg !16893 ; 2 uses
    #dbg_value(i64 %i.ip, !16376, !DIExpression(), !15645)
  %i.iq = icmp eq i64 %.sroa.3.0.i.ph, 2, !dbg !16894
  br i1 %i.iq, label %.thread.i.i, label %.lr.ph146, !dbg !16894

.lr.ph146:                                        ; preds = %bb.ba
  %i.ir = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %.sroa.3.0.i.ph, i64 4), !dbg !16895
    #dbg_value(ptr undef, !16485, !DIExpression(), !15615)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15615)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15615)
    #dbg_value(ptr undef, !16486, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15615)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15616)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15616)
    #dbg_value(ptr undef, !16464, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15616)
    #dbg_value(ptr undef, !16462, !DIExpression(), !15614)
    #dbg_declare(ptr poison, !16463, !DIExpression(), !15646)
    #dbg_declare(ptr poison, !16465, !DIExpression(), !15647)
    #dbg_value(ptr undef, !16437, !DIExpression(), !15613)
    #dbg_value(ptr undef, !16435, !DIExpression(), !15612)
    #dbg_value(ptr undef, !16432, !DIExpression(), !15611)
    #dbg_value(ptr undef, !16433, !DIExpression(), !15611)
  br label %bb.bc, !dbg !16896

bb.bb:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i
    #dbg_value(ptr undef, !16437, !DIExpression(), !15613)
    #dbg_value(ptr undef, !16435, !DIExpression(), !15612)
    #dbg_value(ptr undef, !16432, !DIExpression(), !15611)
    #dbg_value(ptr undef, !16433, !DIExpression(), !15611)
  %i.is = icmp ult i64 %i.ir, %i.iu, !dbg !16897
  br i1 %i.is, label %bb.bc, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.i, !dbg !16896

bb.bc:                                            ; preds = %.lr.ph146, %bb.bb
  %i.it = phi i64 [ %.sroa.3.0.i.ph, %.lr.ph146 ], [ %i.iu, %bb.bb ]
    #dbg_value(i64 %i.it, !16530, !DIExpression(), !15650)
    #dbg_value(i64 %i.it, !16533, !DIExpression(), !15653)
    #dbg_value(i64 1, !16531, !DIExpression(), !15650)
    #dbg_value(i64 1, !16534, !DIExpression(), !15653)
  %i.iu = add nsw i64 %i.it, -1, !dbg !16898      ; 6 uses
    #dbg_value(i64 %i.iu, !16466, !DIExpression(), !15654)
    #dbg_value(ptr poison, !16536, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15657)
    #dbg_declare(ptr poison, !16541, !DIExpression(), !15658)
    #dbg_value(ptr undef, !16540, !DIExpression(DW_OP_deref), !15657)
    #dbg_value(ptr poison, !16546, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !15662)
    #dbg_value(ptr poison, !16552, !DIExpression(), !15662)
    #dbg_value(i64 %i.iu, !16551, !DIExpression(), !15663)
  %i.iv = icmp ult i64 %i.iu, %.sroa.3.0.i.ph, !dbg !16899
  br i1 %i.iv, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i, label %bb.bd, !dbg !16899

bb.bd:                                            ; preds = %bb.bc
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.iu, i64 noundef range(i64 2, 33) %.sroa.3.0.i.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #25, !dbg !16899, !noalias !16554
  unreachable, !dbg !16899

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i: ; preds = %bb.bc
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph, i64 %i.iu, !dbg !16899
  %i.ix = load i8, ptr %i.iw, align 1, !dbg !16899, !alias.scope !16523, !noalias !16555, !noundef !1568 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ix, %i.io, !dbg !16899
  br i1 %.not.i.not.i.i.i, label %bb.bb, label %bb.be, !dbg !16900

bb.be:                                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i
  %i.iy = add nuw nsw i64 %.sroa.3.0.i.ph, 15, !dbg !16901
  %i.iz = icmp ult i64 %.sroa.3.0.i32, %i.iy, !dbg !16902
  br i1 %i.iz, label %.lr.ph.split.us.i.i21.i, label %bb.bf, !dbg !16902

.thread.i.i:                                      ; preds = %bb.ba
  %i.ja = icmp ult i64 %.sroa.3.0.i32, 17, !dbg !16902
  br i1 %i.ja, label %.lr.ph.split.us.i.i21.i, label %.thread136.i.i, !dbg !16902

.thread136.i.i:                                   ; preds = %.thread.i.i
    #dbg_value(i8 %i.io, !16525, !DIExpression(), !15644)
    #dbg_value(i8 %i.io, !16375, !DIExpression(), !15641)
  %i.jb = insertelement <16 x i8> poison, i8 %i.io, i64 0, !dbg !16903
  %i.jc = shufflevector <16 x i8> %i.jb, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !16903
    #dbg_value(<16 x i8> %i.jc, !16379, !DIExpression(), !15671)
    #dbg_value(i64 1, !16377, !DIExpression(), !15672)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.ph, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !dbg !16904, !alias.scope !16523
  br label %bb.bg, !dbg !16904

bb.bf:                                            ; preds = %bb.be
    #dbg_value(i8 %i.io, !16525, !DIExpression(), !15644)
    #dbg_value(i8 %i.io, !16375, !DIExpression(), !15641)
  %i.jd = insertelement <16 x i8> poison, i8 %i.io, i64 0, !dbg !16903
  %i.je = shufflevector <16 x i8> %i.jd, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !16903
    #dbg_value(<16 x i8> %i.je, !16379, !DIExpression(), !15671)
    #dbg_value(i64 %i.iu, !16377, !DIExpression(), !15672)
  br label %bb.bg, !dbg !16904

.lr.ph.split.us.i.i21.i:                          ; preds = %.thread.i.i, %bb.be
    #dbg_value(ptr undef, !16427, !DIExpression(), !15586)
    #dbg_value(ptr undef, !16428, !DIExpression(), !15586)
    #dbg_value(ptr undef, !16416, !DIExpression(), !15585)
    #dbg_value(ptr undef, !16414, !DIExpression(), !15585)
    #dbg_declare(ptr poison, !16415, !DIExpression(), !15673)
    #dbg_declare(ptr poison, !16417, !DIExpression(), !15674)
    #dbg_value(ptr undef, !16397, !DIExpression(), !15584)
    #dbg_value(i64 0, !16556, !DIExpression(), !15683)
    #dbg_value(i64 1, !16570, !DIExpression(), !15686)
    #dbg_value(i64 1, !16573, !DIExpression(), !15690)
    #dbg_value(i64 1, !16556, !DIExpression(), !15692)
    #dbg_value(ptr %.sroa.0.0.i33, !16557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15683)
    #dbg_value(i64 %.sroa.3.0.i32, !16557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15683)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16558, !DIExpression(), !15683)
    #dbg_value(ptr %.sroa.0.0.i33, !16404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15693)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15693)
    #dbg_value(ptr %.sroa.0.0.i33, !16571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15686)
    #dbg_value(ptr %.sroa.0.0.i33, !16574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15690)
    #dbg_value(ptr %.sroa.0.0.i33, !16557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15692)
    #dbg_value(i64 %.sroa.3.0.i32, !16571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15686)
    #dbg_value(i64 %.sroa.3.0.i32, !16574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15690)
    #dbg_value(i64 %.sroa.3.0.i32, !16557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15692)
  %bcmp.i.i.us24.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.i33, ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.i.ph, i64 range(i64 2, 33) %.sroa.3.0.i.ph), !dbg !16905, !alias.scope !16578, !noalias !16579
  %i.jf = icmp eq i32 %bcmp.i.i.us24.i.i.i, 0, !dbg !16905
  br i1 %i.jf, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i, !dbg !16906

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1, !dbg !16907 ; 2 uses
    #dbg_value(ptr %i.jg, !16557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15683)
    #dbg_value(i64 %i.ji, !16557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15683)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16558, !DIExpression(), !15683)
    #dbg_value(ptr %i.jg, !16571, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15686)
    #dbg_value(ptr %i.jg, !16574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15690)
    #dbg_value(ptr %i.jg, !16557, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15692)
    #dbg_value(i64 %i.ji, !16571, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15686)
    #dbg_value(i64 %i.ji, !16574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15690)
    #dbg_value(i64 %i.ji, !16557, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15692)
    #dbg_value(i64 %i.ji, !16575, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !15702)
    #dbg_value(i64 %i.ji, !16558, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !15692)
    #dbg_value(ptr %i.jg, !16404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15693)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15693)
    #dbg_value(ptr %i.jg, !16418, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15703)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16418, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15703)
    #dbg_value(ptr poison, !16504, !DIExpression(DW_OP_deref), !15704)
    #dbg_declare(ptr poison, !16505, !DIExpression(), !15705)
    #dbg_value(ptr %i.jg, !16503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15704)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15704)
    #dbg_value(ptr poison, !16498, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !15706)
    #dbg_value(ptr %i.jg, !16497, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15706)
    #dbg_value(ptr %i.jg, !16585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15707)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16497, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15706)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15707)
    #dbg_value(ptr poison, !16492, !DIExpression(), !15708)
    #dbg_value(ptr undef, !16491, !DIExpression(), !15623)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15707)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16587, !DIExpression(), !15709)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16582, !DIExpression(), !15710)
    #dbg_value(i64 %.sroa.3.0.i.ph, !16583, !DIExpression(), !15711)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15707)
    #dbg_value(ptr %i.jg, !16580, !DIExpression(), !15710)
    #dbg_value(ptr %.sroa.0.0.i.ph, !16581, !DIExpression(), !15710)
  %bcmp.i.i.us.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.jg, ptr noundef nonnull readonly dereferenceable(1) %.sroa.0.0.i.ph, i64 range(i64 2, 33) %.sroa.3.0.i.ph), !dbg !16905, !alias.scope !16578, !noalias !16579
  %i.jh = icmp eq i32 %bcmp.i.i.us.i.i.i, 0, !dbg !16905
  br i1 %i.jh, label %_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i, !dbg !16906

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs5yXxDE1DkoT_4tera.exit.backedge.us.i.i.i: ; preds = %.lr.ph.split.us.i.i21.i, %.split.us.i.i.i
end_hunk_0
