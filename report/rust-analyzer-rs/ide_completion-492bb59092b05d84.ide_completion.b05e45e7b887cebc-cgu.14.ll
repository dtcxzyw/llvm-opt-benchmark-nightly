Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.14?download=true
inline.NumInlined: 930
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@378 = private unnamed_addr constant [8 x i8] c"LET_STMT", align 1
@379 = private unnamed_addr constant [8 x i8] c"LIFETIME", align 1
@380 = private unnamed_addr constant [12 x i8] c"LIFETIME_ARG", align 1
@381 = private unnamed_addr constant [14 x i8] c"LIFETIME_PARAM", align 1
@382 = private unnamed_addr constant [7 x i8] c"LITERAL", align 1
@383 = private unnamed_addr constant [11 x i8] c"LITERAL_PAT", align 1
@384 = private unnamed_addr constant [9 x i8] c"LOOP_EXPR", align 1
@385 = private unnamed_addr constant [10 x i8] c"MACRO_CALL", align 1
@386 = private unnamed_addr constant [9 x i8] c"MACRO_DEF", align 1
@387 = private unnamed_addr constant [10 x i8] c"MACRO_EXPR", align 1
@388 = private unnamed_addr constant [11 x i8] c"MACRO_ITEMS", align 1
@389 = private unnamed_addr constant [9 x i8] c"MACRO_PAT", align 1
@390 = private unnamed_addr constant [11 x i8] c"MACRO_RULES", align 1
@391 = private unnamed_addr constant [11 x i8] c"MACRO_STMTS", align 1
@392 = private unnamed_addr constant [10 x i8] c"MACRO_TYPE", align 1
@393 = private unnamed_addr constant [9 x i8] c"MATCH_ARM", align 1
@394 = private unnamed_addr constant [14 x i8] c"MATCH_ARM_LIST", align 1
@395 = private unnamed_addr constant [10 x i8] c"MATCH_EXPR", align 1
@396 = private unnamed_addr constant [11 x i8] c"MATCH_GUARD", align 1
@397 = private unnamed_addr constant [16 x i8] c"METHOD_CALL_EXPR", align 1
@398 = private unnamed_addr constant [6 x i8] c"MODULE", align 1
@399 = private unnamed_addr constant [15 x i8] c"MUT_RESTRICTION", align 1
@400 = private unnamed_addr constant [4 x i8] c"NAME", align 1
@401 = private unnamed_addr constant [8 x i8] c"NAME_REF", align 1
@402 = private unnamed_addr constant [10 x i8] c"NEVER_TYPE", align 1
@403 = private unnamed_addr constant [8 x i8] c"NOT_NULL", align 1
@404 = private unnamed_addr constant [14 x i8] c"OFFSET_OF_EXPR", align 1
@405 = private unnamed_addr constant [6 x i8] c"OR_PAT", align 1
@406 = private unnamed_addr constant [5 x i8] c"PARAM", align 1
@407 = private unnamed_addr constant [10 x i8] c"PARAM_LIST", align 1
@408 = private unnamed_addr constant [22 x i8] c"PARENTHESIZED_ARG_LIST", align 1
@409 = private unnamed_addr constant [10 x i8] c"PAREN_EXPR", align 1
@410 = private unnamed_addr constant [9 x i8] c"PAREN_PAT", align 1
@411 = private unnamed_addr constant [10 x i8] c"PAREN_TYPE", align 1
@412 = private unnamed_addr constant [4 x i8] c"PATH", align 1
@413 = private unnamed_addr constant [9 x i8] c"PATH_EXPR", align 1
@414 = private unnamed_addr constant [9 x i8] c"PATH_META", align 1
@415 = private unnamed_addr constant [8 x i8] c"PATH_PAT", align 1
@416 = private unnamed_addr constant [12 x i8] c"PATH_SEGMENT", align 1
@417 = private unnamed_addr constant [9 x i8] c"PATH_TYPE", align 1
@418 = private unnamed_addr constant [12 x i8] c"PATTERN_TYPE", align 1
@419 = private unnamed_addr constant [11 x i8] c"PREFIX_EXPR", align 1
@420 = private unnamed_addr constant [8 x i8] c"PTR_TYPE", align 1
@421 = private unnamed_addr constant [10 x i8] c"RANGE_EXPR", align 1
@422 = private unnamed_addr constant [9 x i8] c"RANGE_PAT", align 1
@423 = private unnamed_addr constant [11 x i8] c"RECORD_EXPR", align 1
@424 = private unnamed_addr constant [17 x i8] c"RECORD_EXPR_FIELD", align 1
@425 = private unnamed_addr constant [22 x i8] c"RECORD_EXPR_FIELD_LIST", align 1
@426 = private unnamed_addr constant [12 x i8] c"RECORD_FIELD", align 1
@427 = private unnamed_addr constant [17 x i8] c"RECORD_FIELD_LIST", align 1
@428 = private unnamed_addr constant [10 x i8] c"RECORD_PAT", align 1
@429 = private unnamed_addr constant [16 x i8] c"RECORD_PAT_FIELD", align 1
@430 = private unnamed_addr constant [21 x i8] c"RECORD_PAT_FIELD_LIST", align 1
@431 = private unnamed_addr constant [8 x i8] c"REF_EXPR", align 1
@432 = private unnamed_addr constant [7 x i8] c"REF_PAT", align 1
@433 = private unnamed_addr constant [8 x i8] c"REF_TYPE", align 1
@434 = private unnamed_addr constant [6 x i8] c"RENAME", align 1
@435 = private unnamed_addr constant [8 x i8] c"REST_PAT", align 1
@436 = private unnamed_addr constant [11 x i8] c"RETURN_EXPR", align 1
@437 = private unnamed_addr constant [18 x i8] c"RETURN_TYPE_SYNTAX", align 1
@438 = private unnamed_addr constant [8 x i8] c"RET_TYPE", align 1
@439 = private unnamed_addr constant [10 x i8] c"SELF_PARAM", align 1
@440 = private unnamed_addr constant [9 x i8] c"SLICE_PAT", align 1
@441 = private unnamed_addr constant [10 x i8] c"SLICE_TYPE", align 1
@442 = private unnamed_addr constant [11 x i8] c"SOURCE_FILE", align 1
@443 = private unnamed_addr constant [6 x i8] c"STATIC", align 1
@444 = private unnamed_addr constant [9 x i8] c"STMT_LIST", align 1
@445 = private unnamed_addr constant [6 x i8] c"STRUCT", align 1
@446 = private unnamed_addr constant [10 x i8] c"TOKEN_TREE", align 1
@447 = private unnamed_addr constant [15 x i8] c"TOKEN_TREE_META", align 1
@448 = private unnamed_addr constant [5 x i8] c"TRAIT", align 1
@449 = private unnamed_addr constant [18 x i8] c"TRY_BLOCK_MODIFIER", align 1
@450 = private unnamed_addr constant [8 x i8] c"TRY_EXPR", align 1
@451 = private unnamed_addr constant [10 x i8] c"TUPLE_EXPR", align 1
@452 = private unnamed_addr constant [11 x i8] c"TUPLE_FIELD", align 1
@453 = private unnamed_addr constant [16 x i8] c"TUPLE_FIELD_LIST", align 1
@454 = private unnamed_addr constant [9 x i8] c"TUPLE_PAT", align 1
@455 = private unnamed_addr constant [16 x i8] c"TUPLE_STRUCT_PAT", align 1
@456 = private unnamed_addr constant [10 x i8] c"TUPLE_TYPE", align 1
@457 = private unnamed_addr constant [10 x i8] c"TYPE_ALIAS", align 1
@458 = private unnamed_addr constant [11 x i8] c"TYPE_ANCHOR", align 1
@459 = private unnamed_addr constant [8 x i8] c"TYPE_ARG", align 1
@460 = private unnamed_addr constant [10 x i8] c"TYPE_BOUND", align 1
@461 = private unnamed_addr constant [15 x i8] c"TYPE_BOUND_LIST", align 1
@462 = private unnamed_addr constant [10 x i8] c"TYPE_PARAM", align 1
@463 = private unnamed_addr constant [15 x i8] c"UNDERSCORE_EXPR", align 1
@464 = private unnamed_addr constant [5 x i8] c"UNION", align 1
@465 = private unnamed_addr constant [11 x i8] c"UNSAFE_META", align 1
@466 = private unnamed_addr constant [3 x i8] c"USE", align 1
@467 = private unnamed_addr constant [22 x i8] c"USE_BOUND_GENERIC_ARGS", align 1
@468 = private unnamed_addr constant [8 x i8] c"USE_TREE", align 1
@469 = private unnamed_addr constant [13 x i8] c"USE_TREE_LIST", align 1
@470 = private unnamed_addr constant [7 x i8] c"VARIANT", align 1
@471 = private unnamed_addr constant [12 x i8] c"VARIANT_LIST", align 1
@472 = private unnamed_addr constant [10 x i8] c"VISIBILITY", align 1
@473 = private unnamed_addr constant [16 x i8] c"VISIBILITY_INNER", align 1
@474 = private unnamed_addr constant [12 x i8] c"WHERE_CLAUSE", align 1
@475 = private unnamed_addr constant [10 x i8] c"WHERE_PRED", align 1
@476 = private unnamed_addr constant [10 x i8] c"WHILE_EXPR", align 1
@477 = private unnamed_addr constant [12 x i8] c"WILDCARD_PAT", align 1
@478 = private unnamed_addr constant [9 x i8] c"YEET_EXPR", align 1
@479 = private unnamed_addr constant [10 x i8] c"YIELD_EXPR", align 1
@480 = private unnamed_addr constant [6 x i8] c"__LAST", align 1
@481 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsf8NQSppxkmK_14ide_completion }>, align 8
@482 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@483 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt }>, align 8
@484 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsuAhG64lL82_9text_size5range9TextRangeNtB6_5Debug3fmtCsf8NQSppxkmK_14ide_completion }>, align 8
@485 = private unnamed_addr constant [13 x i8] c"SyntaxNodePtr", align 1
@486 = private unnamed_addr constant [4 x i8] c"kind", align 1
@487 = private unnamed_addr constant [5 x i8] c"range", align 1
@488 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsf8NQSppxkmK_14ide_completion }>, align 8
@489 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@490 = private unnamed_addr constant [76 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/alloc/src/string.rs\00", align 1
@491 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @490, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@492 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@493 = private unnamed_addr constant [95 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/smol_str-0.3.6/src/lib.rs\00", align 1
@494 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @493, [16 x i8] c"^\00\00\00\00\00\00\00<\03\00\00\09\00\00\00" }>, align 8
@495 = private unnamed_addr constant [5 x i8] c"Error", align 1
@496 = private unnamed_addr constant [16 x i8] c"CapacityOverflow", align 1
@497 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsf8NQSppxkmK_14ide_completion }>, align 8
@498 = private unnamed_addr constant [8 x i8] c"AllocErr", align 1
@499 = private unnamed_addr constant [6 x i8] c"layout", align 1
@500 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/text-size-1.1.1/src/traits.rs\00", align 1
@501 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @500, [16 x i8] c"b\00\00\00\00\00\00\00\12\00\00\00\1F\00\00\00" }>, align 8
@502 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@503 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@504 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@505 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@506 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@507 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@508 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@509 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -654675508425364404 to ptr), ptr inttoptr (i64 7626636266285069727 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsf8NQSppxkmK_14ide_completion = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsf8NQSppxkmK_14ide_completion.164 = private unnamed_addr constant [6 x ptr] [ptr @502, ptr @503, ptr @504, ptr @505, ptr @506, ptr @507], align 8
@switch.table._RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt = private unnamed_addr constant [329 x i8] c"\09\03\06\09\05\07\07\07\07\07\07\07\07\02\05\05\08\03\04\04\04\05\05\07\0A\03\04\04\06\05\06\02\03\09\04\03\05\0A\04\04\06\07\06\05\07\07\06\09\04\05\03\03\05\05\0C\0B\05\09\06\08\08\0B\08\05\07\07\09\08\08\05\06\05\07\05\06\07\08\08\06\07\06\0B\07\06\06\09\07\09\09\08\08\07\07\09\09\0A\06\0A\08\08\08\06\08\0D\07\08\0B\0A\0B\06\0E\0A\08\06\0E\06\0D\10\0C\08\05\08\0A\0E\0D\0C\08\0B\0A\07\0C\0A\06\0F\12\07\06\0B\07\06\06\08\07\04\0B\04\08\0C\0A\06\07\05\0B\05\0E\07\07\0A\03\08\0A\0A\0F\09\0C\08\09\10\11\0A\0B\0F\0C\07\0F\0E\04\0A\0B\08\0A\07\0A\09\09\08\0D\0D\08\0C\05\09\0F\0B\0D\09\0E\04\09\0C\0C\10\0A\02\0B\0F\14\10\0A\08\08\10\12\09\07\04\10\0F\12\0A\0A\09\0E\05\08\08\08\08\0C\0E\07\0B\09\0A\09\0A\0B\09\0B\0B\0A\09\0E\0A\0B\10\06\0F\04\08\0A\08\0E\06\05\0A\16\0A\09\0A\04\09\09\08\0C\09\0C\0B\08\0A\09\0B\11\16\0C\11\0A\10\15\08\07\08\06\08\0B\12\08\0A\09\0A\0B\06\09\06\0A\0F\05\12\08\0A\0B\10\09\10\0A\0A\0B\08\0A\0F\0A\0F\05\0B\03\16\08\0D\07\0C\0A\10\0C\0A\0A\0C\09\0A\06", align 8
@switch.table._RNvXs6_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB5_10SyntaxKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.165 = private unnamed_addr constant [329 x ptr] [ptr @152, ptr @153, ptr @154, ptr @155, ptr @156, ptr @157, ptr @158, ptr @159, ptr @160, ptr @161, ptr @162, ptr @163, ptr @164, ptr @165, ptr @166, ptr @167, ptr @168, ptr @169, ptr @170, ptr @171, ptr @172, ptr @173, ptr @174, ptr @175, ptr @176, ptr @177, ptr @178, ptr @179, ptr @180, ptr @181, ptr @182, ptr @183, ptr @184, ptr @185, ptr @186, ptr @187, ptr @188, ptr @189, ptr @190, ptr @191, ptr @192, ptr @193, ptr @194, ptr @195, ptr @196, ptr @197, ptr @198, ptr @199, ptr @200, ptr @201, ptr @202, ptr @203, ptr @204, ptr @205, ptr @206, ptr @207, ptr @208, ptr @209, ptr @210, ptr @211, ptr @212, ptr @213, ptr @214, ptr @215, ptr @216, ptr @217, ptr @218, ptr @219, ptr @220, ptr @221, ptr @222, ptr @223, ptr @224, ptr @225, ptr @226, ptr @227, ptr @228, ptr @229, ptr @230, ptr @231, ptr @232, ptr @233, ptr @234, ptr @235, ptr @236, ptr @237, ptr @238, ptr @239, ptr @240, ptr @241, ptr @242, ptr @243, ptr @244, ptr @245, ptr @246, ptr @247, ptr @248, ptr @249, ptr @250, ptr @251, ptr @252, ptr @253, ptr @254, ptr @255, ptr @256, ptr @257, ptr @258, ptr @259, ptr @260, ptr @261, ptr @262, ptr @263, ptr @264, ptr @265, ptr @266, ptr @267, ptr @268, ptr @269, ptr @270, ptr @271, ptr @272, ptr @273, ptr @274, ptr @275, ptr @276, ptr @277, ptr @278, ptr @279, ptr @280, ptr @281, ptr @282, ptr @283, ptr @284, ptr @285, ptr @286, ptr @287, ptr @288, ptr @289, ptr @290, ptr @291, ptr @292, ptr @293, ptr @294, ptr @295, ptr @296, ptr @297, ptr @298, ptr @299, ptr @300, ptr @301, ptr @302, ptr @303, ptr @304, ptr @305, ptr @306, ptr @307, ptr @308, ptr @309, ptr @310, ptr @311, ptr @312, ptr @313, ptr @314, ptr @315, ptr @316, ptr @317, ptr @318, ptr @319, ptr @320, ptr @321, ptr @322, ptr @323, ptr @324, ptr @325, ptr @326, ptr @327, ptr @328, ptr @329, ptr @330, ptr @331, ptr @332, ptr @333, ptr @334, ptr @335, ptr @336, ptr @337, ptr @338, ptr @339, ptr @340, ptr @341, ptr @342, ptr @343, ptr @344, ptr @345, ptr @346, ptr @347, ptr @348, ptr @349, ptr @350, ptr @351, ptr @352, ptr @353, ptr @354, ptr @355, ptr @356, ptr @357, ptr @358, ptr @359, ptr @360, ptr @361, ptr @362, ptr @363, ptr @364, ptr @365, ptr @366, ptr @367, ptr @368, ptr @369, ptr @370, ptr @371, ptr @372, ptr @373, ptr @374, ptr @375, ptr @376, ptr @377, ptr @378, ptr @379, ptr @380, ptr @381, ptr @382, ptr @383, ptr @384, ptr @385, ptr @386, ptr @387, ptr @388, ptr @389, ptr @390, ptr @391, ptr @392, ptr @393, ptr @394, ptr @395, ptr @396, ptr @397, ptr @398, ptr @399, ptr @400, ptr @401, ptr @402, ptr @403, ptr @404, ptr @405, ptr @406, ptr @407, ptr @408, ptr @409, ptr @410, ptr @411, ptr @412, ptr @413, ptr @414, ptr @415, ptr @416, ptr @417, ptr @418, ptr @419, ptr @420, ptr @421, ptr @422, ptr @423, ptr @424, ptr @425, ptr @426, ptr @427, ptr @428, ptr @429, ptr @430, ptr @431, ptr @432, ptr @433, ptr @434, ptr @435, ptr @436, ptr @437, ptr @438, ptr @439, ptr @440, ptr @441, ptr @442, ptr @443, ptr @444, ptr @445, ptr @446, ptr @447, ptr @448, ptr @449, ptr @450, ptr @451, ptr @452, ptr @453, ptr @454, ptr @455, ptr @456, ptr @457, ptr @458, ptr @459, ptr @460, ptr @461, ptr @462, ptr @463, ptr @464, ptr @465, ptr @466, ptr @467, ptr @468, ptr @469, ptr @470, ptr @471, ptr @472, ptr @473, ptr @474, ptr @475, ptr @476, ptr @477, ptr @478, ptr @479, ptr @480], align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsf8NQSppxkmK_14ide_completion.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !4, !noundef !18 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !4, !noundef !18
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !4, !noundef !18
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !4, !noundef !18
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i ], [ %i.f, %bb.b ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i ], [ %i.s, %bb.b ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.e
  %i.ar = add i64 %i.aq, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i
    i32 13, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i
    i32 12, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i
    i32 11, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i
    i32 10, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i
    i32 9, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.as, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsf8NQSppxkmK_14ide_completion.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsf8NQSppxkmK_14ide_completion.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !19, !noundef !18
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !19, !noundef !18
  %i.bg = lshr i8 %i.bf, 1
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i, label %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsf8NQSppxkmK_14ide_completion.exit

_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.e, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.021 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.d ], [ %i.an, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i ], [ %i.an, %bb.e ] ; 6 uses
  %.sroa.14.019 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.d ], [ %i.ar, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.021, %i.a
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsf8NQSppxkmK_14ide_completion.exit, %bb.t
  %i.bk = phi ptr [ %i.cu, %bb.t ], [ %i.a, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsf8NQSppxkmK_14ide_completion.exit ] ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !20, !noundef !18 ; 3 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.j, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bo = icmp ne ptr %.sroa.4.021, %i.bl
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -2 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !20, !noundef !18 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bu = zext nneg i8 %i.bm to i32
  br label %bb.m

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i
  %i.bv = icmp ne ptr %.sroa.4.021, %i.bp
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -3 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !20, !noundef !18 ; 3 uses
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = icmp slt i8 %i.bx, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i
  %i.cb = phi ptr [ %i.cp, %bb.l ], [ %i.bp, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.l ], [ %i.bs, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i ]
  %i.cc = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cd = and i8 %i.bm, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  br label %bb.m

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i
  %i.cg = icmp ne ptr %.sroa.4.021, %i.bw
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !20, !noundef !18
  %i.cj = and i8 %i.ci, 7
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 6
  %i.cm = and i8 %i.bx, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i
  %i.cp = phi ptr [ %i.ch, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i ], [ %i.bw, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.co, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i ], [ %i.bz, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i ]
  %i.cq = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cr = and i8 %i.bq, 63
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cq, %i.cs
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bu, %bb.j ], [ %i.cf, %bb.k ] ; 8 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cv)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cw, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cx, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.db = zext i1 %i.da to i8
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.dc = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !34, !noundef !18
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !34, !noundef !18
  %i.dk = lshr i8 %i.dj, 1
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i6

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.db, %bb.q ], [ %i.df, %bb.r ], [ %i.cz, %bb.p ], [ %i.dk, %bb.s ]
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dm = icmp eq ptr %.sroa.4.021, %i.cu
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsf8NQSppxkmK_14ide_completion.exit.i.i.i6, %bb.o, %bb.n
  %i.dn = ptrtoint ptr %i.bk to i64
  %i.do = ptrtoint ptr %.sroa.4.021 to i64
  %i.dp = sub i64 %.sroa.14.019, %i.do
  %i.dq = add i64 %i.dp, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i, %bb.t, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsf8NQSppxkmK_14ide_completion.exit, %bb.u
  %.sroa.0.045 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCshzWfHUSfYae_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsf8NQSppxkmK_14ide_completion.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCshzWfHUSfYae_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsf8NQSppxkmK_14ide_completion.exit.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyBZ_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB35_:bb.a
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %..i, 4                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %.sroa.13.2 = phi ptr [ %i.o, %.noexc ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.q, %.noexc ], [ %i.h, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.l, %.noexc ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -16 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -16 ; 3 uses
  %.val.i = load ptr, ptr %i.j, align 8, !noalias !491, !nonnull !18, !align !477, !noundef !18
  %.val12.i = load ptr, ptr %i.i, align 8, !noalias !491
  %i.k = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.val.i, ptr %.val12.i) #36
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 2 uses
  %..i17 = select i1 %i.k, ptr %i.i, ptr %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %..i17, i64 16, i1 false), !noalias !491
  %i.m = xor i1 %i.k, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.n ; 3 uses
  %i.p = zext i1 %i.k to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.p ; 3 uses
  %i.r = icmp eq ptr %i.o, %0
  %i.s = icmp eq ptr %i.q, %2
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3x_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc21
  %.sroa.13.3 = phi ptr [ %i.z, %.noexc21 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.w, %.noexc21 ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.y, %.noexc21 ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !494, !nonnull !18, !align !477, !noundef !18
  %.val.i19 = load ptr, ptr %.sroa.0.2, align 8, !noalias !494
  %i.t = invoke fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr %.sroa.0.0.val.i, ptr %.val.i19) #36
          to label %.noexc21 unwind label %.loopexit.split-lp ; 3 uses

