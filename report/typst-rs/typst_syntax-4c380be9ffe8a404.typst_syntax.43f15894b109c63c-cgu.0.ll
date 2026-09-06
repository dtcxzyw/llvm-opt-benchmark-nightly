Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 29
begin_hunk_0
@495 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00u\05\00\00\0E\00\00\00" }>, align 8
@496 = private unnamed_addr constant [38 x i8] c"only one destructuring sink is allowed", align 1
@497 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\E7\04\00\00\11\00\00\00" }>, align 8
@498 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\EA\04\00\00\12\00\00\00" }>, align 8
@499 = private unnamed_addr constant [23 x i8] c"\14duplicate argument: \C0\00", align 1
@500 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\EA\04\00\00'\00\00\00" }>, align 8
@501 = private unnamed_addr constant [13 x i8] c"argument list", align 1
@502 = private unnamed_addr constant [52 x i8] c"there may not be any spaces before the argument list", align 1
@503 = private unnamed_addr constant [5 x i8] c"block", align 1
@504 = private unnamed_addr constant [9 x i8] c"parameter", align 1
@505 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00%\05\00\00\1B\00\00\00" }>, align 8
@506 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\19\05\00\00\0E\00\00\00" }>, align 8
@507 = private unnamed_addr constant [33 x i8] c"only one argument sink is allowed", align 1
@508 = private unnamed_addr constant [5 x i8] c"parse", align 1
@509 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00}\03\00\00\07\00\00\00" }>, align 8
@510 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\83\03\00\00\16\00\00\00" }>, align 8
@511 = private unnamed_addr constant [53 x i8] c"destructuring patterns must be wrapped in parentheses", align 1
@512 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\85\03\00\00\0E\00\00\00" }>, align 8
@513 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\04\02\00\00\0E\00\00\00" }>, align 8
@514 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\04\02\00\00#\00\00\00" }>, align 8
@515 = private unnamed_addr constant [1 x i8] c"u", align 1
@516 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\0E\02\00\00\09\00\00\00" }>, align 8
@517 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\006\03\00\00\07\00\00\00" }>, align 8
@518 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\E0\01\00\00\07\00\00\00" }>, align 8
@519 = private unnamed_addr constant [18 x i8] c"comma or semicolon", align 1
@520 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00\EC\01\00\00\07\00\00\00" }>, align 8
@521 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"!\00\00\00\00\00\00\00I\03\00\00\07\00\00\00" }>, align 8
@522 = private unnamed_addr constant [34 x i8] c"\01`\C0\1D` is not a valid package name\00", align 1
@523 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\22\00\00\00\00\00\00\00P\01\00\00\0D\00\00\00" }>, align 8
@524 = private unnamed_addr constant [37 x i8] c"package specification is missing name", align 1
@525 = private unnamed_addr constant [40 x i8] c"package specification is missing version", align 1
@526 = private unnamed_addr constant [41 x i8] c"package specification must start with '@'", align 1
@527 = private unnamed_addr constant [39 x i8] c"\01`\C0\22` is not a valid package namespace\00", align 1
@528 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\22\00\00\00\00\00\00\00C\01\00\00\0D\00\00\00" }>, align 8
@529 = private unnamed_addr constant [42 x i8] c"package specification is missing namespace", align 1
@530 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @83, [16 x i8] c"#\00\00\00\00\00\00\00[\00\00\00\0D\00\00\00" }>, align 8
@531 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @83, [16 x i8] c"#\00\00\00\00\00\00\00D\00\00\00#\00\00\00" }>, align 8
@532 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @83, [16 x i8] c"#\00\00\00\00\00\00\00\96\00\00\00$\00\00\00" }>, align 8
@533 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @83, [16 x i8] c"#\00\00\00\00\00\00\00\A0\00\00\00\19\00\00\00" }>, align 8
@534 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @83, [16 x i8] c"#\00\00\00\00\00\00\00\B3\00\00\00\1F\00\00\00" }>, align 8
@535 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @83, [16 x i8] c"#\00\00\00\00\00\00\00\A9\00\00\00\1F\00\00\00" }>, align 8
@536 = private unnamed_addr constant [6 x i8] c"<code>", align 1
@537 = private unnamed_addr constant [7 x i8] c"</code>", align 1
@538 = private unnamed_addr constant [13 x i8] c"<span class=\22", align 1
@539 = private unnamed_addr constant [5 x i8] c"&amp;", align 1
@540 = private unnamed_addr constant [5 x i8] c"&#39;", align 1
@541 = private unnamed_addr constant [6 x i8] c"&quot;", align 1
@542 = private unnamed_addr constant [7 x i8] c"</span>", align 1
@543 = private unnamed_addr constant [80 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/slice/index.rs\00", align 1
@544 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @543, [16 x i8] c"O\00\00\00\00\00\00\00\F1\03\00\003\00\00\00" }>, align 8
@545 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @543, [16 x i8] c"O\00\00\00\00\00\00\00\FC\03\00\007\00\00\00" }>, align 8
@_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode9leaf_text5EMPTY = constant [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80", align 8
@546 = private unnamed_addr constant [965 x i8] c"EndErrorShebangLineCommentBlockCommentMarkupTextSpaceLinebreakParbreakEscapeShorthandSmartQuoteStrongEmphRawRawLangRawDelimRawTrimmedLinkLabelRefRefMarkerHeadingHeadingMarkerListItemListMarkerEnumItemEnumMarkerTermItemTermMarkerEquationMathMathTextMathIdentMathFieldAccessMathShorthandMathAlignPointMathCallMathArgsMathDelimitedMathAttachMathPrimesMathFracMathRootHashLeftBraceRightBraceLeftBracketRightBracketLeftParenRightParenCommaSemicolonColonStarUnderscoreDollarPlusMinusSlashHatDotEqEqEqExclEqLtLtEqGtGtEqPlusEqHyphEqStarEqSlashEqDotsArrowRootBangNotAndOrNoneAutoLetSetShowContextIfElseForInWhileBreakContinueReturnImportIncludeAsCodeIdentBoolIntFloatNumericStrCodeBlockContentBlockParenthesizedArrayDictNamedKeyedUnaryBinaryFieldAccessFuncCallArgsSpreadClosureParamsLetBindingSetRuleShowRuleContextualConditionalWhileLoopForLoopModuleImportImportItemsImportItemPathRenamedImportItemModuleIncludeLoopBreakLoopContinueFuncReturnDestructuringDestructAssignment", align 1
@_RNvNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4kindNtB7_10SyntaxKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @546, [8 x i8] c"\C5\03\00\00\00\00\00\00" }>, align 8
@_RNvNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4kindNtB7_10SyntaxKindNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET = constant [1104 x i8] c"\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00&\00\00\00\00\00\00\00,\00\00\00\00\00\00\000\00\00\00\00\00\00\005\00\00\00\00\00\00\00>\00\00\00\00\00\00\00F\00\00\00\00\00\00\00L\00\00\00\00\00\00\00U\00\00\00\00\00\00\00_\00\00\00\00\00\00\00e\00\00\00\00\00\00\00i\00\00\00\00\00\00\00l\00\00\00\00\00\00\00s\00\00\00\00\00\00\00{\00\00\00\00\00\00\00\85\00\00\00\00\00\00\00\89\00\00\00\00\00\00\00\8E\00\00\00\00\00\00\00\91\00\00\00\00\00\00\00\9A\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\AE\00\00\00\00\00\00\00\B6\00\00\00\00\00\00\00\C0\00\00\00\00\00\00\00\C8\00\00\00\00\00\00\00\D2\00\00\00\00\00\00\00\DA\00\00\00\00\00\00\00\E4\00\00\00\00\00\00\00\EC\00\00\00\00\00\00\00\F0\00\00\00\00\00\00\00\F8\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\10\01\00\00\00\00\00\00\1D\01\00\00\00\00\00\00+\01\00\00\00\00\00\003\01\00\00\00\00\00\00;\01\00\00\00\00\00\00H\01\00\00\00\00\00\00R\01\00\00\00\00\00\00\\\01\00\00\00\00\00\00d\01\00\00\00\00\00\00l\01\00\00\00\00\00\00p\01\00\00\00\00\00\00y\01\00\00\00\00\00\00\83\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\9A\01\00\00\00\00\00\00\A3\01\00\00\00\00\00\00\AD\01\00\00\00\00\00\00\B2\01\00\00\00\00\00\00\BB\01\00\00\00\00\00\00\C0\01\00\00\00\00\00\00\C4\01\00\00\00\00\00\00\CE\01\00\00\00\00\00\00\D4\01\00\00\00\00\00\00\D8\01\00\00\00\00\00\00\DD\01\00\00\00\00\00\00\E2\01\00\00\00\00\00\00\E5\01\00\00\00\00\00\00\E8\01\00\00\00\00\00\00\EA\01\00\00\00\00\00\00\EE\01\00\00\00\00\00\00\F4\01\00\00\00\00\00\00\F6\01\00\00\00\00\00\00\FA\01\00\00\00\00\00\00\FC\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\06\02\00\00\00\00\00\00\0C\02\00\00\00\00\00\00\12\02\00\00\00\00\00\00\19\02\00\00\00\00\00\00\1D\02\00\00\00\00\00\00\22\02\00\00\00\00\00\00&\02\00\00\00\00\00\00*\02\00\00\00\00\00\00-\02\00\00\00\00\00\000\02\00\00\00\00\00\002\02\00\00\00\00\00\006\02\00\00\00\00\00\00:\02\00\00\00\00\00\00=\02\00\00\00\00\00\00@\02\00\00\00\00\00\00D\02\00\00\00\00\00\00K\02\00\00\00\00\00\00M\02\00\00\00\00\00\00Q\02\00\00\00\00\00\00T\02\00\00\00\00\00\00V\02\00\00\00\00\00\00[\02\00\00\00\00\00\00`\02\00\00\00\00\00\00h\02\00\00\00\00\00\00n\02\00\00\00\00\00\00t\02\00\00\00\00\00\00{\02\00\00\00\00\00\00}\02\00\00\00\00\00\00\81\02\00\00\00\00\00\00\86\02\00\00\00\00\00\00\8A\02\00\00\00\00\00\00\8D\02\00\00\00\00\00\00\92\02\00\00\00\00\00\00\99\02\00\00\00\00\00\00\9C\02\00\00\00\00\00\00\A5\02\00\00\00\00\00\00\B1\02\00\00\00\00\00\00\BE\02\00\00\00\00\00\00\C3\02\00\00\00\00\00\00\C7\02\00\00\00\00\00\00\CC\02\00\00\00\00\00\00\D1\02\00\00\00\00\00\00\D6\02\00\00\00\00\00\00\DC\02\00\00\00\00\00\00\E7\02\00\00\00\00\00\00\EF\02\00\00\00\00\00\00\F3\02\00\00\00\00\00\00\F9\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\06\03\00\00\00\00\00\00\10\03\00\00\00\00\00\00\17\03\00\00\00\00\00\00\1F\03\00\00\00\00\00\00)\03\00\00\00\00\00\004\03\00\00\00\00\00\00=\03\00\00\00\00\00\00D\03\00\00\00\00\00\00P\03\00\00\00\00\00\00[\03\00\00\00\00\00\00i\03\00\00\00\00\00\00z\03\00\00\00\00\00\00\87\03\00\00\00\00\00\00\90\03\00\00\00\00\00\00\9C\03\00\00\00\00\00\00\A6\03\00\00\00\00\00\00\B3\03\00\00\00\00\00\00\C5\03\00\00\00\00\00\00", align 8
@_RNvNvXs1E_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_6MarkupNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\05", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs1S_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4TextNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\06", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs1m_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_11LineCommentNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\03", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs1v_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_12BlockCommentNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\04", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs21_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5SpaceNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\07", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs2B_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_9ShorthandNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\0B", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs2K_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_10SmartQuoteNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\0C", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs2T_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_6StrongNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\0D", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs2a_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_9LinebreakNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\08", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs2j_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8ParbreakNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\09", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs2s_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_6EscapeNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\0A", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs32_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4EmphNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\0E", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs3C_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4LinkNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\13", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs3L_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5LabelNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\14", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs3U_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_3RefNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\15", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs3b_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_3RawNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\0F", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs3k_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_7RawLangNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\10", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs3t_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8RawDelimNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\11", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs43_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_7HeadingNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\17", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs4D_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8EquationNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\1F", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs4M_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4MathNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00 ", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs4V_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8MathTextNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00!", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs4c_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8ListItemNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\19", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs4l_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8EnumItemNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\1B", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs4u_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8TermItemNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\1D", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs54_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_9MathIdentNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\22", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs5D_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8MathCallNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00&", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs5M_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8MathArgsNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00'", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs5d_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_15MathFieldAccessNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00#", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs5u_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_13MathShorthandNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00$", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs65_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_14MathAlignPointNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00%", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs6F_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8MathFracNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00+", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs6O_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8MathRootNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00,", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs6X_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5IdentNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00c", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs6e_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_13MathDelimitedNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00(", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs6n_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_10MathAttachNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00)", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs6w_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_10MathPrimesNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00*", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs76_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4NoneNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00Q", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs7G_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5FloatNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00f", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs7P_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_7NumericNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00g", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs7f_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4AutoNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00R", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs7o_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4BoolNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00d", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs7x_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_3IntNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00e", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs86_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_3StrNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00h", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs8G_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_13ParenthesizedNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00k", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs8P_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5ArrayNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00l", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs8f_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_9CodeBlockNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00i", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs8o_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4CodeNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00b", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs8x_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_12ContentBlockNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00j", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs93_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4DictNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00m", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs9I_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5UnaryNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00p", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs9Z_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_6BinaryNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00q", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs9h_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5NamedNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00n", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs9q_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5KeyedNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00o", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs9z_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_6SpreadNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00u", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@547 = private unnamed_addr constant [169 x i8] c"CommentPunctuationEscapeStrongEmphLinkRawLabelRefHeadingListMarkerListTermMathDelimiterMathOperatorMathGroupingParensKeywordOperatorNumberStringFunctionInterpolatedError", align 1
@_RNvNvXs_NtCs5PEMdK7bMAG_12typst_syntax9highlightNtB6_3TagNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @547, [8 x i8] c"\A9\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs_NtCs5PEMdK7bMAG_12typst_syntax9highlightNtB6_3TagNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [184 x i8] c"\00\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\1E\00\00\00\00\00\00\00\22\00\00\00\00\00\00\00&\00\00\00\00\00\00\00)\00\00\00\00\00\00\00.\00\00\00\00\00\00\001\00\00\00\00\00\00\008\00\00\00\00\00\00\00B\00\00\00\00\00\00\00J\00\00\00\00\00\00\00W\00\00\00\00\00\00\00c\00\00\00\00\00\00\00u\00\00\00\00\00\00\00|\00\00\00\00\00\00\00\84\00\00\00\00\00\00\00\8A\00\00\00\00\00\00\00\90\00\00\00\00\00\00\00\98\00\00\00\00\00\00\00\A4\00\00\00\00\00\00\00\A9\00\00\00\00\00\00\00", align 8
@548 = private unnamed_addr constant [81 x i8] c"AddSubMulDivAndOrEqNeqLtLeqGtGeqAssignInNotInAddAssignSubAssignMulAssignDivAssign", align 1
@_RNvNvXsa8_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5BinOpNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @548, [8 x i8] c"Q\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsa8_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_5BinOpNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [160 x i8] c"\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\1D\00\00\00\00\00\00\00 \00\00\00\00\00\00\00&\00\00\00\00\00\00\00(\00\00\00\00\00\00\00-\00\00\00\00\00\00\006\00\00\00\00\00\00\00?\00\00\00\00\00\00\00H\00\00\00\00\00\00\00Q\00\00\00\00\00\00\00", align 8
@_RNvNvXsaG_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_4ArgsNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00t", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsaU_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_7ClosureNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00v", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsao_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_11FieldAccessNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00r", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsax_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8FuncCallNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00s", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsb3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_6ParamsNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00w", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsbJ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_10LetBindingNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00x", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsbT_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_18DestructAssignmentNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\88", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsbm_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_10UnderscoreNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\008", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsbv_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_13DestructuringNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\87", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsc2_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_7SetRuleNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00y", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXscC_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_9WhileLoopNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00}", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXscL_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_7ForLoopNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00~", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXscU_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_12ModuleImportNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\7F", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXscb_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_8ShowRuleNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00z", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsck_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_10ContextualNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00{", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsct_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_11ConditionalNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00|", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsdD_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_17RenamedImportItemNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\82", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsdM_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_13ModuleIncludeNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\83", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsdV_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_9LoopBreakNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\84", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsdg_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_11ImportItemsNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\80", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsdp_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_14ImportItemPathNtB8_7AstNode11placeholder11PLACEHOLDER = constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\81", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXse4_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_12LoopContinueNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\85", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXsed_NtCs5PEMdK7bMAG_12typst_syntax3astNtB8_10FuncReturnNtB8_7AstNode11placeholder11PLACEHOLDER = local_unnamed_addr constant <{ [2 x i8], [6 x i8], [24 x i8] }> <{ [2 x i8] c"\00\86", [6 x i8] undef, [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00" }>, align 8
@549 = private unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00", align 1
@550 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@551 = private unnamed_addr constant [15 x i8] c"struct ToolInfo", align 1
@552 = private unnamed_addr constant [19 x i8] c"struct TemplateInfo", align 1
@553 = private unnamed_addr constant [18 x i8] c"struct PackageInfo", align 1
@554 = private unnamed_addr constant [22 x i8] c"struct PackageManifest", align 1
@555 = private unnamed_addr constant [12 x i8] c"Unnumberable", align 1
@556 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @318, [16 x i8] c"I\00\00\00\00\00\00\00<\11\00\00\1F\00\00\00" }>, align 8
@557 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @346, [16 x i8] c"p\00\00\00\00\00\00\00y\00\00\00>\00\00\00" }>, align 8
@558 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @346, [16 x i8] c"p\00\00\00\00\00\00\00z\00\00\00\1A\00\00\00" }>, align 8
@559 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @346, [16 x i8] c"p\00\00\00\00\00\00\00\88\00\00\00\0E\00\00\00" }>, align 8
@560 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @346, [16 x i8] c"p\00\00\00\00\00\00\00\89\00\00\00\0E\00\00\00" }>, align 8
@561 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @346, [16 x i8] c"p\00\00\00\00\00\00\00\8A\00\00\00\1A\00\00\00" }>, align 8
@562 = private unnamed_addr constant [10 x i8] c"\01@\C0\01/\C0\01:\C0\00", align 1
@563 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5PEMdK7bMAG_12typst_syntax }>, align 8
@564 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@565 = private unnamed_addr constant [55 x i8] c"unexpected version in versionless package specification", align 1
@566 = private unnamed_addr constant [6 x i8] c"Error:", align 1
@567 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@568 = private unnamed_addr constant [7 x i8] c"message", align 1
@569 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1F\00\00\00\00\00\00\00\A9\03\00\00.\00\00\00" }>, align 8
@570 = private unnamed_addr constant [12 x i8] c"\07hint @(\C0\01)\00", align 1
@571 = private unnamed_addr constant [4 x i8] c"hint", align 1
@572 = private unnamed_addr constant [10 x i8] c"\07Error: \C0\00", align 1
@573 = private unnamed_addr constant [25 x i8] c"path escapes project root", align 1
@574 = private unnamed_addr constant [23 x i8] c"path contains backslash", align 1
@575 = private unnamed_addr constant [7 x i8] c"\01@\C0\01/\C0\00", align 1
@576 = private unnamed_addr constant [9 x i8] c"Warning: ", align 1
@577 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvCs6xpQEr8gLsQ_11typst_utils5debugINtB2_7WrapperNCNCNvXs9_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtBZ_14WarningWrapperNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmts_00EB1T_3fmtB11_ }>, align 8
@578 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node4NodeEBF_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_4NodeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt }>, align 8
@579 = private unnamed_addr constant [5 x i8] c"Error", align 1
@580 = private unnamed_addr constant [4 x i8] c"None", align 1
@581 = private unnamed_addr constant [4 x i8] c"Some", align 1
@582 = private unnamed_addr constant [3 x i8] c"\C0\C0\00", align 1
@583 = private unnamed_addr constant [12 x i8] c"\07Source(\C0\01)\00", align 1
@584 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1
@585 = private unnamed_addr constant [38 x i8] c"!path contains invalid component `\C0\01`\00", align 1
@586 = private unnamed_addr constant [29 x i8] c"path contains non-UTF-8 bytes", align 1
@587 = private unnamed_addr constant [5 x i8] c"major", align 1
@588 = private unnamed_addr constant [5 x i8] c"minor", align 1
@589 = private unnamed_addr constant [5 x i8] c"patch", align 1
@590 = private unnamed_addr constant [54 x i8] c"1version number has unexpected fourth component: `\C0\01`\00", align 1
@591 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\22\00\00\00\00\00\00\00\C2\01\00\00\11\00\00\00" }>, align 8
@592 = private unnamed_addr constant [8 x i8] c"\C0\01.\C0\01.\C0\00", align 1
@593 = private unnamed_addr constant [53 x i8] c"0version bound has unexpected fourth component: `\C0\01`\00", align 1
@594 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @32, [16 x i8] c"\22\00\00\00\00\00\00\00\01\02\00\00\11\00\00\00" }>, align 8
@595 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@596 = private unnamed_addr constant [4 x i8] c"\01.\C0\00", align 1
@597 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@598 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@599 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@600 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@601 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@602 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@603 = private unnamed_addr constant [34 x i8] c"cannot number within this interval", align 1
@604 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRjNtB6_5Debug3fmtCs5PEMdK7bMAG_12typst_syntax }>, align 8
@605 = private unnamed_addr constant [10 x i8] c"PreContext", align 1
@606 = private unnamed_addr constant [9 x i8] c"PrevChunk", align 1
@607 = private unnamed_addr constant [9 x i8] c"NextChunk", align 1
@608 = private unnamed_addr constant [13 x i8] c"InvalidOffset", align 1
@switch.table._RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name = private unnamed_addr constant [137 x i8] c"\0D\0C\07\0C\0D\06\04\05\0A\0F\0F\09\0B\0E\12\09\10\0D\0B\04\05\09\10\07\0E\09\0B\09\0B\0E\0B\08\04\09\0F\11\0E\14\12\13\0E\10\0B\0D\09\04\0D\0D\0F\0F\0D\0D\05\09\05\04\0A\0B\04\05\05\03\03\0B\11\13\12\1B\15\1E\13\18\18\16\04\05\04\10\0E\0E\0D\06\06\0D\0D\0E\11\0C\0E\0D\0C\0F\0F\12\10\10\11\0C\04\0A\07\07\05\0D\06\0A\0D\05\05\0A\0A\0A\10\11\0C\0D\0E\06\07\12\10\10\11\14\0F\15\13\13\0C\12\13\14\12\15\13\15#", align 8
@switch.table._RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name.621 = private unnamed_addr constant [137 x ptr] [ptr @95, ptr @96, ptr @97, ptr @98, ptr @99, ptr @100, ptr @101, ptr @102, ptr @103, ptr @104, ptr @105, ptr @106, ptr @107, ptr @108, ptr @109, ptr @110, ptr @111, ptr @112, ptr @113, ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135, ptr @136, ptr @137, ptr @138, ptr @139, ptr @140, ptr @141, ptr @142, ptr @143, ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153, ptr @154, ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160, ptr @161, ptr @162, ptr @163, ptr @164, ptr @165, ptr @166, ptr @167, ptr @168, ptr @169, ptr @170, ptr @171, ptr @172, ptr @173, ptr @174, ptr @175, ptr @176, ptr @177, ptr @178, ptr @179, ptr @180, ptr @181, ptr @182, ptr @183, ptr @184, ptr @185, ptr @186, ptr @187, ptr @188, ptr @189, ptr @190, ptr @191, ptr @192, ptr @193, ptr @194, ptr @195, ptr @196, ptr @197, ptr @198, ptr @199, ptr @200, ptr @201, ptr @202, ptr @203, ptr @204, ptr @205, ptr @206, ptr @207, ptr @208, ptr @209, ptr @210, ptr @211, ptr @212, ptr @213, ptr @214, ptr @215, ptr @216, ptr @217, ptr @218, ptr @219, ptr @220, ptr @221, ptr @222, ptr @223, ptr @224, ptr @225, ptr @226, ptr @227, ptr @228, ptr @229, ptr @230, ptr @231], align 8
@switch.table._RNvNtCs5PEMdK7bMAG_12typst_syntax9highlight19highlight_html_impl = private unnamed_addr constant [22 x i8] c"\0B\09\0A\0A\08\08\07\09\07\0B\0A\08\0E\0B\0E\07\06\07\07\08\07\09", align 8
@switch.table._RNvNtCs5PEMdK7bMAG_12typst_syntax9highlight19highlight_html_impl.622 = private unnamed_addr constant [22 x ptr] [ptr @248, ptr @249, ptr @250, ptr @251, ptr @252, ptr @253, ptr @254, ptr @255, ptr @256, ptr @257, ptr @258, ptr @259, ptr @260, ptr @261, ptr @262, ptr @263, ptr @264, ptr @265, ptr @266, ptr @267, ptr @268, ptr @269], align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5PEMdK7bMAG_12typst_syntax = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5PEMdK7bMAG_12typst_syntax.623 = private unnamed_addr constant [6 x ptr] [ptr @597, ptr @598, ptr @599, ptr @600, ptr @601, ptr @602], align 8
@switch.table._RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode12from_untyped = private unnamed_addr constant [131 x i64] [i64 0, i64 -1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 -1, i64 13, i64 -1, i64 14, i64 -1, i64 15, i64 -1, i64 16, i64 -1, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 -1, i64 25, i64 26, i64 27, i64 28, i64 29, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 31, i64 32, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 30, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 -1, i64 -1, i64 43, i64 44, i64 45, i64 46, i64 -1, i64 -1, i64 47, i64 -1, i64 48, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 -1, i64 -1, i64 -1, i64 57, i64 58, i64 59, i64 60, i64 -1, i64 49], align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 3 uses
  %i.f = sub nuw i64 %i.c, %i.e                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.h = icmp eq i64 %i.c, %i.e
  br i1 %i.h, label %_RNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericINtNtB5_6sealed6SealedcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !alias.scope !64, !noalias !65, !noundef !19 ; 5 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = icmp samesign ne i64 %i.f, 1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load i8, ptr %i.k, align 1, !alias.scope !64, !noalias !65, !noundef !19
  %i.p = shl nuw nsw i32 %i.m, 6
  %i.q = and i8 %i.o, 63
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = icmp samesign ugt i8 %i.i, -33
  br i1 %i.t, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i

