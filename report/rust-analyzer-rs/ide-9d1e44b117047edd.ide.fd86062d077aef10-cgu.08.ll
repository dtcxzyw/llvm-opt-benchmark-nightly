Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.08?download=true
inline.NumInlined: 2573
inline.NumDeleted: 1226
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@228 = private unnamed_addr constant [11 x i8] c"BYTE_STRING", align 1
@229 = private unnamed_addr constant [4 x i8] c"CHAR", align 1
@230 = private unnamed_addr constant [8 x i8] c"C_STRING", align 1
@231 = private unnamed_addr constant [12 x i8] c"FLOAT_NUMBER", align 1
@232 = private unnamed_addr constant [10 x i8] c"INT_NUMBER", align 1
@233 = private unnamed_addr constant [6 x i8] c"STRING", align 1
@234 = private unnamed_addr constant [7 x i8] c"COMMENT", align 1
@235 = private unnamed_addr constant [5 x i8] c"ERROR", align 1
@236 = private unnamed_addr constant [11 x i8] c"FRONTMATTER", align 1
@237 = private unnamed_addr constant [5 x i8] c"IDENT", align 1
@238 = private unnamed_addr constant [14 x i8] c"LIFETIME_IDENT", align 1
@239 = private unnamed_addr constant [7 x i8] c"NEWLINE", align 1
@240 = private unnamed_addr constant [7 x i8] c"SHEBANG", align 1
@241 = private unnamed_addr constant [10 x i8] c"WHITESPACE", align 1
@242 = private unnamed_addr constant [3 x i8] c"ABI", align 1
@243 = private unnamed_addr constant [8 x i8] c"ARG_LIST", align 1
@244 = private unnamed_addr constant [10 x i8] c"ARRAY_EXPR", align 1
@245 = private unnamed_addr constant [10 x i8] c"ARRAY_TYPE", align 1
@246 = private unnamed_addr constant [15 x i8] c"ASM_CLOBBER_ABI", align 1
@247 = private unnamed_addr constant [9 x i8] c"ASM_CONST", align 1
@248 = private unnamed_addr constant [12 x i8] c"ASM_DIR_SPEC", align 1
@249 = private unnamed_addr constant [8 x i8] c"ASM_EXPR", align 1
@250 = private unnamed_addr constant [9 x i8] c"ASM_LABEL", align 1
@251 = private unnamed_addr constant [16 x i8] c"ASM_OPERAND_EXPR", align 1
@252 = private unnamed_addr constant [17 x i8] c"ASM_OPERAND_NAMED", align 1
@253 = private unnamed_addr constant [10 x i8] c"ASM_OPTION", align 1
@254 = private unnamed_addr constant [11 x i8] c"ASM_OPTIONS", align 1
@255 = private unnamed_addr constant [15 x i8] c"ASM_REG_OPERAND", align 1
@256 = private unnamed_addr constant [12 x i8] c"ASM_REG_SPEC", align 1
@257 = private unnamed_addr constant [7 x i8] c"ASM_SYM", align 1
@258 = private unnamed_addr constant [15 x i8] c"ASSOC_ITEM_LIST", align 1
@259 = private unnamed_addr constant [14 x i8] c"ASSOC_TYPE_ARG", align 1
@260 = private unnamed_addr constant [4 x i8] c"ATTR", align 1
@261 = private unnamed_addr constant [10 x i8] c"AWAIT_EXPR", align 1
@262 = private unnamed_addr constant [11 x i8] c"BECOME_EXPR", align 1
@263 = private unnamed_addr constant [8 x i8] c"BIN_EXPR", align 1
@264 = private unnamed_addr constant [10 x i8] c"BLOCK_EXPR", align 1
@265 = private unnamed_addr constant [7 x i8] c"BOX_PAT", align 1
@266 = private unnamed_addr constant [10 x i8] c"BREAK_EXPR", align 1
@267 = private unnamed_addr constant [9 x i8] c"CALL_EXPR", align 1
@268 = private unnamed_addr constant [9 x i8] c"CAST_EXPR", align 1
@269 = private unnamed_addr constant [8 x i8] c"CFG_ATOM", align 1
@270 = private unnamed_addr constant [13 x i8] c"CFG_ATTR_META", align 1
@271 = private unnamed_addr constant [13 x i8] c"CFG_COMPOSITE", align 1
@272 = private unnamed_addr constant [8 x i8] c"CFG_META", align 1
@273 = private unnamed_addr constant [12 x i8] c"CLOSURE_EXPR", align 1
@274 = private unnamed_addr constant [5 x i8] c"CONST", align 1
@275 = private unnamed_addr constant [9 x i8] c"CONST_ARG", align 1
@276 = private unnamed_addr constant [15 x i8] c"CONST_BLOCK_PAT", align 1
@277 = private unnamed_addr constant [11 x i8] c"CONST_PARAM", align 1
@278 = private unnamed_addr constant [13 x i8] c"CONTINUE_EXPR", align 1
@279 = private unnamed_addr constant [9 x i8] c"DEREF_PAT", align 1
@280 = private unnamed_addr constant [14 x i8] c"DYN_TRAIT_TYPE", align 1
@281 = private unnamed_addr constant [4 x i8] c"ENUM", align 1
@282 = private unnamed_addr constant [9 x i8] c"EXPR_STMT", align 1
@283 = private unnamed_addr constant [12 x i8] c"EXTERN_BLOCK", align 1
@284 = private unnamed_addr constant [12 x i8] c"EXTERN_CRATE", align 1
@285 = private unnamed_addr constant [16 x i8] c"EXTERN_ITEM_LIST", align 1
@286 = private unnamed_addr constant [10 x i8] c"FIELD_EXPR", align 1
@287 = private unnamed_addr constant [2 x i8] c"FN", align 1
@288 = private unnamed_addr constant [11 x i8] c"FN_PTR_TYPE", align 1
@289 = private unnamed_addr constant [15 x i8] c"FORMAT_ARGS_ARG", align 1
@290 = private unnamed_addr constant [20 x i8] c"FORMAT_ARGS_ARG_NAME", align 1
@291 = private unnamed_addr constant [16 x i8] c"FORMAT_ARGS_EXPR", align 1
@292 = private unnamed_addr constant [10 x i8] c"FOR_BINDER", align 1
@293 = private unnamed_addr constant [8 x i8] c"FOR_EXPR", align 1
@294 = private unnamed_addr constant [8 x i8] c"FOR_TYPE", align 1
@295 = private unnamed_addr constant [16 x i8] c"GENERIC_ARG_LIST", align 1
@296 = private unnamed_addr constant [18 x i8] c"GENERIC_PARAM_LIST", align 1
@297 = private unnamed_addr constant [9 x i8] c"IDENT_PAT", align 1
@298 = private unnamed_addr constant [7 x i8] c"IF_EXPR", align 1
@299 = private unnamed_addr constant [4 x i8] c"IMPL", align 1
@300 = private unnamed_addr constant [16 x i8] c"IMPL_RESTRICTION", align 1
@301 = private unnamed_addr constant [15 x i8] c"IMPL_TRAIT_TYPE", align 1
@302 = private unnamed_addr constant [18 x i8] c"INCLUDE_BYTES_EXPR", align 1
@303 = private unnamed_addr constant [10 x i8] c"INDEX_EXPR", align 1
@304 = private unnamed_addr constant [10 x i8] c"INFER_TYPE", align 1
@305 = private unnamed_addr constant [9 x i8] c"ITEM_LIST", align 1
@306 = private unnamed_addr constant [14 x i8] c"KEY_VALUE_META", align 1
@307 = private unnamed_addr constant [5 x i8] c"LABEL", align 1
@308 = private unnamed_addr constant [8 x i8] c"LET_ELSE", align 1
@309 = private unnamed_addr constant [8 x i8] c"LET_EXPR", align 1
@310 = private unnamed_addr constant [8 x i8] c"LET_STMT", align 1
@311 = private unnamed_addr constant [8 x i8] c"LIFETIME", align 1
@312 = private unnamed_addr constant [12 x i8] c"LIFETIME_ARG", align 1
@313 = private unnamed_addr constant [14 x i8] c"LIFETIME_PARAM", align 1
@314 = private unnamed_addr constant [7 x i8] c"LITERAL", align 1
@315 = private unnamed_addr constant [11 x i8] c"LITERAL_PAT", align 1
@316 = private unnamed_addr constant [9 x i8] c"LOOP_EXPR", align 1
@317 = private unnamed_addr constant [10 x i8] c"MACRO_CALL", align 1
@318 = private unnamed_addr constant [9 x i8] c"MACRO_DEF", align 1
@319 = private unnamed_addr constant [10 x i8] c"MACRO_EXPR", align 1
@320 = private unnamed_addr constant [11 x i8] c"MACRO_ITEMS", align 1
@321 = private unnamed_addr constant [9 x i8] c"MACRO_PAT", align 1
@322 = private unnamed_addr constant [11 x i8] c"MACRO_RULES", align 1
@323 = private unnamed_addr constant [11 x i8] c"MACRO_STMTS", align 1
@324 = private unnamed_addr constant [10 x i8] c"MACRO_TYPE", align 1
@325 = private unnamed_addr constant [9 x i8] c"MATCH_ARM", align 1
@326 = private unnamed_addr constant [14 x i8] c"MATCH_ARM_LIST", align 1
@327 = private unnamed_addr constant [10 x i8] c"MATCH_EXPR", align 1
@328 = private unnamed_addr constant [11 x i8] c"MATCH_GUARD", align 1
@329 = private unnamed_addr constant [16 x i8] c"METHOD_CALL_EXPR", align 1
@330 = private unnamed_addr constant [6 x i8] c"MODULE", align 1
@331 = private unnamed_addr constant [15 x i8] c"MUT_RESTRICTION", align 1
@332 = private unnamed_addr constant [4 x i8] c"NAME", align 1
@333 = private unnamed_addr constant [8 x i8] c"NAME_REF", align 1
@334 = private unnamed_addr constant [10 x i8] c"NEVER_TYPE", align 1
@335 = private unnamed_addr constant [8 x i8] c"NOT_NULL", align 1
@336 = private unnamed_addr constant [14 x i8] c"OFFSET_OF_EXPR", align 1
@337 = private unnamed_addr constant [6 x i8] c"OR_PAT", align 1
@338 = private unnamed_addr constant [5 x i8] c"PARAM", align 1
@339 = private unnamed_addr constant [10 x i8] c"PARAM_LIST", align 1
@340 = private unnamed_addr constant [22 x i8] c"PARENTHESIZED_ARG_LIST", align 1
@341 = private unnamed_addr constant [10 x i8] c"PAREN_EXPR", align 1
@342 = private unnamed_addr constant [9 x i8] c"PAREN_PAT", align 1
@343 = private unnamed_addr constant [10 x i8] c"PAREN_TYPE", align 1
@344 = private unnamed_addr constant [4 x i8] c"PATH", align 1
@345 = private unnamed_addr constant [9 x i8] c"PATH_EXPR", align 1
@346 = private unnamed_addr constant [9 x i8] c"PATH_META", align 1
@347 = private unnamed_addr constant [8 x i8] c"PATH_PAT", align 1
@348 = private unnamed_addr constant [12 x i8] c"PATH_SEGMENT", align 1
@349 = private unnamed_addr constant [9 x i8] c"PATH_TYPE", align 1
@350 = private unnamed_addr constant [12 x i8] c"PATTERN_TYPE", align 1
@351 = private unnamed_addr constant [11 x i8] c"PREFIX_EXPR", align 1
@352 = private unnamed_addr constant [8 x i8] c"PTR_TYPE", align 1
@353 = private unnamed_addr constant [10 x i8] c"RANGE_EXPR", align 1
@354 = private unnamed_addr constant [9 x i8] c"RANGE_PAT", align 1
@355 = private unnamed_addr constant [11 x i8] c"RECORD_EXPR", align 1
@356 = private unnamed_addr constant [17 x i8] c"RECORD_EXPR_FIELD", align 1
@357 = private unnamed_addr constant [22 x i8] c"RECORD_EXPR_FIELD_LIST", align 1
@358 = private unnamed_addr constant [12 x i8] c"RECORD_FIELD", align 1
@359 = private unnamed_addr constant [17 x i8] c"RECORD_FIELD_LIST", align 1
@360 = private unnamed_addr constant [10 x i8] c"RECORD_PAT", align 1
@361 = private unnamed_addr constant [16 x i8] c"RECORD_PAT_FIELD", align 1
@362 = private unnamed_addr constant [21 x i8] c"RECORD_PAT_FIELD_LIST", align 1
@363 = private unnamed_addr constant [8 x i8] c"REF_EXPR", align 1
@364 = private unnamed_addr constant [7 x i8] c"REF_PAT", align 1
@365 = private unnamed_addr constant [8 x i8] c"REF_TYPE", align 1
@366 = private unnamed_addr constant [6 x i8] c"RENAME", align 1
@367 = private unnamed_addr constant [8 x i8] c"REST_PAT", align 1
@368 = private unnamed_addr constant [11 x i8] c"RETURN_EXPR", align 1
@369 = private unnamed_addr constant [18 x i8] c"RETURN_TYPE_SYNTAX", align 1
@370 = private unnamed_addr constant [8 x i8] c"RET_TYPE", align 1
@371 = private unnamed_addr constant [10 x i8] c"SELF_PARAM", align 1
@372 = private unnamed_addr constant [9 x i8] c"SLICE_PAT", align 1
@373 = private unnamed_addr constant [10 x i8] c"SLICE_TYPE", align 1
@374 = private unnamed_addr constant [11 x i8] c"SOURCE_FILE", align 1
@375 = private unnamed_addr constant [6 x i8] c"STATIC", align 1
@376 = private unnamed_addr constant [9 x i8] c"STMT_LIST", align 1
@377 = private unnamed_addr constant [6 x i8] c"STRUCT", align 1
@378 = private unnamed_addr constant [10 x i8] c"TOKEN_TREE", align 1
@379 = private unnamed_addr constant [15 x i8] c"TOKEN_TREE_META", align 1
@380 = private unnamed_addr constant [5 x i8] c"TRAIT", align 1
@381 = private unnamed_addr constant [18 x i8] c"TRY_BLOCK_MODIFIER", align 1
@382 = private unnamed_addr constant [8 x i8] c"TRY_EXPR", align 1
@383 = private unnamed_addr constant [10 x i8] c"TUPLE_EXPR", align 1
@384 = private unnamed_addr constant [11 x i8] c"TUPLE_FIELD", align 1
@385 = private unnamed_addr constant [16 x i8] c"TUPLE_FIELD_LIST", align 1
@386 = private unnamed_addr constant [9 x i8] c"TUPLE_PAT", align 1
@387 = private unnamed_addr constant [16 x i8] c"TUPLE_STRUCT_PAT", align 1
@388 = private unnamed_addr constant [10 x i8] c"TUPLE_TYPE", align 1
@389 = private unnamed_addr constant [10 x i8] c"TYPE_ALIAS", align 1
@390 = private unnamed_addr constant [11 x i8] c"TYPE_ANCHOR", align 1
@391 = private unnamed_addr constant [8 x i8] c"TYPE_ARG", align 1
@392 = private unnamed_addr constant [10 x i8] c"TYPE_BOUND", align 1
@393 = private unnamed_addr constant [15 x i8] c"TYPE_BOUND_LIST", align 1
@394 = private unnamed_addr constant [10 x i8] c"TYPE_PARAM", align 1
@395 = private unnamed_addr constant [15 x i8] c"UNDERSCORE_EXPR", align 1
@396 = private unnamed_addr constant [5 x i8] c"UNION", align 1
@397 = private unnamed_addr constant [11 x i8] c"UNSAFE_META", align 1
@398 = private unnamed_addr constant [3 x i8] c"USE", align 1
@399 = private unnamed_addr constant [22 x i8] c"USE_BOUND_GENERIC_ARGS", align 1
@400 = private unnamed_addr constant [8 x i8] c"USE_TREE", align 1
@401 = private unnamed_addr constant [13 x i8] c"USE_TREE_LIST", align 1
@402 = private unnamed_addr constant [7 x i8] c"VARIANT", align 1
@403 = private unnamed_addr constant [12 x i8] c"VARIANT_LIST", align 1
@404 = private unnamed_addr constant [10 x i8] c"VISIBILITY", align 1
@405 = private unnamed_addr constant [16 x i8] c"VISIBILITY_INNER", align 1
@406 = private unnamed_addr constant [12 x i8] c"WHERE_CLAUSE", align 1
@407 = private unnamed_addr constant [10 x i8] c"WHERE_PRED", align 1
@408 = private unnamed_addr constant [10 x i8] c"WHILE_EXPR", align 1
@409 = private unnamed_addr constant [12 x i8] c"WILDCARD_PAT", align 1
@410 = private unnamed_addr constant [9 x i8] c"YEET_EXPR", align 1
@411 = private unnamed_addr constant [10 x i8] c"YIELD_EXPR", align 1
@412 = private unnamed_addr constant [6 x i8] c"__LAST", align 1
@413 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCslLuZgPVt6hg_3ide }>, align 8
@414 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@415 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@416 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsuAhG64lL82_9text_size5range9TextRangeNtB6_5Debug3fmtCslLuZgPVt6hg_3ide }>, align 8
@417 = private unnamed_addr constant [13 x i8] c"SyntaxNodePtr", align 1
@418 = private unnamed_addr constant [4 x i8] c"kind", align 1
@419 = private unnamed_addr constant [5 x i8] c"range", align 1
@420 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@421 = private unnamed_addr constant [76 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/alloc/src/string.rs\00", align 1
@422 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @421, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@423 = private unnamed_addr constant [5 x i8] c"Error", align 1
@424 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/traits.rs\00", align 1
@425 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @424, [16 x i8] c"b\00\00\00\00\00\00\00\12\00\00\00\1F\00\00\00" }>, align 8
@426 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@427 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8
@switch.table._RNvXs1_NtCsd9Lm8bEdjjY_5salsa9cancelledNtB5_9CancelledNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt = private unnamed_addr constant [3 x i8] c"\05\0C\0F", align 8
@switch.table._RNvXs1_NtCsd9Lm8bEdjjY_5salsa9cancelledNtB5_9CancelledNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.422 = private unnamed_addr constant [3 x ptr] [ptr @81, ptr @82, ptr @83], align 8
@switch.table._RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt = private unnamed_addr constant [329 x i8] c"\09\03\06\09\05\07\07\07\07\07\07\07\07\02\05\05\08\03\04\04\04\05\05\07\0A\03\04\04\06\05\06\02\03\09\04\03\05\0A\04\04\06\07\06\05\07\07\06\09\04\05\03\03\05\05\0C\0B\05\09\06\08\08\0B\08\05\07\07\09\08\08\05\06\05\07\05\06\07\08\08\06\07\06\0B\07\06\06\09\07\09\09\08\08\07\07\09\09\0A\06\0A\08\08\08\06\08\0D\07\08\0B\0A\0B\06\0E\0A\08\06\0E\06\0D\10\0C\08\05\08\0A\0E\0D\0C\08\0B\0A\07\0C\0A\06\0F\12\07\06\0B\07\06\06\08\07\04\0B\04\08\0C\0A\06\07\05\0B\05\0E\07\07\0A\03\08\0A\0A\0F\09\0C\08\09\10\11\0A\0B\0F\0C\07\0F\0E\04\0A\0B\08\0A\07\0A\09\09\08\0D\0D\08\0C\05\09\0F\0B\0D\09\0E\04\09\0C\0C\10\0A\02\0B\0F\14\10\0A\08\08\10\12\09\07\04\10\0F\12\0A\0A\09\0E\05\08\08\08\08\0C\0E\07\0B\09\0A\09\0A\0B\09\0B\0B\0A\09\0E\0A\0B\10\06\0F\04\08\0A\08\0E\06\05\0A\16\0A\09\0A\04\09\09\08\0C\09\0C\0B\08\0A\09\0B\11\16\0C\11\0A\10\15\08\07\08\06\08\0B\12\08\0A\09\0A\0B\06\09\06\0A\0F\05\12\08\0A\0B\10\09\10\0A\0A\0B\08\0A\0F\0A\0F\05\0B\03\16\08\0D\07\0C\0A\10\0C\0A\0A\0C\09\0A\06", align 8
@switch.table._RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.423 = private unnamed_addr constant [329 x ptr] [ptr @84, ptr @85, ptr @86, ptr @87, ptr @88, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93, ptr @94, ptr @95, ptr @96, ptr @97, ptr @98, ptr @99, ptr @100, ptr @101, ptr @102, ptr @103, ptr @104, ptr @105, ptr @106, ptr @107, ptr @108, ptr @109, ptr @110, ptr @111, ptr @112, ptr @113, ptr @114, ptr @115, ptr @116, ptr @117, ptr @118, ptr @119, ptr @120, ptr @121, ptr @122, ptr @123, ptr @124, ptr @125, ptr @126, ptr @127, ptr @128, ptr @129, ptr @130, ptr @131, ptr @132, ptr @133, ptr @134, ptr @135, ptr @136, ptr @137, ptr @138, ptr @139, ptr @140, ptr @141, ptr @142, ptr @143, ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153, ptr @154, ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160, ptr @161, ptr @162, ptr @163, ptr @164, ptr @165, ptr @166, ptr @167, ptr @168, ptr @169, ptr @170, ptr @171, ptr @172, ptr @173, ptr @174, ptr @175, ptr @176, ptr @177, ptr @178, ptr @179, ptr @180, ptr @181, ptr @182, ptr @183, ptr @184, ptr @185, ptr @186, ptr @187, ptr @188, ptr @189, ptr @190, ptr @191, ptr @192, ptr @193, ptr @194, ptr @195, ptr @196, ptr @197, ptr @198, ptr @199, ptr @200, ptr @201, ptr @202, ptr @203, ptr @204, ptr @205, ptr @206, ptr @207, ptr @208, ptr @209, ptr @210, ptr @211, ptr @212, ptr @213, ptr @214, ptr @215, ptr @216, ptr @217, ptr @218, ptr @219, ptr @220, ptr @221, ptr @222, ptr @223, ptr @224, ptr @225, ptr @226, ptr @227, ptr @228, ptr @229, ptr @230, ptr @231, ptr @232, ptr @233, ptr @234, ptr @235, ptr @236, ptr @237, ptr @238, ptr @239, ptr @240, ptr @241, ptr @242, ptr @243, ptr @244, ptr @245, ptr @246, ptr @247, ptr @248, ptr @249, ptr @250, ptr @251, ptr @252, ptr @253, ptr @254, ptr @255, ptr @256, ptr @257, ptr @258, ptr @259, ptr @260, ptr @261, ptr @262, ptr @263, ptr @264, ptr @265, ptr @266, ptr @267, ptr @268, ptr @269, ptr @270, ptr @271, ptr @272, ptr @273, ptr @274, ptr @275, ptr @276, ptr @277, ptr @278, ptr @279, ptr @280, ptr @281, ptr @282, ptr @283, ptr @284, ptr @285, ptr @286, ptr @287, ptr @288, ptr @289, ptr @290, ptr @291, ptr @292, ptr @293, ptr @294, ptr @295, ptr @296, ptr @297, ptr @298, ptr @299, ptr @300, ptr @301, ptr @302, ptr @303, ptr @304, ptr @305, ptr @306, ptr @307, ptr @308, ptr @309, ptr @310, ptr @311, ptr @312, ptr @313, ptr @314, ptr @315, ptr @316, ptr @317, ptr @318, ptr @319, ptr @320, ptr @321, ptr @322, ptr @323, ptr @324, ptr @325, ptr @326, ptr @327, ptr @328, ptr @329, ptr @330, ptr @331, ptr @332, ptr @333, ptr @334, ptr @335, ptr @336, ptr @337, ptr @338, ptr @339, ptr @340, ptr @341, ptr @342, ptr @343, ptr @344, ptr @345, ptr @346, ptr @347, ptr @348, ptr @349, ptr @350, ptr @351, ptr @352, ptr @353, ptr @354, ptr @355, ptr @356, ptr @357, ptr @358, ptr @359, ptr @360, ptr @361, ptr @362, ptr @363, ptr @364, ptr @365, ptr @366, ptr @367, ptr @368, ptr @369, ptr @370, ptr @371, ptr @372, ptr @373, ptr @374, ptr @375, ptr @376, ptr @377, ptr @378, ptr @379, ptr @380, ptr @381, ptr @382, ptr @383, ptr @384, ptr @385, ptr @386, ptr @387, ptr @388, ptr @389, ptr @390, ptr @391, ptr @392, ptr @393, ptr @394, ptr @395, ptr @396, ptr @397, ptr @398, ptr @399, ptr @400, ptr @401, ptr @402, ptr @403, ptr @404, ptr @405, ptr @406, ptr @407, ptr @408, ptr @409, ptr @410, ptr @411, ptr @412], align 8