.noexc21:                                         ; preds = %.lr.ph.i
  %i.u = xor i1 %i.t, true
  %.sroa.05.0.i = select i1 %i.t, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i, i64 16, i1 false), !noalias !494
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.2, i64 %i.v ; 3 uses
  %i.x = zext i1 %i.t to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 16 ; 2 uses
  %i.aa = icmp ne ptr %i.w, %i.h
  %i.ab = icmp ne ptr %i.y, %i.f
  %or.cond.i20 = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond.i20, label %.lr.ph.i, label %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3x_.exit

_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3x_.exit: ; preds = %.noexc21, %.noexc
  %.sroa.13.1 = phi ptr [ %i.o, %.noexc ], [ %i.z, %.noexc21 ]
  %.sroa.7.1 = phi ptr [ %i.q, %.noexc ], [ %i.h, %.noexc21 ]
  %.sroa.0.1 = phi ptr [ %2, %.noexc ], [ %i.w, %.noexc21 ] ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.7.1 to i64
  %i.ad = ptrtoint ptr %.sroa.0.1 to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.ae, i1 false), !noalias !497
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3x_.exit
  ret void

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.af = ptrtoint ptr %.sroa.7.0 to i64
  %i.ag = ptrtoint ptr %.sroa.0.0 to i64
  %i.ah = sub nuw i64 %i.af, %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr nonnull align 8 %.sroa.0.0, i64 %i.ah, i1 false), !noalias !502
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs5_NtNtCsdVrXiLXuAnx_6parser11syntax_kind9generatedNtB6_10SyntaxKindNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !range !214, !noundef !18
  %i.b = zext nneg i16 %i.a to i64
  %i.c = load i64, ptr %1, align 8, !alias.scope !507, !noundef !18
  %i.d = add i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -1065810590584100411
  store i64 %i.e, ptr %1, align 8, !alias.scope !507
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range5RangejEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1p_8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2C_3VecjE14extend_trustedBM_E0E0ECsf8NQSppxkmK_14ide_completion(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i, label %._crit_edge13.i

._crit_edge13.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !510
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBP_8iterator8Iterator8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2I_3VecjE14extend_trustedINtNtNtBR_8adapters3rev3RevB3_EE0E0ECsf8NQSppxkmK_14ide_completion.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !513, !noundef !18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !513 ; 3 uses
  %i.e = sub nuw i64 %1, %0                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.e, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.e, -4                       ; 4 uses
  %i.f = add i64 %.promoted.i, %n.vec             ; 2 uses
  %i.g = sub i64 %1, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.h = add <2 x i64> %broadcast.splat, <i64 0, i64 -1>
  %i.i = getelementptr [8 x i8], ptr %i.c, i64 %.promoted.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %i.h, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.j = add <2 x i64> %vec.ind, splat (i64 -1)
  %i.k = add <2 x i64> %vec.ind, splat (i64 -3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %i.j, ptr %i.l, align 8, !noalias !513
  store <2 x i64> %i.k, ptr %i.m, align 8, !noalias !513
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 -4)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !520

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBP_8iterator8Iterator8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2I_3VecjE14extend_trustedINtNtNtBR_8adapters3rev3RevB3_EE0E0ECsf8NQSppxkmK_14ide_completion.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.ph = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.f, %middle.block ]
  %.sroa.2.012.i.ph = phi i64 [ %1, %.lr.ph.i ], [ %i.g, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.o = phi i64 [ %i.r, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.2.012.i = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.2.012.i.ph, %scalar.ph.preheader ]
  %i.p = add i64 %.sroa.2.012.i, -1               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.o
  store i64 %i.p, ptr %i.q, align 8, !noalias !513
  %i.r = add i64 %i.o, 1                          ; 2 uses
  %i.s = icmp ult i64 %0, %i.p
  br i1 %i.s, label %scalar.ph, label %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBP_8iterator8Iterator8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2I_3VecjE14extend_trustedINtNtNtBR_8adapters3rev3RevB3_EE0E0ECsf8NQSppxkmK_14ide_completion.exit, !llvm.loop !523

_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBP_8iterator8Iterator8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2I_3VecjE14extend_trustedINtNtNtBR_8adapters3rev3RevB3_EE0E0ECsf8NQSppxkmK_14ide_completion.exit: ; preds = %scalar.ph, %middle.block, %._crit_edge13.i
  %.val6.i = phi i64 [ %.val6.pre.i, %._crit_edge13.i ], [ %i.f, %middle.block ], [ %i.r, %scalar.ph ]
  %.val5.i = load ptr, ptr %2, align 8, !alias.scope !510, !nonnull !18, !align !477, !noundef !18
  store i64 %.val6.i, ptr %.val5.i, align 8, !noalias !510
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2B_15IntersperseWithBM_INtB2B_24IntersperseElementSimpleB1K_EEB1O_4folduNCINvNvB1O_8for_each4callB1K_NCNvXsg_NtB13_6stringB3e_NtB53_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !529, !noalias !532, !nonnull !18, !noundef !18 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !529, !noalias !532, !nonnull !18, !noundef !18 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val2.i.i = load ptr, ptr %1, align 8, !alias.scope !527, !noalias !534, !nonnull !18, !align !477 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBc_8adapters3rev3RevINtNtNtB1r_3vec9into_iter8IntoIterB1f_EEINtB1V_24IntersperseElementSimpleB1f_EENtB1p_13SpecExtendStr16spec_extend_into0E0Csf8NQSppxkmK_14ide_completion.exit.i.i, %.noexc.i, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %i.b, align 8, !alias.scope !535, !noalias !532
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEECsf8NQSppxkmK_14ide_completion.exit.i unwind label %bb.f, !noalias !527

bb.c:                                             ; preds = %_RNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB8_15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEEINtB8_24IntersperseElementSimpleB2K_EENtNtNtB1f_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB2K_NCNvXsg_NtB23_6stringBL_NtB4G_13SpecExtendStr16spec_extend_into0E0Es_0Csf8NQSppxkmK_14ide_completion.exit.i, %.lr.ph.i
  %i.j = phi ptr [ %i.d, %.lr.ph.i ], [ %i.k, %_RNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB8_15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEEINtB8_24IntersperseElementSimpleB2K_EENtNtNtB1f_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB2K_NCNvXsg_NtB23_6stringBL_NtB4G_13SpecExtendStr16spec_extend_into0E0Es_0Csf8NQSppxkmK_14ide_completion.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !538, !nonnull !18, !noundef !18
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !noalias !538, !noundef !18 ; 4 uses
  %i.o = invoke { ptr, i64 } @_RNvXNtCscFGNKo4Sl5v_9itertools11intersperseINtB2_24IntersperseElementSimpleReEINtB2_18IntersperseElementB1b_E8generateCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc.i unwind label %bb.b, !noalias !539 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.p = extractvalue { ptr, i64 } %i.o, 1        ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val2.i.i, i64 noundef %i.p)
          to label %.noexc7.i unwind label %bb.b, !noalias !539

.noexc7.i:                                        ; preds = %.noexc.i
  %i.q = load i64, ptr %i.g, align 8, !alias.scope !540, !noalias !543, !noundef !18 ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %.not.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBc_8adapters3rev3RevINtNtNtB1r_3vec9into_iter8IntoIterB1f_EEINtB1V_24IntersperseElementSimpleB1f_EENtB1p_13SpecExtendStr16spec_extend_into0E0Csf8NQSppxkmK_14ide_completion.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.noexc7.i
  %i.s = extractvalue { ptr, i64 } %i.o, 0
  %i.t = load ptr, ptr %i.h, align 8, !alias.scope !540, !noalias !543, !nonnull !18, !noundef !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.s, i64 %i.p, i1 false), !noalias !550
  %.pre.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !540, !noalias !543
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBc_8adapters3rev3RevINtNtNtB1r_3vec9into_iter8IntoIterB1f_EEINtB1V_24IntersperseElementSimpleB1f_EENtB1p_13SpecExtendStr16spec_extend_into0E0Csf8NQSppxkmK_14ide_completion.exit.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBc_8adapters3rev3RevINtNtNtB1r_3vec9into_iter8IntoIterB1f_EEINtB1V_24IntersperseElementSimpleB1f_EENtB1p_13SpecExtendStr16spec_extend_into0E0Csf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %bb.d, %.noexc7.i
  %i.v = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.q, %.noexc7.i ]
  %i.w = add i64 %i.v, %i.p
  store i64 %i.w, ptr %i.g, align 8, !alias.scope !540, !noalias !543
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val2.i.i, i64 noundef %i.n)
          to label %.noexc8.i unwind label %bb.b, !noalias !539