bb.c:                                             ; preds = %bb.b
  %i.u = zext nneg i8 %i.i to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.w = icmp samesign ne i64 %i.f, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load i8, ptr %i.v, align 1, !alias.scope !64, !noalias !65, !noundef !19
  %i.y = shl nuw nsw i32 %i.r, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.m, 12
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ae, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ag = icmp samesign ne i64 %i.f, 3
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = load i8, ptr %i.af, align 1, !alias.scope !64, !noalias !65, !noundef !19
  %i.ai = shl nuw nsw i32 %i.m, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.ab, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %.sroa.4.0.i.i = phi i32 [ %i.u, %bb.c ], [ %i.s, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ], [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ], [ %i.ad, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ] ; 4 uses
  %i.ap = add nsw i32 %.sroa.4.0.i.i, -48
  %or.cond.i.i.i.i.i = icmp ult i32 %i.ap, 10
  br i1 %or.cond.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterNCNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtB5_4char7methodsc10is_numericINtNtBZ_6sealed6SealedcE7matches0ECs5PEMdK7bMAG_12typst_syntax.exit.thread7.i, label %bb.d

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterNCNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtB5_4char7methodsc10is_numericINtNtBZ_6sealed6SealedcE7matches0ECs5PEMdK7bMAG_12typst_syntax.exit.thread7.i: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.aq = icmp samesign ult i32 %.sroa.4.0.i.i, 1114112
  tail call void @llvm.assume(i1 %i.aq)
  br label %_RNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericINtNtB5_6sealed6SealedcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit

bb.d:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.i, 178
  br i1 %i.ar, label %_RNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericINtNtB5_6sealed6SealedcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit, label %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericINtNtB7_6sealed6SealedcE7matches0Cs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericINtNtB7_6sealed6SealedcE7matches0Cs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %bb.d
  %i.as = tail call noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.i) #57, !noalias !64
  br label %_RNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericINtNtB5_6sealed6SealedcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit

_RNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericINtNtB5_6sealed6SealedcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericINtNtB7_6sealed6SealedcE7matches0Cs5PEMdK7bMAG_12typst_syntax.exit.i.i, %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterNCNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtB5_4char7methodsc10is_numericINtNtBZ_6sealed6SealedcE7matches0ECs5PEMdK7bMAG_12typst_syntax.exit.thread7.i, %bb.d
  %i.at = phi i1 [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterNCNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtB5_4char7methodsc10is_numericINtNtBZ_6sealed6SealedcE7matches0ECs5PEMdK7bMAG_12typst_syntax.exit.thread7.i ], [ %i.as, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericINtNtB7_6sealed6SealedcE7matches0Cs5PEMdK7bMAG_12typst_syntax.exit.i.i ], [ false, %bb.d ], [ false, %bb.a ]
  ret i1 %i.at
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueEBL_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !19 ; 3 uses
  %i.f = sub nuw i64 %i.c, %i.e                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.h = icmp eq i64 %i.c, %i.e
  br i1 %i.h, label %_RNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB5_6sealed6SealedcE7matchesBw_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !alias.scope !70, !noalias !71, !noundef !19 ; 5 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = icmp samesign ne i64 %i.f, 1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load i8, ptr %i.k, align 1, !alias.scope !70, !noalias !71, !noundef !19
  %i.p = shl nuw nsw i32 %i.m, 6
  %i.q = and i8 %i.o, 63
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = icmp samesign ugt i8 %i.i, -33
  br i1 %i.t, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i: ; preds = %bb.b
  %i.u = zext nneg i8 %i.i to i32
  br label %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.w = icmp samesign ne i64 %i.f, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load i8, ptr %i.v, align 1, !alias.scope !70, !noalias !71, !noundef !19
  %i.y = shl nuw nsw i32 %i.r, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.m, 12
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ae, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ag = icmp samesign ne i64 %i.f, 3
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = load i8, ptr %i.af, align 1, !alias.scope !70, !noalias !71, !noundef !19
  %i.ai = shl nuw nsw i32 %i.m, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.ab, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %.sroa.4.0.i.i = phi i32 [ %i.ad, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ], [ %i.s, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ], [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ] ; 5 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.i, 128
  br i1 %i.ap, label %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i, label %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread

_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %.sroa.4.0.i10.i = phi i32 [ %i.u, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i ], [ %.sroa.4.0.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i ] ; 2 uses
  %i.aq = zext nneg i32 %.sroa.4.0.i10.i to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables14ASCII_CONTINUE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !range !20, !noalias !70, !noundef !19
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = icmp ne i32 %.sroa.4.0.i10.i, 95
  %.sroa.0.0.i.i.i.i.i = and i1 %i.au, %i.at
  br label %_RNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB5_6sealed6SealedcE7matchesBw_.exit

_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.av = lshr i32 %.sroa.4.0.i.i, 3
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = icmp samesign ult i32 %.sroa.4.0.i.i, 918016
  %i.ay = lshr i64 %i.aw, 6
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables13TRIE_CONTINUE, i64 %i.ay
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.ax, ptr %i.az, ptr @38
  %i.ba = load i8, ptr %.sroa.01.0.i.i.i.i.i.i, align 1, !noalias !70, !noundef !19
  %i.bb = zext i8 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 5
  %i.bd = and i64 %i.aw, 63
  %i.be = add nuw nsw i64 %i.bc, %i.bd            ; 2 uses
  %i.bf = icmp samesign ult i64 %i.be, 7904
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables4LEAF, i64 %i.be
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !70, !noundef !19
  %i.bi = trunc i32 %.sroa.4.0.i.i to i8
  %i.bj = and i8 %i.bi, 7
  %i.bk = lshr i8 %i.bh, %i.bj
  %i.bl = trunc i8 %i.bk to i1
  br label %_RNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB5_6sealed6SealedcE7matchesBw_.exit

_RNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB5_6sealed6SealedcE7matchesBw_.exit: ; preds = %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i, %bb.a
  %.sroa.0.0.i = phi i1 [ %i.bl, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.thread ], [ %.sroa.0.0.i.i.i.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer19is_math_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 2, 8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@_RNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB7_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str0B9_:bb.a
bb.o:                                             ; preds = %.lr.ph.split.us.i.5
  %i.cw = mul i32 %i.cq, 10
  %i.cx = add i32 %i.cu, %i.cw                    ; 2 uses
  %.not56.us.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.us.i.5, label %.loopexit.i, label %.lr.ph.split.us.i.6

.lr.ph.split.us.i.6:                              ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !1640, !noundef !19
  %i.da = zext i8 %i.cz to i32
  %i.db = add nsw i32 %i.da, -48                  ; 2 uses
  %i.dc = icmp ult i32 %i.db, 10
  br i1 %i.dc, label %bb.p, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.p:                                             ; preds = %.lr.ph.split.us.i.6
  %i.dd = mul i32 %i.cx, 10
  %i.de = add i32 %i.db, %i.dd                    ; 2 uses
  %.not56.us.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.us.i.6, label %.loopexit.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !1640, !noundef !19
  %i.dh = zext i8 %i.dg to i32
  %i.di = add nsw i32 %i.dh, -48                  ; 2 uses
  %i.dj = icmp ult i32 %i.di, 10
  br i1 %i.dj, label %bb.q, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.q:                                             ; preds = %.lr.ph.split.us.i.7
  %i.dk = mul i32 %i.de, 10
  %i.dl = add i32 %i.di, %i.dk
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader64.split.us.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.dl, %bb.q ], [ 0, %.preheader.i ], [ %i.bn, %bb.j ], [ %i.bv, %bb.k ], [ %i.cc, %bb.l ], [ %i.cj, %bb.m ], [ %i.cq, %bb.n ], [ %i.cx, %bb.o ], [ %i.de, %bb.p ], [ %i.bj, %.preheader64.split.us.i ]
  %i.dm = zext i32 %.sroa.045.1.i to i64
  %i.dn = shl nuw i64 %i.dm, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.split.us.i:                                      ; preds = %.preheader64.split.us.i.preheader
  %i.do = load i8, ptr %.sroa.0.1.us.i14, align 1, !alias.scope !1640, !noundef !19
  %i.dp = add i8 %i.do, -48
  %i.dq = icmp ult i8 %i.dp, 10
  %spec.select.i = select i1 %i.dq, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %.split.us.i ], [ %i.dn, %.loopexit.i ] ; 2 uses
  %i.dr = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.dr, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %bb.x