; Function Attrs: nonlazybind uwtable
define hidden range(i64 0, -4294967295) i64 @_RINvMNtCsd9Lm8bEdjjY_5salsa9cancelledNtB3_9Cancelled5catchNCNCINvMs1_CslLuZgPVt6hg_3ideNtB15_8Analysis7with_dbNCNvB11_10crate_root0NtCs4sl5YdnrCxp_3vfs6FileIdE00B25_EB15_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %.val.i = load i32, ptr %0, align 4, !range !5, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val1.i = load i32, ptr %i.b, align 4, !noundef !6
  %i.c = invoke noundef nonnull align 8 ptr @_RINvMs5_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB8_5Crate4dataNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide(i32 noundef %.val.i, i32 noundef %.val1.i, ptr noundef nonnull align 8 %1)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = invoke { ptr, ptr } @_RNvNvNtCscAsMj0W7j8b_3std9panicking12catch_unwind7cleanup(ptr noundef %i.e)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #33
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.i = load i32, ptr %i.h, align 8, !noundef !6
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw i64 %i.j, 32
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, ptr } %i.f, 0        ; 6 uses
  %i.m = extractvalue { ptr, ptr } %i.f, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !6, !alias.scope !32, !noalias !34, !nonnull !6
  invoke void %i.o(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.l)
          to label %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit unwind label %bb.f, !noalias !33

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslLuZgPVt6hg_3ide(ptr nonnull %i.l, ptr nonnull readonly align 8 dereferenceable(32) %i.m) #34
          to label %bb.h unwind label %bb.g, !noalias !34

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !33
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p