.noexc8.i:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBc_8adapters3rev3RevINtNtNtB1r_3vec9into_iter8IntoIterB1f_EEINtB1V_24IntersperseElementSimpleB1f_EENtB1p_13SpecExtendStr16spec_extend_into0E0Csf8NQSppxkmK_14ide_completion.exit.i.i
  %i.x = load i64, ptr %i.g, align 8, !alias.scope !551, !noalias !554, !noundef !18 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %.not.i.i.i3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i3.i.i, label %_RNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB8_15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEEINtB8_24IntersperseElementSimpleB2K_EENtNtNtB1f_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB2K_NCNvXsg_NtB23_6stringBL_NtB4G_13SpecExtendStr16spec_extend_into0E0Es_0Csf8NQSppxkmK_14ide_completion.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc8.i
  %i.z = load ptr, ptr %i.h, align 8, !alias.scope !551, !noalias !554, !nonnull !18, !noundef !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.l, i64 %i.n, i1 false), !noalias !539
  %.pre.i.i.i4.i.i = load i64, ptr %i.g, align 8, !alias.scope !551, !noalias !554
  br label %_RNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB8_15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEEINtB8_24IntersperseElementSimpleB2K_EENtNtNtB1f_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB2K_NCNvXsg_NtB23_6stringBL_NtB4G_13SpecExtendStr16spec_extend_into0E0Es_0Csf8NQSppxkmK_14ide_completion.exit.i

_RNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB8_15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEEINtB8_24IntersperseElementSimpleB2K_EENtNtNtB1f_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB2K_NCNvXsg_NtB23_6stringBL_NtB4G_13SpecExtendStr16spec_extend_into0E0Es_0Csf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.e, %.noexc8.i
  %i.ab = phi i64 [ %.pre.i.i.i4.i.i, %bb.e ], [ %i.x, %.noexc8.i ]
  %i.ac = add i64 %i.ab, %i.n
  store i64 %i.ac, ptr %i.g, align 8, !alias.scope !551, !noalias !554
  %i.ad = icmp eq ptr %i.e, %i.k
  br i1 %i.ad, label %_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion.exit.loopexit, label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !527
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEECsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.i

_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion.exit.loopexit: ; preds = %_RNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB8_15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEEINtB8_24IntersperseElementSimpleB2K_EENtNtNtB1f_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB2K_NCNvXsg_NtB23_6stringBL_NtB4G_13SpecExtendStr16spec_extend_into0E0Es_0Csf8NQSppxkmK_14ide_completion.exit.i
  store ptr %i.k, ptr %i.b, align 8, !alias.scope !535, !noalias !532
  br label %_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion.exit

_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion.exit.loopexit, %bb.a
  call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsf_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendReE6extendINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBS_8adapters3rev3RevINtNtNtB8_3vec9into_iter8IntoIterB1E_EEINtB1R_24IntersperseElementSimpleB1E_EEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtB7_3vec9into_iter8IntoIterReEEINtBB_24IntersperseElementSimpleB2Q_EENtB5_13SpecExtendStr16spec_extend_intoCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsf_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendReE6extendINtNtNtBU_5array4iter8IntoIterB1E_Kj2_EECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterReKj2_ENtB5_13SpecExtendStr16spec_extend_intoCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1y_8adapters6cloned6ClonedINtNtNtB1A_5slice4iter4IterBJ_EEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB8_6traits8iterator8Iterator9size_hintCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = load i64, ptr %i.b, align 8, !noundef !18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !559, !noalias !564, !noundef !18 ; 4 uses
  %i.h = icmp ugt i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.g, i64 1) ; 2 uses
  %.val.i = load i64, ptr %i.i, align 8, !alias.scope !566
  %i.j = select i1 %i.h, i64 %.val.i, i64 %i.g    ; 3 uses
  %i.k = sub i64 %.sink.i.i, %i.j
  %.not.i = icmp ult i64 %i.k, %i.e
  br i1 %.not.i, label %bb.b, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add i64 %i.j, %i.e                       ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit.thread, label %bb.c, !prof !128

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.l, 2
  %i.o = add i64 %i.l, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = lshr i64 -1, %i.p
  %.sroa.010.0.i = select i1 %i.n, i64 0, i64 %i.q ; 2 uses
  %i.r = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.r, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit.thread, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit, !prof !128

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.c
  %i.s = add nuw i64 %.sroa.010.0.i, 1
  %i.t = call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 -1, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit_crit_edge
    i64 0, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit.thread
  ], !prof !196

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit_crit_edge: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !567, !noalias !570 ; 2 uses
  %.pre36 = call i64 @llvm.umax.i64(i64 %.pre, i64 1)
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit

bb.d:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit
  %i.v = extractvalue { i64, i64 } %i.t, 1
  call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.u, i64 noundef %i.v) #40
  unreachable

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit_crit_edge, %bb.a
  %.sink.i.pre-phi = phi i64 [ %.pre36, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit_crit_edge ], [ %.sink.i.i, %bb.a ]
  %i.w = phi i64 [ %.pre, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion.exit._RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit_crit_edge ], [ %i.g, %bb.a ] ; 2 uses
  %i.x = icmp ugt i64 %i.w, 1                     ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !alias.scope !567, !noalias !570, !nonnull !18
  %.sink10.i = select i1 %i.x, ptr %i.y, ptr %0
  %.sink9.i = select i1 %i.x, ptr %i.i, ptr %i.f  ; 4 uses
  %i.z = load i64, ptr %.sink9.i, align 8, !noundef !18 ; 3 uses
  %i.aa = icmp ult i64 %i.z, %.sink.i.pre-phi
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit
  %storemerge.lcssa = phi i64 [ %i.z, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit ], [ %i.at, %bb.k ]
  store i64 %storemerge.lcssa, ptr %.sink9.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load <2 x ptr>, ptr %i.c, align 16
  store <2 x ptr> %i.ab, ptr %i.a, align 16
  %i.ac = call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB8_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %.not28 = icmp eq ptr %i.ac, null
  br i1 %.not28, label %._crit_edge31, label %.lr.ph30

.lr.ph:                                           ; preds = %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit, %bb.k
  %storemerge27 = phi i64 [ %i.at, %bb.k ], [ %i.z, %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECsf8NQSppxkmK_14ide_completion.exit ] ; 4 uses
  %i.ad = invoke noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB8_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.j unwind label %bb.m       ; 2 uses

.lr.ph30:                                         ; preds = %._crit_edge, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushCsf8NQSppxkmK_14ide_completion.exit
  %i.ae = phi ptr [ %i.ar, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushCsf8NQSppxkmK_14ide_completion.exit ], [ %i.ac, %._crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.af = load i64, ptr %i.f, align 8, !alias.scope !575, !noalias !578, !noundef !18 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 1                   ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !575, !noalias !578, !nonnull !18
  %.sink10.i.i = select i1 %i.ag, ptr %i.ah, ptr %0
  %.sink9.i.i = select i1 %i.ag, ptr %i.i, ptr %i.f ; 2 uses
  %.sink.i.i12 = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ai = load i64, ptr %.sink9.i.i, align 8, !alias.scope !572, !noundef !18 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %.sink.i.i12
  br i1 %i.aj, label %bb.f, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushCsf8NQSppxkmK_14ide_completion.exit, !prof !128

bb.e:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.ae) #37
          to label %common.resume unwind label %bb.h, !noalias !572

bb.f:                                             ; preds = %.lr.ph30
  invoke fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E21reserve_one_uncheckedCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %0, align 8, !alias.scope !572, !nonnull !18, !noundef !18
  %.pre.i = load i64, ptr %i.i, align 8, !alias.scope !572
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushCsf8NQSppxkmK_14ide_completion.exit