bb.r:                                             ; preds = %bb.a, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ds, align 4
  store i32 0, ptr %0, align 8
  br label %bb.z

_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.i, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7, %select.unfold, %bb.g, %bb.g, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1641
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false), !noalias !1641
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i, align 1, !noalias !1641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1641
  store ptr %i.d, ptr %i.b, align 8, !noalias !1641
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1641
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.dt, align 8, !noalias !1641
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1641
  %i.du = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @36, ptr noundef nonnull %i.b)
          to label %bb.t unwind label %bb.s, !noalias !1642

bb.s:                                             ; preds = %bb.u, %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #59
          to label %bb.w unwind label %bb.v, !noalias !1642

bb.t:                                             ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  br i1 %i.du, label %bb.u, label %_RNCNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str00Bb_.exit, !prof !23

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #62
          to label %.noexc.i unwind label %bb.s, !noalias !1642

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1642
  unreachable

bb.w:                                             ; preds = %bb.s
  resume { ptr, i32 } %i.dv

_RNCNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str00Bb_.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1641
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1641
  br label %bb.y

bb.x:                                             ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit
  %.sroa.611.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.611.0.extract.trunc = trunc nuw i64 %.sroa.611.0.extract.shift to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.611.0.extract.trunc, ptr %i.dz, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_RNCNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str00Bb_.exit
  %storemerge = phi i32 [ 0, %bb.x ], [ 1, %_RNCNCNvXsf_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB9_12VersionBoundNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str00Bb_.exit ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtNtBf_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2j_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !align !29, !noundef !19 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1648)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1648, !noalias !1649, !align !29, !noundef !19 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !1648, !noalias !1649
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !20, !noalias !1650, !noundef !19
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2h_.exit, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #62, !noalias !1650
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #62, !noalias !1650
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison6rwlock6RwLockNtNtCs5PEMdK7bMAG_12typst_syntax4path8InternerEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2h_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !1650, !nonnull !19, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1650
  call void %i.f(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a), !noalias !1650, !inline_history !1647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !1650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1650
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvCs5D56hKD03st_13unicode_ident12is_xid_start(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #16 {
bb.a:
  %i.a = icmp samesign ult i32 %0, 128
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 3
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = icmp samesign ult i32 %0, 205824
  %i.e = lshr i64 %i.c, 6
  %i.f = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables10TRIE_START, i64 %i.e
  %.sroa.01.0 = select i1 %i.d, ptr %i.f, ptr @38
  %i.g = load i8, ptr %.sroa.01.0, align 1, !noundef !19
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 5
  %i.j = and i64 %i.c, 63
  %i.k = add nuw nsw i64 %i.i, %i.j               ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 7904
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables4LEAF, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !noundef !19
  %i.o = trunc i32 %0 to i8
  %i.p = and i8 %i.o, 7
  %i.q = lshr i8 %i.n, %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi i8 [ %i.u, %bb.d ], [ %i.q, %bb.b ]
  %i.r = trunc i8 %.sroa.0.0 to i1
  ret i1 %i.r

bb.d:                                             ; preds = %bb.a
  %i.s = zext nneg i32 %0 to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables11ASCII_START, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !range !20, !noundef !19
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name(i8 noundef range(i8 0, -119) %0) unnamed_addr #17 {
switch.lookup:
  %i.a = zext i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext i8 %0 to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name.621, i64 %i.b
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.c = insertvalue { ptr, i64 } poison, ptr %switch.load3, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %switch.ext, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2_10SyntaxNode9hints_mut(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #63
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.d) #63
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ], [ null, %bb.a ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i16 1, 0) i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef i16 @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileId3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232)
  ret i16 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2_5Lexer6column(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %1) ; 2 uses
  %i.b = icmp eq i64 %..i.i, 0
  br i1 %i.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.0.01.i = phi i64 [ %i.f, %bb.c ], [ %..i.i, %bb.a ] ; 4 uses
  %.not.i = icmp ult i64 %.sroa.0.01.i, %.sroa.5.0.copyload
  br i1 %.not.i, label %bb.b, label %.lr.ph.i.i.i.i.preheader

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.0.01.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !19
  %i.e = icmp sgt i8 %i.d, -65
  br i1 %i.e, label %.lr.ph.i.i.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %.sroa.0.01.i, -1                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit, label %.lr.ph.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.0.01.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2V_5Lexer6column0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2X_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.at, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2V_5Lexer6column0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2X_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 8 uses
  %i.i = phi ptr [ %i.as, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2V_5Lexer6column0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2X_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !noalias !1665, !noundef !19 ; 3 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.d, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = icmp ne ptr %.sroa.0.0.copyload, %i.j
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -2 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !1665, !noundef !19 ; 3 uses
  %i.p = and i8 %i.o, 31
  %i.q = zext nneg i8 %i.p to i32
  %i.r = icmp slt i8 %i.o, -64
  br i1 %i.r, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i.i.i, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = zext nneg i8 %i.k to i32
  br label %bb.g

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i.i.i
  %i.t = icmp ne ptr %.sroa.0.0.copyload, %i.n
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 -3 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !1665, !noundef !19 ; 3 uses
  %i.w = and i8 %i.v, 15
  %i.x = zext nneg i8 %i.w to i32
  %i.y = icmp slt i8 %i.v, -64
  br i1 %i.y, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i.i.i, label %bb.f

bb.e:                                             ; preds = %bb.f, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i.i.i
  %i.z = phi ptr [ %i.an, %bb.f ], [ %i.n, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.f ], [ %i.q, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i.i.i ]
  %i.aa = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.ab = and i8 %i.k, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac
  br label %bb.g

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i.i.i
  %i.ae = icmp ne ptr %.sroa.0.0.copyload, %i.u
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !noalias !1665, !noundef !19
  %i.ah = and i8 %i.ag, 7
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 6
  %i.ak = and i8 %i.v, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i.i.i
  %i.an = phi ptr [ %i.af, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i.i.i ], [ %i.u, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i = phi i32 [ %i.am, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i.i.i ], [ %i.x, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i.i.i ]
  %i.ao = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i, 6
  %i.ap = and i8 %i.o, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq
  br label %bb.e

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.as = phi ptr [ %i.j, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %spec.select.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.d ], [ %i.ad, %bb.e ]
  switch i32 %spec.select.i.ph.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2V_5Lexer6column0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2X_.exit.i.i.i.i [
    i32 10, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit
    i32 11, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit
    i32 12, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit
    i32 13, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit
    i32 133, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit
    i32 8232, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit
    i32 8233, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit
  ]

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2V_5Lexer6column0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2X_.exit.i.i.i.i: ; preds = %bb.g
  %i.at = add i64 %.sroa.01.019.i.i.i.i, 1        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload, %i.as
  br i1 %.not.i.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3rev3RevNtNtNtBc_3str4iter5CharsENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB1V_5Lexer6column0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2Q_5count0EB1X_.exit: ; preds = %bb.c, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2V_5Lexer6column0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2X_.exit.i.i.i.i, %bb.a
  %.sroa.0.1.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.019.i.i.i.i, %bb.g ], [ %.sroa.01.019.i.i.i.i, %bb.g ], [ %.sroa.01.019.i.i.i.i, %bb.g ], [ %.sroa.01.019.i.i.i.i, %bb.g ], [ %.sroa.01.019.i.i.i.i, %bb.g ], [ %.sroa.01.019.i.i.i.i, %bb.g ], [ %i.at, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMNtCs5PEMdK7bMAG_12typst_syntax5lexerNtB2V_5Lexer6column0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B2X_.exit.i.i.i.i ], [ %.sroa.01.019.i.i.i.i, %bb.g ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvMNtCs5PEMdK7bMAG_12typst_syntax5linesINtB2_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE3newB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.e, align 8, !noundef !19
  invoke void @_RNvNtCs5PEMdK7bMAG_12typst_syntax5lines5lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !1668
  %i.i = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1668 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.e, !prof !23

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #58
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvXs2_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str:bb.a
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc45 unwind label %bb.h

.noexc45:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10374
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

bb.y:                                             ; preds = %_RNvNtCs5PEMdK7bMAG_12typst_syntax7package13parse_version.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit56

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit56: ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit, %bb.z, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i50, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i55, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %.noexc45, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %bb.w, %bb.v, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !10375)
  %.val.i46 = load ptr, ptr %i.m, align 8, !alias.scope !10375 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %.val1.i47 = load i8, ptr %i.br, align 1, !alias.scope !10375, !noundef !19
  %.not.i.i.i48 = icmp sgt i8 %.val1.i47, -1
  br i1 %.not.i.i.i48, label %bb.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit56

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i46) ]
  %.not.i.i.i.i.i49 = icmp eq ptr %.val.i46, inttoptr (i64 16 to ptr)
  %i.bs = getelementptr inbounds i8, ptr %.val.i46, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i49, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit56, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i50

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i50: ; preds = %bb.z
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !10375
  %.not.i.i.i.i51 = icmp eq i64 %i.bt, 1
  br i1 %.not.i.i.i.i51, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i52, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit56

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i52: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i50
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10375
  %i.bu = getelementptr i8, ptr %.val.i46, i64 -8
  %.val.i.i.i.i.i53 = load i64, ptr %i.bu, align 8, !noalias !10375, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i54 = icmp ult i64 %.val.i.i.i.i.i53, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i54, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i55, label %bb.aa, !prof !22

