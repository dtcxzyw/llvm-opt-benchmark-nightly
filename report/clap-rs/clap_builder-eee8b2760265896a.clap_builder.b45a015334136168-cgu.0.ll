Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0
@292 = private unnamed_addr constant [15 x i8] c"\02 '\C0\C0\C9 \00\80`\00\00\01'\00", align 1
@293 = private unnamed_addr constant [1 x i8] c":", align 1
@294 = private unnamed_addr constant [13 x i8] c"\01\0A\C0\C0\C0\C9 \00\80`\01\00\00", align 1
@295 = private unnamed_addr constant [45 x i8] c" one or more of the other specified arguments", align 1
@296 = private unnamed_addr constant [51 x i8] c"the following required arguments were not provided:", align 1
@297 = private unnamed_addr constant [61 x i8] c"\01'\C0\C0\C9 \00\80`\00\000' requires a subcommand but one was not provided\00", align 1
@298 = private unnamed_addr constant [44 x i8] c"\1D\0A\0AFor more information, try '\C0\C0\C9 \00\80`\00\00\03'.\0A\00", align 1
@299 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @70, [16 x i8] c"$\00\00\00\00\00\00\00\FB\01\00\00/\00\00\00" }>, align 8
@300 = private unnamed_addr constant [80 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/core/src/slice/index.rs\00", align 1
@301 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @300, [16 x i8] c"O\00\00\00\00\00\00\00\F1\03\00\003\00\00\00" }>, align 8
@_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT = local_unnamed_addr constant <{ [8 x i8], [16 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00", [16 x i8] undef }>, align 8
@_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command36get_external_subcommand_value_parser7DEFAULT = local_unnamed_addr constant <{ [8 x i8], [16 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00", [16 x i8] undef }>, align 8
@302 = private unnamed_addr constant [251 x i8] c"InvalidValueUnknownArgumentInvalidSubcommandNoEqualsValueValidationTooManyValuesTooFewValuesWrongNumberOfValuesArgumentConflictMissingRequiredArgumentMissingSubcommandInvalidUtf8DisplayHelpDisplayHelpOnMissingArgumentOrSubcommandDisplayVersionIoFormat", align 1
@_RNvNvXs0_NtNtCsfu0rQaTkGUu_12clap_builder5error4kindNtB7_9ErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @302, [8 x i8] c"\FB\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs0_NtNtCsfu0rQaTkGUu_12clap_builder5error4kindNtB7_9ErrorKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [144 x i8] c"\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00,\00\00\00\00\00\00\004\00\00\00\00\00\00\00C\00\00\00\00\00\00\00P\00\00\00\00\00\00\00\\\00\00\00\00\00\00\00o\00\00\00\00\00\00\00\7F\00\00\00\00\00\00\00\96\00\00\00\00\00\00\00\A7\00\00\00\00\00\00\00\B2\00\00\00\00\00\00\00\BD\00\00\00\00\00\00\00\E5\00\00\00\00\00\00\00\F3\00\00\00\00\00\00\00\F5\00\00\00\00\00\00\00\FB\00\00\00\00\00\00\00", align 8
@303 = private unnamed_addr constant [205 x i8] c"InvalidSubcommandInvalidArgPriorArgValidSubcommandValidValueInvalidValueActualNumValuesExpectedNumValuesMinValuesSuggestedCommandSuggestedSubcommandSuggestedArgSuggestedValueTrailingArgSuggestedUsageCustom", align 1
@_RNvNvXs4_NtNtCsfu0rQaTkGUu_12clap_builder5error7contextNtB7_11ContextKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @303, [8 x i8] c"\CD\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs4_NtNtCsfu0rQaTkGUu_12clap_builder5error7contextNtB7_11ContextKindNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [144 x i8] c"\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00#\00\00\00\00\00\00\002\00\00\00\00\00\00\00<\00\00\00\00\00\00\00H\00\00\00\00\00\00\00W\00\00\00\00\00\00\00h\00\00\00\00\00\00\00q\00\00\00\00\00\00\00\81\00\00\00\00\00\00\00\94\00\00\00\00\00\00\00\A0\00\00\00\00\00\00\00\AE\00\00\00\00\00\00\00\B9\00\00\00\00\00\00\00\C2\00\00\00\00\00\00\00\C7\00\00\00\00\00\00\00\CD\00\00\00\00\00\00\00", align 8
@304 = private unnamed_addr constant [503 x i8] c"IgnoreErrorsAllowHyphenValuesAllowNegativeNumbersAllArgsOverrideSelfAllowMissingPositionalTrailingVarArgDontDelimitTrailingValuesInferLongArgsInferSubcommandsSubcommandRequiredAllowExternalSubcommandsMulticallSubcommandsNegateReqsArgsNegateSubcommandsSubcommandPrecedenceOverArgFlattenHelpArgRequiredElseHelpNextLineHelpDisableColoredHelpDisableHelpFlagDisableHelpSubcommandDisableVersionFlagPropagateVersionHiddenHidePossibleValuesHelpExpectedNoBinaryNameColorAutoColorAlwaysColorNeverBuiltBinNameBuilt", align 1
@_RNvNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder12app_settingsNtB7_11AppSettingsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @304, [8 x i8] c"\F7\01\00\00\00\00\00\00" }>, align 8
@_RNvNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder12app_settingsNtB7_11AppSettingsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [264 x i8] c"\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\1D\00\00\00\00\00\00\001\00\00\00\00\00\00\00D\00\00\00\00\00\00\00Z\00\00\00\00\00\00\00h\00\00\00\00\00\00\00\81\00\00\00\00\00\00\00\8E\00\00\00\00\00\00\00\9E\00\00\00\00\00\00\00\B0\00\00\00\00\00\00\00\C8\00\00\00\00\00\00\00\D1\00\00\00\00\00\00\00\E6\00\00\00\00\00\00\00\FB\00\00\00\00\00\00\00\16\01\00\00\00\00\00\00!\01\00\00\00\00\00\004\01\00\00\00\00\00\00@\01\00\00\00\00\00\00R\01\00\00\00\00\00\00a\01\00\00\00\00\00\00v\01\00\00\00\00\00\00\88\01\00\00\00\00\00\00\98\01\00\00\00\00\00\00\9E\01\00\00\00\00\00\00\B0\01\00\00\00\00\00\00\BC\01\00\00\00\00\00\00\C8\01\00\00\00\00\00\00\D1\01\00\00\00\00\00\00\DC\01\00\00\00\00\00\00\E6\01\00\00\00\00\00\00\EB\01\00\00\00\00\00\00\F7\01\00\00\00\00\00\00", align 8
@305 = private unnamed_addr constant [182 x i8] c"RequiredGlobalHiddenNextLineHelpHidePossibleValuesAllowHyphenValuesAllowNegativeNumbersRequireEqualsLastTrailingVarArgHideDefaultValueIgnoreCaseHiddenShortHelpHiddenLongHelpExclusive", align 1
@_RNvNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder12arg_settingsNtB7_11ArgSettingsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @305, [8 x i8] c"\B6\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs9_NtNtCsfu0rQaTkGUu_12clap_builder7builder12arg_settingsNtB7_11ArgSettingsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [128 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00 \00\00\00\00\00\00\002\00\00\00\00\00\00\00C\00\00\00\00\00\00\00W\00\00\00\00\00\00\00d\00\00\00\00\00\00\00h\00\00\00\00\00\00\00v\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\90\00\00\00\00\00\00\00\9F\00\00\00\00\00\00\00\AD\00\00\00\00\00\00\00\B6\00\00\00\00\00\00\00", align 8
@_RNvNvXsF_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB7_7IndicesNtNtCsj6eKBz9Db1c_4core7default7Default7default5EMPTY = local_unnamed_addr constant <{}> zeroinitializer, align 8
@_RNvNvXs_NtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strRNtB6_9StyledStrNtNtCsj6eKBz9Db1c_4core7default7Default7default7DEFAULT = constant [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 8
@306 = private unnamed_addr constant [123 x i8] c"UnknownOtherAnyPathFilePathDirPathExecutablePathCommandNameCommandStringCommandWithArgumentsUsernameHostnameUrlEmailAddress", align 1
@_RNvNvXs_NtNtCsfu0rQaTkGUu_12clap_builder7builder10value_hintNtB6_9ValueHintNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @306, [8 x i8] c"{\00\00\00\00\00\00\00" }>, align 8
@_RNvNvXs_NtNtCsfu0rQaTkGUu_12clap_builder7builder10value_hintNtB6_9ValueHintNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [112 x i8] c"\00\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\22\00\00\00\00\00\00\000\00\00\00\00\00\00\00;\00\00\00\00\00\00\00H\00\00\00\00\00\00\00\\\00\00\00\00\00\00\00d\00\00\00\00\00\00\00l\00\00\00\00\00\00\00o\00\00\00\00\00\00\00{\00\00\00\00\00\00\00", align 8
@_RNvNvXsc_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesINtB7_9ValuesRefpENtNtCsj6eKBz9Db1c_4core7default7Default7default5EMPTY = local_unnamed_addr constant <{}> zeroinitializer, align 8
@_RNvNvXsg_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB7_9RawValuesNtNtCsj6eKBz9Db1c_4core7default7Default7default5EMPTY = local_unnamed_addr constant <{}> zeroinitializer, align 8
@_RNvNvXsr_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesINtB7_14OccurrencesRefpENtNtCsj6eKBz9Db1c_4core7default7Default7default5EMPTY = local_unnamed_addr constant <{}> zeroinitializer, align 8
@_RNvNvXsy_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB7_14RawOccurrencesNtNtCsj6eKBz9Db1c_4core7default7Default7default5EMPTY = local_unnamed_addr constant <{}> zeroinitializer, align 8
@307 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1713506727420043014 to ptr), ptr inttoptr (i64 -4036746836921437664 to ptr) }>, align 8
@308 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -4470755294742414325 to ptr), ptr inttoptr (i64 5193890933113496104 to ptr) }>, align 8
@309 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7211182320938314978 to ptr), ptr inttoptr (i64 -4052590997318848513 to ptr) }>, align 8
@310 = private unnamed_addr constant [13 x i8] c"unknown cause", align 1
@311 = private unnamed_addr constant [25 x i8] c"\14unknown ValueHint: `\C0\01`\00", align 1
@312 = private unnamed_addr constant [4 x i8] c"auto", align 1
@313 = private unnamed_addr constant [6 x i8] c"always", align 1
@314 = private unnamed_addr constant [5 x i8] c"never", align 1
@315 = private unnamed_addr constant [20 x i8] c"\11invalid variant: \C0\00", align 1
@316 = private unnamed_addr constant [51 x i8] c"\16Could not downcast to \C0\16, need to downcast to \C0\01\0A\00", align 1
@317 = private unnamed_addr constant [103 x i8] c"Unknown argument or group id.  Make sure you are using the argument id and not the short or long flags\0A", align 1
@318 = private unnamed_addr constant [9 x i8] c"IsPresent", align 1
@319 = private unnamed_addr constant [6 x i8] c"Equals", align 1
@320 = private unnamed_addr constant [3 x i8] c"Set", align 1
@321 = private unnamed_addr constant [6 x i8] c"Append", align 1
@322 = private unnamed_addr constant [7 x i8] c"SetTrue", align 1
@323 = private unnamed_addr constant [8 x i8] c"SetFalse", align 1
@324 = private unnamed_addr constant [5 x i8] c"Count", align 1
@325 = private unnamed_addr constant [4 x i8] c"Help", align 1
@326 = private unnamed_addr constant [9 x i8] c"HelpShort", align 1
@327 = private unnamed_addr constant [8 x i8] c"HelpLong", align 1
@328 = private unnamed_addr constant [7 x i8] c"Version", align 1
@329 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtB6_5Debug3fmtBC_ }>, align 8
@330 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEENtB6_5Debug3fmtB1v_ }>, align 8
@331 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRbNtB6_5Debug3fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@332 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRcNtB6_5Debug3fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@333 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockNtNtB6_5write5Write5writeCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockNtNtB6_5write5Write14write_vectoredCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockNtNtB6_5write5Write17is_write_vectoredCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockNtNtB6_5write5Write5flushCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockNtNtB6_5write5Write9write_allCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockNtNtB6_5write5Write18write_all_vectoredCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StderrLockNtNtB6_5write5Write9write_fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@334 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockNtNtB6_5write5Write5writeCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockNtNtB6_5write5Write14write_vectoredCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockNtNtB6_5write5Write17is_write_vectoredCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockNtNtB6_5write5Write5flushCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockNtNtB6_5write5Write9write_allCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockNtNtB6_5write5Write18write_all_vectoredCsfu0rQaTkGUu_12clap_builder, ptr @_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQNtNtNtCsaKJjC64KgbL_3std2io5stdio10StdoutLockNtNtB6_5write5Write9write_fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@335 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"!\00\00\00\00\00\00\00\C8\00\00\00,\00\00\00" }>, align 8
@336 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20RangedI64ValueParserNtB5_14AnyValueParser9parse_refB9_, ptr @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20RangedI64ValueParserNtB5_14AnyValueParser10parse_ref_B9_, ptr @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20RangedI64ValueParserNtB5_14AnyValueParser7type_idB9_, ptr @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20RangedI64ValueParserNtB5_14AnyValueParser15possible_valuesB9_, ptr @_RNvXsc_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB5_20RangedI64ValueParserNtB5_14AnyValueParser9clone_anyB9_ }>, align 8
@337 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBB_9any_value10AnyValueIdNtB1t_8AnyValueENtB6_5Debug3fmtBD_ }>, align 8
@338 = private unnamed_addr constant [10 x i8] c"Extensions", align 1
@339 = private unnamed_addr constant [10 x i8] c"extensions", align 1
@340 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"!\00\00\00\00\00\00\00\EC\00\00\00,\00\00\00" }>, align 8
@341 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRmNtB6_5Debug3fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@342 = private unnamed_addr constant [8 x i8] c"ArgFlags", align 1
@343 = private unnamed_addr constant [126 x i8] c"internal error: entered unreachable code: there will never be an instance of Infallible and thus &mut self can never be called", align 1
@344 = private unnamed_addr constant [27 x i8] c"clap_builder/src/derive.rs\00", align 1
@345 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @344, [16 x i8] c"\1A\00\00\00\00\00\00\00\B3\01\00\00\09\00\00\00" }>, align 8
@346 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@347 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@348 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBL_ }>, align 8
@349 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtB6_5Debug3fmtB19_ }>, align 8
@350 = private unnamed_addr constant [7 x i8] c"FlatMap", align 1
@351 = private unnamed_addr constant [4 x i8] c"keys", align 1
@352 = private unnamed_addr constant [6 x i8] c"values", align 1
@353 = private unnamed_addr constant [3 x i8] c"..=", align 1
@354 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_5Debug3fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@355 = private unnamed_addr constant [9 x i8] c"StyledStr", align 1
@356 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@357 = private unnamed_addr constant [76 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/alloc/src/string.rs\00", align 1
@358 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @357, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@359 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @48, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @55, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@360 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterReEEINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB1Q_13PossibleValue3newB1I_EENtNtNtB9_6traits8iterator8Iterator4nextB1U_, ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterReEEINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB1Q_13PossibleValue3newB1I_EENtNtNtB9_6traits8iterator8Iterator9size_hintB1U_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterReEEINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB1K_13PossibleValue3newB1C_EENtNtNtB9_6traits8iterator8Iterator10advance_byB1O_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterReEEINvMNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB1K_13PossibleValue3newB1C_EENtNtNtB9_6traits8iterator8Iterator3nthB1O_ }>, align 8
@361 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterReEB1C_EENCNvMsE_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB2j_17FalseyValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_, ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterReEB1C_EENCNvMsE_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB2j_17FalseyValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2n_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB7_6copied6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterReEB1w_EENCNvMsE_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB2d_17FalseyValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB2h_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB7_6copied6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterReEB1w_EENCNvMsE_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB2d_17FalseyValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB2h_ }>, align 8
@362 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterReEB1C_EENCNvMsH_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB2j_18BoolishValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator4nextB2n_, ptr @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterReEB1C_EENCNvMsH_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB2j_18BoolishValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2n_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB7_6copied6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterReEB1w_EENCNvMsH_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB2d_18BoolishValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator10advance_byB2h_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB7_6copied6CopiedINtNtB7_5chain5ChainINtNtNtBb_5slice4iter4IterReEB1w_EENCNvMsH_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB2d_18BoolishValueParser15possible_values0ENtNtNtB9_6traits8iterator8Iterator3nthB2h_ }>, align 8
@363 = private unnamed_addr constant [5 x i8] c"Error", align 1
@364 = private unnamed_addr constant [4 x i8] c"None", align 1
@365 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtB8_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtB6_5Debug3fmtBY_ }>, align 8
@366 = private unnamed_addr constant [4 x i8] c"Some", align 1
@367 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtB6_5Debug3fmtB19_ }>, align 8
@368 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrNtB6_5Debug3fmtBC_ }>, align 8
@369 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserNtB6_5Debug3fmtBC_ }>, align 8
@370 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder5range10ValueRangeNtB6_5Debug3fmtBC_ }>, align 8
@371 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6action9ArgActionNtB6_5Debug3fmtBC_ }>, align 8
@372 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRjNtB6_5Debug3fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@373 = private unnamed_addr constant [8 x i8] c"AnyValue", align 1
@374 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder4util9any_valueNtB5_10AnyValueIdNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@375 = private unnamed_addr constant [5 x i8] c"inner", align 1
@376 = private unnamed_addr constant [8 x i8] c"argument", align 1
@377 = private unnamed_addr constant [5 x i8] c"value", align 1
@378 = private unnamed_addr constant [19 x i8] c"\01\0A\C0\C0\04tip:\C9 \00\80`\01\00\01 \00", align 1
@379 = private unnamed_addr constant [17 x i8] c"ValueParser::bool", align 1
@380 = private unnamed_addr constant [19 x i8] c"ValueParser::string", align 1
@381 = private unnamed_addr constant [22 x i8] c"ValueParser::os_string", align 1
@382 = private unnamed_addr constant [21 x i8] c"ValueParser::path_buf", align 1
@383 = private unnamed_addr constant [24 x i8] c"\13ValueParser::other(\C0\01)\00", align 1
@384 = private unnamed_addr constant [3 x i8] c"Arg", align 1
@385 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@386 = private unnamed_addr constant [2 x i8] c"id", align 1
@387 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8
@388 = private unnamed_addr constant [9 x i8] c"long_help", align 1
@389 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6action9ArgActionENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8
@390 = private unnamed_addr constant [6 x i8] c"action", align 1
@391 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEEB13_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8
@392 = private unnamed_addr constant [12 x i8] c"value_parser", align 1
@393 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBL_ }>, align 8
@394 = private unnamed_addr constant [9 x i8] c"conflicts", align 1
@395 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder12arg_settingsNtB5_8ArgFlagsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@396 = private unnamed_addr constant [8 x i8] c"settings", align 1
@397 = private unnamed_addr constant [9 x i8] c"overrides", align 1
@398 = private unnamed_addr constant [6 x i8] c"groups", align 1
@399 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEEB1f_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBM_4util2id2IdEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBM_ }>, align 8
@400 = private unnamed_addr constant [8 x i8] c"requires", align 1
@401 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder6os_str5OsStrEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBM_ }>, align 8
@402 = private unnamed_addr constant [5 x i8] c"r_ifs", align 1
@403 = private unnamed_addr constant [8 x i8] c"r_unless", align 1
@404 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptioncENtNtB7_3fmt5Debug3fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@405 = private unnamed_addr constant [5 x i8] c"short", align 1
@406 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8
@407 = private unnamed_addr constant [4 x i8] c"long", align 1
@408 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBM_ }>, align 8
@409 = private unnamed_addr constant [7 x i8] c"aliases", align 1
@410 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECsfu0rQaTkGUu_12clap_builder, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTcbEENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@411 = private unnamed_addr constant [13 x i8] c"short_aliases", align 1
@412 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCsfu0rQaTkGUu_12clap_builder }>, align 8
@413 = private unnamed_addr constant [8 x i8] c"disp_ord", align 1
@414 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBL_ }>, align 8
@415 = private unnamed_addr constant [9 x i8] c"val_names", align 1
@416 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder5range10ValueRangeENtNtB7_3fmt5Debug3fmtBQ_ }>, align 8
@417 = private unnamed_addr constant [8 x i8] c"num_vals", align 1
@418 = private unnamed_addr constant [9 x i8] c"val_delim", align 1
@419 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBL_ }>, align 8
@420 = private unnamed_addr constant [12 x i8] c"default_vals", align 1
@421 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionIBC_NtNtB1W_6os_str5OsStrEEEEEB1f_, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtB2e_3fmt5Debug3fmtBM_ }>, align 8
@422 = private unnamed_addr constant [16 x i8] c"default_vals_ifs", align 1
@423 = private unnamed_addr constant [10 x i8] c"terminator", align 1
@424 = private unnamed_addr constant [5 x i8] c"index", align 1
@425 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionIBy_NtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtB7_3fmt5Debug3fmtBU_ }>, align 8
@426 = private unnamed_addr constant [12 x i8] c"help_heading", align 1
@427 = private unnamed_addr constant [20 x i8] c"default_missing_vals", align 1
@428 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3ext10ExtensionsEBH_, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB5_10ExtensionsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@429 = private unnamed_addr constant [3 x i8] c"ext", align 1
@430 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyhNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder }>, align 8
@431 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anybNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder }>, align 8
@432 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder }>, align 8
@433 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECsfu0rQaTkGUu_12clap_builder, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtCsaKJjC64KgbL_3std4path7PathBufNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder }>, align 8
@434 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder }>, align 8
@435 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsj6eKBz9Db1c_4core3anyxNtB2_3Any7type_idCsfu0rQaTkGUu_12clap_builder }>, align 8
@436 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@437 = private unnamed_addr constant [4 x i8] c"kind", align 1
@438 = private unnamed_addr constant [76 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/std/src/io/stdio.rs\00", align 1
@439 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @438, [16 x i8] c"K\00\00\00\00\00\00\00Y\03\00\00\14\00\00\00" }>, align 8
@440 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@441 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@442 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@443 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@444 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@445 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@446 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @37, [16 x i8] c"_\00\00\00\00\00\00\00\A1\00\00\00$\00\00\00" }>, align 8
@447 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB8_6traits8iterator8Iterator4nextB1x_, ptr @_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB9_6traits8iterator8Iterator10advance_byB1s_, ptr @_RNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEENtNtNtB9_6traits8iterator8Iterator3nthB1s_ }>, align 8
@448 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @438, [16 x i8] c"K\00\00\00\00\00\00\00A\04\00\00\14\00\00\00" }>, align 8
@449 = private unnamed_addr constant [15 x i8] c"\C0\0B is not in \C0\00", align 1
@450 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @39, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8
@451 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@452 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1757779475519478851 to ptr), ptr inttoptr (i64 4337076244874487612 to ptr) }>, align 8
@453 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 3572905624829937844 to ptr), ptr inttoptr (i64 3013766732767653402 to ptr) }>, align 8
@454 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1599374893429008851 to ptr), ptr inttoptr (i64 8746915308608185762 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsfu0rQaTkGUu_12clap_builder = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsfu0rQaTkGUu_12clap_builder.1239 = private unnamed_addr constant [6 x ptr] [ptr @440, ptr @441, ptr @442, ptr @443, ptr @444, ptr @445], align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6action9ArgActionNtB6_5Debug3fmtBC_ = private unnamed_addr constant [9 x i8] c"\03\06\07\08\05\04\09\08\07", align 8
@switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6action9ArgActionNtB6_5Debug3fmtBC_.1240 = private unnamed_addr constant [9 x ptr] [ptr @320, ptr @321, ptr @322, ptr @323, ptr @324, ptr @325, ptr @326, ptr @327, ptr @328], align 8
@switch.table._RNvXs_NtNtCsfu0rQaTkGUu_12clap_builder4util5colorNtB4_11ColorChoiceNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt = private unnamed_addr constant [3 x i8] c"\04\06\05", align 8
@switch.table._RNvXs_NtNtCsfu0rQaTkGUu_12clap_builder4util5colorNtB4_11ColorChoiceNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt.1241 = private unnamed_addr constant [3 x ptr] [ptr @312, ptr @313, ptr @314], align 8

; Function Attrs: noinline nounwind nonlazybind uwtable
define noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj1_EB5_(ptr noalias nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %.sroa.5.16.copyload.i = load i8, ptr %1, align 8, !alias.scope !69
  %.sroa.79.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.79.16.copyload.i = load i8, ptr %.sroa.79.16..sroa_idx.i, align 8, !alias.scope !69 ; 2 uses
  %.sroa.810.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.not.i = icmp eq i8 %.sroa.79.16.copyload.i, -1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %.not.i, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE16extend_uncheckedATB11_B1B_Ej1_EB7_.exit, label %_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterTNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindNtBV_12ContextValueEKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBZ_.exit.i

_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterTNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindNtBV_12ContextValueEKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBZ_.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.b = load i64, ptr %2, align 8, !alias.scope !71, !noundef !10 ; 3 uses
  %i.c = load i64, ptr %i.a, align 8, !range !11, !alias.scope !71, !noundef !10
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i

bb.b:                                             ; preds = %_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterTNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindNtBV_12ContextValueEKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBZ_.exit.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #42, !noalias !69
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtCsj6eKBz9Db1c_4core5array4iterINtB5_8IntoIterTNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindNtBV_12ContextValueEKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBZ_.exit.i
  %i.e = load ptr, ptr %3, align 8, !alias.scope !71, !nonnull !10, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i8 %.sroa.5.16.copyload.i, ptr %i.f, align 1, !noalias !72
  %i.g = add i64 %i.b, 1
  store i64 %i.g, ptr %2, align 8, !alias.scope !71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.h = load i64, ptr %5, align 8, !alias.scope !74, !noundef !10 ; 3 uses
  %i.i = load i64, ptr %4, align 8, !range !11, !alias.scope !74, !noundef !10
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i

bb.c:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %4) #42, !noalias !75
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i: ; preds = %bb.c, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i
  %i.k = load ptr, ptr %6, align 8, !alias.scope !74, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.h ; 2 uses
  store i8 %.sroa.79.16.copyload.i, ptr %i.l, align 8, !noalias !76
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(31) %.sroa.810.16..sroa_idx.i, i64 31, i1 false), !noalias !68
  %i.m = add i64 %i.h, 1
  store i64 %i.m, ptr %5, align 8, !alias.scope !74
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE16extend_uncheckedATB11_B1B_Ej1_EB7_.exit

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE16extend_uncheckedATB11_B1B_Ej1_EB7_.exit: ; preds = %bb.a, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i
  ret ptr %0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !100
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %.sroa.01.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !103, !noalias !100
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.53.0.copyload.i = load i8, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !103, !noalias !100 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.not.not.i = icmp eq i8 %.sroa.53.0.copyload.i, -1
  br i1 %.not.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindNtB18_12ContextValueEKj2_EEB1c_.exit.loopexit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.i = load i64, ptr %i.c, align 8, !alias.scope !105, !noundef !10 ; 3 uses
  %i.j = load i64, ptr %i.b, align 8, !range !11, !alias.scope !105, !noundef !10
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #42, !noalias !106
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i: ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !105, !nonnull !10, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 %.sroa.01.0.copyload.i, ptr %i.m, align 1, !noalias !107
  %i.n = add i64 %i.i, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.o = load i64, ptr %i.f, align 8, !alias.scope !109, !noundef !10 ; 3 uses
  %i.p = load i64, ptr %i.e, align 8, !range !11, !alias.scope !109, !noundef !10
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i