_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit: ; preds = %bb.e
  %i.r = load i128, ptr %i.a, align 16, !noalias !33, !noundef !6
  %i.s = icmp eq i128 %i.r, 166215278244808769718339722483714545572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33
  br i1 %i.s, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.d
  %.sroa.3.0.insert.insert = phi i64 [ %i.w, %bb.k ], [ %i.k, %bb.d ]
  ret i64 %.sroa.3.0.insert.insert

bb.j:                                             ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  call void @_RNvNtCscAsMj0W7j8b_3std5panic13resume_unwind(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m) #35
  unreachable

bb.k:                                             ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  %i.t = load i8, ptr %i.l, align 1, !range !7, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 1, i64 noundef 1) #36
  %i.u = zext nneg i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 8
  %i.w = or disjoint i64 %i.v, 1
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsd9Lm8bEdjjY_5salsa9cancelledNtB3_9Cancelled5catchNCNCINvMs1_CslLuZgPVt6hg_3ideNtB15_8Analysis7with_dbNCNvB11_10crates_for0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgIpRO4v45SJ_7base_db5input5CrateEE00B25_EB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i = load i32, ptr %1, align 4, !noundef !6
  invoke void @_RNvNtCslLuZgPVt6hg_3ide13parent_module10crates_for(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %2, i32 noundef %.val.i)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = invoke { ptr, ptr } @_RNvNvNtCscAsMj0W7j8b_3std9panicking12catch_unwind7cleanup(ptr noundef %i.d)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #33
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.018.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.018.0.copyload, ptr %0, align 8
  store <2 x ptr> %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.e, 0        ; 5 uses
  %i.i = extractvalue { ptr, ptr } %i.e, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !6, !alias.scope !38, !noalias !40, !nonnull !6
  invoke void %i.k(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.h)
          to label %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit unwind label %bb.f, !noalias !39

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslLuZgPVt6hg_3ide(ptr nonnull %i.h, ptr nonnull readonly align 8 dereferenceable(32) %i.i) #34
          to label %bb.h unwind label %bb.g, !noalias !40

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !39
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.l