bb.aa:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i52
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !10375
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i55: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i52
  %i.bv = add nuw nsw i64 %.val.i.i.i.i.i53, 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bs, ptr %i.bw, align 8, !noalias !10375
  store i64 8, ptr %i.a, align 8, !noalias !10375
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bv, ptr %i.bx, align 8, !noalias !10375
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !10375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10375
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit56

bb.ab:                                            ; preds = %.body41, %.body
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !10378, !noundef !19 ; 2 uses
  %.not.i = icmp sgt i8 %i.b, -1                  ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !10378, !nonnull !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !10378
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.e, ptr %0
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNvXs3_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_9GraphemesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !noundef !19 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !noundef !19
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !19
  call void @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor13prev_boundary(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef 0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10384)
  %i.m = load i64, ptr %i.b, align 8, !range !36, !alias.scope !10384, !noalias !10385, !noundef !19
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtB4_6option6OptionjENtNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme18GraphemeIncompleteE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !23

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10386
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !55, !alias.scope !10384, !noalias !10385, !noundef !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !10384, !noalias !10385
  store i64 %i.p, ptr %i.a, align 8, !noalias !10386
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !10386
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @559) #62, !noalias !10384
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtB4_6option6OptionjENtNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme18GraphemeIncompleteE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !36, !alias.scope !10384, !noalias !10385, !noundef !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !10384, !noalias !10385 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = trunc nuw i64 %i.u to i1
  br i1 %i.x, label %bb.d, label %bb.i, !prof !22

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtB4_6option6OptionjENtNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme18GraphemeIncompleteE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit
  %i.y = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.z = load i64, ptr %i.k, align 8, !noundef !19 ; 4 uses
  %i.aa = icmp ugt i64 %i.w, %i.d
  %i.ab = icmp ugt i64 %i.d, %i.z
  %or.cond.i = or i1 %i.aa, %i.ab
  br i1 %or.cond.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread7, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i64 %i.w, %i.z
  br i1 %i.ac, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.w, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ae = icmp eq i64 %i.d, %i.z
  br i1 %i.ae, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !10387, !noundef !19
  %i.ah = icmp sgt i8 %i.ag, -65
  br i1 %i.ah, label %bb.g, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread7, !prof !46

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.d
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !10387, !noundef !19
  %i.ak = icmp sgt i8 %i.aj, -65
  br i1 %i.ak, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread7, !prof !47