bb.d:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #42, !noalias !110
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i: ; preds = %bb.d, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i
  %i.r = load ptr, ptr %i.g, align 8, !alias.scope !109, !nonnull !10, !noundef !10
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.o ; 2 uses
  store i8 %.sroa.53.0.copyload.i, ptr %i.s, align 8, !noalias !111
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(31) %i.h, i64 31, i1 false), !noalias !99
  %i.t = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !109
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.01.0.copyload.1.i = load i8, ptr %i.u, align 8, !alias.scope !112, !noalias !100
  %.sroa.53.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.53.0.copyload.1.i = load i8, ptr %.sroa.53.0..sroa_idx.1.i, align 8, !alias.scope !112, !noalias !100 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 49
  %.not.1.i = icmp eq i8 %.sroa.53.0.copyload.1.i, -1
  br i1 %.not.1.i, label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE16extend_uncheckedATB11_B1B_Ej2_EB7_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.w = load i64, ptr %i.c, align 8, !alias.scope !114, !noundef !10 ; 3 uses
  %i.x = load i64, ptr %i.b, align 8, !range !11, !alias.scope !114, !noundef !10
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.f, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.1.i

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #42, !noalias !106
  %.pre.i = load i64, ptr %i.f, align 8, !alias.scope !115
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.1.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.1.i: ; preds = %bb.f, %bb.e
  %i.z = phi i64 [ %.pre.i, %bb.f ], [ %i.t, %bb.e ] ; 3 uses
  %i.aa = load ptr, ptr %i.d, align 8, !alias.scope !114, !nonnull !10, !noundef !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  store i8 %.sroa.01.0.copyload.1.i, ptr %i.ab, align 1, !noalias !116
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.c, align 8, !alias.scope !114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.ad = load i64, ptr %i.e, align 8, !range !11, !alias.scope !115, !noundef !10
  %i.ae = icmp eq i64 %i.z, %i.ad
  br i1 %i.ae, label %bb.g, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.1.i