_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit: ; preds = %bb.e
  %i.n = load i128, ptr %i.b, align 16, !noalias !39, !noundef !6
  %i.o = icmp eq i128 %i.n, 166215278244808769718339722483714545572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39
  br i1 %i.o, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.d
  ret void

bb.j:                                             ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  call void @_RNvNtCscAsMj0W7j8b_3std5panic13resume_unwind(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i) #35
  unreachable

bb.k:                                             ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  %i.p = load i8, ptr %i.h, align 1, !range !7, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.p, ptr %i.q, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 1, i64 noundef 1) #36
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsd9Lm8bEdjjY_5salsa9cancelledNtB3_9Cancelled5catchNCNCINvMs1_CslLuZgPVt6hg_3ideNtB15_8Analysis7with_dbNCNvB11_10join_lines0NtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditE00B25_EB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.027.0.copyload = load i64, ptr %1, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.e = inttoptr i64 %.sroa.15.0.copyload to ptr ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i32, ptr %.sroa.9.0.copyload, align 4, !noalias !50, !noundef !6
  %i.g = invoke noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId15current_edition(i32 noundef %i.f)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.h = inttoptr i64 %.sroa.027.0.copyload to ptr
  %i.i = invoke { ptr, ptr } @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.h) #37
          to label %.noexc20 unwind label %bb.i   ; 2 uses

