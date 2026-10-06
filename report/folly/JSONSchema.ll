Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/JSONSchema?download=true
inline.NumInlined: 9470
inline.NumDeleted: 4163
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 44
begin_hunk_0
@.str.285 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.286 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.287 = private unnamed_addr constant [19 x i8] c"left-curly-bracket\00", align 1
@.str.288 = private unnamed_addr constant [14 x i8] c"vertical-line\00", align 1
@.str.289 = private unnamed_addr constant [20 x i8] c"right-curly-bracket\00", align 1
@.str.290 = private unnamed_addr constant [6 x i8] c"tilde\00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@_ZZN5boost13re_detail_50027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14def_multi_coll = linkonce_odr local_unnamed_addr global [22 x ptr] [ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.79], comdat, align 16
@.str.292 = private unnamed_addr constant [3 x i8] c"ae\00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c"Ae\00", align 1
@.str.294 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.295 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.296 = private unnamed_addr constant [3 x i8] c"Ch\00", align 1
@.str.297 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.298 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.299 = private unnamed_addr constant [3 x i8] c"Ll\00", align 1
@.str.300 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@.str.301 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.302 = private unnamed_addr constant [3 x i8] c"Ss\00", align 1
@.str.303 = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str.304 = private unnamed_addr constant [3 x i8] c"nj\00", align 1
@.str.305 = private unnamed_addr constant [3 x i8] c"Nj\00", align 1
@.str.306 = private unnamed_addr constant [3 x i8] c"NJ\00", align 1
@.str.307 = private unnamed_addr constant [3 x i8] c"dz\00", align 1
@.str.308 = private unnamed_addr constant [3 x i8] c"Dz\00", align 1
@.str.309 = private unnamed_addr constant [3 x i8] c"DZ\00", align 1
@.str.310 = private unnamed_addr constant [3 x i8] c"lj\00", align 1
@.str.311 = private unnamed_addr constant [3 x i8] c"Lj\00", align 1
@.str.312 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str.313 = private unnamed_addr constant [31 x i8] c"Unterminated \\Q...\\E sequence.\00", align 1
@_ZZN5boost13re_detail_50019get_escape_R_stringIcEENSt9enable_ifIXeqstT_Li1EEPKS3_E4typeEvE2e2 = linkonce_odr constant [21 x i8] c"(?-x:(?>\0D\0A?|[\0A\0B\0C\85]))\00", comdat, align 16
@.str.314 = private unnamed_addr constant [19 x i8] c"Nothing to repeat.\00", align 1
@_ZZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18parse_repeat_rangeEbE18incomplete_message = linkonce_odr constant [36 x i8] c"Missing } in quantified repetition.\00", comdat, align 16
@.str.315 = private unnamed_addr constant [67 x i8] c"A regular expression cannot start with the alternation operator |.\00", align 1
@_ZZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9parse_setEvE18incomplete_message = linkonce_odr local_unnamed_addr constant [116 x i8] c"Character set declaration starting with [ terminated prematurely - either no ] was found or the set had no content.\00", comdat, align 16
@_ZZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_inner_setERNS0_14basic_char_setIcS5_EEE18incomplete_message = linkonce_odr constant [118 x i8] c"Character class declaration starting with [ terminated prematurely - either no ] was found or the set had no content.\00", comdat, align 16
@.str.316 = private unnamed_addr constant [114 x i8] c"The \\c and \\C escape sequences are not supported by POSIX basic regular expressions: try the Perl syntax instead.\00", align 1
@_ZZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14add_emacs_codeEbE7s_punct = linkonce_odr constant [5 x i8] c"punct", comdat, align 1
@.str.317 = private unnamed_addr constant [70 x i8] c"  The error occurred while parsing the regular expression fragment: '\00", align 1
@.str.318 = private unnamed_addr constant [61 x i8] c"  The error occurred while parsing the regular expression: '\00", align 1
@.str.319 = private unnamed_addr constant [11 x i8] c">>>HERE>>>\00", align 1
@.str.320 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@_ZTVN5boost11regex_errorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5boost11regex_errorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5boost11regex_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN5boost11regex_errorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost11regex_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5boost11regex_errorE = linkonce_odr constant [22 x i8] c"N5boost11regex_errorE\00", comdat, align 1
@_ZTIN5boost10wrapexceptINS_11regex_errorEEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5boost10wrapexceptINS_11regex_errorEEE, i32 0, i32 3, ptr @_ZTIN5boost16exception_detail10clone_baseE, i64 2, ptr @_ZTIN5boost11regex_errorE, i64 2050, ptr @_ZTIN5boost9exceptionE, i64 10242 }, comdat, align 8
@_ZTSN5boost10wrapexceptINS_11regex_errorEEE = linkonce_odr constant [40 x i8] c"N5boost10wrapexceptINS_11regex_errorEEE\00", comdat, align 1
@_ZTVN5boost10wrapexceptINS_11regex_errorEEE = linkonce_odr constant { [6 x ptr], [5 x ptr], [4 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost10wrapexceptINS_11regex_errorEEE, ptr @_ZNK5boost10wrapexceptINS_11regex_errorEE5cloneEv, ptr @_ZNK5boost10wrapexceptINS_11regex_errorEE7rethrowEv, ptr @_ZN5boost10wrapexceptINS_11regex_errorEED2Ev, ptr @_ZN5boost10wrapexceptINS_11regex_errorEED0Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN5boost10wrapexceptINS_11regex_errorEEE, ptr @_ZThn8_N5boost10wrapexceptINS_11regex_errorEED1Ev, ptr @_ZThn8_N5boost10wrapexceptINS_11regex_errorEED0Ev, ptr @_ZNKSt13runtime_error4whatEv], [4 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTIN5boost10wrapexceptINS_11regex_errorEEE, ptr @_ZThn40_N5boost10wrapexceptINS_11regex_errorEED1Ev, ptr @_ZThn40_N5boost10wrapexceptINS_11regex_errorEED0Ev] }, comdat, align 8
@.str.321 = private unnamed_addr constant [29 x i8] c"Exceeded nested brace limit.\00", align 1
@.str.322 = private unnamed_addr constant [65 x i8] c"Can't terminate a sub-expression with an alternation operator |.\00", align 1
@.str.323 = private unnamed_addr constant [111 x i8] c"Internal logic failed while compiling the expression, probably you added a repeat to something non-repeatable!\00", align 1
@.str.324 = private unnamed_addr constant [80 x i8] c"Encountered a forward reference to a marked sub-expression that does not exist.\00", align 1
@.str.325 = private unnamed_addr constant [83 x i8] c"Encountered a forward reference to a recursive sub-expression that does not exist.\00", align 1
@.str.326 = private unnamed_addr constant [68 x i8] c"Invalid lookbehind assertion encountered in the regular expression.\00", align 1
@.str.327 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.328 = private unnamed_addr constant [35 x i8] c"Encountered an infinite recursion.\00", align 1
@.str.329 = private unnamed_addr constant [22 x i8] c"string matching regex\00", align 1
@.str.330 = private unnamed_addr constant [34 x i8] c"Invalid regular expression object\00", align 1
@_ZTIN5boost10wrapexceptISt16invalid_argumentEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5boost10wrapexceptISt16invalid_argumentEE, i32 0, i32 3, ptr @_ZTIN5boost16exception_detail10clone_baseE, i64 2, ptr @_ZTISt16invalid_argument, i64 2050, ptr @_ZTIN5boost9exceptionE, i64 6146 }, comdat, align 8
@_ZTSN5boost10wrapexceptISt16invalid_argumentEE = linkonce_odr constant [43 x i8] c"N5boost10wrapexceptISt16invalid_argumentEE\00", comdat, align 1
@_ZTISt16invalid_argument = external constant ptr
@_ZTVN5boost10wrapexceptISt16invalid_argumentEE = linkonce_odr constant { [6 x ptr], [5 x ptr], [4 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost10wrapexceptISt16invalid_argumentEE, ptr @_ZNK5boost10wrapexceptISt16invalid_argumentE5cloneEv, ptr @_ZNK5boost10wrapexceptISt16invalid_argumentE7rethrowEv, ptr @_ZN5boost10wrapexceptISt16invalid_argumentED2Ev, ptr @_ZN5boost10wrapexceptISt16invalid_argumentED0Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN5boost10wrapexceptISt16invalid_argumentEE, ptr @_ZThn8_N5boost10wrapexceptISt16invalid_argumentED1Ev, ptr @_ZThn8_N5boost10wrapexceptISt16invalid_argumentED0Ev, ptr @_ZNKSt11logic_error4whatEv], [4 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN5boost10wrapexceptISt16invalid_argumentEE, ptr @_ZThn24_N5boost10wrapexceptISt16invalid_argumentED1Ev, ptr @_ZThn24_N5boost10wrapexceptISt16invalid_argumentED0Ev] }, comdat, align 8
@_ZTVSt16invalid_argument = external constant { [5 x ptr] }, align 8
@_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE8find_impEvE13s_find_vtableB5cxx11 = linkonce_odr local_unnamed_addr constant [7 x { i64, i64 }] [{ i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16find_restart_anyEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17find_restart_wordEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17find_restart_lineEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16find_restart_bufEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16find_restart_litEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16find_restart_litEv to i64), i64 0 }], comdat, align 16
@_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEvE14s_match_vtableB5cxx11 = linkonce_odr local_unnamed_addr constant [34 x { i64, i64 }] [{ i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15match_startmarkEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13match_endmarkEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13match_literalEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_start_lineEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14match_end_lineEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10match_wildEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE11match_matchEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE19match_word_boundaryEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17match_within_wordEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_word_startEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14match_word_endEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18match_buffer_startEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_buffer_endEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13match_backrefEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14match_long_setEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9match_setEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10match_jumpEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9match_altEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9match_repEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15match_combiningEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE21match_soft_buffer_endEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22match_restart_continueEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE25match_dot_repeat_dispatchEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17match_char_repeatEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_set_repeatEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE21match_long_set_repeatEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14match_backstepEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20match_assert_backrefEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE17match_toggle_caseEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15match_recursionEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10match_failEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_acceptEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_commitEv to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10match_thenEv to i64), i64 0 }], comdat, align 16
@_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache = linkonce_odr global %"struct.boost::re_detail_500::mem_block_cache" zeroinitializer, comdat, align 8
@_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache = linkonce_odr global i64 0, comdat, align 8
@.str.331 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.332 = private unnamed_addr constant [65 x i8] c"Attempt to access an uninitialized boost::match_results<> class.\00", align 1
@_ZTIN5boost10wrapexceptISt11logic_errorEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5boost10wrapexceptISt11logic_errorEE, i32 0, i32 3, ptr @_ZTIN5boost16exception_detail10clone_baseE, i64 2, ptr @_ZTISt11logic_error, i64 2050, ptr @_ZTIN5boost9exceptionE, i64 6146 }, comdat, align 8
@_ZTSN5boost10wrapexceptISt11logic_errorEE = linkonce_odr constant [38 x i8] c"N5boost10wrapexceptISt11logic_errorEE\00", comdat, align 1
@_ZTISt11logic_error = external constant ptr
@_ZTVN5boost10wrapexceptISt11logic_errorEE = linkonce_odr constant { [6 x ptr], [5 x ptr], [4 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost10wrapexceptISt11logic_errorEE, ptr @_ZNK5boost10wrapexceptISt11logic_errorE5cloneEv, ptr @_ZNK5boost10wrapexceptISt11logic_errorE7rethrowEv, ptr @_ZN5boost10wrapexceptISt11logic_errorED2Ev, ptr @_ZN5boost10wrapexceptISt11logic_errorED0Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN5boost10wrapexceptISt11logic_errorEE, ptr @_ZThn8_N5boost10wrapexceptISt11logic_errorED1Ev, ptr @_ZThn8_N5boost10wrapexceptISt11logic_errorED0Ev, ptr @_ZNKSt11logic_error4whatEv], [4 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN5boost10wrapexceptISt11logic_errorEE, ptr @_ZThn24_N5boost10wrapexceptISt11logic_errorED1Ev, ptr @_ZThn24_N5boost10wrapexceptISt11logic_errorED0Ev] }, comdat, align 8
@.str.333 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.334 = private unnamed_addr constant [77 x i8] c"Usage Error: Can't mix regular expression captures with POSIX matching rules\00", align 1
@_ZZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_tableB5cxx11 = linkonce_odr local_unnamed_addr constant [19 x { i64, i64 }] [{ i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10unwind_endEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12unwind_parenEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24unwind_recursion_stopperEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16unwind_assertionEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10unwind_altEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE23unwind_repeater_counterEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18unwind_extra_blockEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE27unwind_greedy_single_repeatEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22unwind_slow_dot_repeatEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22unwind_fast_dot_repeatEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18unwind_char_repeatEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE23unwind_short_set_repeatEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22unwind_long_set_repeatEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE24unwind_non_greedy_repeatEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16unwind_recursionEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE20unwind_recursion_popEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13unwind_commitEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE11unwind_thenEb to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE11unwind_caseEb to i64), i64 0 }], comdat, align 16
@_ZTVN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorE = internal constant [56 x i8] c"N5folly10jsonschema12_GLOBAL__N_119ArrayItemsValidatorE\00", align 1
@_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE = external local_unnamed_addr constant ptr, align 8
@.str.335 = private unnamed_addr constant [25 x i8] c"no more additional items\00", align 1
@_ZTVN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_110IValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorE = internal constant [57 x i8] c"N5folly10jsonschema12_GLOBAL__N_120ArrayUniqueValidatorE\00", align 1
@.str.336 = private unnamed_addr constant [22 x i8] c"unique items in array\00", align 1
@_ZTVN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_119PropertiesValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorE = internal constant [56 x i8] c"N5folly10jsonschema12_GLOBAL__N_119PropertiesValidatorE\00", align 1
@_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE = external local_unnamed_addr constant ptr, align 8
@.str.337 = private unnamed_addr constant [30 x i8] c"no more additional properties\00", align 1
@_ZTVN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_117RequiredValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_117RequiredValidatorE = internal constant [54 x i8] c"N5folly10jsonschema12_GLOBAL__N_117RequiredValidatorE\00", align 1
@.str.338 = private unnamed_addr constant [10 x i8] c"property \00", align 1
@_ZTVN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_119DependencyValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_119DependencyValidatorE = internal constant [56 x i8] c"N5folly10jsonschema12_GLOBAL__N_119DependencyValidatorE\00", align 1
@_ZTVN5folly10jsonschema12_GLOBAL__N_113EnumValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_113EnumValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_113EnumValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_113EnumValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_113EnumValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_113EnumValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_113EnumValidatorE = internal constant [50 x i8] c"N5folly10jsonschema12_GLOBAL__N_113EnumValidatorE\00", align 1
@.str.339 = private unnamed_addr constant [21 x i8] c"one of enum values: \00", align 1
@_ZTVN5folly10jsonschema12_GLOBAL__N_113TypeValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_113TypeValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_113TypeValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_113TypeValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_113TypeValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_113TypeValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_113TypeValidatorE = internal constant [50 x i8] c"N5folly10jsonschema12_GLOBAL__N_113TypeValidatorE\00", align 1
@.str.346 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.347 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.348 = private unnamed_addr constant [17 x i8] c"a value of type \00", align 1
@_ZTVN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_114AllOfValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_114AllOfValidatorE = internal constant [51 x i8] c"N5folly10jsonschema12_GLOBAL__N_114AllOfValidatorE\00", align 1
@_ZTVN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_114AnyOfValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorE = internal constant [51 x i8] c"N5folly10jsonschema12_GLOBAL__N_114AnyOfValidatorE\00", align 1
@.str.349 = private unnamed_addr constant [26 x i8] c"at least one valid schema\00", align 1
@.str.350 = private unnamed_addr constant [25 x i8] c"exactly one valid schema\00", align 1
@_ZTVN5folly10jsonschema12_GLOBAL__N_112NotValidatorE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_112NotValidatorE, ptr @_ZN5folly10jsonschema12_GLOBAL__N_112NotValidatorD2Ev, ptr @_ZN5folly10jsonschema12_GLOBAL__N_112NotValidatorD0Ev, ptr @_ZNK5folly10jsonschema12_GLOBAL__N_112NotValidator8validateERNS1_17ValidationContextERKNS_7dynamicE] }, align 8
@_ZTIN5folly10jsonschema12_GLOBAL__N_112NotValidatorE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly10jsonschema12_GLOBAL__N_112NotValidatorE, ptr @_ZTIN5folly10jsonschema12_GLOBAL__N_110IValidatorE }, align 8
@_ZTSN5folly10jsonschema12_GLOBAL__N_112NotValidatorE = internal constant [49 x i8] c"N5folly10jsonschema12_GLOBAL__N_112NotValidatorE\00", align 1
@.str.351 = private unnamed_addr constant [35 x i8] c"Expected schema validation to fail\00", align 1
@_ZZN5folly14AccessSpreaderISt6atomicE8cpuCacheEvE8cpuCache = linkonce_odr thread_local local_unnamed_addr global %"class.folly::AccessSpreader<>::CpuCache" zeroinitializer, comdat, align 4
@_ZGVN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE), align 8
@_ZTIN5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE }, comdat, align 8
@_ZTSN5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE = linkonce_odr constant [78 x i8] c"N5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE\00", comdat, align 1
@_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE4ptrs = linkonce_odr constant [2 x ptr] [ptr @_ZTIN5folly5tag_tIJNS_10TLRefCountEEEE, ptr @_ZTIN5folly5tag_tIJvEEE], comdat, align 16
@_ZTIN5folly5tag_tIJNS_10TLRefCountEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly5tag_tIJNS_10TLRefCountEEEE }, comdat, align 8
@_ZTSN5folly5tag_tIJNS_10TLRefCountEEEE = linkonce_odr constant [35 x i8] c"N5folly5tag_tIJNS_10TLRefCountEEEE\00", comdat, align 1
@_ZTIN5folly5tag_tIJvEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly5tag_tIJvEEE }, comdat, align 8
@_ZTSN5folly5tag_tIJvEEE = linkonce_odr constant [20 x i8] c"N5folly5tag_tIJvEEE\00", comdat, align 1
@_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE3arg = linkonce_odr global { %"struct.folly::detail::UniqueInstance::Value", { %"struct.std::atomic.99", ptr, ptr, ptr } } { %"struct.folly::detail::UniqueInstance::Value" { ptr @_ZTIN5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE, ptr @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE4ptrs, i32 1, i32 1 }, { %"struct.std::atomic.99", ptr, ptr, ptr } { %"struct.std::atomic.99" zeroinitializer, ptr @_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEEEEE, ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_, ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEEEEE } }, comdat, align 8
@_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEEEEE }, comdat, align 8
@_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEEEEE = linkonce_odr constant [148 x i8] c"N5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEEEEE\00", comdat, align 1
@_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEEEEE = linkonce_odr global ptr null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.352, ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_JSONSchema.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE], section "llvm.metadata"
@llvm.compiler.used = appending global [3 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN5folly10jsonschema9ValidatorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly10jsonschema9ValidatorD2Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_EC2ESt8functionIFPS2_vEES6_IFvS7_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 11 uses
  %4 = alloca %"class.std::function.0", align 8   ; 9 uses
  %5 = alloca %"class.std::function.0", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !424
  %.not.i.i.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail25singletonThrowNullCreatorERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIN5folly10jsonschema9ValidatorE) #44
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_14SingletonVaultENS0_10DefaultTagENS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit, !prof !425

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_14SingletonVaultENS0_10DefaultTagENS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit

_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit: ; preds = %bb.c, %bb.d
  %i.e = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ]
  %i.f = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderINS_10jsonschema9ValidatorEE4ImplINS0_10DefaultTagES8_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E8getEntryEv.exit, !prof !425

bb.e:                                             ; preds = %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit
  %i.g = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderINS_10jsonschema9ValidatorEE4ImplINS0_10DefaultTagES8_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E8getEntryEv.exit

_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E8getEntryEv.exit: ; preds = %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit, %bb.e
  %i.h = phi ptr [ %i.g, %bb.e ], [ %i.f, %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !427
  store ptr %i.k, ptr %i.i, align 8, !tbaa !427
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %.not.i.i.not.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.not.i2, label %_ZNSt8functionIFPN5folly10jsonschema9ValidatorEvEEC2EOS5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E8getEntryEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !429
  store ptr %i.l, ptr %i.m, align 8, !tbaa !424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFPN5folly10jsonschema9ValidatorEvEEC2EOS5_.exit

_ZNSt8functionIFPN5folly10jsonschema9ValidatorEvEEC2EOS5_.exit: ; preds = %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E8getEntryEv.exit, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !431  ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !431
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !424  ; 2 uses
  %.not.i.i.not.i3 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i3, label %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.thread, label %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.i

_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.thread: ; preds = %_ZNSt8functionIFPN5folly10jsonschema9ValidatorEvEEC2EOS5_.exit
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E15getTeardownFuncESt8functionIFvPS2_EE.exit

_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.i: ; preds = %_ZNSt8functionIFPN5folly10jsonschema9ValidatorEvEEC2EOS5_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !429
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  br label %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E15getTeardownFuncESt8functionIFvPS2_EE.exit

_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E15getTeardownFuncESt8functionIFvPS2_EE.exit: ; preds = %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.thread, %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.i
  %i.t = phi ptr [ %i.s, %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.i ], [ %6, %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.thread ] ; 2 uses
  %.sink3.i = phi ptr [ %i.s, %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.i ], [ %4, %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.thread ]
  %.sink2.i = phi ptr [ %i.p, %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvPN5folly10jsonschema9ValidatorEEZNS0_9SingletonIS2_NS0_6detail10DefaultTagES7_E15getTeardownFuncESt8functionIS4_EEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_, %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.thread ]
  %.sink.i = phi ptr [ %i.r, %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.i ], [ @_ZNSt17_Function_handlerIFvPN5folly10jsonschema9ValidatorEEZNS0_9SingletonIS2_NS0_6detail10DefaultTagES7_E15getTeardownFuncESt8functionIS4_EEUlS3_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, %_ZNSt8functionIFvPN5folly10jsonschema9ValidatorEEEC2EOS5_.exit.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink3.i, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sink2.i, ptr %i.u, align 8, !tbaa !431, !alias.scope !10431
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.v, align 8, !tbaa !424, !alias.scope !10431
  invoke void @_ZN5folly6detail15SingletonHolderINS_10jsonschema9ValidatorEE17registerSingletonESt8functionIFPS3_vEES5_IFvS6_EE(ptr noundef nonnull align 8 dereferenceable(2304) %i.h, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E15getTeardownFuncESt8functionIFvPS2_EE.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !424  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !424 ; 2 uses
  %.not.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !424 ; 2 uses
  %.not.i6 = icmp eq ptr %i.af, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit5
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit5, %bb.l
  %i.aj = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderINS_10jsonschema9ValidatorEE4ImplINS0_10DefaultTagES8_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i8, label %bb.n, label %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E8getEntryEv.exit9, !prof !425

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.ak = call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderINS_10jsonschema9ValidatorEE4ImplINS0_10DefaultTagES8_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E8getEntryEv.exit9

_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E8getEntryEv.exit9: ; preds = %_ZNSt14_Function_baseD2Ev.exit7, %bb.n
  %i.al = phi ptr [ %i.ak, %bb.n ], [ %i.aj, %_ZNSt14_Function_baseD2Ev.exit7 ]
  call void @_ZN5folly14SingletonVault17registerSingletonEPNS_6detail19SingletonHolderBaseE(ptr noundef nonnull align 8 dereferenceable(425) %i.e, ptr noundef nonnull %i.al)
  ret void

bb.o:                                             ; preds = %_ZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E15getTeardownFuncESt8functionIFvPS2_EE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !424 ; 2 uses
  %.not.i10 = icmp eq ptr %i.an, null
  br i1 %.not.i10, label %_ZNSt14_Function_baseD2Ev.exit11, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit11 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit11:                 ; preds = %bb.o, %bb.p
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !424 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ar, null
  br i1 %.not.i12, label %_ZNSt14_Function_baseD2Ev.exit13, label %bb.r

bb.r:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit11
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit13 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit13:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit11, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !424 ; 2 uses
  %.not.i14 = icmp eq ptr %i.aw, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit15, label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit13
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit15 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit15:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit13, %bb.t
  resume { ptr, i32 } %i.am
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define internal noundef ptr @"_ZNSt17_Function_handlerIFPN5folly10jsonschema9ValidatorEvENS1_12_GLOBAL__N_13$_0EE9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %2 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN5folly9parseJsonENS_5RangeIPKcEE(ptr dead_on_unwind nonnull writable sret(%"struct.folly::dynamic") align 8 %2, ptr nonnull @.str, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 4414))
  invoke void @_ZN5folly10jsonschema13makeValidatorERKNS_7dynamicE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %"_ZSt10__invoke_rIPN5folly10jsonschema9ValidatorERNS1_12_GLOBAL__N_13$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.a

"_ZSt10__invoke_rIPN5folly10jsonschema9ValidatorERNS1_12_GLOBAL__N_13$_0EJEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !433
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN5folly10jsonschema9ValidatorEvENS1_12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIN5folly10jsonschema12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIN5folly10jsonschema12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIN5folly10jsonschema12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIN5folly10jsonschema12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIN5folly10jsonschema12_GLOBAL__N_13$_0E", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !434
  br label %"_ZNSt14_Function_base13_Base_managerIN5folly10jsonschema12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIN5folly10jsonschema12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIN5folly10jsonschema12_GLOBAL__N_13$_0EE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #45
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5folly10jsonschema13makeValidatorERKNS_7dynamicE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::unique_ptr.288", align 8 ; 5 uses
  %3 = alloca %"struct.folly::jsonschema::(anonymous namespace)::SchemaValidatorContext", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
end_hunk_0