bb.g:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.1.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #42, !noalias !110
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.1.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.1.i: ; preds = %bb.g, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.1.i
  %i.af = load ptr, ptr %i.g, align 8, !alias.scope !115, !nonnull !10, !noundef !10
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.z ; 2 uses
  store i8 %.sroa.53.0.copyload.1.i, ptr %i.ag, align 8, !noalias !118
  %.sroa.45.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45.0..sroa_idx.1.i, ptr noundef nonnull readonly align 1 dereferenceable(31) %i.v, i64 31, i1 false), !noalias !99
  %i.ah = add i64 %i.z, 1
  store i64 %i.ah, ptr %i.f, align 8, !alias.scope !115
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE16extend_uncheckedATB11_B1B_Ej2_EB7_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindNtB18_12ContextValueEKj2_EEB1c_.exit.loopexit.i: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8, !noalias !100
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.ai) #43, !noalias !100
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE16extend_uncheckedATB11_B1B_Ej2_EB7_.exit

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtNtB7_5error7context11ContextKindNtB13_12ContextValueE16extend_uncheckedATB11_B1B_Ej2_EB7_.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.1.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterTNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindNtB18_12ContextValueEKj2_EEB1c_.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  ret ptr %0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define noundef nonnull align 8 ptr @_RINvMNtCsfu0rQaTkGUu_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj3_EB5_(ptr noalias nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !150
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !150
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(120) %1, i64 120, i1 false), !noalias !149
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %.sroa.01.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !153, !noalias !150
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.53.0.copyload.i = load i8, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !153, !noalias !150 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.not.i = icmp eq i8 %.sroa.53.0.copyload.i, -1
  br i1 %.not.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.i = load i64, ptr %i.c, align 8, !alias.scope !155, !noundef !10 ; 3 uses
  %i.j = load i64, ptr %i.b, align 8, !range !11, !alias.scope !155, !noundef !10
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #42, !noalias !156
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i: ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !155, !nonnull !10, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 %.sroa.01.0.copyload.i, ptr %i.m, align 1, !noalias !157
  %i.n = add i64 %i.i, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.o = load i64, ptr %i.f, align 8, !alias.scope !159, !noundef !10 ; 3 uses
  %i.p = load i64, ptr %i.e, align 8, !range !11, !alias.scope !159, !noundef !10
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i

bb.d:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #42, !noalias !160
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i: ; preds = %bb.d, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context11ContextKindE8push_mutBL_.exit.i
  %i.r = load ptr, ptr %i.g, align 8, !alias.scope !159, !nonnull !10, !noundef !10
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.o ; 2 uses
  store i8 %.sroa.53.0.copyload.i, ptr %i.s, align 8, !noalias !161
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(31) %i.h, i64 31, i1 false), !noalias !149
  %i.t = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !159
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.01.0.copyload.1.i = load i8, ptr %i.u, align 8, !alias.scope !162, !noalias !150
  %.sroa.53.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.53.0.copyload.1.i = load i8, ptr %.sroa.53.0..sroa_idx.1.i, align 8, !alias.scope !162, !noalias !150 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 49
  %.not.1.i = icmp eq i8 %.sroa.53.0.copyload.1.i, -1
  br i1 %.not.1.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder5error7context12ContextValueE8push_mutBL_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
end_hunk_0