.noexc20:                                         ; preds = %.noexc
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = invoke noundef nonnull align 8 ptr @_RNvMs2_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB7_15EditionedFileId10ingredient(ptr noundef nonnull align 8 %i.j)
          to label %.noexc21 unwind label %bb.i

.noexc21:                                         ; preds = %.noexc20
  %i.l = extractvalue { ptr, ptr } %i.i, 1
  %i.m = invoke { i32, i32 } @_RINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB6_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE9intern_idINtNvBZ_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2b_BX_17from_span_file_idDNtNtB8_8database8DatabaseEL_B2t_E0ECslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %i.k, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.l, i32 noundef %i.g)
          to label %.noexc22 unwind label %bb.i   ; 2 uses

.noexc22:                                         ; preds = %.noexc21
  %i.n = extractvalue { i32, i32 } %i.m, 0
end_hunk_0
begin_hunk_1_@_RNvNtCslLuZgPVt6hg_3ide12expand_macro18expand_macro_recur:bb.a
  %.sroa.02.0.i59 = phi ptr [ %i.gl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit71 ], [ %.val28.i, %bb.bu ], [ %.val28.i, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs33K2ylI4knu_10hir_expand11ExpandErrorECslLuZgPVt6hg_3ide.exit.thread332: ; preds = %.invoke362, %.invoke, %bb.ao, %bb.ag, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs33K2ylI4knu_10hir_expand19RenderedExpandErrorECslLuZgPVt6hg_3ide.exit, %bb.v, %bb.w, %bb.m, %bb.aa, %bb.aj
  %lpad.thr_comm330 = landingpad { ptr, i32 }
          cleanup
  br label %.thread245

.thread245:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs33K2ylI4knu_10hir_expand11ExpandErrorECslLuZgPVt6hg_3ide.exit.thread332, %.body
  %.pn39181250 = phi { ptr, i32 } [ %.pn36, %.body ], [ %lpad.thr_comm330, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs33K2ylI4knu_10hir_expand11ExpandErrorECslLuZgPVt6hg_3ide.exit.thread332 ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 48 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !noundef !6
  %i.kd = add i32 %i.kc, -1                       ; 2 uses
  store i32 %i.kd, ptr %i.kb, align 4
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.dw, label %common.resume

bb.dw:                                            ; preds = %.thread245
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.08.0) #38
          to label %common.resume unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCslLuZgPVt6hg_3ide12expand_macro6format(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i16 noundef range(i16 0, 329) %2, i32 noundef %3, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5, i32 noundef range(i32 1, 0) %6, i32 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.714.i = alloca [16 x i8], align 8        ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [28 x i8], align 4                ; 4 uses
  %i.s = alloca [56 x i8], align 8                ; 6 uses
  %i.t = alloca [56 x i8], align 8                ; 10 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [24 x i8], align 4          ; 5 uses
  %i.v = alloca [28 x i8], align 4                ; 11 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [200 x i8], align 8               ; 10 uses
  %i.z = alloca [1 x i8], align 1                 ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 13 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [24 x i8], align 8               ; 10 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.am = tail call noundef nonnull ptr @_RNvNtCs33K2ylI4knu_10hir_expand25prettify_macro_expansion_24prettify_macro_expansion(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @6, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5, i32 noundef %6, i32 noundef %7) ; 5 uses
  store ptr %i.am, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2818
  store i64 0, ptr %i.ai, align 8, !noalias !2818
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2818
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2818
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 1610612768, ptr %i.an, align 8, !noalias !2818
  store ptr %i.ai, ptr %i.ah, align 8, !noalias !2818
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @34, ptr %i.ao, align 8, !noalias !2818
  %i.ap = invoke noundef zeroext i1 @_RNvXsb_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNodeNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RNvXs_NtCs9GitHPCrz2Q_5rowan3apiINtB4_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide.exit.i unwind label %bb.b, !noalias !2819

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #34
          to label %.body unwind label %bb.d, !noalias !2819

_RNvXs_NtCs9GitHPCrz2Q_5rowan3apiINtB4_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.a
  br i1 %i.ap, label %bb.c, label %bb.f, !prof !13

bb.c:                                             ; preds = %_RNvXs_NtCs9GitHPCrz2Q_5rowan3apiINtB4_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide.exit.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @420, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #39
          to label %.noexc.i unwind label %bb.b, !noalias !2819

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2819
  unreachable

.body:                                            ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !noundef !6
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.e:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.am) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit unwind label %bb.dx

bb.f:                                             ; preds = %_RNvXs_NtCs9GitHPCrz2Q_5rowan3apiINtB4_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !2820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2818
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !6
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit5

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.am) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit5 unwind label %.body8.thread25

.body8.thread25:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit166.i, %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit5
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body8.thread

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit5: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !6, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2821
  invoke fastcc void @_RINvMs3_NtCsbSS6DM8SDEO_5alloc3stre7replaceReECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 6) #37
          to label %.noexc7 unwind label %.body8.thread25

.noexc7:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit5
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2821, !nonnull !6, !noundef !6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !2821, !noundef !6
  invoke fastcc void @_RINvMs3_NtCsbSS6DM8SDEO_5alloc3stre7replaceReECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 14)
          to label %bb.i unwind label %bb.h, !noalias !2822

bb.h:                                             ; preds = %.noexc7
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #34
          to label %.body8.thread unwind label %bb.dg, !noalias !2822

bb.i:                                             ; preds = %.noexc7
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.j, !noalias !2822

bb.j:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.i unwind label %bb.k, !noalias !2822

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2822
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i unwind label %bb.l, !noalias !2822

