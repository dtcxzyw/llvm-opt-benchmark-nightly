Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0
$_ZTIN4toml2v35valueINS0_4dateEEE = comdat any

$_ZTSN4toml2v35valueINS0_4dateEEE = comdat any

$_ZTVN4toml2v35valueINS0_6stdopt9date_timeEEE = comdat any

$_ZTIN4toml2v35valueINS0_6stdopt9date_timeEEE = comdat any

$_ZTSN4toml2v35valueINS0_6stdopt9date_timeEEE = comdat any

$_ZN4toml2v34impl7impl_ex6parser21max_dotted_keys_depthE = comdat any

$_ZN4toml2v34impl24node_type_friendly_namesE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZN4toml2v34impl12utf8_decoder11state_tableE = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"line \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c", column \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" of '\00", align 1
@_ZTVN4toml2v34nodeE = constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v34nodeE, ptr @_ZN4toml2v34nodeD1Ev, ptr @_ZN4toml2v34nodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN4toml2v35arrayE = constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v35arrayE, ptr @_ZN4toml2v35arrayD1Ev, ptr @_ZN4toml2v35arrayD0Ev, ptr @_ZN4toml2v35array14is_homogeneousENS0_9node_typeERPNS0_4nodeE, ptr @_ZNK4toml2v35array14is_homogeneousENS0_9node_typeERPKNS0_4nodeE, ptr @_ZNK4toml2v35array14is_homogeneousENS0_9node_typeE, ptr @_ZNK4toml2v35array4typeEv, ptr @_ZNK4toml2v35array8is_tableEv, ptr @_ZNK4toml2v35array8is_arrayEv, ptr @_ZNK4toml2v35array18is_array_of_tablesEv, ptr @_ZNK4toml2v35array8is_valueEv, ptr @_ZNK4toml2v35array9is_stringEv, ptr @_ZNK4toml2v35array10is_integerEv, ptr @_ZNK4toml2v35array17is_floating_pointEv, ptr @_ZNK4toml2v35array9is_numberEv, ptr @_ZNK4toml2v35array10is_booleanEv, ptr @_ZNK4toml2v35array7is_dateEv, ptr @_ZNK4toml2v35array7is_timeEv, ptr @_ZNK4toml2v35array12is_date_timeEv, ptr @_ZN4toml2v35array8as_tableEv, ptr @_ZN4toml2v35array8as_arrayEv, ptr @_ZN4toml2v35array9as_stringB5cxx11Ev, ptr @_ZN4toml2v35array10as_integerEv, ptr @_ZN4toml2v35array17as_floating_pointEv, ptr @_ZN4toml2v35array10as_booleanEv, ptr @_ZN4toml2v35array7as_dateEv, ptr @_ZN4toml2v35array7as_timeEv, ptr @_ZN4toml2v35array12as_date_timeEv, ptr @_ZNK4toml2v35array8as_tableEv, ptr @_ZNK4toml2v35array8as_arrayEv, ptr @_ZNK4toml2v35array9as_stringB5cxx11Ev, ptr @_ZNK4toml2v35array10as_integerEv, ptr @_ZNK4toml2v35array17as_floating_pointEv, ptr @_ZNK4toml2v35array10as_booleanEv, ptr @_ZNK4toml2v35array7as_dateEv, ptr @_ZNK4toml2v35array7as_timeEv, ptr @_ZNK4toml2v35array12as_date_timeEv] }, align 8
@_ZTVN4toml2v35tableE = constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v35tableE, ptr @_ZN4toml2v35tableD1Ev, ptr @_ZN4toml2v35tableD0Ev, ptr @_ZN4toml2v35table14is_homogeneousENS0_9node_typeERPNS0_4nodeE, ptr @_ZNK4toml2v35table14is_homogeneousENS0_9node_typeERPKNS0_4nodeE, ptr @_ZNK4toml2v35table14is_homogeneousENS0_9node_typeE, ptr @_ZNK4toml2v35table4typeEv, ptr @_ZNK4toml2v35table8is_tableEv, ptr @_ZNK4toml2v35table8is_arrayEv, ptr @_ZNK4toml2v35table18is_array_of_tablesEv, ptr @_ZNK4toml2v35table8is_valueEv, ptr @_ZNK4toml2v35table9is_stringEv, ptr @_ZNK4toml2v35table10is_integerEv, ptr @_ZNK4toml2v35table17is_floating_pointEv, ptr @_ZNK4toml2v35table9is_numberEv, ptr @_ZNK4toml2v35table10is_booleanEv, ptr @_ZNK4toml2v35table7is_dateEv, ptr @_ZNK4toml2v35table7is_timeEv, ptr @_ZNK4toml2v35table12is_date_timeEv, ptr @_ZN4toml2v35table8as_tableEv, ptr @_ZN4toml2v35table8as_arrayEv, ptr @_ZN4toml2v35table9as_stringB5cxx11Ev, ptr @_ZN4toml2v35table10as_integerEv, ptr @_ZN4toml2v35table17as_floating_pointEv, ptr @_ZN4toml2v35table10as_booleanEv, ptr @_ZN4toml2v35table7as_dateEv, ptr @_ZN4toml2v35table7as_timeEv, ptr @_ZN4toml2v35table12as_date_timeEv, ptr @_ZNK4toml2v35table8as_tableEv, ptr @_ZNK4toml2v35table8as_arrayEv, ptr @_ZNK4toml2v35table9as_stringB5cxx11Ev, ptr @_ZNK4toml2v35table10as_integerEv, ptr @_ZNK4toml2v35table17as_floating_pointEv, ptr @_ZNK4toml2v35table10as_booleanEv, ptr @_ZNK4toml2v35table7as_dateEv, ptr @_ZNK4toml2v35table7as_timeEv, ptr @_ZNK4toml2v35table12as_date_timeEv] }, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"key '\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"' not found in table\00", align 1
@_ZTISt12out_of_range = external constant ptr
@.str.12 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"encountered end-of-file\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"expected value or closing ']', saw comma\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"expected comma or closing ']', saw '\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"inline table\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"expected key-value pair or closing '}', saw comma\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"expected key-value pair, saw closing '}' (dangling comma)\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"expected comma or closing '}', saw '\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"expected key or closing '}', saw '\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"'''\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"\22\22\22\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\\u007F\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@_ZN4toml2v34impl20control_char_escapesE = linkonce_odr local_unnamed_addr constant [32 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 6, ptr @.str.183 }, %"class.std::basic_string_view" { i64 6, ptr @.str.184 }, %"class.std::basic_string_view" { i64 6, ptr @.str.185 }, %"class.std::basic_string_view" { i64 6, ptr @.str.186 }, %"class.std::basic_string_view" { i64 6, ptr @.str.187 }, %"class.std::basic_string_view" { i64 6, ptr @.str.188 }, %"class.std::basic_string_view" { i64 6, ptr @.str.189 }, %"class.std::basic_string_view" { i64 6, ptr @.str.190 }, %"class.std::basic_string_view" { i64 2, ptr @.str.191 }, %"class.std::basic_string_view" { i64 2, ptr @.str.31 }, %"class.std::basic_string_view" { i64 2, ptr @.str.33 }, %"class.std::basic_string_view" { i64 6, ptr @.str.192 }, %"class.std::basic_string_view" { i64 2, ptr @.str.193 }, %"class.std::basic_string_view" { i64 2, ptr @.str.194 }, %"class.std::basic_string_view" { i64 6, ptr @.str.195 }, %"class.std::basic_string_view" { i64 6, ptr @.str.196 }, %"class.std::basic_string_view" { i64 6, ptr @.str.197 }, %"class.std::basic_string_view" { i64 6, ptr @.str.198 }, %"class.std::basic_string_view" { i64 6, ptr @.str.199 }, %"class.std::basic_string_view" { i64 6, ptr @.str.200 }, %"class.std::basic_string_view" { i64 6, ptr @.str.201 }, %"class.std::basic_string_view" { i64 6, ptr @.str.202 }, %"class.std::basic_string_view" { i64 6, ptr @.str.203 }, %"class.std::basic_string_view" { i64 6, ptr @.str.204 }, %"class.std::basic_string_view" { i64 6, ptr @.str.205 }, %"class.std::basic_string_view" { i64 6, ptr @.str.206 }, %"class.std::basic_string_view" { i64 6, ptr @.str.207 }, %"class.std::basic_string_view" { i64 6, ptr @.str.208 }, %"class.std::basic_string_view" { i64 6, ptr @.str.209 }, %"class.std::basic_string_view" { i64 6, ptr @.str.210 }, %"class.std::basic_string_view" { i64 6, ptr @.str.211 }, %"class.std::basic_string_view" { i64 6, ptr @.str.212 }], comdat, align 16
@.str.34 = private unnamed_addr constant [5 x i8] c"\\u00\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\\U\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\\u\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"0o\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"[[\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"]]\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"|-\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@_ZTIN4toml2v35arrayE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v35arrayE, ptr @_ZTIN4toml2v34nodeE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4toml2v35arrayE = constant [17 x i8] c"N4toml2v35arrayE\00", align 1
@_ZTIN4toml2v34nodeE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4toml2v34nodeE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4toml2v34nodeE = constant [16 x i8] c"N4toml2v34nodeE\00", align 1
@_ZTIN4toml2v35tableE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v35tableE, ptr @_ZTIN4toml2v34nodeE }, align 8
@_ZTSN4toml2v35tableE = constant [17 x i8] c"N4toml2v35tableE\00", align 1
@_ZN4toml2v314toml_formatter9constantsE = linkonce_odr constant %"struct.toml::v3::impl::formatter_constants" { i64 0, i64 0, %"class.std::basic_string_view" { i64 3, ptr @.str.57 }, %"class.std::basic_string_view" { i64 4, ptr @.str.58 }, %"class.std::basic_string_view" { i64 3, ptr @.str.59 }, %"class.std::basic_string_view" { i64 4, ptr @.str }, %"class.std::basic_string_view" { i64 5, ptr @.str.1 } }, comdat, align 8
@.str.56 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"expected space or tab, saw '\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"Error while parsing \00", align 1
@_ZTIN4toml2v32ex11parse_errorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v32ex11parse_errorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4toml2v32ex11parse_errorE = linkonce_odr constant [27 x i8] c"N4toml2v32ex11parse_errorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN4toml2v32ex11parse_errorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4toml2v32ex11parse_errorE, ptr @_ZN4toml2v32ex11parse_errorD2Ev, ptr @_ZN4toml2v32ex11parse_errorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.68 = private unnamed_addr constant [73 x i8] c"vertical tabs '\\v' and form-feeds '\\f' are not legal line breaks in TOML\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"expected '\\n' after '\\r', saw EOF\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"expected '\\n' after '\\r', saw '\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.72 = private unnamed_addr constant [81 x i8] c"control characters other than TAB (U+0009) are explicitly prohibited in comments\00", align 1
@.str.73 = private unnamed_addr constant [76 x i8] c"unicode surrogates (U+D800 to U+DFFF) are explicitly prohibited in comments\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.75 = private unnamed_addr constant [40 x i8] c"exceeded maximum nested value depth of \00", align 1
@_ZN4toml2v34impl7impl_ex6parser17max_nested_valuesE = linkonce_odr constant i64 128, comdat, align 8
@.str.76 = private unnamed_addr constant [26 x i8] c" (TOML_MAX_NESTED_VALUES)\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"unexpected control character\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"values may not begin with underscores\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"could not determine value type\00", align 1
@_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvE24max_numeric_value_length = linkonce_odr constant i64 126, comdat, align 8
@.str.80 = private unnamed_addr constant [57 x i8] c"numeric value too long to identify type - cannot exceed \00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c" characters\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"literal string\00", align 1
@.str.84 = private unnamed_addr constant [69 x i8] c"control characters other than TAB (U+0009) are explicitly prohibited\00", align 1
@.str.85 = private unnamed_addr constant [63 x i8] c"unicode surrogates (U+D800 - U+DFFF) are explicitly prohibited\00", align 1
@.str.86 = private unnamed_addr constant [78 x i8] c"line-ending backslashes must be the last non-whitespace character on the line\00", align 1
@.str.87 = private unnamed_addr constant [64 x i8] c"escape sequence '\\e' is not supported in TOML 1.0.0 and earlier\00", align 1
@.str.88 = private unnamed_addr constant [64 x i8] c"escape sequence '\\x' is not supported in TOML 1.0.0 and earlier\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"unicode scalar sequence\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"expected hex digit, saw '\00", align 1
@.str.91 = private unnamed_addr constant [41 x i8] c"values greater than U+10FFFF are invalid\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"unknown escape sequence '\\\00", align 1
@.str.93 = private unnamed_addr constant [79 x i8] c"unescaped control characters other than TAB (U+0009) are explicitly prohibited\00", align 1
@.str.94 = private unnamed_addr constant [74 x i8] c"unescaped unicode surrogates (U+D800 to U+DFFF) are explicitly prohibited\00", align 1
@_ZTVN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14is_homogeneousENS0_9node_typeERPNS0_4nodeE, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14is_homogeneousENS0_9node_typeERPKNS0_4nodeE, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14is_homogeneousENS0_9node_typeE, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8is_tableEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8is_arrayEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18is_array_of_tablesEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8is_valueEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9is_stringEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10is_integerEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE17is_floating_pointEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9is_numberEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10is_booleanEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7is_dateEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7is_timeEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12is_date_timeEv, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8as_tableEv, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8as_arrayEv, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9as_stringEv, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10as_integerEv, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE17as_floating_pointEv, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10as_booleanEv, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7as_dateEv, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7as_timeEv, ptr @_ZN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12as_date_timeEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8as_tableEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8as_arrayEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9as_stringEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10as_integerEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE17as_floating_pointEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10as_booleanEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7as_dateEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7as_timeEv, ptr @_ZNK4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12as_date_timeEv] }, comdat, align 8
@_ZTIN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN4toml2v34nodeE }, comdat, align 8
@_ZTSN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr constant [71 x i8] c"N4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.96 = private unnamed_addr constant [5 x i32] [i32 116, i32 114, i32 117, i32 101, i32 0], align 4
@.str.97 = private unnamed_addr constant [6 x i32] [i32 102, i32 97, i32 108, i32 115, i32 101, i32 0], align 4
@.str.98 = private unnamed_addr constant [11 x i8] c"expected '\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"', saw '\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"expected value-terminator, saw '\00", align 1
@_ZTVN4toml2v35valueIbEE = linkonce_odr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v35valueIbEE, ptr @_ZN4toml2v34nodeD2Ev, ptr @_ZN4toml2v35valueIbED0Ev, ptr @_ZN4toml2v35valueIbE14is_homogeneousENS0_9node_typeERPNS0_4nodeE, ptr @_ZNK4toml2v35valueIbE14is_homogeneousENS0_9node_typeERPKNS0_4nodeE, ptr @_ZNK4toml2v35valueIbE14is_homogeneousENS0_9node_typeE, ptr @_ZNK4toml2v35valueIbE4typeEv, ptr @_ZNK4toml2v35valueIbE8is_tableEv, ptr @_ZNK4toml2v35valueIbE8is_arrayEv, ptr @_ZNK4toml2v35valueIbE18is_array_of_tablesEv, ptr @_ZNK4toml2v35valueIbE8is_valueEv, ptr @_ZNK4toml2v35valueIbE9is_stringEv, ptr @_ZNK4toml2v35valueIbE10is_integerEv, ptr @_ZNK4toml2v35valueIbE17is_floating_pointEv, ptr @_ZNK4toml2v35valueIbE9is_numberEv, ptr @_ZNK4toml2v35valueIbE10is_booleanEv, ptr @_ZNK4toml2v35valueIbE7is_dateEv, ptr @_ZNK4toml2v35valueIbE7is_timeEv, ptr @_ZNK4toml2v35valueIbE12is_date_timeEv, ptr @_ZN4toml2v35valueIbE8as_tableEv, ptr @_ZN4toml2v35valueIbE8as_arrayEv, ptr @_ZN4toml2v35valueIbE9as_stringB5cxx11Ev, ptr @_ZN4toml2v35valueIbE10as_integerEv, ptr @_ZN4toml2v35valueIbE17as_floating_pointEv, ptr @_ZN4toml2v35valueIbE10as_booleanEv, ptr @_ZN4toml2v35valueIbE7as_dateEv, ptr @_ZN4toml2v35valueIbE7as_timeEv, ptr @_ZN4toml2v35valueIbE12as_date_timeEv, ptr @_ZNK4toml2v35valueIbE8as_tableEv, ptr @_ZNK4toml2v35valueIbE8as_arrayEv, ptr @_ZNK4toml2v35valueIbE9as_stringB5cxx11Ev, ptr @_ZNK4toml2v35valueIbE10as_integerEv, ptr @_ZNK4toml2v35valueIbE17as_floating_pointEv, ptr @_ZNK4toml2v35valueIbE10as_booleanEv, ptr @_ZNK4toml2v35valueIbE7as_dateEv, ptr @_ZNK4toml2v35valueIbE7as_timeEv, ptr @_ZNK4toml2v35valueIbE12as_date_timeEv] }, comdat, align 8
@_ZTIN4toml2v35valueIbEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v35valueIbEE, ptr @_ZTIN4toml2v34nodeE }, comdat, align 8
@_ZTSN4toml2v35valueIbEE = linkonce_odr constant [20 x i8] c"N4toml2v35valueIbEE\00", comdat, align 1
@_ZTVN4toml2v35valueIlEE = linkonce_odr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v35valueIlEE, ptr @_ZN4toml2v34nodeD2Ev, ptr @_ZN4toml2v35valueIlED0Ev, ptr @_ZN4toml2v35valueIlE14is_homogeneousENS0_9node_typeERPNS0_4nodeE, ptr @_ZNK4toml2v35valueIlE14is_homogeneousENS0_9node_typeERPKNS0_4nodeE, ptr @_ZNK4toml2v35valueIlE14is_homogeneousENS0_9node_typeE, ptr @_ZNK4toml2v35valueIlE4typeEv, ptr @_ZNK4toml2v35valueIlE8is_tableEv, ptr @_ZNK4toml2v35valueIlE8is_arrayEv, ptr @_ZNK4toml2v35valueIlE18is_array_of_tablesEv, ptr @_ZNK4toml2v35valueIlE8is_valueEv, ptr @_ZNK4toml2v35valueIlE9is_stringEv, ptr @_ZNK4toml2v35valueIlE10is_integerEv, ptr @_ZNK4toml2v35valueIlE17is_floating_pointEv, ptr @_ZNK4toml2v35valueIlE9is_numberEv, ptr @_ZNK4toml2v35valueIlE10is_booleanEv, ptr @_ZNK4toml2v35valueIlE7is_dateEv, ptr @_ZNK4toml2v35valueIlE7is_timeEv, ptr @_ZNK4toml2v35valueIlE12is_date_timeEv, ptr @_ZN4toml2v35valueIlE8as_tableEv, ptr @_ZN4toml2v35valueIlE8as_arrayEv, ptr @_ZN4toml2v35valueIlE9as_stringB5cxx11Ev, ptr @_ZN4toml2v35valueIlE10as_integerEv, ptr @_ZN4toml2v35valueIlE17as_floating_pointEv, ptr @_ZN4toml2v35valueIlE10as_booleanEv, ptr @_ZN4toml2v35valueIlE7as_dateEv, ptr @_ZN4toml2v35valueIlE7as_timeEv, ptr @_ZN4toml2v35valueIlE12as_date_timeEv, ptr @_ZNK4toml2v35valueIlE8as_tableEv, ptr @_ZNK4toml2v35valueIlE8as_arrayEv, ptr @_ZNK4toml2v35valueIlE9as_stringB5cxx11Ev, ptr @_ZNK4toml2v35valueIlE10as_integerEv, ptr @_ZNK4toml2v35valueIlE17as_floating_pointEv, ptr @_ZNK4toml2v35valueIlE10as_booleanEv, ptr @_ZNK4toml2v35valueIlE7as_dateEv, ptr @_ZNK4toml2v35valueIlE7as_timeEv, ptr @_ZNK4toml2v35valueIlE12as_date_timeEv] }, comdat, align 8
@_ZTIN4toml2v35valueIlEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v35valueIlEE, ptr @_ZTIN4toml2v34nodeE }, comdat, align 8
@_ZTSN4toml2v35valueIlEE = linkonce_odr constant [20 x i8] c"N4toml2v35valueIlEE\00", comdat, align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"hexadecimal floating-point\00", align 1
@.str.102 = private unnamed_addr constant [78 x i8] c"hexadecimal floating-point values are not supported in TOML 1.0.0 and earlier\00", align 1
@_ZTVN4toml2v35valueIdEE = linkonce_odr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v35valueIdEE, ptr @_ZN4toml2v34nodeD2Ev, ptr @_ZN4toml2v35valueIdED0Ev, ptr @_ZN4toml2v35valueIdE14is_homogeneousENS0_9node_typeERPNS0_4nodeE, ptr @_ZNK4toml2v35valueIdE14is_homogeneousENS0_9node_typeERPKNS0_4nodeE, ptr @_ZNK4toml2v35valueIdE14is_homogeneousENS0_9node_typeE, ptr @_ZNK4toml2v35valueIdE4typeEv, ptr @_ZNK4toml2v35valueIdE8is_tableEv, ptr @_ZNK4toml2v35valueIdE8is_arrayEv, ptr @_ZNK4toml2v35valueIdE18is_array_of_tablesEv, ptr @_ZNK4toml2v35valueIdE8is_valueEv, ptr @_ZNK4toml2v35valueIdE9is_stringEv, ptr @_ZNK4toml2v35valueIdE10is_integerEv, ptr @_ZNK4toml2v35valueIdE17is_floating_pointEv, ptr @_ZNK4toml2v35valueIdE9is_numberEv, ptr @_ZNK4toml2v35valueIdE10is_booleanEv, ptr @_ZNK4toml2v35valueIdE7is_dateEv, ptr @_ZNK4toml2v35valueIdE7is_timeEv, ptr @_ZNK4toml2v35valueIdE12is_date_timeEv, ptr @_ZN4toml2v35valueIdE8as_tableEv, ptr @_ZN4toml2v35valueIdE8as_arrayEv, ptr @_ZN4toml2v35valueIdE9as_stringB5cxx11Ev, ptr @_ZN4toml2v35valueIdE10as_integerEv, ptr @_ZN4toml2v35valueIdE17as_floating_pointEv, ptr @_ZN4toml2v35valueIdE10as_booleanEv, ptr @_ZN4toml2v35valueIdE7as_dateEv, ptr @_ZN4toml2v35valueIdE7as_timeEv, ptr @_ZN4toml2v35valueIdE12as_date_timeEv, ptr @_ZNK4toml2v35valueIdE8as_tableEv, ptr @_ZNK4toml2v35valueIdE8as_arrayEv, ptr @_ZNK4toml2v35valueIdE9as_stringB5cxx11Ev, ptr @_ZNK4toml2v35valueIdE10as_integerEv, ptr @_ZNK4toml2v35valueIdE17as_floating_pointEv, ptr @_ZNK4toml2v35valueIdE10as_booleanEv, ptr @_ZNK4toml2v35valueIdE7as_dateEv, ptr @_ZNK4toml2v35valueIdE7as_timeEv, ptr @_ZNK4toml2v35valueIdE12as_date_timeEv] }, comdat, align 8
@_ZTIN4toml2v35valueIdEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v35valueIdEE, ptr @_ZTIN4toml2v34nodeE }, comdat, align 8
@_ZTSN4toml2v35valueIdEE = linkonce_odr constant [20 x i8] c"N4toml2v35valueIdEE\00", comdat, align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"expected '0', saw '\00", align 1
@_ZN12_GLOBAL__N_120parse_integer_traitsILm16EE6prefixE = internal constant %"class.std::basic_string_view" { i64 1, ptr @.str.111 }, align 8
@.str.104 = private unnamed_addr constant [22 x i8] c"expected digit, saw '\00", align 1
@.str.105 = private unnamed_addr constant [35 x i8] c"underscores may only follow digits\00", align 1
@.str.106 = private unnamed_addr constant [39 x i8] c"underscores must be followed by digits\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"exceeds length limit of \00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c" digits\00", align 1
@_ZN12_GLOBAL__N_120parse_integer_traitsILm16EE11full_prefixE = internal constant %"class.std::basic_string_view" { i64 2, ptr @.str.39 }, align 8
@.str.109 = private unnamed_addr constant [50 x i8] c"' is not representable as a signed 64-bit integer\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"hexadecimal integer\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@_ZN12_GLOBAL__N_120parse_integer_traitsILm8EE6prefixE = internal constant %"class.std::basic_string_view" { i64 1, ptr @.str.113 }, align 8
@_ZN12_GLOBAL__N_120parse_integer_traitsILm8EE11full_prefixE = internal constant %"class.std::basic_string_view" { i64 2, ptr @.str.38 }, align 8
@.str.112 = private unnamed_addr constant [14 x i8] c"octal integer\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@_ZN12_GLOBAL__N_120parse_integer_traitsILm2EE6prefixE = internal constant %"class.std::basic_string_view" { i64 1, ptr @.str.115 }, align 8
@_ZN12_GLOBAL__N_120parse_integer_traitsILm2EE11full_prefixE = internal constant %"class.std::basic_string_view" { i64 2, ptr @.str.37 }, align 8
@.str.114 = private unnamed_addr constant [15 x i8] c"binary integer\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"floating-point\00", align 1
@.str.117 = private unnamed_addr constant [36 x i8] c" (consider using exponent notation)\00", align 1
@.str.118 = private unnamed_addr constant [32 x i8] c"expected decimal digit, saw '.'\00", align 1
@.str.119 = private unnamed_addr constant [49 x i8] c"expected exponent decimal digit or sign, saw '.'\00", align 1
@.str.120 = private unnamed_addr constant [44 x i8] c"expected decimal digit or exponent, saw '.'\00", align 1
@.str.121 = private unnamed_addr constant [30 x i8] c"expected decimal digit, saw '\00", align 1
@.str.122 = private unnamed_addr constant [37 x i8] c"expected decimal digit or '.', saw '\00", align 1
@.str.123 = private unnamed_addr constant [31 x i8] c"expected exponent digit, saw '\00", align 1
@.str.124 = private unnamed_addr constant [30 x i8] c"leading zeroes are prohibited\00", align 1
@.str.125 = private unnamed_addr constant [38 x i8] c"' could not be interpreted as a value\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.128 = private unnamed_addr constant [39 x i8] c"expected expected digit or sign, saw '\00", align 1
@_ZN12_GLOBAL__N_120parse_integer_traitsILm10EE11full_prefixE = internal constant %"class.std::basic_string_view" { i64 0, ptr @.str.7 }, align 8
@.str.129 = private unnamed_addr constant [16 x i8] c"decimal integer\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@_ZZN4toml2v34impl7impl_ex6parser10parse_timeEbE10max_digits = linkonce_odr constant i64 64, comdat, align 8
@.str.131 = private unnamed_addr constant [29 x i8] c"expected 2-digit hour, saw '\00", align 1
@.str.132 = private unnamed_addr constant [48 x i8] c"expected hour between 0 to 59 (inclusive), saw \00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"expected ':', saw '\00", align 1
@.str.134 = private unnamed_addr constant [31 x i8] c"expected 2-digit minute, saw '\00", align 1
@.str.135 = private unnamed_addr constant [51 x i8] c"expected minute between 0 and 59 (inclusive), saw \00", align 1
@.str.136 = private unnamed_addr constant [31 x i8] c"expected 2-digit second, saw '\00", align 1
@.str.137 = private unnamed_addr constant [51 x i8] c"expected second between 0 and 59 (inclusive), saw \00", align 1
@.str.138 = private unnamed_addr constant [20 x i8] c"expected '.', saw '\00", align 1
@.str.139 = private unnamed_addr constant [34 x i8] c"expected fractional digits, saw '\00", align 1
@.str.140 = private unnamed_addr constant [51 x i8] c"fractional component exceeds maximum precision of \00", align 1
@_ZTVN4toml2v35valueINS0_4timeEEE = linkonce_odr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v35valueINS0_4timeEEE, ptr @_ZN4toml2v34nodeD2Ev, ptr @_ZN4toml2v35valueINS0_4timeEED0Ev, ptr @_ZN4toml2v35valueINS0_4timeEE14is_homogeneousENS0_9node_typeERPNS0_4nodeE, ptr @_ZNK4toml2v35valueINS0_4timeEE14is_homogeneousENS0_9node_typeERPKNS0_4nodeE, ptr @_ZNK4toml2v35valueINS0_4timeEE14is_homogeneousENS0_9node_typeE, ptr @_ZNK4toml2v35valueINS0_4timeEE4typeEv, ptr @_ZNK4toml2v35valueINS0_4timeEE8is_tableEv, ptr @_ZNK4toml2v35valueINS0_4timeEE8is_arrayEv, ptr @_ZNK4toml2v35valueINS0_4timeEE18is_array_of_tablesEv, ptr @_ZNK4toml2v35valueINS0_4timeEE8is_valueEv, ptr @_ZNK4toml2v35valueINS0_4timeEE9is_stringEv, ptr @_ZNK4toml2v35valueINS0_4timeEE10is_integerEv, ptr @_ZNK4toml2v35valueINS0_4timeEE17is_floating_pointEv, ptr @_ZNK4toml2v35valueINS0_4timeEE9is_numberEv, ptr @_ZNK4toml2v35valueINS0_4timeEE10is_booleanEv, ptr @_ZNK4toml2v35valueINS0_4timeEE7is_dateEv, ptr @_ZNK4toml2v35valueINS0_4timeEE7is_timeEv, ptr @_ZNK4toml2v35valueINS0_4timeEE12is_date_timeEv, ptr @_ZN4toml2v35valueINS0_4timeEE8as_tableEv, ptr @_ZN4toml2v35valueINS0_4timeEE8as_arrayEv, ptr @_ZN4toml2v35valueINS0_4timeEE9as_stringB5cxx11Ev, ptr @_ZN4toml2v35valueINS0_4timeEE10as_integerEv, ptr @_ZN4toml2v35valueINS0_4timeEE17as_floating_pointEv, ptr @_ZN4toml2v35valueINS0_4timeEE10as_booleanEv, ptr @_ZN4toml2v35valueINS0_4timeEE7as_dateEv, ptr @_ZN4toml2v35valueINS0_4timeEE7as_timeEv, ptr @_ZN4toml2v35valueINS0_4timeEE12as_date_timeEv, ptr @_ZNK4toml2v35valueINS0_4timeEE8as_tableEv, ptr @_ZNK4toml2v35valueINS0_4timeEE8as_arrayEv, ptr @_ZNK4toml2v35valueINS0_4timeEE9as_stringB5cxx11Ev, ptr @_ZNK4toml2v35valueINS0_4timeEE10as_integerEv, ptr @_ZNK4toml2v35valueINS0_4timeEE17as_floating_pointEv, ptr @_ZNK4toml2v35valueINS0_4timeEE10as_booleanEv, ptr @_ZNK4toml2v35valueINS0_4timeEE7as_dateEv, ptr @_ZNK4toml2v35valueINS0_4timeEE7as_timeEv, ptr @_ZNK4toml2v35valueINS0_4timeEE12as_date_timeEv] }, comdat, align 8
@_ZTIN4toml2v35valueINS0_4timeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v35valueINS0_4timeEEE, ptr @_ZTIN4toml2v34nodeE }, comdat, align 8
@_ZTSN4toml2v35valueINS0_4timeEEE = linkonce_odr constant [29 x i8] c"N4toml2v35valueINS0_4timeEEE\00", comdat, align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.142 = private unnamed_addr constant [29 x i8] c"expected 4-digit year, saw '\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"expected '-', saw '\00", align 1
@.str.144 = private unnamed_addr constant [30 x i8] c"expected 2-digit month, saw '\00", align 1
@.str.145 = private unnamed_addr constant [50 x i8] c"expected month between 1 and 12 (inclusive), saw \00", align 1
@.str.146 = private unnamed_addr constant [28 x i8] c"expected 2-digit day, saw '\00", align 1
@.str.147 = private unnamed_addr constant [28 x i8] c"expected day between 1 and \00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c" (inclusive), saw \00", align 1
@_ZTVN4toml2v35valueINS0_4dateEEE = linkonce_odr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v35valueINS0_4dateEEE, ptr @_ZN4toml2v34nodeD2Ev, ptr @_ZN4toml2v35valueINS0_4dateEED0Ev, ptr @_ZN4toml2v35valueINS0_4dateEE14is_homogeneousENS0_9node_typeERPNS0_4nodeE, ptr @_ZNK4toml2v35valueINS0_4dateEE14is_homogeneousENS0_9node_typeERPKNS0_4nodeE, ptr @_ZNK4toml2v35valueINS0_4dateEE14is_homogeneousENS0_9node_typeE, ptr @_ZNK4toml2v35valueINS0_4dateEE4typeEv, ptr @_ZNK4toml2v35valueINS0_4dateEE8is_tableEv, ptr @_ZNK4toml2v35valueINS0_4dateEE8is_arrayEv, ptr @_ZNK4toml2v35valueINS0_4dateEE18is_array_of_tablesEv, ptr @_ZNK4toml2v35valueINS0_4dateEE8is_valueEv, ptr @_ZNK4toml2v35valueINS0_4dateEE9is_stringEv, ptr @_ZNK4toml2v35valueINS0_4dateEE10is_integerEv, ptr @_ZNK4toml2v35valueINS0_4dateEE17is_floating_pointEv, ptr @_ZNK4toml2v35valueINS0_4dateEE9is_numberEv, ptr @_ZNK4toml2v35valueINS0_4dateEE10is_booleanEv, ptr @_ZNK4toml2v35valueINS0_4dateEE7is_dateEv, ptr @_ZNK4toml2v35valueINS0_4dateEE7is_timeEv, ptr @_ZNK4toml2v35valueINS0_4dateEE12is_date_timeEv, ptr @_ZN4toml2v35valueINS0_4dateEE8as_tableEv, ptr @_ZN4toml2v35valueINS0_4dateEE8as_arrayEv, ptr @_ZN4toml2v35valueINS0_4dateEE9as_stringB5cxx11Ev, ptr @_ZN4toml2v35valueINS0_4dateEE10as_integerEv, ptr @_ZN4toml2v35valueINS0_4dateEE17as_floating_pointEv, ptr @_ZN4toml2v35valueINS0_4dateEE10as_booleanEv, ptr @_ZN4toml2v35valueINS0_4dateEE7as_dateEv, ptr @_ZN4toml2v35valueINS0_4dateEE7as_timeEv, ptr @_ZN4toml2v35valueINS0_4dateEE12as_date_timeEv, ptr @_ZNK4toml2v35valueINS0_4dateEE8as_tableEv, ptr @_ZNK4toml2v35valueINS0_4dateEE8as_arrayEv, ptr @_ZNK4toml2v35valueINS0_4dateEE9as_stringB5cxx11Ev, ptr @_ZNK4toml2v35valueINS0_4dateEE10as_integerEv, ptr @_ZNK4toml2v35valueINS0_4dateEE17as_floating_pointEv, ptr @_ZNK4toml2v35valueINS0_4dateEE10as_booleanEv, ptr @_ZNK4toml2v35valueINS0_4dateEE7as_dateEv, ptr @_ZNK4toml2v35valueINS0_4dateEE7as_timeEv, ptr @_ZNK4toml2v35valueINS0_4dateEE12as_date_timeEv] }, comdat, align 8
@_ZTIN4toml2v35valueINS0_4dateEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v35valueINS0_4dateEEE, ptr @_ZTIN4toml2v34nodeE }, comdat, align 8
@_ZTSN4toml2v35valueINS0_4dateEEE = linkonce_odr constant [29 x i8] c"N4toml2v35valueINS0_4dateEEE\00", comdat, align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"date-time\00", align 1
@.str.150 = private unnamed_addr constant [34 x i8] c"expected space, 'T' or 't', saw '\00", align 1
@.str.151 = private unnamed_addr constant [17 x i8] c"date-time offset\00", align 1
@.str.152 = private unnamed_addr constant [49 x i8] c"expected hour between 0 and 23 (inclusive), saw \00", align 1
@_ZTVN4toml2v35valueINS0_6stdopt9date_timeEEE = linkonce_odr constant { [38 x ptr] } { [38 x ptr] [ptr null, ptr @_ZTIN4toml2v35valueINS0_6stdopt9date_timeEEE, ptr @_ZN4toml2v34nodeD2Ev, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEED0Ev, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE14is_homogeneousENS0_9node_typeERPNS0_4nodeE, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE14is_homogeneousENS0_9node_typeERPKNS0_4nodeE, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE14is_homogeneousENS0_9node_typeE, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE4typeEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE8is_tableEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE8is_arrayEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE18is_array_of_tablesEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE8is_valueEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE9is_stringEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE10is_integerEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE17is_floating_pointEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE9is_numberEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE10is_booleanEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE7is_dateEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE7is_timeEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE12is_date_timeEv, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE8as_tableEv, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE8as_arrayEv, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE9as_stringB5cxx11Ev, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE10as_integerEv, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE17as_floating_pointEv, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE10as_booleanEv, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE7as_dateEv, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE7as_timeEv, ptr @_ZN4toml2v35valueINS0_6stdopt9date_timeEE12as_date_timeEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE8as_tableEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE8as_arrayEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE9as_stringB5cxx11Ev, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE10as_integerEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE17as_floating_pointEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE10as_booleanEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE7as_dateEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE7as_timeEv, ptr @_ZNK4toml2v35valueINS0_6stdopt9date_timeEE12as_date_timeEv] }, comdat, align 8
@_ZTIN4toml2v35valueINS0_6stdopt9date_timeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4toml2v35valueINS0_6stdopt9date_timeEEE, ptr @_ZTIN4toml2v34nodeE }, comdat, align 8
@_ZTSN4toml2v35valueINS0_6stdopt9date_timeEEE = linkonce_odr constant [41 x i8] c"N4toml2v35valueINS0_6stdopt9date_timeEEE\00", comdat, align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"key-value pair\00", align 1
@.str.154 = private unnamed_addr constant [20 x i8] c"expected '=', saw '\00", align 1
@.str.155 = private unnamed_addr constant [22 x i8] c"expected value, saw '\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"cannot redefine existing \00", align 1
@.str.157 = private unnamed_addr constant [26 x i8] c" as dotted key-value pair\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.160 = private unnamed_addr constant [38 x i8] c"multi-line strings are prohibited in \00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"dotted \00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.163 = private unnamed_addr constant [64 x i8] c"expected bare key starting character or string delimiter, saw '\00", align 1
@.str.164 = private unnamed_addr constant [39 x i8] c"exceeded maximum dotted keys depth of \00", align 1
@_ZN4toml2v34impl7impl_ex6parser21max_dotted_keys_depthE = linkonce_odr constant i64 1024, comdat, align 8
@.str.165 = private unnamed_addr constant [30 x i8] c" (TOML_MAX_DOTTED_KEYS_DEPTH)\00", align 1
@_ZN4toml2v34impl24node_type_friendly_namesE = linkonce_odr local_unnamed_addr constant [10 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 4, ptr @.str.166 }, %"class.std::basic_string_view" { i64 5, ptr @.str.167 }, %"class.std::basic_string_view" { i64 5, ptr @.str.12 }, %"class.std::basic_string_view" { i64 6, ptr @.str.82 }, %"class.std::basic_string_view" { i64 7, ptr @.str.168 }, %"class.std::basic_string_view" { i64 14, ptr @.str.116 }, %"class.std::basic_string_view" { i64 7, ptr @.str.95 }, %"class.std::basic_string_view" { i64 4, ptr @.str.141 }, %"class.std::basic_string_view" { i64 4, ptr @.str.130 }, %"class.std::basic_string_view" { i64 9, ptr @.str.149 }], comdat, align 16
@.str.166 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"root table\00", align 1
@.str.170 = private unnamed_addr constant [40 x i8] c"expected a comment or whitespace, saw '\00", align 1
@.str.171 = private unnamed_addr constant [53 x i8] c"expected keys, tables, whitespace or comments, saw '\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"table header\00", align 1
@.str.173 = private unnamed_addr constant [81 x i8] c"[[array-of-table]] brackets must be contiguous (i.e. [ [ this ] ] is prohibited)\00", align 1
@.str.174 = private unnamed_addr constant [54 x i8] c"tables with blank bare keys are explicitly prohibited\00", align 1
@.str.175 = private unnamed_addr constant [20 x i8] c"expected ']', saw '\00", align 1
@.str.176 = private unnamed_addr constant [16 x i8] c"cannot insert '\00", align 1
@.str.177 = private unnamed_addr constant [29 x i8] c"' into existing inline table\00", align 1
@.str.178 = private unnamed_addr constant [33 x i8] c"cannot redefine existing table '\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"' as \00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"array-of-tables\00", align 1
@.str.181 = private unnamed_addr constant [37 x i8] c"File could not be opened for reading\00", align 1
@.str.182 = private unnamed_addr constant [30 x i8] c"Could not determine file size\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [117 x i8] c"St23_Sp_counted_ptr_inplaceIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZN4toml2v34impl12utf8_decoder11state_tableE = linkonce_odr local_unnamed_addr constant [364 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08\00\0C\18$<`T\0C\0C\0C0H\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\00\0C\0C\0C\0C\0C\00\0C\00\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", comdat, align 16
@.str.183 = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"\\u0001\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"\\u0002\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"\\u0003\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"\\u0004\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"\\u0005\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"\\u0006\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"\\u0007\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"\\u000B\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"\\u000E\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"\\u000F\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"\\u0010\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"\\u0011\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"\\u0012\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"\\u0013\00", align 1
@.str.201 = private unnamed_addr constant [7 x i8] c"\\u0014\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"\\u0015\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"\\u0016\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"\\u0017\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"\\u0018\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"\\u0019\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"\\u001A\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"\\u001B\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"\\u001C\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"\\u001D\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"\\u001E\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"\\u001F\00", align 1
@__const._ZNSt8__detail13__to_chars_16IjEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits = private unnamed_addr constant [36 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz", align 16
@.str.213 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@.str.216 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.217 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.218 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.219 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE, ptr @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE11source_pathB5cxx11Ev, ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE9read_nextEv, ptr @_ZNK12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEE8peek_eofEv, ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED2Ev, ptr @_ZN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEED0Ev] }, align 8
@_ZTIN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE, ptr @_ZTIN12_GLOBAL__N_121utf8_reader_interfaceE }, align 8
@_ZTSN12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE = internal constant [74 x i8] c"N12_GLOBAL__N_111utf8_readerISt17basic_string_viewIcSt11char_traitsIcEEEE\00", align 1
@_ZTIN12_GLOBAL__N_121utf8_reader_interfaceE = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_121utf8_reader_interfaceE }, align 8
@_ZTSN12_GLOBAL__N_121utf8_reader_interfaceE = internal constant [40 x i8] c"N12_GLOBAL__N_121utf8_reader_interfaceE\00", align 1
@.str.221 = private unnamed_addr constant [60 x i8] c"Encountered EOF during incomplete utf-8 code point sequence\00", align 1
@.str.222 = private unnamed_addr constant [60 x i8] c"Reading from the underlying stream failed - zero bytes read\00", align 1
@.str.223 = private unnamed_addr constant [35 x i8] c"Encountered invalid utf-8 sequence\00", align 1
@.str.224 = private unnamed_addr constant [36 x i8] c"Encountered overlong utf-8 sequence\00", align 1
@.str.225 = private unnamed_addr constant [63 x i8] c"An I/O error occurred while reading from the underlying stream\00", align 1
@_ZTVN12_GLOBAL__N_111utf8_readerISiEE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_111utf8_readerISiEE, ptr @_ZNK12_GLOBAL__N_111utf8_readerISiE11source_pathB5cxx11Ev, ptr @_ZN12_GLOBAL__N_111utf8_readerISiE9read_nextEv, ptr @_ZNK12_GLOBAL__N_111utf8_readerISiE8peek_eofEv, ptr @_ZN12_GLOBAL__N_111utf8_readerISiED2Ev, ptr @_ZN12_GLOBAL__N_111utf8_readerISiED0Ev] }, align 8
@_ZTIN12_GLOBAL__N_111utf8_readerISiEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_111utf8_readerISiEE, ptr @_ZTIN12_GLOBAL__N_121utf8_reader_interfaceE }, align 8
@_ZTSN12_GLOBAL__N_111utf8_readerISiEE = internal constant [34 x i8] c"N12_GLOBAL__N_111utf8_readerISiEE\00", align 1
@_ZTISt9exception = external constant ptr
@.str.226 = private unnamed_addr constant [30 x i8] c"An unspecified error occurred\00", align 1
@switch.table._ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv = private unnamed_addr constant [16 x i16] [i16 512, i16 poison, i16 1024, i16 2048, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 256], align 4

@_ZN4toml2v34nodeD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v34nodeD2Ev
@_ZN4toml2v314path_componentC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v314path_componentC2Ev
@_ZN4toml2v314path_componentC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN4toml2v314path_componentC2Em
@_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE = unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN4toml2v314path_componentC2ESt17basic_string_viewIcSt11char_traitsIcEE
@_ZN4toml2v314path_componentC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v314path_componentC2ERKS1_
@_ZN4toml2v314path_componentC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v314path_componentC2EOS1_
@_ZN4toml2v34pathC1ESt17basic_string_viewIcSt11char_traitsIcEE = unnamed_addr alias void (ptr, i64, ptr), ptr @_ZN4toml2v34pathC2ESt17basic_string_viewIcSt11char_traitsIcEE
@_ZN4toml2v35arrayC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v35arrayC2Ev
@_ZN4toml2v35arrayD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v35arrayD2Ev
@_ZN4toml2v35arrayC1EPKNS0_4impl15array_init_elemES5_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4toml2v35arrayC2EPKNS0_4impl15array_init_elemES5_
@_ZN4toml2v35arrayC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v35arrayC2ERKS1_
@_ZN4toml2v35arrayC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v35arrayC2EOS1_
@_ZN4toml2v35tableC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v35tableC2Ev
@_ZN4toml2v35tableD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4toml2v35tableD2Ev
@_ZN4toml2v35tableC1EPKNS0_4impl15table_init_pairES5_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4toml2v35tableC2EPKNS0_4impl15table_init_pairES5_
@_ZN4toml2v35tableC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v35tableC2ERKS1_
@_ZN4toml2v35tableC1EOS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4toml2v35tableC2EOS1_
@_ZN4toml2v34impl9formatterC1EPKNS0_4nodeEPKNS0_5tableERKNS1_19formatter_constantsERKNS1_16formatter_configE = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN4toml2v34impl9formatterC2EPKNS0_4nodeEPKNS0_5tableERKNS1_19formatter_constantsERKNS1_16formatter_configE

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoPKcm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %2) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %2, i64 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34impl15print_to_streamERSoaNS0_11value_flagsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, i16 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 27 uses
  %.not.i = icmp eq i8 %1, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %umax.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN4toml2v34impl7impl_ex6parser11parse_floatEv:bb.a
  %.sroa.4.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.4.0.copyload.i99 = load ptr, ptr %.sroa.4.0..sroa_idx.i98, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100

bb.cd:                                            ; preds = %bb.cb
  %i.dn = icmp eq i32 %i.dj, 127
  br i1 %i.dn, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100: ; preds = %bb.cc, %bb.cd, %bb.ce
  %.sroa.4.0.i93 = phi ptr [ %.sroa.4.0.copyload.i99, %bb.cc ], [ %i.do, %bb.ce ], [ @.str.29, %bb.cd ]
  %.sroa.0.0.i94 = phi i64 [ %.sroa.0.0.copyload.i97, %bb.cc ], [ %i.dq, %bb.ce ], [ 6, %bb.cd ]
  store i64 %.sroa.0.0.i94, ptr %31, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sroa.4.0.i93, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #50
  store i64 1, ptr %32, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @.str.16, ptr %i.ds, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %32) #54
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100
  unreachable

bb.cg:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #50
  br label %bb.cv

bb.ch:                                            ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiEEEbDiDpT_.exit, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #50
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %33)
          to label %bb.ci unwind label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.du = load ptr, ptr %33, align 8, !tbaa !74
  %i.dv = getelementptr i8, ptr %i.du, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.cj unwind label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.dy = getelementptr inbounds i8, ptr %33, i64 %i.dw
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %34, ptr noundef nonnull align 8 dereferenceable(264) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #50
  %i.dz = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull %i.a, i64 noundef %.033.ph)
          to label %bb.cl unwind label %bb.cp     ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  %i.eb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cm unwind label %bb.cp     ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !74
  %i.ed = getelementptr i8, ptr %i.ec, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !322
  %i.ei = and i32 %i.eh, 5
  %.not.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.ej = load double, ptr %i.c, align 8, !tbaa !340 ; 2 uses
  %i.ek = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ek, ptr %33, align 8, !tbaa !74
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.em = getelementptr i8, ptr %i.ek, i64 -24
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds i8, ptr %33, i64 %i.en
  store ptr %i.el, ptr %i.eo, align 8, !tbaa !74
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ep, ptr %i.dz, align 8, !tbaa !74
  %i.eq = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.eq, align 8, !tbaa !74
  %i.er = getelementptr inbounds nuw i8, ptr %33, i64 96
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !66 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %33, i64 112 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cn
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !69
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #51
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ex = fneg double %i.ej
  %i.ey = select i1 %i.m, double %i.ex, double %i.ej
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.eq, align 8, !tbaa !74
  %i.ez = getelementptr inbounds nuw i8, ptr %33, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ez) #50
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fa, ptr %33, align 8, !tbaa !74
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fc = getelementptr i8, ptr %i.fa, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr %33, i64 %i.fd
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !74
  %i.ff = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 0, ptr %i.ff, align 8, !tbaa !342
  %i.fg = getelementptr inbounds nuw i8, ptr %33, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fg) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret double %i.ey

bb.co:                                            ; preds = %bb.ch
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cp:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cq:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #50
  store i64 1, ptr %35, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr @.str.16, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #50
  store i64 %.033.ph, ptr %36, align 8, !tbaa !324
  %i.fk = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.a, ptr %i.fk, align 8, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #50
  store i64 37, ptr %37, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr @.str.125, ptr %i.fl, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37) #54
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #50
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cp
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.cs ], [ %i.fi, %bb.cp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %33) #50
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.co
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ct ], [ %i.fh, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cu, %bb.cg, %bb.ca, %bb.bx, %bb.bu, %bb.bo, %bb.bi, %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.ao, %bb.ak, %bb.ag, %bb.ab, %bb.y, %bb.t, %bb.o
  %.pn55 = phi { ptr, i32 } [ %i.y, %bb.t ], [ %.pn.pn, %bb.cu ], [ %i.v, %bb.o ], [ %i.ae, %bb.y ], [ %i.ak, %bb.ab ], [ %i.ap, %bb.ak ], [ %i.as, %bb.ao ], [ %i.am, %bb.ag ], [ %i.bk, %bb.av ], [ %i.bc, %bb.as ], [ %i.ca, %bb.bb ], [ %i.bs, %bb.ay ], [ %i.ch, %bb.bi ], [ %i.cs, %bb.bo ], [ %i.db, %bb.bu ], [ %i.dd, %bb.bx ], [ %i.dh, %bb.ca ], [ %i.dt, %bb.cg ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.f, %bb.e
  %.pn57 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %.pn55, %bb.cv ], [ %i.k, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn57
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef double @_ZN4toml2v34impl7impl_ex6parser16parse_inf_or_nanEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiDiEEEbDiDpT_.exit:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  store i64 14, ptr %i.b, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.116, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  store i8 1, ptr %i.c, align 8, !tbaa !253
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3465
  store i8 1, ptr %i.d, align 1, !tbaa !254
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !67
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !66
  store i8 0, ptr %i.g, align 1, !tbaa !69
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !105, !noundef !105 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !246  ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !67
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiDiEEEbDiDpT_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #54
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiDiEEEbDiDpT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %i.n, i64 noundef %i.j)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge unwind label %bb.b ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.p = load i32, ptr %.pre, align 4, !tbaa !241 ; 3 uses
  %i.q = icmp eq i32 %i.p, 45
  switch i32 %i.p, label %.lr.ph.i.preheader [
    i32 45, label %bb.c
    i32 43, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #53
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %._crit_edge, !prof !155

._crit_edge:                                      ; preds = %bb.d
  %.pre24 = load i32, ptr %i.t, align 4, !tbaa !241
  br label %.lr.ph.i.preheader

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.u, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.y

.lr.ph.i.preheader:                               ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge
  %i.x = phi i32 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge ], [ %.pre24, %._crit_edge ] ; 3 uses
  %i.y = add i32 %i.x, -73
  %switch.and = and i32 %i.y, -33
  %switch.selectcmp = icmp eq i32 %switch.and, 0  ; 3 uses
  %11 = load ptr, ptr %i.a, align 8, !tbaa !239   ; 2 uses
  %.not13.i = icmp eq ptr %11, null
  br i1 %.not13.i, label %12, label %bb.i, !prof !155

12:                                               ; preds = %.noexc20.1, %.noexc20, %.lr.ph.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %13, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %12
  unreachable

bb.i:                                             ; preds = %.lr.ph.i.preheader
  %14 = select i1 %switch.selectcmp, i32 105, i32 110
  %15 = load i32, ptr %11, align 4, !tbaa !241
  %.not14.i.a = icmp eq i32 %15, %14
  br i1 %.not14.i.a, label %16, label %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit

16:                                               ; preds = %bb.i
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %16
  %17 = load ptr, ptr %i.a, align 8, !tbaa !239   ; 2 uses
  %.not13.i.1 = icmp eq ptr %17, null
  br i1 %.not13.i.1, label %12, label %bb.j, !prof !155

bb.j:                                             ; preds = %.noexc20
  %18 = select i1 %switch.selectcmp, i32 110, i32 97
  %19 = load i32, ptr %17, align 4, !tbaa !241
  %.not14.i.1 = icmp eq i32 %19, %18
  br i1 %.not14.i.1, label %20, label %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit

20:                                               ; preds = %bb.j
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc20.1 unwind label %.loopexit

.noexc20.1:                                       ; preds = %20
  %21 = load ptr, ptr %i.a, align 8, !tbaa !239   ; 2 uses
  %.not13.i.2 = icmp eq ptr %21, null
  br i1 %.not13.i.2, label %12, label %bb.k, !prof !155

bb.k:                                             ; preds = %.noexc20.1
  %22 = select i1 %switch.selectcmp, i32 102, i32 110
  %i.z = load i32, ptr %21, align 4, !tbaa !241
  %.not14.i.2 = icmp eq i32 %i.z, %22
  br i1 %.not14.i.2, label %bb.l, label %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc20.2 unwind label %.loopexit

.noexc20.2:                                       ; preds = %bb.l
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !239 ; 5 uses
  store i8 0, ptr %i.c, align 8, !tbaa !253
  %.not13.a = icmp eq ptr %.pre25, null
  br i1 %.not13.a, label %bb.v, label %bb.o

_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 10, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.98, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 3, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = add i32 %i.x, -73
  %switch.and32 = and i32 %i.ac, -33
  %switch.selectcmp33 = icmp eq i32 %switch.and32, 0
  %i.ad = select i1 %switch.selectcmp33, ptr @.str.57, ptr @.str.59
  store ptr %i.ad, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 8, ptr %5, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.99, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.val = load ptr, ptr %i.e, align 8, !tbaa !66
  %.val18 = load i64, ptr %i.f, align 8, !tbaa !67
  store i64 %.val18, ptr %6, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.val, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 1, ptr %7, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.16, ptr %i.ag, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #54
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit
  unreachable

.loopexit:                                        ; preds = %bb.l, %20, %16
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %12
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.y

bb.o:                                             ; preds = %.noexc20.2
  %i.ai = load i32, ptr %.pre25, align 4, !tbaa !241
  %i.aj = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.ai) #56
  br i1 %i.aj, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store i64 32, ptr %8, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.100, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  %23 = load i32, ptr %.pre25, align 8, !tbaa !334 ; 3 uses
  %i.al = icmp ult i32 %23, 32
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = zext nneg i32 %23 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.r:                                             ; preds = %bb.p
  %i.ao = icmp eq i32 %23, 127
  br i1 %i.ao, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre25, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre25, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.q ], [ %i.ap, %bb.s ], [ @.str.29, %bb.r ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.q ], [ %i.ar, %bb.s ], [ 6, %bb.r ]
  store i64 %.sroa.0.0.i, ptr %9, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.4.0.i, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  store i64 1, ptr %10, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.16, ptr %i.at, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10) #54
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.y

bb.v:                                             ; preds = %bb.o, %.noexc20.2
  switch i32 %i.x, label %bb.x [
    i32 105, label %bb.w
    i32 73, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.av = select i1 %i.q, double -inf, double +inf
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.aw = phi double [ %i.av, %bb.w ], [ +qnan, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret double %i.aw

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.u, %bb.h, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.v, %bb.g ], [ %i.au, %bb.u ], [ %i.ah, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm10EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !212
  store i64 15, ptr %i.d, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.129, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !239  ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !241  ; 3 uses
  %i.g = icmp eq i32 %i.f, 45                     ; 3 uses
  %i.h = select i1 %i.g, i64 -1, i64 1            ; 2 uses
  switch i32 %i.f, label %bb.h [
    i32 45, label %bb.b
    i32 43, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !239  ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %._crit_edge125, !prof !155

._crit_edge125:                                   ; preds = %bb.c
  %.pre = load i32, ptr %i.i, align 4, !tbaa !241
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %i.j, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.bp

bb.h:                                             ; preds = %._crit_edge125, %bb.a
  %i.m = phi i32 [ %i.f, %bb.a ], [ %.pre, %._crit_edge125 ] ; 4 uses
  %i.n = phi ptr [ %i.e, %bb.a ], [ %i.i, %._crit_edge125 ] ; 2 uses
  %i.o = add i32 %i.m, -48
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 38, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.128, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.r = icmp ult i32 %i.m, 32
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = zext nneg i32 %i.m to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.s ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.k:                                             ; preds = %bb.i
  %i.u = icmp eq i32 %i.m, 127
  br i1 %i.u, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.j ], [ %i.v, %bb.l ], [ @.str.29, %bb.k ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.j ], [ %i.x, %bb.l ], [ 6, %bb.k ]
  store i64 %.sroa.0.0.i, ptr %3, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.i, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 1, ptr %4, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.16, ptr %i.z, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.bp

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.o, %bb.ar
  %.036.ph = phi i64 [ %i.bm, %bb.ar ], [ 0, %bb.o ] ; 12 uses
  %.035.ph = phi ptr [ %i.ab, %bb.ar ], [ null, %bb.o ]
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !239
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %bb.y
  %i.ab = phi ptr [ %.pr, %thread-pre-split ], [ %i.ak, %bb.y ] ; 7 uses
  %.035 = phi ptr [ %.035.ph, %thread-pre-split ], [ %i.ab, %bb.y ] ; 5 uses
  %.not46 = icmp eq ptr %i.ab, null               ; 2 uses
  br i1 %.not46, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !241 ; 7 uses
  %i.ad = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.ac) #56
  br i1 %i.ad, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = icmp eq i32 %i.ac, 95
  %.not52 = icmp eq ptr %.035, null               ; 2 uses
  br i1 %i.ae, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  br i1 %.not52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = load i32, ptr %.035, align 4, !tbaa !241
  %i.ag = add i32 %i.af, -48
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 34, ptr %5, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.105, ptr %i.ai, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #54
          to label %bb.v unwind label %bb.w
end_hunk_1
begin_hunk_2_@_ZN4toml2v34impl7impl_ex6parser12parse_stringEv:bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not16 = icmp eq ptr %i.n, null
  br i1 %.not16, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.o = icmp eq i32 %i.m, %i.c
  br i1 %i.o, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 23, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.13, ptr %i.q, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.ac

bb.o:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.n, align 8, !tbaa !334
  %i.t = icmp eq i32 %i.c, %i.m
  %i.u = icmp eq i32 %i.c, %i.s
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %i.d, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.v = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser20parse_literal_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.w = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser18parse_basic_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink26 = phi { i64, ptr } [ %i.v, %bb.q ], [ %i.w, %bb.r ] ; 2 uses
  %i.x = extractvalue { i64, ptr } %.sink26, 0
  store i64 %i.x, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = extractvalue { i64, ptr } %.sink26, 1
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.aa, align 8, !tbaa !345
  br label %bb.ab

bb.t:                                             ; preds = %bb.x, %bb.z, %bb.y, %bb.r, %bb.q
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 3056
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !250 ; 3 uses
  %i.ae = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3080 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !247 ; 2 uses
  %i.ah = add i64 %i.ag, 2                        ; 3 uses
  %i.ai = icmp ule i64 %i.ah, %i.ad
  tail call void @llvm.assume(i1 %i.ai)
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !247
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3064
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !249
  %reass.sub = sub i64 %i.ad, %i.ag
  %i.am = add i64 %reass.sub, -2
  %i.an = add i64 %i.am, %i.al
  %i.ao = urem i64 %i.an, 127
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ao
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

bb.w:                                             ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !248
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit:   ; preds = %bb.v, %bb.w
  %i.as = phi ptr [ %i.ap, %bb.v ], [ %i.ar, %bb.w ] ; 2 uses
  store ptr %i.as, ptr %i.a, align 8, !tbaa !239
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.av = load i64, ptr %i.at, align 8
  store i64 %i.av, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 3464
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !253, !range !104, !noundef !105
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.x:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.h, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.x, %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  br i1 %i.d, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.az = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser20parse_literal_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.t

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.ba = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser18parse_basic_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.t

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink29 = phi { i64, ptr } [ %i.az, %bb.y ], [ %i.ba, %bb.z ] ; 2 uses
  %i.bb = extractvalue { i64, ptr } %.sink29, 0
  store i64 %i.bb, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = extractvalue { i64, ptr } %.sink29, 1
  store ptr %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !345
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.s, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.ac:                                            ; preds = %bb.k, %bb.t, %bb.n, %bb.f, %bb.e
  %.pn20 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ %i.p, %bb.k ], [ %i.ab, %bb.t ], [ %i.r, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser13parse_booleanEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  store i64 7, ptr %i.b, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.95, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  store i8 1, ptr %i.c, align 8, !tbaa !253
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3465
  store i8 1, ptr %i.d, align 1, !tbaa !254
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !67
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !66
  store i8 0, ptr %i.g, align 1, !tbaa !69
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !239, !nonnull !105, !noundef !105 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !246  ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !67
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #54
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %i.n, i64 noundef %i.j)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge unwind label %bb.b ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.p = load i32, ptr %.pre, align 4, !tbaa !241 ; 2 uses
  %i.q = and i32 %i.p, -33
  %i.r = icmp eq i32 %i.q, 84                     ; 3 uses
  switch i32 %i.p, label %10 [
    i32 116, label %.lr.ph.i.preheader
    i32 84, label %.lr.ph.i.preheader
  ]

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #53
  unreachable

10:                                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge
  %.pn = phi { i64, ptr } [ { i64 5, ptr @.str.97 }, %10 ], [ { i64 4, ptr @.str.96 }, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge ], [ { i64 4, ptr @.str.96 }, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, ptr } %.pn, 0
  %.sroa.3.0 = extractvalue { i64, ptr } %.pn, 1  ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.0.0, 2
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc13
  %.01018.i = phi ptr [ %i.y, %.noexc13 ], [ %.sroa.3.0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not13.i = icmp eq ptr %i.u, null
  br i1 %.not13.i, label %bb.c, label %bb.d, !prof !155

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %i.v, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = load i32, ptr %.01018.i, align 4, !tbaa !241
  %i.x = load i32, ptr %i.u, align 4, !tbaa !241
  %.not14.i = icmp eq i32 %i.x, %i.w
  br i1 %.not14.i, label %bb.e, label %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.01018.i, i64 4 ; 2 uses
  %.not.i12 = icmp eq ptr %i.y, %11
  br i1 %.not.i12, label %.loopexit16, label %.lr.ph.i

_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 10, ptr %2, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.98, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.aa = select i1 %i.r, i64 4, i64 5
  store i64 %i.aa, ptr %3, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = select i1 %i.r, ptr @.str, ptr @.str.1
  store ptr %i.ac, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 8, ptr %4, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.99, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.val = load ptr, ptr %i.e, align 8, !tbaa !66
  %.val11 = load i64, ptr %i.f, align 8, !tbaa !67
  store i64 %.val11, ptr %5, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.val, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 1, ptr %6, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.16, ptr %i.af, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #54
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit
  unreachable

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.p

.loopexit16:                                      ; preds = %.noexc13
  %.pre17 = load ptr, ptr %i.a, align 8, !tbaa !239 ; 5 uses
  store i8 0, ptr %i.c, align 8, !tbaa !253
  %.not = icmp eq ptr %.pre17, null
  br i1 %.not, label %bb.o, label %bb.h

bb.h:                                             ; preds = %.loopexit16
  %i.ah = load i32, ptr %.pre17, align 4, !tbaa !241
  %i.ai = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.ah) #56
  br i1 %i.ai, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 32, ptr %7, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.100, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %12 = load i32, ptr %.pre17, align 8, !tbaa !334 ; 3 uses
  %i.ak = icmp ult i32 %12, 32
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = zext nneg i32 %12 to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.al ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.am, align 16, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !124
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

bb.k:                                             ; preds = %bb.i
  %i.an = icmp eq i32 %12, 127
  br i1 %i.an, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre17, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre17, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !246
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.j ], [ %i.ao, %bb.l ], [ @.str.29, %bb.k ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.j ], [ %i.aq, %bb.l ], [ 6, %bb.k ]
  store i64 %.sroa.0.0.i, ptr %8, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.4.0.i, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store i64 1, ptr %9, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.16, ptr %i.as, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #54
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  unreachable

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.p

bb.o:                                             ; preds = %bb.h, %.loopexit16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i1 %i.r

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.g
  %.pn9 = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.ag, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser20parse_literal_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %0, i1 noundef zeroext %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  store i64 14, ptr %i.b, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.83, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !124
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !239
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.g, !prof !155

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.d, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.h, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.b
  br i1 %1, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.g = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser18consume_line_breakEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.i unwind label %bb.e       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !239
  %.not32 = icmp eq ptr %i.h, null
  br i1 %.not32, label %bb.j, label %bb.m, !prof !155

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 23, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.13, ptr %i.i, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.i, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3400 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3408 ; 10 uses
  store i64 0, ptr %i.l, align 8, !tbaa !67
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !66
  store i8 0, ptr %i.m, align 1, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3416 ; 6 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !239
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %bb.m
  %i.o = phi ptr [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %.pre, %bb.m ] ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !241  ; 7 uses
  %i.q = icmp eq i32 %i.p, 39
  br i1 %i.q, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %bb.n
  br i1 %1, label %.preheader.preheader, label %bb.ah

.preheader.preheader:                             ; preds = %bb.o
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.p unwind label %.loopexit.loopexit

bb.p:                                             ; preds = %.preheader.preheader
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.s = load i32, ptr %i.r, align 4, !tbaa !241
  %i.t = icmp eq i32 %i.s, 39
  br i1 %i.t, label %.preheader.1, label %bb.x

.preheader.1:                                     ; preds = %bb.q
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.r unwind label %.loopexit.loopexit

bb.r:                                             ; preds = %.preheader.1
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not33.1 = icmp eq ptr %i.u, null
  br i1 %.not33.1, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.v = load i32, ptr %i.u, align 4, !tbaa !241
  %i.w = icmp eq i32 %i.v, 39
  br i1 %i.w, label %.preheader.2, label %bb.z

.preheader.2:                                     ; preds = %bb.s
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.t unwind label %.loopexit.loopexit.split-lp

bb.t:                                             ; preds = %.preheader.2
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not33.2 = icmp eq ptr %i.x, null
  br i1 %.not33.2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.y = load i32, ptr %i.x, align 4, !tbaa !241
  %i.z = icmp eq i32 %i.y, 39
  br i1 %i.z, label %.preheader.3, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.thread

.preheader.3:                                     ; preds = %bb.u
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.v unwind label %.loopexit.loopexit.split-lp

bb.v:                                             ; preds = %.preheader.3
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !239 ; 2 uses
  %.not33.3 = icmp eq ptr %i.aa, null
  br i1 %.not33.3, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !241
  %i.ac = icmp eq i32 %i.ab, 39
  br i1 %i.ac, label %bb.ae, label %bb.ab

.loopexit.loopexit:                               ; preds = %.preheader.preheader, %.preheader.1
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.loopexit.split-lp:                      ; preds = %.preheader.2, %.preheader.3
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.y
  %lpad.loopexit87 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit56
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.q, %bb.p
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !67  ; 4 uses
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !66  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.n
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.x
  %i.ah = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ah)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  %i.ai = load i64, ptr %i.n, align 8, !tbaa !69
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aj = phi i64 [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ak = icmp ugt i64 %i.ae, %i.aj
  br i1 %i.ak, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
end_hunk_2