bb.i:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtB4_6option6OptionjENtNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme18GraphemeIncompleteE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @560) #62
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread7: ; preds = %bb.h, %bb.d, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z, i64 noundef %i.w, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @561) #62
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread: ; preds = %bb.g, %bb.e, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread
  %.sroa.0.0 = phi ptr [ %i.al, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define noundef nonnull align 8 ptr @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode10to_untyped(i64 noundef range(i64 0, 61) %0, ptr nofree noundef readnone returned captures(ret: address, provenance) %1) unnamed_addr #39 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, ptr } @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode12from_untyped(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #23 {
bb.a:
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.01.0 = load i8, ptr %.sroa.01.0.in, align 1, !range !21, !noundef !19
  %switch.tableidx = add i8 %.sroa.01.0, -6       ; 2 uses
  %1 = icmp ult i8 %switch.tableidx, -125
  br i1 %1, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.a = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode12from_untyped, i64 %i.a
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i64 [ -1, %bb.a ], [ %switch.load, %switch.lookup ]
  %i.b = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.c = insertvalue { i64, ptr } %i.b, ptr %0, 1
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10391)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10392
  store ptr %0, ptr %i.a, align 8, !noalias !10392
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !10392
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8, !noalias !10392
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !10392
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.e, align 8, !noalias !10392
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsc_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersionNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !10392
  %i.f = load ptr, ptr %1, align 8, !alias.scope !10391, !noalias !10393, !nonnull !19, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10391, !noalias !10393, !nonnull !19, !align !29, !noundef !19
  %i.i = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @562, ptr noundef nonnull %i.a), !noalias !10391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10392
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsc_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersionNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !19, !align !29, !noundef !19
  %i.i = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @562, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPathNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !10400, !noundef !19 ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.b, -1              ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !10400, !nonnull !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !10400
  %.sroa.3.0.i.i.i = select i1 %.not.i.i.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %0
  %i.h = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs5_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtCsjRrCJiNqTDc_8unscanny7ScannerNtB5_10ScannerExt11eat_newline(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #40 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10409)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !10409, !nonnull !19, !noundef !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10409, !noundef !19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10409, !noundef !19 ; 4 uses
  %i.f = sub nuw i64 %i.c, %i.e                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 4 uses
  %i.h = icmp eq i64 %i.c, %i.e
  br i1 %i.h, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !alias.scope !10410, !noalias !10411, !noundef !19 ; 5 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = icmp samesign ne i64 %i.f, 1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load i8, ptr %i.k, align 1, !alias.scope !10410, !noalias !10411, !noundef !19
  %i.p = shl nuw nsw i32 %i.m, 6
  %i.q = and i8 %i.o, 63
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = icmp samesign ugt i8 %i.i, -33
  br i1 %i.t, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = zext nneg i8 %i.i to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.w = icmp samesign ne i64 %i.f, 2
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load i8, ptr %i.v, align 1, !alias.scope !10410, !noalias !10411, !noundef !19
  %i.y = shl nuw nsw i32 %i.r, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.m, 12
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ae, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ag = icmp samesign ne i64 %i.f, 3
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = load i8, ptr %i.af, align 1, !alias.scope !10410, !noalias !10411, !noundef !19
  %i.ai = shl nuw nsw i32 %i.m, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.ab, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %.sroa.4.0.i.i.i = phi i32 [ %i.u, %bb.c ], [ %i.s, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i ] ; 4 uses
  switch i32 %.sroa.4.0.i.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit [
    i32 8233, label %bb.d
    i32 10, label %bb.d
    i32 11, label %bb.d
    i32 12, label %bb.d
    i32 13, label %bb.d
    i32 133, label %bb.d
    i32 8232, label %bb.d
  ]

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.d, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %bb.a, %bb.f, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i, %bb.e, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit
  %i.ap = phi i1 [ true, %bb.f ], [ true, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit ], [ false, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i ], [ true, %bb.e ], [ true, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i ], [ false, %bb.a ], [ true, %bb.d ]
  ret i1 %i.ap

bb.d:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %i.aq = icmp samesign ult i32 %.sroa.4.0.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.i.i, 128
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.i.i, 2048
  %spec.select.i.i = select i1 %i.as, i64 2, i64 3
  %.sroa.3.0.i.ph.i = select i1 %i.ar, i64 1, i64 %spec.select.i.i
  %i.at = add i64 %.sroa.3.0.i.ph.i, %i.e         ; 5 uses
  store i64 %i.at, ptr %i.d, align 8, !alias.scope !10409
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.a, i64 %i.at   ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %rhsc = load i8, ptr %i.av, align 1
  %i.aw = icmp eq i8 %rhsc, 13
  br i1 %i.aw, label %bb.e, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs5PEMdK7bMAG_12typst_syntax.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10412)
  %.not.i.i.i = icmp eq i64 %i.c, %i.at
  br i1 %.not.i.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i: ; preds = %bb.e
  %rhsc.i = load i8, ptr %i.au, align 1, !noalias !10412
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.ax = icmp eq i8 %rhsc.fr.i, 10
  br i1 %i.ax, label %bb.f, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit

bb.f:                                             ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i
  %i.ay = add i64 %i.at, 1
  store i64 %i.ay, ptr %i.d, align 8, !alias.scope !10412
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_2