bb.h:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !572
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.av, %bb.m ], [ %i.ak, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushCsf8NQSppxkmK_14ide_completion.exit: ; preds = %.lr.ph30, %bb.g
  %i.an = phi i64 [ %.pre.i, %bb.g ], [ %i.ai, %.lr.ph30 ]
  %.sroa.01.0.i = phi ptr [ %i.i, %bb.g ], [ %.sink9.i.i, %.lr.ph30 ] ; 2 uses
  %.sroa.0.0.i13 = phi ptr [ %i.al, %bb.g ], [ %.sink10.i.i, %.lr.ph30 ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i13, i64 %i.an
  store ptr %i.ae, ptr %i.ao, align 8
  %i.ap = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !572, !noundef !18
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %.sroa.01.0.i, align 8, !alias.scope !572
  %i.ar = call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB8_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %._crit_edge31, label %.lr.ph30

._crit_edge31:                                    ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushCsf8NQSppxkmK_14ide_completion.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %._crit_edge31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %.lr.ph
  %.not6 = icmp eq ptr %i.ad, null
  br i1 %.not6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i, i64 %storemerge27
  store ptr %i.ad, ptr %i.as, align 8
  %i.at = add nuw i64 %storemerge27, 1            ; 3 uses
  %i.au = icmp ugt i64 %i.w, %i.at
  br i1 %i.au, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %bb.j
  store i64 %storemerge27, ptr %.sink9.i, align 8
  br label %bb.i

bb.m:                                             ; preds = %.lr.ph
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %storemerge27, ptr %.sink9.i, align 8
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1T_8adapters10filter_map9FilterMapINtB6_8IntoIterBI_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBJ_Bt_E0EEBN_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.440 = alloca [24 x i8], align 8          ; 4 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %.lr.ph.i.i.preheader.i.i
  %i.aq = phi ptr [ %i.ca, %bb.w ], [ %i.ap, %.lr.ph.i.i.preheader.i.i ] ; 6 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !1029, !noalias !1030, !noundef !18 ; 3 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.o, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.au = icmp ne ptr %.sroa.0.0.i10, %i.ar
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 -2 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !1029, !noalias !1030, !noundef !18 ; 3 uses
  %i.ax = and i8 %i.aw, 31
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = icmp slt i8 %i.aw, -64
  br i1 %i.az, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = zext nneg i8 %i.as to i32
  br label %bb.r

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i
  %i.bb = icmp ne ptr %.sroa.0.0.i10, %i.av
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds i8, ptr %i.aq, i64 -3 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !1029, !noalias !1030, !noundef !18 ; 3 uses
  %i.be = and i8 %i.bd, 15
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = icmp slt i8 %i.bd, -64
  br i1 %i.bg, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i, label %bb.q

bb.p:                                             ; preds = %bb.q, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i
  %i.bh = phi ptr [ %i.bv, %bb.q ], [ %i.av, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.q ], [ %i.ay, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i ]
  %i.bi = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i.i, 6
  %i.bj = and i8 %i.as, 63
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk
  br label %bb.r

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i
  %i.bm = icmp ne ptr %.sroa.0.0.i10, %i.bc
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds i8, ptr %i.aq, i64 -4 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !1029, !noalias !1030, !noundef !18
  %i.bp = and i8 %i.bo, 7
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 6
  %i.bs = and i8 %i.bd, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  br label %bb.q

bb.q:                                             ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i
  %i.bv = phi ptr [ %i.bn, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i.i = phi i32 [ %i.bu, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i ], [ %i.bf, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i ]
  %i.bw = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i.i, 6
  %i.bx = and i8 %i.aw, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bw, %i.by
  br label %bb.p

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ca = phi ptr [ %i.ar, %bb.o ], [ %i.bh, %bb.p ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.o ], [ %i.bl, %bb.p ] ; 8 uses
  %i.cb = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = and i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 2097119
  %i.cd = add nsw i32 %i.cc, -65
  %or.cond4.i.i.i.i.i.i.i.i = icmp ult i32 %i.cd, 26
  %i.ce = add nsw i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, -48
  %or.cond2.i.i.i.i.i.i.i.i = icmp ult i32 %i.ce, 10
  %or.cond5.i.i.i.i.i.i.i.i = select i1 %or.cond4.i.i.i.i.i.i.i.i, i1 true, i1 %or.cond2.i.i.i.i.i.i.i.i
  br i1 %or.cond5.i.i.i.i.i.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 170
  br i1 %i.cf, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace0NtB5_11MultiCharEq7matchesBM_.exit.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = tail call noundef zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.4.1.i.ph.i.i.i.i.i.i) #42, !noalias !1044
  br i1 %i.cg, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 177
  br i1 %i.ch, label %bb.v, label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace0NtB5_11MultiCharEq7matchesBM_.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.ci = tail call noundef zeroext i1 @_RNvNtNtNtCshzWfHUSfYae_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.4.1.i.ph.i.i.i.i.i.i) #42, !noalias !1044
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace0NtB5_11MultiCharEq7matchesBM_.exit.i.i.i.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace0NtB5_11MultiCharEq7matchesBM_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.s
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i1 [ %i.ci, %bb.v ], [ false, %bb.u ], [ false, %bb.s ]
  %i.cj = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 95
  %.sroa.0.0.i.i.i.i.i.i.i = or i1 %i.cj, %.sroa.0.0.i.i.i.i.i.i.i.i
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %bb.w, label %_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchesNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace0EBT_.exit.i

bb.w:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace0NtB5_11MultiCharEq7matchesBM_.exit.i.i.i.i.i, %bb.t, %bb.r
  %i.ck = icmp eq ptr %.sroa.0.0.i10, %i.ca
  br i1 %i.ck, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread, label %.lr.ph.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchesNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace0EBT_.exit.i: ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core3str7patternNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace0NtB5_11MultiCharEq7matchesBM_.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.aq, %.sroa.0.0.i10
  br i1 %.not.i.i, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsf8NQSppxkmK_14ide_completion.exit.i

_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchesNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace0EBT_.exit.i
  %i.cl = ptrtoint ptr %.sroa.0.0.i10 to i64
  %i.cm = ptrtoint ptr %i.aq to i64
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.0.0.i10, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %rhsc.i = load i8, ptr %i.cp, align 1, !alias.scope !1023
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.cq = icmp eq i8 %rhsc.fr.i, 123
  %i.cr = add i64 %i.cn, -1                       ; 3 uses
  br i1 %i.cq, label %bb.x, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread

bb.x:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsf8NQSppxkmK_14ide_completion.exit.i
  %.not.i18.i.i.i.i.i.i.i = icmp samesign eq i64 %i.cr, 0
  br i1 %.not.i18.i.i.i.i.i.i.i, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread17, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i10, i64 %i.cr
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_braces_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.sroa.01.019.i.i.i.i.i.i.i = phi i64 [ %i.ef, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_braces_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ct = phi ptr [ %i.ed, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_braces_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i ], [ %i.cs, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -1 ; 3 uses
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !1045, !noalias !1048, !noundef !18 ; 3 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.y, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i.i.i

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cx = icmp ne ptr %.sroa.0.0.i10, %i.cu
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = getelementptr inbounds i8, ptr %i.ct, i64 -2 ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !1045, !noalias !1048, !noundef !18 ; 3 uses
  %i.da = and i8 %i.cz, 31
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = icmp slt i8 %i.cz, -64
  br i1 %i.dc, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i.i.i, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dd = zext nneg i8 %i.cv to i32
  br label %bb.ab

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i.i.i
  %i.de = icmp ne ptr %.sroa.0.0.i10, %i.cy
  tail call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds i8, ptr %i.ct, i64 -3 ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !1045, !noalias !1048, !noundef !18 ; 3 uses
  %i.dh = and i8 %i.dg, 15
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = icmp slt i8 %i.dg, -64
  br i1 %i.dj, label %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i.i.i, label %bb.aa

bb.z:                                             ; preds = %bb.aa, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i.i.i
  %i.dk = phi ptr [ %i.dy, %bb.aa ], [ %i.cy, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ec, %bb.aa ], [ %i.db, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit17.i.i.i.i.i.i.i.i.i ]
  %i.dl = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i.i.i.i, 6
  %i.dm = and i8 %i.cv, 63
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dl, %i.dn
  br label %bb.ab

_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i.i.i
  %i.dp = icmp ne ptr %.sroa.0.0.i10, %i.df
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds i8, ptr %i.ct, i64 -4 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !1045, !noalias !1048, !noundef !18
  %i.ds = and i8 %i.dr, 7
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 6
  %i.dv = and i8 %i.dg, 63
  %i.dw = zext nneg i8 %i.dv to i32
  %i.dx = or disjoint i32 %i.du, %i.dw
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i.i.i, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i.i.i
  %i.dy = phi ptr [ %i.dq, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i.i.i ], [ %i.df, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dx, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit21.i.i.i.i.i.i.i.i.i ], [ %i.di, %_RNvXs2K_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion.exit19.i.i.i.i.i.i.i.i.i ]
  %i.dz = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i.i.i.i, 6
  %i.ea = and i8 %i.cz, 63
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = or disjoint i32 %i.dz, %i.eb
  br label %bb.z

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.ed = phi ptr [ %i.cu, %bb.y ], [ %i.dk, %bb.z ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i.i = phi i32 [ %i.dd, %bb.y ], [ %i.do, %bb.z ]
  %i.ee = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i, 123
  br i1 %i.ee, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_braces_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_braces_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i: ; preds = %bb.ab
  %i.ef = add i64 %.sroa.01.019.i.i.i.i.i.i.i, 1  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i10, %i.ed
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit: ; preds = %bb.ab, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_braces_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.ph.i.i.i = phi i64 [ %i.ef, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_braces_00NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_INtNtBc_3rev3RevNtNtNtBg_3str4iter5CharsEB2Q_EB1i_5count0E0E0B30_.exit.i.i.i.i.i.i.i ], [ %.sroa.01.019.i.i.i.i.i.i.i, %bb.ab ]
  %.sroa.0.1.i.i.ph.i.fr.i.i = freeze i64 %.sroa.0.1.i.i.ph.i.i.i
  %i.eg = trunc i64 %.sroa.0.1.i.i.ph.i.fr.i.i to i1
  %i.eh = trunc i64 %i.cr to i32
  br i1 %i.eg, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread, label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread17

bb.ac:                                            ; preds = %bb.m, %.split.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i10, i64 noundef %.sroa.3.0.i, i64 noundef 0, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #41
  unreachable

_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread17: ; preds = %bb.x, %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit
  %.sroa.4.0.i.i20 = phi i32 [ %i.eh, %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit ], [ 0, %bb.x ]
  %i.ei = add i32 %.sroa.0.0.i, 1
  %i.ej = add i32 %i.ei, %.sroa.4.0.i.i20         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not9 = icmp ugt i32 %i.ej, %i.i
  br i1 %.not9, label %bb.ad, label %bb.ae, !prof !128

bb.ad:                                            ; preds = %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread17
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #41
  unreachable

bb.ae:                                            ; preds = %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread17
  store i32 %i.ej, ptr %i.f, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.i, ptr %i.ek, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 448
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir5LocalNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.el)
  call void @_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCs8Xq8PKFYOms_3hir5LocalENtCscFGNKo4Sl5v_9itertools9Itertools13sorted_by_keyBV_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0EB30_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %.sroa.53.0..sroa_idx, align 8
  call void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB26_8for_each4callBX_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_strings_0E0EB3H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.eo, align 8
  call void @_RNvMs8_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_14SemanticsScope17process_all_names(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.em, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string15unescaped_brace.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions3vis17complete_vis_path(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %2, align 8, !range !1063, !noundef !18 ; 4 uses
  %i.g = icmp ne i64 %i.f, 3
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -2
  %i.i = icmp samesign ugt i64 %i.f, 1
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load i8, ptr %3, align 1, !range !89, !noundef !18
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.j, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i32, ptr %i.m, align 8, !range !1064, !noundef !18 ; 3 uses
  %.not = icmp eq i32 %i.n, -1
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.p, %bb.k, %bb.j, %bb.d, %bb.a, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.o = load atomic i64, ptr @_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt5LEVEL monotonic, align 8, !noalias !1065 ; 2 uses
  %.not.i19 = icmp eq i64 %i.o, 0
  br i1 %.not.i19, label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit20, label %bb.g, !prof !215

bb.g:                                             ; preds = %bb.f
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  tail call void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit8hit_cold(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 16)
  br label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit20

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit13add_to_survey(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 16)
  br label %bb.h

_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit20:   ; preds = %bb.f, %bb.h
  tail call void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions19add_keyword_snippet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 5)
  br label %bb.j

bb.j:                                             ; preds = %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit20, %bb.c
  tail call void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions20add_nameref_keywords(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1)
  br label %bb.e

bb.k:                                             ; preds = %bb.d
  %i.q = icmp ne i32 %i.n, 4
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i32 %i.n, 3
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = load i8, ptr %i.s, align 4, !range !1068
  %i.u = icmp eq i8 %i.t, 0
  %or.cond = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.l, label %bb.e

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.v, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.x = load i32, ptr %i.w, align 8, !range !819, !noundef !18
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 444
  %i.z = load i32, ptr %i.y, align 4, !noundef !18
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !18, !align !477, !noundef !18
  call void @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module12path_to_root(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i32 noundef %i.x, i32 noundef %i.z, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !18, !noundef !18 ; 3 uses
  %i.ae = load i64, ptr %i.c, align 8, !range !1069, !noundef !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !18 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ad, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ae, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ai, ptr %.sroa.6.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store i8 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1070
  invoke void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_foldINtNtB1x_6option6OptionBX_ENCINvNvXs0_NtNtB1v_8adapters10take_whileINtB35_9TakeWhileppEB1p_8try_fold5checkBX_B2t_INtNtNtB1x_3ops9try_trait17NeverShortCircuitB2t_ENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions3vis17complete_vis_path0NCINvMB4l_B4i_10wrap_mut_2B2t_BX_INvNvB1p_4last4someBX_EE0E0INtNtB4n_12control_flow11ControlFlowB4i_B2t_EEB5d_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d, i32 noundef 0, i32 undef, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noalias nofree noundef nonnull dereferenceable(1) %i.aj)
          to label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions3vis17complete_vis_path0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB1Z_EINvNvB3F_4last4someB1Z_EEB2z_.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.m ], [ %lpad.thr_comm, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions3vis17complete_vis_path0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB1Z_EINvNvB3F_4last4someB1Z_EEB2z_.exit: ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !noalias !1070 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !1070 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1070
  call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not15 = icmp eq i32 %i.ao, 0
  br i1 %.not15, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions3vis17complete_vis_path0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB1Z_EINvNvB3F_4last4someB1Z_EEB2z_.exit
  %i.ar = load ptr, ptr %i.aa, align 8, !nonnull !18, !align !477, !noundef !18
  %i.as = call noundef ptr @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module4name(i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @16) ; 3 uses
  %.not16 = icmp eq ptr %i.as, null
  br i1 %.not16, label %bb.p, label %.noexc

bb.p:                                             ; preds = %bb.o, %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir6ModuleENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions3vis17complete_vis_path0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionB1Z_EINvNvB3F_4last4someB1Z_EEB2z_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8
  call void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions17add_super_keyword(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef %i.f, i64 %i.au)
end_hunk_2
begin_hunk_3_@llvm.smax.i32
!335 = !{!336}
!336 = distinct !{!336, !337, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!337 = distinct !{!337, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion"}
!338 = !{!339}
!339 = distinct !{!339, !340, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion: argument 0"}
!340 = distinct !{!340, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion"}
!341 = !{!342}
!342 = distinct !{!342, !343, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!343 = distinct !{!343, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!344 = !{!342, !339, !336, !333, !330}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion: argument 0"}
!347 = distinct !{!347, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion: argument 0"}
!350 = distinct !{!350, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion"}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!353 = distinct !{!353, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion"}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion: argument 0"}
!356 = distinct !{!356, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion"}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!359 = distinct !{!359, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!360 = !{!358, !355, !352, !349, !346}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion: argument 0"}
!363 = distinct !{!363, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!366 = distinct !{!366, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion"}
!367 = !{i8 0, i8 26}
!368 = !{!365, !362}
!369 = !{!370}
!370 = distinct !{!370, !371, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion: argument 0"}
!371 = distinct !{!371, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion"}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!374 = distinct !{!374, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!375 = !{!373, !370, !365, !362}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion: argument 0"}
!378 = distinct !{!378, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion"}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!381 = distinct !{!381, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion"}
!382 = !{!380, !377}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion: argument 0"}
!385 = distinct !{!385, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!388 = distinct !{!388, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!389 = !{!387, !384, !380, !377}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion: argument 0"}
!392 = distinct !{!392, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion: argument 0"}
!395 = distinct !{!395, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsf8NQSppxkmK_14ide_completion"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationEECsf8NQSppxkmK_14ide_completion: argument 0"}
!398 = distinct !{!398, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db13documentation13DocumentationEECsf8NQSppxkmK_14ide_completion"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion: argument 0"}
!401 = distinct !{!401, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs42xZ1oUXfIG_8smol_str7SmolStrEECsf8NQSppxkmK_14ide_completion"}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion: argument 0"}
!404 = distinct !{!404, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion"}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion: argument 0"}
!407 = distinct !{!407, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str4ReprECsf8NQSppxkmK_14ide_completion"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion: argument 0"}
!410 = distinct !{!410, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArceEECsf8NQSppxkmK_14ide_completion"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!413 = distinct !{!413, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!414 = !{!412, !409, !406, !403, !400}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEECsf8NQSppxkmK_14ide_completion: argument 0"}
!417 = distinct !{!417, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEECsf8NQSppxkmK_14ide_completion"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion: argument 0"}
!420 = distinct !{!420, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion"}
!421 = !{i64 0, i64 -9223372036854775806}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets15ImportCandidateECsf8NQSppxkmK_14ide_completion: argument 0"}
!424 = distinct !{!424, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets15ImportCandidateECsf8NQSppxkmK_14ide_completion"}
!425 = !{i8 0, i8 3}
!426 = !{!427}
!427 = distinct !{!427, !428, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3j_: argument 0"}
!428 = distinct !{!428, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3j_"}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3g_: argument 0"}
!431 = distinct !{!431, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0EB3g_"}
!432 = !{!433, !435}
!433 = distinct !{!433, !434, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!434 = distinct !{!434, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!435 = distinct !{!435, !436, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion: argument 0"}
!436 = distinct !{!436, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion"}
!437 = !{!438, !440}
!438 = distinct !{!438, !439, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!439 = distinct !{!439, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!440 = distinct !{!440, !441, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion: argument 0"}
!441 = distinct !{!441, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion"}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3j_: argument 0"}
!444 = distinct !{!444, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3j_"}
!445 = !{!446}
!446 = distinct !{!446, !447, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3g_: argument 0"}
!447 = distinct !{!447, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0EB3g_"}
!448 = !{!449, !451}
!449 = distinct !{!449, !450, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!450 = distinct !{!450, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!451 = distinct !{!451, !452, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion: argument 0"}
!452 = distinct !{!452, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion"}
!453 = !{!454, !456}
!454 = distinct !{!454, !455, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!455 = distinct !{!455, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!456 = distinct !{!456, !457, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion: argument 0"}
!457 = distinct !{!457, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion"}
!458 = !{!459}
!459 = distinct !{!459, !460, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3j_: argument 0"}
!460 = distinct !{!460, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3j_"}
!461 = !{!462}
!462 = distinct !{!462, !463, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3g_: argument 0"}
!463 = distinct !{!463, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0EB3g_"}
!464 = !{!465, !467}
!465 = distinct !{!465, !466, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!466 = distinct !{!466, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!467 = distinct !{!467, !468, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion: argument 0"}
!468 = distinct !{!468, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion"}
!469 = !{!470, !472}
!470 = distinct !{!470, !471, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!471 = distinct !{!471, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!472 = distinct !{!472, !473, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion: argument 0"}
!473 = distinct !{!473, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportEECsf8NQSppxkmK_14ide_completion"}
!474 = !{!475}
!475 = distinct !{!475, !476, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3x_: argument 0"}
!476 = distinct !{!476, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3x_"}
!477 = !{i64 8}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3u_: argument 0"}
!480 = distinct !{!480, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0EB3u_"}
!481 = !{!482, !484}
!482 = distinct !{!482, !483, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!483 = distinct !{!483, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!484 = distinct !{!484, !485, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEEECsf8NQSppxkmK_14ide_completion: argument 0"}
!485 = distinct !{!485, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEEECsf8NQSppxkmK_14ide_completion"}
!486 = !{!487, !489}
!487 = distinct !{!487, !488, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!488 = distinct !{!488, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!489 = distinct !{!489, !490, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEEECsf8NQSppxkmK_14ide_completion: argument 0"}
!490 = distinct !{!490, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEEECsf8NQSppxkmK_14ide_completion"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3x_: argument 0"}
!493 = distinct !{!493, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE10merge_downNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3x_"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3u_: argument 0"}
!496 = distinct !{!496, !"_RINvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEE8merge_upNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1a_11sort_by_keyB1c_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3u_"}
!497 = !{!498, !500}
!498 = distinct !{!498, !499, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!499 = distinct !{!499, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!500 = distinct !{!500, !501, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEEECsf8NQSppxkmK_14ide_completion: argument 0"}
!501 = distinct !{!501, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEEECsf8NQSppxkmK_14ide_completion"}
!502 = !{!503, !505}
!503 = distinct !{!503, !504, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!504 = distinct !{!504, !"_RNvXs_NtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5mergeINtB4_10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEENtNtNtBc_3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!505 = distinct !{!505, !506, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEEECsf8NQSppxkmK_14ide_completion: argument 0"}
!506 = distinct !{!506, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalEEECsf8NQSppxkmK_14ide_completion"}
!507 = !{!508}
!508 = distinct !{!508, !509, !"_RNvXs0_Csh04pLiDBs3j_10rustc_hashNtB5_8FxHasherNtNtCshzWfHUSfYae_4core4hash6Hasher9write_u16: argument 0"}
!509 = distinct !{!509, !"_RNvXs0_Csh04pLiDBs3j_10rustc_hashNtB5_8FxHasherNtNtCshzWfHUSfYae_4core4hash6Hasher9write_u16"}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBP_8iterator8Iterator8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2I_3VecjE14extend_trustedINtNtNtBR_8adapters3rev3RevB3_EE0E0ECsf8NQSppxkmK_14ide_completion: argument 0"}
!512 = distinct !{!512, !"_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtBP_8iterator8Iterator8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2I_3VecjE14extend_trustedINtNtNtBR_8adapters3rev3RevB3_EE0E0ECsf8NQSppxkmK_14ide_completion"}
!513 = !{!514, !516, !511}
!514 = distinct !{!514, !515, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtB19_3ops5range5RangejEEE0Csf8NQSppxkmK_14ide_completion: argument 0"}
!515 = distinct !{!515, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtB19_3ops5range5RangejEEE0Csf8NQSppxkmK_14ide_completion"}
!516 = distinct !{!516, !517, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBc_8adapters3rev3RevINtNtNtBe_3ops5range5RangejEEE0E0Csf8NQSppxkmK_14ide_completion: argument 0"}
!517 = distinct !{!517, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBc_8adapters3rev3RevINtNtNtBe_3ops5range5RangejEEE0E0Csf8NQSppxkmK_14ide_completion"}
!518 = !{!516}
!519 = !{!514}
!520 = distinct !{!520, !521, !522}
!521 = !{!"llvm.loop.isvectorized", i32 1}
!522 = !{!"llvm.loop.unroll.runtime.disable"}
!523 = distinct !{!523, !522, !521}
!524 = !{!525}
!525 = distinct !{!525, !526, !"_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion: argument 0"}
!526 = distinct !{!526, !"_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion"}
!527 = !{!528}
!528 = distinct !{!528, !526, !"_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion: argument 1"}
!529 = !{!530, !525}
!530 = distinct !{!530, !531, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion: argument 0:pre.rot"}
!531 = distinct !{!531, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion"}
!532 = !{!528, !533}
!533 = distinct !{!533, !526, !"_RINvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB2m_15IntersperseWithINtNtNtB10_8adapters3rev3RevB3_EINtB2m_24IntersperseElementSimpleBR_EENtNtBY_8iterator8Iterator4folduNCINvNvB4v_8for_each4callBR_NCNvXsg_NtBa_6stringB2Z_NtB5A_13SpecExtendStr16spec_extend_into0E0Es_0ECsf8NQSppxkmK_14ide_completion: argument 2"}
!534 = !{!525, !533}
!535 = !{!536, !525}
!536 = distinct !{!536, !531, !"_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCsf8NQSppxkmK_14ide_completion: argument 0"}
!537 = !{!536}
!538 = !{!536, !525, !528}
!539 = !{!525, !528}
!540 = !{!541}
!541 = distinct !{!541, !542, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsf8NQSppxkmK_14ide_completion: argument 0"}
!542 = distinct !{!542, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsf8NQSppxkmK_14ide_completion"}
!543 = !{!544, !546, !548, !525, !528}
!544 = distinct !{!544, !545, !"_RNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtB9_3vec9into_iter8IntoIterReEEINtBD_24IntersperseElementSimpleB2S_EENtB7_13SpecExtendStr16spec_extend_into0Csf8NQSppxkmK_14ide_completion: argument 0"}
!545 = distinct !{!545, !"_RNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtB9_3vec9into_iter8IntoIterReEEINtBD_24IntersperseElementSimpleB2S_EENtB7_13SpecExtendStr16spec_extend_into0Csf8NQSppxkmK_14ide_completion"}
!546 = distinct !{!546, !547, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBc_8adapters3rev3RevINtNtNtB1r_3vec9into_iter8IntoIterB1f_EEINtB1V_24IntersperseElementSimpleB1f_EENtB1p_13SpecExtendStr16spec_extend_into0E0Csf8NQSppxkmK_14ide_completion: argument 0"}
!547 = distinct !{!547, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBc_8adapters3rev3RevINtNtNtB1r_3vec9into_iter8IntoIterB1f_EEINtB1V_24IntersperseElementSimpleB1f_EENtB1p_13SpecExtendStr16spec_extend_into0E0Csf8NQSppxkmK_14ide_completion"}
!548 = distinct !{!548, !549, !"_RNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB8_15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEEINtB8_24IntersperseElementSimpleB2K_EENtNtNtB1f_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB2K_NCNvXsg_NtB23_6stringBL_NtB4G_13SpecExtendStr16spec_extend_into0E0Es_0Csf8NQSppxkmK_14ide_completion: argument 0"}
!549 = distinct !{!549, !"_RNCINvXs0_NtCscFGNKo4Sl5v_9itertools11intersperseINtB8_15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterReEEINtB8_24IntersperseElementSimpleB2K_EENtNtNtB1f_6traits8iterator8Iterator4folduNCINvNvB3q_8for_each4callB2K_NCNvXsg_NtB23_6stringBL_NtB4G_13SpecExtendStr16spec_extend_into0E0Es_0Csf8NQSppxkmK_14ide_completion"}
!550 = !{!548, !525, !528}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsf8NQSppxkmK_14ide_completion: argument 0"}
!553 = distinct !{!553, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsf8NQSppxkmK_14ide_completion"}
!554 = !{!555, !557, !548, !525, !528}
!555 = distinct !{!555, !556, !"_RNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtB9_3vec9into_iter8IntoIterReEEINtBD_24IntersperseElementSimpleB2S_EENtB7_13SpecExtendStr16spec_extend_into0Csf8NQSppxkmK_14ide_completion: argument 0"}
!556 = distinct !{!556, !"_RNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtNtB9_3vec9into_iter8IntoIterReEEINtBD_24IntersperseElementSimpleB2S_EENtB7_13SpecExtendStr16spec_extend_into0Csf8NQSppxkmK_14ide_completion"}
!557 = distinct !{!557, !558, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBc_8adapters3rev3RevINtNtNtB1r_3vec9into_iter8IntoIterB1f_EEINtB1V_24IntersperseElementSimpleB1f_EENtB1p_13SpecExtendStr16spec_extend_into0E0Csf8NQSppxkmK_14ide_completion: argument 0"}
!558 = distinct !{!558, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callReNCNvXsg_NtCsbSS6DM8SDEO_5alloc6stringINtNtCscFGNKo4Sl5v_9itertools11intersperse15IntersperseWithINtNtNtBc_8adapters3rev3RevINtNtNtB1r_3vec9into_iter8IntoIterB1f_EEINtB1V_24IntersperseElementSimpleB1f_EENtB1p_13SpecExtendStr16spec_extend_into0E0Csf8NQSppxkmK_14ide_completion"}
!559 = !{!560, !562}
!560 = distinct !{!560, !561, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E10triple_mutCsf8NQSppxkmK_14ide_completion: argument 1"}
!561 = distinct !{!561, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E10triple_mutCsf8NQSppxkmK_14ide_completion"}
!562 = distinct !{!562, !563, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion: argument 0"}
!563 = distinct !{!563, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E11try_reserveCsf8NQSppxkmK_14ide_completion"}
!564 = !{!565}
!565 = distinct !{!565, !561, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E10triple_mutCsf8NQSppxkmK_14ide_completion: argument 0"}
!566 = !{!562}
!567 = !{!568}
!568 = distinct !{!568, !569, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E10triple_mutCsf8NQSppxkmK_14ide_completion: argument 1"}
!569 = distinct !{!569, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E10triple_mutCsf8NQSppxkmK_14ide_completion"}
!570 = !{!571}
!571 = distinct !{!571, !569, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E10triple_mutCsf8NQSppxkmK_14ide_completion: argument 0"}
!572 = !{!573}
!573 = distinct !{!573, !574, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushCsf8NQSppxkmK_14ide_completion: argument 0"}
!574 = distinct !{!574, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E4pushCsf8NQSppxkmK_14ide_completion"}
!575 = !{!576, !573}
!576 = distinct !{!576, !577, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E10triple_mutCsf8NQSppxkmK_14ide_completion: argument 1"}
!577 = distinct !{!577, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E10triple_mutCsf8NQSppxkmK_14ide_completion"}
!578 = !{!579}
!579 = distinct !{!579, !577, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E10triple_mutCsf8NQSppxkmK_14ide_completion: argument 0"}
!580 = !{!581, !583}
!581 = distinct !{!581, !582, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB20_INtB1t_8SmallVecB1Z_EE0ENtB2_12IntoIterator9into_iterB24_: argument 0"}
!582 = distinct !{!582, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB20_INtB1t_8SmallVecB1Z_EE0ENtB2_12IntoIterator9into_iterB24_"}
!583 = distinct !{!583, !582, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB20_INtB1t_8SmallVecB1Z_EE0ENtB2_12IntoIterator9into_iterB24_: argument 1"}
!584 = !{!585}
!585 = distinct !{!585, !586, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 1"}
!586 = distinct !{!586, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_"}
!587 = !{!588}
!588 = distinct !{!588, !586, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 0"}
!589 = !{!590}
!590 = distinct !{!590, !591, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1K_INtB1d_8SmallVecB1J_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_: argument 1"}
!591 = distinct !{!591, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1K_INtB1d_8SmallVecB1J_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_: argument 1"}
!594 = distinct !{!594, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_"}
!595 = !{!596}
!596 = distinct !{!596, !597, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_: argument 1"}
!597 = distinct !{!597, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_"}
!598 = !{!599, !593, !600, !601, !590}
!599 = distinct !{!599, !594, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_: argument 0"}
!600 = distinct !{!600, !594, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_: argument 2"}
!601 = distinct !{!601, !591, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1K_INtB1d_8SmallVecB1J_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_: argument 0"}
!602 = !{!603, !596, !604, !599, !593, !600, !601, !590}
!603 = distinct !{!603, !597, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_: argument 0"}
!604 = distinct !{!604, !597, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_: argument 2"}
!605 = !{!606, !596, !593, !590}
!606 = distinct !{!606, !607, !"_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_: argument 1"}
!607 = distinct !{!607, !"_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_"}
!608 = !{!609, !603, !604, !599, !600, !601}
!609 = distinct !{!609, !607, !"_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_: argument 0"}
!610 = !{!611, !606, !596, !593, !590}
!611 = distinct !{!611, !612, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E6tripleBM_: argument 1"}
!612 = distinct !{!612, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E6tripleBM_"}
!613 = !{!614, !609, !603, !604, !599, !600, !601}
!614 = distinct !{!614, !612, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E6tripleBM_: argument 0"}
!615 = !{!603, !599, !601}
!616 = !{!617, !619, !620, !603, !596, !604, !599, !593, !600, !601, !590}
!617 = distinct !{!617, !618, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportB1g_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1g_INtCsjpcu9PwIgok_8smallvec8SmallVecAB1g_j1_EE0E0B1k_: argument 0"}
!618 = distinct !{!618, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportB1g_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1g_INtCsjpcu9PwIgok_8smallvec8SmallVecAB1g_j1_EE0E0B1k_"}
!619 = distinct !{!619, !618, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportB1g_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1g_INtCsjpcu9PwIgok_8smallvec8SmallVecAB1g_j1_EE0E0B1k_: argument 1"}
!620 = distinct !{!620, !618, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportB1g_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1g_INtCsjpcu9PwIgok_8smallvec8SmallVecAB1g_j1_EE0E0B1k_: argument 2"}
!621 = !{!617, !619, !603, !596, !604, !599, !593, !600, !601, !590}
!622 = !{!623}
!623 = distinct !{!623, !624, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1K_INtB1d_8SmallVecB1J_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_: argument 1:pre.rot"}
!624 = distinct !{!624, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1K_INtB1d_8SmallVecB1J_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_"}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_: argument 1:pre.rot"}
!627 = distinct !{!627, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_"}
!628 = !{!629}
!629 = distinct !{!629, !630, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_: argument 1:pre.rot"}
!630 = distinct !{!630, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_"}
!631 = !{!632, !626, !633, !634, !623}
!632 = distinct !{!632, !627, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_: argument 0"}
!633 = distinct !{!633, !627, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_: argument 2"}
!634 = distinct !{!634, !624, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1K_INtB1d_8SmallVecB1J_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_: argument 0"}
!635 = !{!636, !629, !637, !632, !626, !633, !634, !623}
!636 = distinct !{!636, !630, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_: argument 0"}
!637 = distinct !{!637, !630, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_: argument 2"}
!638 = !{!639, !629, !626, !623}
!639 = distinct !{!639, !640, !"_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_: argument 1"}
!640 = distinct !{!640, !"_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_"}
!641 = !{!642, !636, !637, !632, !633, !634}
!642 = distinct !{!642, !640, !"_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_: argument 0"}
!643 = !{!644}
!644 = distinct !{!644, !624, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1K_INtB1d_8SmallVecB1J_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_: argument 1"}
!645 = !{!646}
!646 = distinct !{!646, !627, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_: argument 1"}
!647 = !{!648}
!648 = distinct !{!648, !630, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_: argument 1"}
!649 = !{!650, !639, !648, !646, !644}
!650 = distinct !{!650, !651, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E6tripleBM_: argument 1"}
!651 = distinct !{!651, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E6tripleBM_"}
!652 = !{!653, !642, !636, !637, !632, !633, !634}
!653 = distinct !{!653, !651, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E6tripleBM_: argument 0"}
!654 = !{!639, !648, !646, !644}
!655 = !{!636, !632, !634}
!656 = !{!657, !659, !660, !636, !648, !637, !632, !646, !633, !634, !644}
!657 = distinct !{!657, !658, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportB1g_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1g_INtCsjpcu9PwIgok_8smallvec8SmallVecAB1g_j1_EE0E0B1k_: argument 0"}
!658 = distinct !{!658, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportB1g_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1g_INtCsjpcu9PwIgok_8smallvec8SmallVecAB1g_j1_EE0E0B1k_"}
!659 = distinct !{!659, !658, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportB1g_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1g_INtCsjpcu9PwIgok_8smallvec8SmallVecAB1g_j1_EE0E0B1k_: argument 1"}
!660 = distinct !{!660, !658, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportB1g_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1g_INtCsjpcu9PwIgok_8smallvec8SmallVecAB1g_j1_EE0E0B1k_: argument 2"}
!661 = !{!657, !659, !636, !648, !637, !632, !646, !633, !634, !644}
!662 = !{!632, !646, !633, !634, !644}
!663 = !{!664}
!664 = distinct !{!664, !665, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E4pushBM_: argument 0"}
!665 = distinct !{!665, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E4pushBM_"}
!666 = !{!667, !664}
!667 = distinct !{!667, !668, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 1"}
!668 = distinct !{!668, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_"}
!669 = !{!670, !671}
!670 = distinct !{!670, !668, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 0"}
!671 = distinct !{!671, !665, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E4pushBM_: argument 1"}
!672 = !{!671}
!673 = !{!674}
!674 = distinct !{!674, !624, !"_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionB1K_INtB1d_8SmallVecB1J_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_: argument 1:h.rot"}
!675 = !{!676}
!676 = distinct !{!676, !627, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_mapBD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0EBH_: argument 1:h.rot"}
!677 = !{!678}
!678 = distinct !{!678, !630, !"_RINvYINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1G_8find_map5checkBD_BD_QNCINvNtCs6oosyzwIepl_6ide_db10ra_fixture16upmap_collectionBD_INtB6_8SmallVecBC_EE0E0INtNtNtB1O_3ops12control_flow11ControlFlowBD_EEBH_: argument 1:h.rot"}
!679 = !{!632, !676, !633, !634, !674}
!680 = !{!636, !678, !637, !632, !676, !633, !634, !674}
!681 = !{!639, !678, !676, !674}
!682 = !{!683, !685}
!683 = distinct !{!683, !684, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENCNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB31_7Builder5builds2_0ENtB2_12IntoIterator9into_iterB33_: argument 0"}
!684 = distinct !{!684, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENCNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB31_7Builder5builds2_0ENtB2_12IntoIterator9into_iterB33_"}
!685 = distinct !{!685, !684, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENCNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB31_7Builder5builds2_0ENtB2_12IntoIterator9into_iterB33_: argument 1"}
!686 = !{!687, !689}
!687 = distinct !{!687, !688, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 1"}
!688 = distinct !{!688, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_"}
!689 = distinct !{!689, !690, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E11try_reserveBM_: argument 0"}
!690 = distinct !{!690, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E11try_reserveBM_"}
!691 = !{!692}
!692 = distinct !{!692, !688, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 0"}
!693 = !{!689}
!694 = !{!695}
!695 = distinct !{!695, !696, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 1"}
!696 = distinct !{!696, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_"}
!697 = !{!698}
!698 = distinct !{!698, !696, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 0"}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E4pushBM_: argument 0"}
!701 = distinct !{!701, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E4pushBM_"}
!702 = !{!703, !700}
!703 = distinct !{!703, !704, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 1"}
!704 = distinct !{!704, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_"}
!705 = !{!706, !707}
!706 = distinct !{!706, !704, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E10triple_mutBM_: argument 0"}
!707 = distinct !{!707, !701, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsf8NQSppxkmK_14ide_completion4item20CompletionItemImportj1_E4pushBM_: argument 1"}
!708 = !{!707}
!709 = !{!710}
!710 = distinct !{!710, !711, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENCNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB2Y_7Builder5builds2_0EEB30_: argument 0"}
!711 = distinct !{!711, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENCNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB2Y_7Builder5builds2_0EEB30_"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_EECsf8NQSppxkmK_14ide_completion: argument 0"}
!714 = distinct !{!714, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_EECsf8NQSppxkmK_14ide_completion"}
!715 = !{!716}
!716 = distinct !{!716, !717, !"_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!717 = distinct !{!717, !"_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!718 = !{!716, !713, !710}
!719 = !{!713, !710}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENCNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB2Y_7Builder5builds2_0EEB30_: argument 0"}
!722 = distinct !{!722, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENCNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB2Y_7Builder5builds2_0EEB30_"}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_EECsf8NQSppxkmK_14ide_completion: argument 0"}
!725 = distinct !{!725, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_EECsf8NQSppxkmK_14ide_completion"}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion: argument 0"}
!728 = distinct !{!728, !"_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterANtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion"}
!729 = !{!727, !724, !721}
!730 = !{!724, !721}
!731 = !{!732, !734}
!732 = distinct !{!732, !733, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtB2_12IntoIterator9into_iterCsf8NQSppxkmK_14ide_completion: argument 0"}
!733 = distinct !{!733, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtB2_12IntoIterator9into_iterCsf8NQSppxkmK_14ide_completion"}
!734 = distinct !{!734, !733, !"_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtB2_12IntoIterator9into_iterCsf8NQSppxkmK_14ide_completion: argument 1"}
!735 = !{!736, !738, !739, !741, !742, !744, !745, !747, !748, !750, !751, !753}
!736 = distinct !{!736, !737, !"_RINvYNtNtCscAsMj0W7j8b_3std4path10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBK_8iterator8Iterator12try_for_each4callNtB5_9ComponentINtNtNtBO_3ops12control_flow11ControlFlowIB38_uNtNtBO_3cmp8OrderingEENCINvNvB2c_12iter_compare7compareINtNtNtBM_8adapters3rev3RevB3_EB2S_uNCINvNvB2a_5eq_by7compareB2S_B2S_NCINvYB4L_B2a_2eqB4L_E0E0E0E0B37_ECsf8NQSppxkmK_14ide_completion: argument 0"}
!737 = distinct !{!737, !"_RINvYNtNtCscAsMj0W7j8b_3std4path10ComponentsNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBK_8iterator8Iterator12try_for_each4callNtB5_9ComponentINtNtNtBO_3ops12control_flow11ControlFlowIB38_uNtNtBO_3cmp8OrderingEENCINvNvB2c_12iter_compare7compareINtNtNtBM_8adapters3rev3RevB3_EB2S_uNCINvNvB2a_5eq_by7compareB2S_B2S_NCINvYB4L_B2a_2eqB4L_E0E0E0E0B37_ECsf8NQSppxkmK_14ide_completion"}
end_hunk_3
