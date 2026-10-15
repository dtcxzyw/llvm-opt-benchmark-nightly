Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.03?download=true
inline.NumInlined: 1305
inline.NumDeleted: 645
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0
@60 = private unnamed_addr constant [4 x i8] c"None", align 1
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindENtB6_5Debug3fmtB18_ }>, align 8
@62 = private unnamed_addr constant [4 x i8] c"Some", align 1
@63 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@65 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackNtB6_5Debug3fmtBA_ }>, align 8
@66 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRTNtNtCs2O29vuvTAEJ_14ty_python_core6unpack14UnpackPositionNtBz_6UnpackENtB6_5Debug3fmtBB_ }>, align 8
@69 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated17PatternMatchValueNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@70 = private unnamed_addr constant [10 x i8] c"MatchValue", align 1
@71 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated21PatternMatchSingletonNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@72 = private unnamed_addr constant [14 x i8] c"MatchSingleton", align 1
@73 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated20PatternMatchSequenceNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@74 = private unnamed_addr constant [13 x i8] c"MatchSequence", align 1
@75 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated19PatternMatchMappingNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@76 = private unnamed_addr constant [12 x i8] c"MatchMapping", align 1
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated17PatternMatchClassNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@78 = private unnamed_addr constant [10 x i8] c"MatchClass", align 1
@79 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated16PatternMatchStarNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@80 = private unnamed_addr constant [9 x i8] c"MatchStar", align 1
@81 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated14PatternMatchAsNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@82 = private unnamed_addr constant [7 x i8] c"MatchAs", align 1
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated14PatternMatchOrNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@84 = private unnamed_addr constant [7 x i8] c"MatchOr", align 1
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprBoolOpNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@86 = private unnamed_addr constant [6 x i8] c"BoolOp", align 1
@87 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprNamedNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@88 = private unnamed_addr constant [5 x i8] c"Named", align 1
@89 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprBinOpNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@90 = private unnamed_addr constant [5 x i8] c"BinOp", align 1
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprUnaryOpNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@92 = private unnamed_addr constant [7 x i8] c"UnaryOp", align 1
@93 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprLambdaNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@94 = private unnamed_addr constant [6 x i8] c"Lambda", align 1
@95 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated6ExprIfNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@96 = private unnamed_addr constant [2 x i8] c"If", align 1
@97 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprDictNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@98 = private unnamed_addr constant [4 x i8] c"Dict", align 1
@99 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated7ExprSetNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@100 = private unnamed_addr constant [3 x i8] c"Set", align 1
@101 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprListCompNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@102 = private unnamed_addr constant [8 x i8] c"ListComp", align 1
@103 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprSetCompNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@104 = private unnamed_addr constant [7 x i8] c"SetComp", align 1
@105 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@106 = private unnamed_addr constant [8 x i8] c"DictComp", align 1
@107 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@108 = private unnamed_addr constant [9 x i8] c"Generator", align 1
@109 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprAwaitNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@110 = private unnamed_addr constant [5 x i8] c"Await", align 1
@111 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprYieldNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@112 = private unnamed_addr constant [5 x i8] c"Yield", align 1
@113 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprYieldFromNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@114 = private unnamed_addr constant [9 x i8] c"YieldFrom", align 1
@115 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@116 = private unnamed_addr constant [7 x i8] c"Compare", align 1
@117 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@118 = private unnamed_addr constant [4 x i8] c"Call", align 1
@119 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprFStringNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@120 = private unnamed_addr constant [7 x i8] c"FString", align 1
@121 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprTStringNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@122 = private unnamed_addr constant [7 x i8] c"TString", align 1
@123 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated17ExprStringLiteralNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@124 = private unnamed_addr constant [13 x i8] c"StringLiteral", align 1
@125 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated16ExprBytesLiteralNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@126 = private unnamed_addr constant [12 x i8] c"BytesLiteral", align 1
@127 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated17ExprNumberLiteralNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@128 = private unnamed_addr constant [13 x i8] c"NumberLiteral", align 1
@129 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated18ExprBooleanLiteralNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@130 = private unnamed_addr constant [14 x i8] c"BooleanLiteral", align 1
@131 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@132 = private unnamed_addr constant [11 x i8] c"NoneLiteral", align 1
@133 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated19ExprEllipsisLiteralNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@134 = private unnamed_addr constant [15 x i8] c"EllipsisLiteral", align 1
@135 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprAttributeNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@136 = private unnamed_addr constant [9 x i8] c"Attribute", align 1
@137 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprSubscriptNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@138 = private unnamed_addr constant [9 x i8] c"Subscript", align 1
@139 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprStarredNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@140 = private unnamed_addr constant [7 x i8] c"Starred", align 1
@141 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprNameNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@142 = private unnamed_addr constant [4 x i8] c"Name", align 1
@143 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprListNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@144 = private unnamed_addr constant [4 x i8] c"List", align 1
@145 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@146 = private unnamed_addr constant [5 x i8] c"Tuple", align 1
@147 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprSliceNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@148 = private unnamed_addr constant [5 x i8] c"Slice", align 1
@149 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@150 = private unnamed_addr constant [16 x i8] c"IpyEscapeCommand", align 1

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RINvMNtCs4NRVxsYgnAr_4core5sliceSy9fill_withNCNvMNtCsb80QtQtK5z0_6bitvec3vecINtBL_6BitVecyNtNtBN_5order4Msb0E6repeat0ECs2O29vuvTAEJ_14ty_python_core(ptr noalias nofree noundef nonnull writeonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef readonly captures(none) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1, !range !8, !noundef !9
  %i.d = zext nneg i8 %i.c to i64
  %spec.select.i = sub nsw i64 0, %i.d            ; 9 uses
  %i.e = add nsw i64 %.idx, -8                    ; 2 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.sroa.0.04.prol = phi ptr [ %i.h, %.prol.preheader ], [ %0, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.04.prol, i64 8 ; 2 uses
  store i64 %spec.select.i, ptr %.sroa.0.04.prol, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !35

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.sroa.0.04.unr = phi ptr [ %0, %.lr.ph ], [ %i.h, %.prol.preheader ]
  %i.i = icmp ult i64 %i.e, 56
  br i1 %i.i, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.sroa.0.04 = phi ptr [ %i.q, %.lr.ph.new ], [ %.sroa.0.04.unr, %.prol.loopexit ] ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8
  store i64 %spec.select.i, ptr %.sroa.0.04, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16
  store i64 %spec.select.i, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24
  store i64 %spec.select.i, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 32
  store i64 %spec.select.i, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 40
  store i64 %spec.select.i, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 48
  store i64 %spec.select.i, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 56
  store i64 %spec.select.i, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 64 ; 2 uses
  store i64 %spec.select.i, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraints25ScopedNarrowingConstraintE3zipBI_EBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i32 noundef range(i32 0, 2) %1, i32 %2, i32 noundef range(i32 0, 2) %3, i32 %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i32 %3, %1
  %or.cond.not = icmp eq i32 %i.a, 0
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %4, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  store i32 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5place13ScopedPlaceIdE3zipNtNtBM_7ast_ids11ScopedUseIdEBM_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, i32 noundef range(i32 0, 3) %1, i32 %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i32 %1, 2
  %.not12 = icmp eq i32 %3, 0
  %or.cond = or i1 %.not, %.not12
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %1, %bb.b ], [ 2, %bb.a ]
  store i32 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !48, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !48
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !48, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !48, !inline_history !38
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.w = load ptr, ptr %0, align 8, !noalias !49, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !49, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !49, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !49, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !49
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !49, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !49, !inline_history !41
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !50, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !50
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !51
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.at = load ptr, ptr %0, align 8, !noalias !51, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !51, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !51, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !51
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !51, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !38

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.bn = load ptr, ptr %0, align 8, !noalias !52, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !52, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !52, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !52, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !52
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !52, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !52, !inline_history !38
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_core1__29semantic_index_Configuration_E7executes1_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !65, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !65
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !65, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !65, !inline_history !55
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.w = load ptr, ptr %0, align 8, !noalias !66, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !66, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !66, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !66, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !66
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !66, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !66, !inline_history !58
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !67, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !67
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !68
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.at = load ptr, ptr %0, align 8, !noalias !68, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !68, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !68, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !68
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !68, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !55

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.bn = load ptr, ptr %0, align 8, !noalias !69, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !69, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !69, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !69, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !69
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !69, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !69, !inline_history !55
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores0_1__26use_def_map_Configuration_E7executes1_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !82, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !82
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !82, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !82, !inline_history !72
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.w = load ptr, ptr %0, align 8, !noalias !83, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !83, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !83, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !83, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !83
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !83, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !83, !inline_history !75
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !84, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !84
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !85
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.at = load ptr, ptr %0, align 8, !noalias !85, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !85, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !85, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !85
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !85, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !72

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.bn = load ptr, ptr %0, align 8, !noalias !86, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !86, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !86, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !86, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !86
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !86, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !86, !inline_history !72
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores1_1__27global_scope_Configuration_E7executes1_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !99, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !99
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !99, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !99, !inline_history !89
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.w = load ptr, ptr %0, align 8, !noalias !100, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !100, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !100, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !100, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !100
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !100, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !100, !inline_history !92
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !101, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !101
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !102
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.at = load ptr, ptr %0, align 8, !noalias !102, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !102, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !102, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !102
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !102, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !89

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.bn = load ptr, ptr %0, align 8, !noalias !103, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !103, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !103, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !103, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !103
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !103, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !103, !inline_history !89
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvCs2O29vuvTAEJ_14ty_python_cores_1__26place_table_Configuration_E7executes1_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0EB29_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !116, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !116
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !116, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !116, !inline_history !106
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.w = load ptr, ptr %0, align 8, !noalias !117, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !117, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !117, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !117, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !117
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !117, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !117, !inline_history !109
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !118, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !118
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !119
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.at = load ptr, ptr %0, align 8, !noalias !119, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !119, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !119, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !119
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !119, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !106

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.bn = load ptr, ptr %0, align 8, !noalias !120, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !120, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !120, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !120, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !120
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0B1b_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !120, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !120, !inline_history !106
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNtCs2O29vuvTAEJ_14ty_python_core10re_exports1__29exported_names_Configuration_E7executes1_0E0bEB3r_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB13_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0EB2d_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !133, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !133
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !133, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !133, !inline_history !123
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.w = load ptr, ptr %0, align 8, !noalias !134, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !134, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !134, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !134, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !134
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit.i.i

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !134, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !134, !inline_history !126
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !135, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !135
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !136
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.at = load ptr, ptr %0, align 8, !noalias !136, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !136, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !136, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !136
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !136, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !123

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit: ; preds = %bb.p, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit.i.i, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit9, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit ], [ %i.ca, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.bn = load ptr, ptr %0, align 8, !noalias !137, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !137, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !137, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !137, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !137
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit9

_RNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB6_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0B1f_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !137, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !137, !inline_history !123
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMNtNtCs45bxiIjzMqg_5salsa8function7executeINtB2l_14IngredientImplNtNvNvNtNtCs2O29vuvTAEJ_14ty_python_core2db13TestProgramDb7program1__28program_inner_Configuration_E7executes1_0E0bEB3v_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !150, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !150
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !150, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !150, !inline_history !140
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.w = load ptr, ptr %0, align 8, !noalias !151, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !151, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !151, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !151, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !151
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !151, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !151, !inline_history !143
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !152, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !152
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !153
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.at = load ptr, ptr %0, align 8, !noalias !153, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !153, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !153, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !153
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !153, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !140

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.bn = load ptr, ptr %0, align 8, !noalias !154, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !154, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !154, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !154, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !154
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !154, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !154, !inline_history !140
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6updates_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !167, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !167
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !167, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !167, !inline_history !157
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.w = load ptr, ptr %0, align 8, !noalias !168, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !168, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !168, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !168, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !168
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !168, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !168, !inline_history !160
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !169, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !169
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !170
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.at = load ptr, ptr %0, align 8, !noalias !170, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !170, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !170, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !170
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !170, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !157

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.bn = load ptr, ptr %0, align 8, !noalias !171, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !171, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !171, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !171, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !171
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !171, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !171, !inline_history !157
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8allocates0_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !184, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !184
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !184, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !184, !inline_history !174
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.w = load ptr, ptr %0, align 8, !noalias !185, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !185, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !185, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !185, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !185
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !185, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !185, !inline_history !177
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !186, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !186
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !187
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.at = load ptr, ptr %0, align 8, !noalias !187, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !187, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !187, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !187
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !187, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !174

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.bn = load ptr, ptr %0, align 8, !noalias !188, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !188, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !188, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !188, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !188
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !188, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !188, !inline_history !174
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE6updates_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !201, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !201
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !201, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !201, !inline_history !191
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.w = load ptr, ptr %0, align 8, !noalias !202, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !202, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !202, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !202, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !202
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !202, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !202, !inline_history !194
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !203, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !203
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !204
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.at = load ptr, ptr %0, align 8, !noalias !204, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !204, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !204, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !204
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !204, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !191

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.bn = load ptr, ptr %0, align 8, !noalias !205, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !205, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !205, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !205, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !205
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !205, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !205, !inline_history !191
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionE8allocates0_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !218, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !218
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !218, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !218, !inline_history !208
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.w = load ptr, ptr %0, align 8, !noalias !219, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !219, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !219, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !219, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !219
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !219, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !219, !inline_history !211
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !220, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !220
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !221
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.at = load ptr, ptr %0, align 8, !noalias !221, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !221, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !221, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !221
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !221, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !208

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.bn = load ptr, ptr %0, align 8, !noalias !222, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !222, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !222, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !222, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !222
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !222, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !222, !inline_history !208
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE6updates_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !235, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !235
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !235, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !235, !inline_history !225
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.w = load ptr, ptr %0, align 8, !noalias !236, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !236, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !236, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !236, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !236
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !236, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !236, !inline_history !228
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !237, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !237
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !238
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.at = load ptr, ptr %0, align 8, !noalias !238, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !238, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !238, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !238
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !238, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !225

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.bn = load ptr, ptr %0, align 8, !noalias !239, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !239, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !239, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !239, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !239
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !239, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !239, !inline_history !225
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdE8allocates0_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !252, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !252
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !252, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !252, !inline_history !242
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.w = load ptr, ptr %0, align 8, !noalias !253, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !253, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !253, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !253, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !253
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !253, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !253, !inline_history !245
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !254, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !254
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !255
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.at = load ptr, ptr %0, align 8, !noalias !255, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !255, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !255, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !255
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !255, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !242

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.bn = load ptr, ptr %0, align 8, !noalias !256, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !256, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !256, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !256, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !256
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !256, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !256, !inline_history !242
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE6updates_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !269, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !269
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !269, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !269, !inline_history !259
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.w = load ptr, ptr %0, align 8, !noalias !270, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !270, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !270, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !270, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !270
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !270, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !270, !inline_history !262
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !271, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !271
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !272
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.at = load ptr, ptr %0, align 8, !noalias !272, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !272, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !272, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !272
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !272, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !259

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.bn = load ptr, ptr %0, align 8, !noalias !273, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !273, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !273, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !273, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !273
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !273, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !273, !inline_history !259
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core6unpack6UnpackE8allocates0_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !286, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !286
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !286, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !286, !inline_history !276
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.w = load ptr, ptr %0, align 8, !noalias !287, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !287, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !287, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !287, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !287
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !287, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !287, !inline_history !279
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !288, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !288
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !289
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.at = load ptr, ptr %0, align 8, !noalias !289, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !289, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !289, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !289
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !289, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !276

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.bn = load ptr, ptr %0, align 8, !noalias !290, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !290, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !290, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !290, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !290
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !290, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !290, !inline_history !276
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE6updates_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !303, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !303
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !303, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !303, !inline_history !293
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.w = load ptr, ptr %0, align 8, !noalias !304, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !304, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !304, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !304, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !304
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !304, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !304, !inline_history !296
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !305, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !305
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !306
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.at = load ptr, ptr %0, align 8, !noalias !306, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !306, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !306, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !306
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !306, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !293

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.bn = load ptr, ptr %0, align 8, !noalias !307, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !307, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !307, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !307, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !307
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !307, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !307, !inline_history !293
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate16PatternPredicateE8allocates0_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !320, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !320
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !320, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !320, !inline_history !310
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.w = load ptr, ptr %0, align 8, !noalias !321, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !321, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !321, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !321, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !321
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !321, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !321, !inline_history !313
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !322, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !322
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !323
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.at = load ptr, ptr %0, align 8, !noalias !323, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !323, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !323, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !323
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !323, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !310

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.bn = load ptr, ptr %0, align 8, !noalias !324, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !324, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !324, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !324, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !324
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !324, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !324, !inline_history !310
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE6updates_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !337, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !337
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !337, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !337, !inline_history !327
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.w = load ptr, ptr %0, align 8, !noalias !338, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !338, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !338, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !338, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !338
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !338, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !338, !inline_history !330
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !339, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !339
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !340
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.at = load ptr, ptr %0, align 8, !noalias !340, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !340, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !340, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !340
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !340, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !327

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.bn = load ptr, ptr %0, align 8, !noalias !341, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !341, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !341, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !341, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !341
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !341, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !341, !inline_history !327
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9predicate30StarImportPlaceholderPredicateE8allocates0_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !354, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !354
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !354, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !354, !inline_history !344
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.w = load ptr, ptr %0, align 8, !noalias !355, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !355, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !355, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !355, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !355
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !355, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !355, !inline_history !347
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !356, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !356
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !357
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.at = load ptr, ptr %0, align 8, !noalias !357, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !357, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !357, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !357
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !357, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !344

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.bn = load ptr, ptr %0, align 8, !noalias !358, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !358, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !358, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !358, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !358
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !358, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !358, !inline_history !344
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE6updates_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB14_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0EB27_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !371, !nonnull !9, !align !11, !noundef !9
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !12
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !9
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !9
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !9, !align !11
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !9, !align !11
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !13, !invariant.load !9, !noalias !371
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !9, !noalias !371, !nonnull !9
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !371, !inline_history !361
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !14, !noundef !9
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit.thread
  ], !prof !15

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2O29vuvTAEJ_14ty_python_core(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.w = load ptr, ptr %0, align 8, !noalias !372, !nonnull !9, !align !11, !noundef !9
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !372, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !372, !nonnull !9, !noundef !9 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !372, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !13, !invariant.load !9, !noalias !372
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit.i.i

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !9, !noalias !372, !nonnull !9
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !372, !inline_history !364
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.ap = load i64, ptr %i.ao, align 8, !range !17, !alias.scope !373, !noundef !9 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !373
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !12, !alias.scope !374
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.at = load ptr, ptr %0, align 8, !noalias !374, !nonnull !9, !align !11, !noundef !9
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !374, !nonnull !9, !noundef !9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !374, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !13, !invariant.load !9, !noalias !374
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !9, !noalias !374, !nonnull !9
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !361

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !9
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit.i.i, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit9, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit ], [ %i.ca, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.bn = load ptr, ptr %0, align 8, !noalias !375, !nonnull !9, !align !11, !noundef !9
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !12, !alias.scope !375, !noundef !9
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !375, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !375, !nonnull !9, !align !11, !noundef !9 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !invariant.load !9, !noalias !375
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit9

_RNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB7_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0B19_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !9, !noalias !375, !nonnull !9
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !375, !inline_history !361
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCs45bxiIjzMqg_5salsa14tracked_structINtB2m_14IngredientImplNtNtCs2O29vuvTAEJ_14ty_python_core9statement14StatementInnerE8allocates0_0E0bEB3p_.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !378, !nonnull !9, !noundef !9
  %i.b = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.b, label %_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core.exit

_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindEEEB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !11, !noundef !9 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindEEB1d_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindEBF_(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs2O29vuvTAEJ_14ty_python_core9predicate20PatternPredicateKindEEB1d_.exit unwind label %bb.d, !noalias !382, !inline_history !381

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #30, !noalias !382
  resume { ptr, i32 } %i.c
end_hunk_0