.body.i:                                          ; preds = %bb.dl, %bb.cq, %bb.n, %bb.l, %bb.j
  %.pn108.i = phi { ptr, i32 } [ %.pn106.i, %bb.n ], [ %i.bj, %bb.j ], [ %i.gl, %bb.cq ], [ %i.bl, %bb.l ], [ %i.hf, %bb.dl ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #34
          to label %.body8.thread unwind label %bb.dg, !noalias !2822

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i156.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i138.i, %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2821
  switch i16 %2, label %bb.m [
    i16 235, label %8
    i16 237, label %9
    i16 239, label %8
    i16 240, label %switch.lookup
  ]

8:                                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  br label %bb.m

9:                                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  br label %bb.m

switch.lookup:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  br label %bb.m

bb.m:                                             ; preds = %switch.lookup, %9, %8, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i
  %.sroa.083.0.i = phi ptr [ @45, %switch.lookup ], [ @41, %9 ], [ @43, %8 ], [ inttoptr (i64 1 to ptr), %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i ]
  %.sroa.784.0.i = phi i64 [ 9, %switch.lookup ], [ 6, %9 ], [ 9, %8 ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i ]
  %.sroa.085.0.i = phi ptr [ @46, %switch.lookup ], [ @42, %9 ], [ @44, %8 ], [ inttoptr (i64 1 to ptr), %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i ]
  %.sroa.786.0.i = phi i64 [ 1, %switch.lookup ], [ 7, %9 ], [ 1, %8 ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2821
  store ptr %.sroa.083.0.i, ptr %i.ae, align 8, !noalias !2821, !captures !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store i64 %.sroa.784.0.i, ptr %i.bm, align 8, !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2821
  store ptr %.sroa.085.0.i, ptr %i.ad, align 8, !noalias !2821, !captures !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store i64 %.sroa.786.0.i, ptr %i.bn, align 8, !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2821
  store ptr %i.ae, ptr %i.aa, align 8, !noalias !2821
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !2821
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ag, ptr %i.bo, align 8, !noalias !2821
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !2821
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ad, ptr %i.bp, align 8, !noalias !2821
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !2821
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @47, ptr noundef nonnull %i.aa)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit.i unwind label %bb.l, !noalias !2822

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !2821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2821
  %i.bq = invoke { ptr, i64 } @_RNvCsgIpRO4v45SJ_7base_db15relevant_crates(ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @6, i32 noundef %3)
          to label %bb.p unwind label %bb.o, !noalias !2822 ; 2 uses

bb.n:                                             ; preds = %.body113.i, %bb.o
  %.pn106.i = phi { ptr, i32 } [ %i.br, %bb.o ], [ %.pn103.pn.i, %.body113.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #34
          to label %.body.i unwind label %bb.dg, !noalias !2822

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslLuZgPVt6hg_3ide.exit154.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process5ChildECslLuZgPVt6hg_3ide.exit.i, %bb.s, %bb.r, %bb.q, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslLuZgPVt6hg_3ide.exit.i
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.cp, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = extractvalue { ptr, i64 } %i.bq, 0      ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !range !5, !noalias !2822, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !noalias !2822, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2821
  %i.by = invoke noundef nonnull align 8 ptr @_RINvMs5_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB8_5Crate4dataNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide(i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef nonnull align 8 %1)
          to label %bb.r unwind label %bb.o, !noalias !2822

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 93
  %i.ca = load i8, ptr %i.bz, align 1, !range !8, !noalias !2822, !noundef !6
  store i8 %i.ca, ptr %i.z, align 1, !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2821
  invoke void @_RNvMCslqCZk5GUYvi_9toolchainNtB2_4Tool4path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, i8 noundef 3)
          to label %bb.s unwind label %bb.o, !noalias !2822

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3newNtCs9p4rgIae0RV_6camino11Utf8PathBufECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.t unwind label %bb.o, !noalias !2822

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2821
  %i.cb = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argReECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 9)
          to label %bb.v unwind label %bb.u, !noalias !2822 ; 0 uses

.body113.i:                                       ; preds = %bb.dp, %bb.dh, %bb.bp, %.body126.i, %.thread186.i, %bb.w, %bb.u
  %.pn103.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.dp ], [ %lpad.thr_comm.i, %.thread186.i ], [ %i.cc, %bb.u ], [ %i.cg, %bb.w ], [ %.pn101.i, %.body126.i ], [ %i.ez, %bb.bp ], [ %i.hd, %bb.dh ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std7process7CommandECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(200) %i.y) #34
          to label %bb.n unwind label %bb.dg, !noalias !2822

bb.u:                                             ; preds = %bb.ai, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body113.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2823
  store i64 0, ptr %i.h, align 8, !noalias !2823
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2823
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2823
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1610612768, ptr %i.cd, align 8, !noalias !2823
  store ptr %i.h, ptr %i.g, align 8, !noalias !2823
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @34, ptr %i.ce, align 8, !noalias !2823
  %i.cf = invoke noundef zeroext i1 @_RNvXs2_Cs3gTr8JIMkcl_7editionNtB5_7EditionNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.x unwind label %bb.w, !noalias !2824

bb.w:                                             ; preds = %bb.y, %bb.v
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #34
          to label %.body113.i unwind label %bb.z, !noalias !2824

bb.x:                                             ; preds = %bb.v
  br i1 %i.cf, label %bb.y, label %bb.aa, !prof !13

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @420, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #39
          to label %.noexc.i.i unwind label %bb.w, !noalias !2824

.noexc.i.i:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2824
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !2825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2823
  %i.ci = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command3argNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.ab unwind label %bb.u, !noalias !2822 ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2821
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2821
  %i.cj = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command5stdinNtB6_5StdioECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.y, i32 noundef 2, i32 undef)
          to label %bb.ac unwind label %bb.u, !noalias !2822

bb.ac:                                            ; preds = %bb.ab
  %i.ck = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stdoutNtB6_5StdioECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.cj, i32 noundef 2, i32 undef)
          to label %bb.ad unwind label %bb.u, !noalias !2822

bb.ad:                                            ; preds = %bb.ac
  %i.cl = invoke noundef nonnull align 8 ptr @_RINvMsi_NtCscAsMj0W7j8b_3std7processNtB6_7Command6stderrNtB6_5StdioECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ck, i32 noundef 2, i32 undef)
          to label %bb.ae unwind label %bb.u, !noalias !2822

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMsi_NtCscAsMj0W7j8b_3std7processNtB5_7Command5spawn(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.cl)
          to label %bb.af unwind label %bb.u, !noalias !2822

bb.af:                                            ; preds = %bb.ae
  %i.cm = load i32, ptr %i.u, align 8, !range !21, !noalias !2821, !noundef !6
  %i.cn = trunc nuw i32 %i.cm to i1
  br i1 %i.cn, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i.i = load ptr, ptr %i.co, align 8, !alias.scope !2826, !noalias !2821, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2827
  %i.cp = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.cq = and i64 %i.cp, 3
  switch i64 %i.cq, label %default.unreachable [
    i64 2, label %.thread171.i
    i64 3, label %bb.ah
    i64 0, label %.thread171.i
    i64 1, label %bb.ai
  ], !prof !2828

default.unreachable:                              ; preds = %bb.az, %bb.at, %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.cr = icmp ult ptr %.val.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cs = and i64 %i.cp, 1095216660480
  %i.ct = icmp ne i64 %i.cs, 1095216660480
  call void @llvm.assume(i1 %i.cr)
  call void @llvm.assume(i1 %i.ct)
  br label %.thread171.i

bb.ai:                                            ; preds = %bb.ag
  %i.cu = getelementptr i8, ptr %.val.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !alias.scope !2829, !noalias !2827
  store i8 3, ptr %i.f, align 8, !alias.scope !2829, !noalias !2827
  invoke void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %.thread171.i unwind label %bb.u, !noalias !2822

.thread171.i:                                     ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2821
  br label %bb.al

bb.aj:                                            ; preds = %bb.af
  %i.cw = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.055.0.copyload.i = load i32, ptr %i.cw, align 4, !noalias !2821 ; 2 uses
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.456.0..sroa_idx.i, i64 24, i1 false), !noalias !2821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2821
end_hunk_1
begin_hunk_2_@_RNvXs0_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide:bb.a
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #39
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.e
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %i.y, align 8, !noundef !6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.ae, %bb.g ]
  %i.af = add i32 %.sroa.02.0.i, %.sroa.0.0.i75   ; 2 uses
  %.not.i = icmp ugt i32 %.sroa.0.0.i75, %i.af
  br i1 %.not.i, label %bb.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #39
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit: ; preds = %bb.h
  store i32 %.sroa.0.0.i75, ptr %i.i, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.af, ptr %i.ag, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.ah, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXNtCsuAhG64lL82_9text_size5rangeNtB2_9TextRangeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.ai = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !6, !align !10, !noundef !6 ; 3 uses
  %i.al = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noundef nonnull @70, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.al, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit
  %i.am = load i64, ptr %i.k, align 8, !range !14, !noundef !6
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit, label %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit.thread

_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit: ; preds = %bb.j
  %.sroa.5.0.i = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !6
  %i.aq = icmp ult i64 %i.ap, 25
  br i1 %i.aq, label %bb.k, label %bb.l

_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit84

bb.k:                                             ; preds = %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.5.0.i83 = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i83, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i83, i64 16
  br label %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit84

_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit84: ; preds = %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit.thread, %bb.k
  %.sroa.3.0.i81 = phi i64 [ %i.as, %bb.k ], [ 0, %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit.thread ]
  %.sroa.0.0.i82 = phi ptr [ %i.at, %bb.k ], [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit.thread ]
  store ptr %.sroa.0.0.i82, ptr %i.g, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.3.0.i81, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtReNtB6_5Debug3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.425.0..sroa_idx, align 8
  %i.av = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noundef nonnull @80, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.q

bb.l:                                             ; preds = %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 37
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !6
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %.split, label %.backedge

.backedge:                                        ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 38
  %i.bb = load i8, ptr %i.ba, align 2, !noundef !6
  %i.bc = icmp sgt i8 %i.bb, -65
  br i1 %i.bc, label %.split, label %.backedge.1

.backedge.1:                                      ; preds = %.backedge
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 39
  %i.be = load i8, ptr %i.bd, align 1, !noundef !6
  %i.bf = icmp sgt i8 %i.be, -65
  br i1 %i.bf, label %.split, label %.backedge.2

.backedge.2:                                      ; preds = %.backedge.1
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 40
  %i.bh = load i8, ptr %i.bg, align 8, !noundef !6
  %i.bi = icmp sgt i8 %i.bh, -65
  br i1 %i.bi, label %.split, label %.backedge.3

.backedge.3:                                      ; preds = %.backedge.2
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #39
  unreachable

.split:                                           ; preds = %bb.l, %.backedge, %.backedge.1, %.backedge.2
  %.sroa.038.096.lcssa97 = phi i64 [ 21, %bb.l ], [ 22, %.backedge ], [ 23, %.backedge.1 ], [ 24, %.backedge.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aw, ptr %i.d, align 8, !captures !28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.038.096.lcssa97, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide, ptr %.sroa.447.0..sroa_idx, align 8
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @79, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsr_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.453.0..sroa_idx, align 8
  %i.bk = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noundef nonnull @80, ptr noundef nonnull %i.b)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.split
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #34
          to label %common.resume unwind label %bb.r

bb.n:                                             ; preds = %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %i.bl, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit: ; preds = %bb.n
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit, %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit84, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit
  %.sroa.0.1.shrunk = phi i1 [ %i.bk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide.exit ], [ %i.av, %_RNvMs5_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxToken4text.exit84 ], [ true, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit ]
  ret i1 %.sroa.0.1.shrunk

bb.r:                                             ; preds = %bb.m
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa8databaseNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %0) unnamed_addr #8 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @7, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_11SyntaxTokenNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCsd9Lm8bEdjjY_5salsa9cancelledNtB5_9CancelledNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !7, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCsd9Lm8bEdjjY_5salsa9cancelledNtB5_9CancelledNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1_NtCsd9Lm8bEdjjY_5salsa9cancelledNtB5_9CancelledNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.422, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtBY_11StaticIndex7compute00INtB7_5FnMutTRNtCs8Xq8PKFYOms_3hir6ModuleEE8call_mutB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6 ; 3 uses
  %.val = load i32, ptr %1, align 4, !range !5, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1 = load i32, ptr %i.e, align 4, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2991)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2991
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !2991, !nonnull !6, !align !10, !noundef !6 ; 6 uses
  call void @_RNvMNtCs8Xq8PKFYOms_3hir10has_sourceNtB4_6Module25definition_source_file_id(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, i32 noundef %.val, i32 noundef %.val1, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @5), !noalias !2991
  %i.g = call { i32, i32 } @_RNvMsl_Cs33K2ylI4knu_10hir_expandNtB5_9HirFileId13original_file(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @6), !noalias !2991 ; 2 uses
  %i.h = extractvalue { i32, i32 } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2991
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2991, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !2992, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMs2_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB7_15EditionedFileId10ingredient(ptr noundef nonnull align 8 %i.m), !noalias !2992
  %i.o = tail call noundef nonnull align 4 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE6fieldsCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 8 %i.m, i32 noundef range(i32 1, 0) %i.h, i32 noundef %i.i), !noalias !2992
  %i.p = load i32, ptr %i.o, align 4, !noalias !2992, !noundef !6
  %i.q = tail call noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.p), !noalias !2991
  %i.r = tail call { i32, i32 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase16file_source_root(ptr noundef nonnull align 8 %i.f, i32 noundef %i.q), !noalias !2991 ; 2 uses
  %i.s = extractvalue { i32, i32 } %i.r, 0
  %i.t = extractvalue { i32, i32 } %i.r, 1
  %i.u = tail call noundef i32 @_RINvMs5_NvCsgIpRO4v45SJ_7base_dbs1_1__NtB8_19FileSourceRootInput14source_root_idNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide(i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull align 8 %i.f), !noalias !2991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2991
  %i.v = tail call { i32, i32 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase11source_root(ptr noundef nonnull align 8 %i.f, i32 noundef %i.u), !noalias !2991 ; 2 uses
  %i.w = extractvalue { i32, i32 } %i.v, 0
  %i.x = extractvalue { i32, i32 } %i.v, 1
  %i.y = tail call noundef nonnull ptr @_RINvMs5_NvCsgIpRO4v45SJ_7base_dbs2_1__NtB8_15SourceRootInput11source_rootNtCs6oosyzwIepl_6ide_db12RootDatabaseECslLuZgPVt6hg_3ide(i32 noundef %i.w, i32 noundef %i.x, ptr noundef nonnull align 8 %i.f), !noalias !2991 ; 3 uses
  store ptr %i.y, ptr %i.b, align 8, !noalias !2991
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2991, !nonnull !6, !align !10, !noundef !6
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !2991, !align !10, !noundef !6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RNCNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB9_11StaticIndex7compute00Bb_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2991
  %i.ae = load ptr, ptr %i.k, align 8, !noalias !2993, !nonnull !6, !noundef !6
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = invoke noundef nonnull align 8 ptr @_RNvMs2_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB7_15EditionedFileId10ingredient(ptr noundef nonnull align 8 %i.af)
          to label %.noexc.i unwind label %bb.c, !noalias !2991

.noexc.i:                                         ; preds = %bb.b
  %i.ah = invoke noundef nonnull align 4 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE6fieldsCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %i.ag, ptr noundef nonnull align 8 %i.af, i32 noundef range(i32 1, 0) %i.h, i32 noundef %i.i)
          to label %bb.d unwind label %bb.c, !noalias !2991

bb.c:                                             ; preds = %bb.g, %bb.e, %bb.d, %.noexc.i, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECslLuZgPVt6hg_3ide.exit.i unwind label %bb.i, !noalias !2991

bb.d:                                             ; preds = %.noexc.i
  %i.aj = load i32, ptr %i.ah, align 4, !noalias !2993, !noundef !6
  %i.ak = invoke noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef %i.aj)
          to label %bb.e unwind label %bb.c, !noalias !2991

bb.e:                                             ; preds = %bb.d
  store i32 %i.ak, ptr %i.a, align 4, !noalias !2991
  %i.al = invoke noundef align 8 ptr @_RNvMs1_NtCsgIpRO4v45SJ_7base_db5inputNtB5_10SourceRoot13path_for_file(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.f unwind label %bb.c, !noalias !2991 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = invoke noundef zeroext i1 @_RNvMNtCs4sl5YdnrCxp_3vfs8vfs_pathNtB2_7VfsPath11starts_with(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.h unwind label %bb.c, !noalias !2991

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i1 [ false, %bb.f ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2991
  %.pre.i = load ptr, ptr %i.b, align 8, !noalias !2991
  br label %_RNCNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB9_11StaticIndex7compute00Bb_.exit

bb.i:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !2991
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootEECslLuZgPVt6hg_3ide.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.ai

_RNCNCNvMs0_NtCslLuZgPVt6hg_3ide12static_indexNtB9_11StaticIndex7compute00Bb_.exit: ; preds = %bb.a, %bb.h
  %i.ao = phi ptr [ %.pre.i, %bb.h ], [ %i.y, %bb.a ]
  %.sroa.0.1.i = phi i1 [ %.sroa.0.0.i, %bb.h ], [ false, %bb.a ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load i8, ptr %i.ap, align 8, !range !11, !noalias !2991, !noundef !6
  %i.ar = trunc nuw i8 %i.aq to i1
  %not..i = xor i1 %i.ar, true
  %spec.select.i = or i1 %.sroa.0.1.i, %not..i
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !2991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2991
  ret i1 %spec.select.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslLuZgPVt6hg_3ide12static_index33definition_range_excluding_trivia0INtB7_5FnMutTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2i_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB37_11SyntaxTokenB3t_EEEE8call_mutBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 0, 2) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.c = trunc nuw i64 %1 to i1                   ; 2 uses
  %..i = select i1 %i.c, ptr %2, ptr null         ; 3 uses
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit.i, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i.i, %bb.b, %bb.a
  %.not.i = icmp eq ptr %..i, null
  br i1 %.not.i, label %_RNCNvNtCslLuZgPVt6hg_3ide12static_index33definition_range_excluding_trivia0B5_.exit, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !6
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i.i: ; preds = %bb.b
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %2) #38
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit.i

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = load i32, ptr %.val, align 4, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.l = load i8, ptr %i.k, align 4, !range !11, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.o = load i32, ptr %i.n, align 8, !noundef !6
  br label %.noexc.i

bb.e:                                             ; preds = %bb.c
  %i.p = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %2)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i32 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 3 uses
  %i.q = load i64, ptr %2, align 8, !range !14, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = trunc nuw i64 %i.q to i1
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.noexc.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !6 ; 2 uses
  %i.w = icmp ugt i64 %i.v, 4294967295
  %i.x = shl nuw i64 %i.v, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.w, i64 513, i64 %i.x ; 2 uses
  %i.y = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.y, label %bb.g, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !13

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #39
          to label %.noexc11.i unwind label %bb.n

.noexc11.i:                                       ; preds = %bb.g
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %bb.f
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i
  %i.z = load i32, ptr %i.t, align 8, !noundef !6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i
  %.sroa.02.0.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.z, %bb.h ]
  %i.aa = add i32 %.sroa.02.0.i.i, %.sroa.0.0.i.i ; 2 uses
  %.not.i.i = icmp ugt i32 %.sroa.0.0.i.i, %i.aa
  br i1 %.not.i.i, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #39
end_hunk_2
begin_hunk_3_@_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc6borrow3CowShENtB6_5Debug3fmtCslLuZgPVt6hg_3ide:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3001, !noalias !3002, !noundef !6
  %i.h = tail call noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtShNtB5_5Debug3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3001
  br label %_RNvXsa_NtCsbSS6DM8SDEO_5alloc6borrowINtB5_3CowShENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide.exit

_RNvXsa_NtCsbSS6DM8SDEO_5alloc6borrowINtB5_3CowShENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.c, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweENtB6_7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
_RNvXsb_NtCsbSS6DM8SDEO_5alloc6borrowINtB5_3CoweENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCslLuZgPVt6hg_3ide.exit:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !10, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3006)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3006, !noalias !3007, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3006, !noalias !3007, !noundef !6
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3006
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtCs9OdPc0izwZ0_23pulldown_cmark_to_cmark9AlignmentEIBX_NtNtCsbSS6DM8SDEO_5alloc6string6StringEEINtB5_7ZipImplBW_B2c_E3newCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtCs9OdPc0izwZ0_23pulldown_cmark_to_cmark9AlignmentENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteroEBW_EINtB5_7ZipImplBW_BW_E3newCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IteroENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IteroENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo9MemoEntryEINtBZ_4IterNtB1r_13MemoEntryTypeEEINtB5_7ZipImplBW_B2b_E3newCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter7IterMutNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo9MemoEntryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsd9Lm8bEdjjY_5salsa5table4memo13MemoEntryTypeENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutoEINtBZ_4IteroEEINtB5_7ZipImplBW_B1r_E3newCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter7IterMutoENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IteroENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs5_NtCsjJXvCMGntp8_6syntax13syntax_editorRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB7_11syntax_node12RustLanguageENtB5_7Element14syntax_elementCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !6 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #35
  unreachable

_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit: ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %i.a, align 4
  %i.e = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.val, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %0) unnamed_addr #9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @5, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i16, ptr %0, align 2, !range !16, !noundef !6 ; 2 uses
  %i.b = zext nneg i16 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i16 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.423, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @414, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXsj_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildrenNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCslLuZgPVt6hg_3ide(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsl_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildrenNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  switch i64 %i.b, label %.sink.split [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ]

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sroa.0.0.ph = phi i64 [ 0, %bb.c ], [ 1, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.sroa.3.0 = phi ptr [ undef, %bb.a ], [ %i.c, %.sink.split ]
  %.sroa.0.0 = phi i64 [ %i.b, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.e

bb.c:                                             ; preds = %bb.a
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBN_EEENtNtNtNtB3p_4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB2o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB2q_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEB3F_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB2M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB2O_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeuEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterBT_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionuENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionuEE9next_implKb0_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !6
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -40
  %spec.select4 = select i1 %.not, ptr null, ptr %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %spec.select4, %bb.b ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateTRINtBM_9CrateDataBK_ERNtBM_14ExtraCrateDataEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input5CrateTRINtBX_9CrateDataBV_ERNtBX_14ExtraCrateDataEEE9next_implKb0_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !6
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXsH_CsqiF3OZxLbD_3mbeINtB5_11ValueResultINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtCs33K2ylI4knu_10hir_expand11ExpandErrorENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide(ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !6 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #35
  unreachable

_RNvXsj_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCslLuZgPVt6hg_3ide.exit: ; preds = %bb.a
end_hunk_3
