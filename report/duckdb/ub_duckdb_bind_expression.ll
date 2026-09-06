Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_bind_expression?download=true
inline.NumInlined: 7467
inline.NumDeleted: 3072
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
@.str.37 = private unnamed_addr constant [142 x i8] c"Function \22%s\22 is a table function but it was used as a scalar function. This function has to be called in a FROM clause (similar to a table).\00", align 1
@.str.38 = private unnamed_addr constant [104 x i8] c"Function \22%s\22 is a %s. \22DISTINCT\22, \22FILTER\22, and \22ORDER BY\22 are only applicable to aggregate functions.\00", align 1
@_ZTIN6duckdb21InvalidInputExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb21InvalidInputExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb21InvalidInputExceptionE = linkonce_odr constant [33 x i8] c"N6duckdb21InvalidInputExceptionE\00", comdat, align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"This scalar function does not support lambdas!\00", align 1
@.str.40 = private unnamed_addr constant [57 x i8] c"No function matches the given name and argument types: '\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"'. You might need to add explicit type casts.\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"Invalid LIST argument during lambda function binding!\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Aggregate functions are not supported here\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"UNNEST not supported here\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"invalid lambda expression\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"Failed to bind lambda parameter internally\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"subqueries in lambda expressions are not supported\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"0_macro_parameters\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"Window function macros must be functions\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"IN requires at least a single child node\00", align 1
@.str.54 = private unnamed_addr constant [80 x i8] c"Cannot mix values of type %s and %s in %s clause - an explicit cast is required\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"NOT IN\00", align 1
@.str.57 = private unnamed_addr constant [88 x i8] c"Cannot mix values of type %s and %s in COALESCE operator - an explicit cast is required\00", align 1
@.str.58 = private unnamed_addr constant [53 x i8] c"Unrecognized expression type for ResolveOperatorType\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"GROUPING function is not supported here\00", align 1
@.str.60 = private unnamed_addr constant [59 x i8] c"UNPACK not allowed here, should have been resolved earlier\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"map_extract_value\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"json_extract\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"$[%lld]\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"$.\22%s\22\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"variant_extract\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"array_extract\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"array_slice\00", align 1
@.str.68 = private unnamed_addr constant [93 x i8] c"Cannot extract field %s from expression \22%s\22 because it is not a struct, union, map, or json\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"union_extract\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"struct_extract\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"list_value\00", align 1
@.str.73 = private unnamed_addr constant [58 x i8] c"TRY can not be used in combination with a scalar subquery\00", align 1
@.str.74 = private unnamed_addr constant [60 x i8] c"TRY can not be used in combination with a volatile function\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"COALESCE needs at least one child\00", align 1
@.str.76 = private unnamed_addr constant [73 x i8] c"Unexpected prepared parameter. This type of statement can't be prepared!\00", align 1
@.str.77 = private unnamed_addr constant [51 x i8] c"Positional reference expression could not be bound\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"*COLUMNS() can not be used in this place\00", align 1
@.str.79 = private unnamed_addr constant [88 x i8] c"UNPACK can only be used in combination with a STAR (*) expression or COLUMNS expression\00", align 1
@.str.80 = private unnamed_addr constant [94 x i8] c"STAR expression is only allowed as the root element of an expression. Use COLUMNS(*) instead.\00", align 1
@.str.81 = private unnamed_addr constant [81 x i8] c"STAR expression with REPLACE list is only allowed as the root element of COLUMNS\00", align 1
@.str.82 = private unnamed_addr constant [80 x i8] c"STAR expression with RENAME list is only allowed as the root element of COLUMNS\00", align 1
@.str.83 = private unnamed_addr constant [68 x i8] c"COLUMNS expression is not allowed inside another COLUMNS expression\00", align 1
@.str.84 = private unnamed_addr constant [73 x i8] c"Multiple different STAR/COLUMNS in the same expression are not supported\00", align 1
@.str.85 = private unnamed_addr constant [108 x i8] c"Unterminated backslash in COLUMNS(*) \22%s\22 alias. Backslashes must either be escaped or followed by a number\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.87 = private unnamed_addr constant [108 x i8] c"Invalid backslash code in COLUMNS(*) \22%s\22 alias. Backslashes must either be escaped or followed by a number\00", align 1
@.str.88 = private unnamed_addr constant [86 x i8] c"Only the backslash escape code \\0 can be used when no regex is supplied to COLUMNS(*)\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"~~\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"!~~\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"~~~\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"!~~~\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"~~*\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"!~~*\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"regexp_full_match\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"not_like_escape\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"ilike_escape\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"not_ilike_escape\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"like_escape\00", align 1
@.str.100 = private unnamed_addr constant [53 x i8] c"Function \22%s\22 cannot be applied to a star expression\00", align 1
@.str.101 = private unnamed_addr constant [56 x i8] c"Pattern applied to a star expression must be a constant\00", align 1
@.str.102 = private unnamed_addr constant [58 x i8] c"Rename list cannot be combined with a filtering operation\00", align 1
@.str.103 = private unnamed_addr constant [59 x i8] c"Replace list cannot be combined with a filtering operation\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"__lambda_col\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"list_filter\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"Table function\00", align 1
@.str.107 = private unnamed_addr constant [34 x i8] c"Unsupported expression in COLUMNS\00", align 1
@.str.108 = private unnamed_addr constant [48 x i8] c"COLUMNS does not support NULL as regex argument\00", align 1
@.str.109 = private unnamed_addr constant [33 x i8] c"Failed to compile regex \22%s\22: %s\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"Did you mean\00", align 1
@.str.112 = private unnamed_addr constant [50 x i8] c"No matching columns found that match regex \22%s\22%s\00", align 1
@.str.113 = private unnamed_addr constant [57 x i8] c"Star expression \22%s\22 resulted in an empty set of columns\00", align 1
@.str.114 = private unnamed_addr constant [58 x i8] c"Columns expression does not support NULL input parameters\00", align 1
@.str.115 = private unnamed_addr constant [62 x i8] c"Column \22%s\22 was selected but was not found in the FROM clause\00", align 1
@.str.116 = private unnamed_addr constant [89 x i8] c"COLUMNS expects either a VARCHAR argument (regex) or a LIST of VARCHAR (list of columns)\00", align 1
@.str.117 = private unnamed_addr constant [60 x i8] c"*COLUMNS not allowed at the root level, use COLUMNS instead\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"Subquery returns %zu columns - expected %d\00", align 1
@.str.120 = private unnamed_addr constant [92 x i8] c"Cannot compare values of type %s and %s in IN/ANY/ALL clause - an explicit cast is required\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.123 = private unnamed_addr constant [44 x i8] c"Type '%s' does not take any type parameters\00", align 1
@.str.124 = private unnamed_addr constant [29 x i8] c"Type parameter for type '%s'\00", align 1
@.str.125 = private unnamed_addr constant [58 x i8] c"Type parameter expression for type '%s' is not a constant\00", align 1
@.str.126 = private unnamed_addr constant [46 x i8] c"UNNEST in lambda expressions is not supported\00", align 1
@.str.127 = private unnamed_addr constant [57 x i8] c"UNNEST() for correlated expressions is not supported yet\00", align 1
@.str.128 = private unnamed_addr constant [40 x i8] c"UNNEST() requires at lease one argument\00", align 1
@.str.129 = private unnamed_addr constant [68 x i8] c"\22DISTINCT\22, \22FILTER\22, and \22ORDER BY\22 are not applicable to \22UNNEST\22\00", align 1
@.str.130 = private unnamed_addr constant [42 x i8] c"Parameter not allowed in unnest parameter\00", align 1
@_ZTIN6duckdb28ParameterNotAllowedExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb28ParameterNotAllowedExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb28ParameterNotAllowedExceptionE = linkonce_odr constant [40 x i8] c"N6duckdb28ParameterNotAllowedExceptionE\00", comdat, align 1
@.str.133 = private unnamed_addr constant [36 x i8] c"UNNEST cannot have a max depth of 0\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"keep_parent_names\00", align 1
@.str.135 = private unnamed_addr constant [38 x i8] c"Unsupported parameter \22%s\22 for unnest\00", align 1
@.str.136 = private unnamed_addr constant [137 x i8] c"UNNEST - unsupported extra argument, unnest only supports recursive := [true/false], max_depth := # or keep_parent_names := [true/false]\00", align 1
@.str.137 = private unnamed_addr constant [99 x i8] c"Nested UNNEST calls are not supported - use UNNEST(x, recursive := true) to unnest multiple levels\00", align 1
@.str.138 = private unnamed_addr constant [64 x i8] c"UNNEST() can only be applied to lists, structs and NULL, not %s\00", align 1
@.str.139 = private unnamed_addr constant [91 x i8] c"UNNEST() on a struct column can only be applied as the root element of a SELECT expression\00", align 1
@.str.140 = private unnamed_addr constant [39 x i8] c"window function calls cannot be nested\00", align 1
@.str.141 = private unnamed_addr constant [53 x i8] c"correlated columns in window functions not supported\00", align 1
@.str.142 = private unnamed_addr constant [52 x i8] c"RANGE frames must have only one ORDER BY expression\00", align 1
@.str.143 = private unnamed_addr constant [54 x i8] c"FILL functions must have only one ORDER BY expression\00", align 1
@.str.145 = private unnamed_addr constant [65 x i8] c"Function '%s' cannot be used as a window with ORDER BY arguments\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"FILL argument must support subtraction\00", align 1
@.str.148 = private unnamed_addr constant [39 x i8] c"FILL ordering must support subtraction\00", align 1
@.str.149 = private unnamed_addr constant [37 x i8] c"Empty list in percentile not allowed\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.151 = private unnamed_addr constant [57 x i8] c"PERCENTILEs can only take parameters in the range [0, 1]\00", align 1
@.str.152 = private unnamed_addr constant [21 x i8] c"Unknown DECIMAL type\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"Type \00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c" with value \00", align 1
@.str.155 = private unnamed_addr constant [75 x i8] c" can't be cast because the value is out of range for the destination type \00", align 1
@.str.158 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.159 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.160 = private unnamed_addr constant [63 x i8] c"Attempting to get the index of an optional_idx that is not set\00", align 1
@"_ZTIZN6duckdbL23IsFunctionallyDependentERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERKNS_6vectorIS4_Lb1ESaIS4_EEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6duckdbL23IsFunctionallyDependentERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERKNS_6vectorIS4_Lb1ESaIS4_EEEE3$_0" }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZTSZN6duckdbL23IsFunctionallyDependentERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERKNS_6vectorIS4_Lb1ESaIS4_EEEE3$_0" = internal constant [134 x i8] c"ZN6duckdbL23IsFunctionallyDependentERKNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERKNS_6vectorIS4_Lb1ESaIS4_EEEE3$_0\00", align 1
@_ZTVN6duckdb17AggregateFunctionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6duckdb17AggregateFunctionE, ptr @_ZN6duckdb17AggregateFunctionD2Ev, ptr @_ZN6duckdb17AggregateFunctionD0Ev, ptr @_ZNK6duckdb18BaseScalarFunction8ToStringB5cxx11Ev] }, comdat, align 8
@_ZTIN6duckdb17AggregateFunctionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17AggregateFunctionE, ptr @_ZTIN6duckdb18BaseScalarFunctionE }, comdat, align 8
@_ZTSN6duckdb17AggregateFunctionE = linkonce_odr constant [29 x i8] c"N6duckdb17AggregateFunctionE\00", comdat, align 1
@_ZTIN6duckdb18BaseScalarFunctionE = external constant ptr
@_ZTVN6duckdb18BaseScalarFunctionE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN6duckdb14SimpleFunctionE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTVN6duckdb8FunctionE = external unnamed_addr constant { [4 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.161 = private unnamed_addr constant [57 x i8] c"optional_idx cannot be initialized with an invalid index\00", align 1
@_ZTVN6duckdb18OperatorExpressionE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN6duckdb14BaseExpressionE = external unnamed_addr constant { [14 x ptr] }, align 8
@_ZTVN6duckdb12DummyBindingE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN6duckdb7BindingE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.163 = private unnamed_addr constant [55 x i8] c"*COLUMNS(...) is not supported in the order expression\00", align 1
@_ZTIN6duckdb23NotImplementedExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb23NotImplementedExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb23NotImplementedExceptionE = linkonce_odr constant [35 x i8] c"N6duckdb23NotImplementedExceptionE\00", comdat, align 1
@.str.164 = private unnamed_addr constant [59 x i8] c"*COLUMNS() can not be used together with the '%s' operator\00", align 1
@.str.165 = private unnamed_addr constant [56 x i8] c"Attempted to access index %ld within vector of size %ld\00", align 1
@_ZTVN6duckdb19TableFunctionBinderE = external unnamed_addr constant { [18 x ptr] }, align 8
@.str.166 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZTVN6duckdb14ConstantBinderE = external unnamed_addr constant { [18 x ptr] }, align 8
@.str.167 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@_ZTVN6duckdb14ScalarFunctionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6duckdb14ScalarFunctionE, ptr @_ZN6duckdb14ScalarFunctionD2Ev, ptr @_ZN6duckdb14ScalarFunctionD0Ev, ptr @_ZNK6duckdb18BaseScalarFunction8ToStringB5cxx11Ev] }, comdat, align 8
@_ZTIN6duckdb14ScalarFunctionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb14ScalarFunctionE, ptr @_ZTIN6duckdb18BaseScalarFunctionE }, comdat, align 8
@_ZTSN6duckdb14ScalarFunctionE = linkonce_odr constant [26 x i8] c"N6duckdb14ScalarFunctionE\00", comdat, align 1
@.str.168 = private unnamed_addr constant [50 x i8] c"Attempted to dereference unique_ptr that is NULL!\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.170 = private unnamed_addr constant [34 x i8] c"'back' called on an empty vector!\00", align 1
@.str.171 = private unnamed_addr constant [40 x i8] c"Window RANGE expressions cannot be NULL\00", align 1
@.str.172 = private unnamed_addr constant [41 x i8] c"Invalid type for Window RANGE expression\00", align 1
@.str.173 = private unnamed_addr constant [37 x i8] c"Unrecognized window expression type \00", align 1
@.str.174 = private unnamed_addr constant [32 x i8] c"%s needs %d parameter%s, got %d\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.176 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.180 = private unnamed_addr constant [61 x i8] c"Failed to cast expression to type - expression type mismatch\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.183 = private unnamed_addr constant [62 x i8] c"Attempting to dereference an optional pointer that is not set\00", align 1
@"_ZTIZN6duckdb16ExpressionBinder18QualifyColumnNamesERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEbE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6duckdb16ExpressionBinder18QualifyColumnNamesERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEbE3$_0" }, align 8
@"_ZTSZN6duckdb16ExpressionBinder18QualifyColumnNamesERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEbE3$_0" = internal constant [254 x i8] c"ZN6duckdb16ExpressionBinder18QualifyColumnNamesERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEbE3$_0\00", align 1
@.str.184 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.185 = private unnamed_addr constant [46 x i8] c"Can't remove offset %d from vector of size %d\00", align 1
@"_ZTIZN6duckdb16ExpressionBinder20CaptureLambdaColumnsERNS_21BoundLambdaExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEENS_12optional_ptrIPFNS_11LogicalTypeERNS_13ClientContextERKNS_6vectorISA_Lb1ESaISA_EEEmELb1EEESH_E3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6duckdb16ExpressionBinder20CaptureLambdaColumnsERNS_21BoundLambdaExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEENS_12optional_ptrIPFNS_11LogicalTypeERNS_13ClientContextERKNS_6vectorISA_Lb1ESaISA_EEEmELb1EEESH_E3$_0" }, align 8
@"_ZTSZN6duckdb16ExpressionBinder20CaptureLambdaColumnsERNS_21BoundLambdaExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEENS_12optional_ptrIPFNS_11LogicalTypeERNS_13ClientContextERKNS_6vectorISA_Lb1ESaISA_EEEmELb1EEESH_E3$_0" = internal constant [243 x i8] c"ZN6duckdb16ExpressionBinder20CaptureLambdaColumnsERNS_21BoundLambdaExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEENS_12optional_ptrIPFNS_11LogicalTypeERNS_13ClientContextERKNS_6vectorISA_Lb1ESaISA_EEEmELb1EEESH_E3$_0\00", align 1
@"_ZTIZN6duckdb16ExpressionBinder22ReplaceMacroParametersERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6duckdb16ExpressionBinder22ReplaceMacroParametersERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEE3$_0" }, align 8
@"_ZTSZN6duckdb16ExpressionBinder22ReplaceMacroParametersERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEE3$_0" = internal constant [257 x i8] c"ZN6duckdb16ExpressionBinder22ReplaceMacroParametersERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEE3$_0\00", align 1
@_ZTIPFvRN6duckdb8TableRefEE = linkonce_odr constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFvRN6duckdb8TableRefEE, i32 0, ptr @_ZTIFvRN6duckdb8TableRefEE }, comdat, align 8
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSPFvRN6duckdb8TableRefEE = linkonce_odr constant [24 x i8] c"PFvRN6duckdb8TableRefEE\00", comdat, align 1
@_ZTIFvRN6duckdb8TableRefEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFvRN6duckdb8TableRefEE }, comdat, align 8
@_ZTVN10__cxxabiv120__function_type_infoE = external global [0 x ptr]
@_ZTSFvRN6duckdb8TableRefEE = linkonce_odr constant [23 x i8] c"FvRN6duckdb8TableRefEE\00", comdat, align 1
@"_ZTIZN6duckdb16ExpressionBinder22ReplaceMacroParametersERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6duckdb16ExpressionBinder22ReplaceMacroParametersERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEE3$_1" }, align 8
@"_ZTSZN6duckdb16ExpressionBinder22ReplaceMacroParametersERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEE3$_1" = internal constant [257 x i8] c"ZN6duckdb16ExpressionBinder22ReplaceMacroParametersERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashISE_ESt8equal_toISE_ESaISE_EELb1ESaISK_EEEE3$_1\00", align 1
@.str.186 = private unnamed_addr constant [51 x i8] c"Failed to cast macro to type - macro type mismatch\00", align 1
@.str.187 = private unnamed_addr constant [50 x i8] c"Attempted to dereference shared_ptr that is NULL!\00", align 1
@"_ZTIZN6duckdb6Binder29ReplaceUnpackedStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorIS5_Lb1ESaIS5_EEERNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6duckdb6Binder29ReplaceUnpackedStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorIS5_Lb1ESaIS5_EEERNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEEE3$_0" }, align 8
@"_ZTSZN6duckdb6Binder29ReplaceUnpackedStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorIS5_Lb1ESaIS5_EEERNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEEE3$_0" = internal constant [213 x i8] c"ZN6duckdb6Binder29ReplaceUnpackedStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEERNS_6vectorIS5_Lb1ESaIS5_EEERNS_14StarExpressionENS_12optional_ptrIN10duckdb_re23RE2ELb1EEEE3$_0\00", align 1
@"_ZTIZN6duckdb6Binder18FindStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEPPNS_14StarExpressionEbbE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6duckdb6Binder18FindStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEPPNS_14StarExpressionEbbE3$_0" }, align 8
@"_ZTSZN6duckdb6Binder18FindStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEPPNS_14StarExpressionEbbE3$_0" = internal constant [135 x i8] c"ZN6duckdb6Binder18FindStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEPPNS_14StarExpressionEbbE3$_0\00", align 1
@"_ZTIZN6duckdb6Binder21ReplaceStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEES6_E3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN6duckdb6Binder21ReplaceStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEES6_E3$_0" }, align 8
@"_ZTSZN6duckdb6Binder21ReplaceStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEES6_E3$_0" = internal constant [117 x i8] c"ZN6duckdb6Binder21ReplaceStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEES6_E3$_0\00", align 1
@_ZTVN6duckdb15SelectStatementE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN6duckdb17BoundSubqueryNodeE = linkonce_odr unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6duckdb17BoundSubqueryNodeE, ptr @_ZN6duckdb17BoundSubqueryNodeD2Ev, ptr @_ZN6duckdb17BoundSubqueryNodeD0Ev, ptr @_ZNK6duckdb17BoundSubqueryNode8ToStringB5cxx11Ev, ptr @_ZNK6duckdb9QueryNode6EqualsEPKS0_, ptr @_ZNK6duckdb17BoundSubqueryNode4CopyEv, ptr @_ZNK6duckdb17BoundSubqueryNode9SerializeERNS_10SerializerE] }, comdat, align 8
@_ZTIN6duckdb17BoundSubqueryNodeE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17BoundSubqueryNodeE, ptr @_ZTIN6duckdb9QueryNodeE }, comdat, align 8
@_ZTSN6duckdb17BoundSubqueryNodeE = linkonce_odr constant [29 x i8] c"N6duckdb17BoundSubqueryNodeE\00", comdat, align 1
@_ZTIN6duckdb9QueryNodeE = external constant ptr
@_ZTVN6duckdb9QueryNodeE = external unnamed_addr constant { [8 x ptr] }, align 8
@.str.188 = private unnamed_addr constant [36 x i8] c"Cannot ToString bound subquery node\00", align 1
@.str.189 = private unnamed_addr constant [32 x i8] c"Cannot copy bound subquery node\00", align 1
@.str.190 = private unnamed_addr constant [37 x i8] c"Cannot serialize bound subquery node\00", align 1
@.str.191 = private unnamed_addr constant [61 x i8] c"Failed to cast query node to type - query node type mismatch\00", align 1
@.str.192 = private unnamed_addr constant [16 x i8] c"%s is not an %s\00", align 1
@_ZN6duckdb29AggregateFunctionCatalogEntry4NameE = external constant ptr, align 8
@_ZTIN6duckdb16CatalogExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb16CatalogExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb16CatalogExceptionE = linkonce_odr constant [28 x i8] c"N6duckdb16CatalogExceptionE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BaseSelectBinder13BindAggregateERNS_18FunctionExpressionERNS_29AggregateFunctionCatalogEntryEm(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::BindResult") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((105, 106)) %1, ptr noundef nonnull align 8 dereferenceable(209) %2, ptr noundef nonnull align 8 dereferenceable(424) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %9 = alloca %"class.duckdb::vector.1031", align 8 ; 12 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::vector.1031", align 8 ; 8 uses
  %15 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %16 = alloca %"class.duckdb::AggregateBinder", align 8 ; 18 uses
  %17 = alloca %"class.duckdb::ErrorData", align 8 ; 46 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::allocator", align 1   ; 5 uses
  %20 = alloca %"struct.duckdb::BindResult", align 8 ; 15 uses
  %21 = alloca %"class.duckdb::ErrorData", align 8 ; 11 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"struct.duckdb::BindResult", align 8 ; 15 uses
  %25 = alloca %"class.duckdb::ErrorData", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"struct.duckdb::BindResult", align 8 ; 15 uses
  %29 = alloca %"class.duckdb::ErrorData", align 8 ; 11 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator", align 1   ; 3 uses
  %32 = alloca %"class.duckdb::ErrorData", align 8 ; 15 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %34 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %35 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %36 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %37 = alloca %"class.duckdb::vector.436", align 8 ; 15 uses
  %38 = alloca %"class.duckdb::vector.436", align 8 ; 14 uses
  %39 = alloca %"class.duckdb::vector.442", align 16 ; 22 uses
  %40 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %41 = alloca %"class.duckdb::FunctionBinder", align 8 ; 6 uses
  %42 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %44 = alloca %"class.std::allocator", align 1   ; 3 uses
  %45 = alloca %"class.duckdb::AggregateFunction", align 8 ; 16 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %48 = alloca %"class.std::allocator", align 1   ; 4 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %50 = alloca %"class.duckdb::ErrorData", align 8 ; 6 uses
  %51 = alloca %"class.duckdb::BinderException", align 8 ; 7 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %53 = alloca %"class.std::allocator", align 1   ; 3 uses
  %54 = alloca %"class.duckdb::unique_ptr.512", align 8 ; 13 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %56 = alloca %"class.std::allocator", align 1   ; 5 uses
  %57 = alloca %"class.duckdb::unique_ptr.528", align 8 ; 15 uses
  %58 = alloca %"class.duckdb::AggregateFunction", align 8 ; 9 uses
  %59 = alloca %"class.duckdb::vector.442", align 16 ; 7 uses
  %60 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %61 = alloca %"class.duckdb::unique_ptr.528", align 8 ; 7 uses
  %62 = alloca %"class.duckdb::unique_ptr.528", align 8 ; 4 uses
  %63 = alloca %"class.std::reference_wrapper", align 8 ; 5 uses
  %64 = alloca %"class.duckdb::unique_ptr.662", align 8 ; 8 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %66 = alloca %"struct.duckdb::ColumnBinding", align 8 ; 6 uses
  store i64 %4, ptr %i.c, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 105
  store i8 1, ptr %i.f, align 1, !tbaa !730
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94, !nonnull !95, !align !96
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97, !nonnull !95, !align !96
  call void @_ZN6duckdb15AggregateBinderC1ERNS_6BinderERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull align 8 dereferenceable(472) %i.h, ptr noundef nonnull align 8 dereferenceable(512) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN6duckdb9ErrorDataC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %17)
          to label %bb.b unwind label %.thread711

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb16ExpressionBinder9BindChildERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmRNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(128) %17)
          to label %bb.e unwind label %bb.d

.thread711:                                       ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZN6duckdb16ExpressionBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit650

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 13 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101
  %.not723 = icmp eq ptr %i.p, null
  br i1 %.not723, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.g unwind label %bb.i       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !104
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !105
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp eq i64 %i.x, 16
  br i1 %i.y, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !109
  switch i64 %i.ab, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.h
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !110
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = icmp ne i32 %i.ad, 1701080941           ; 3 uses
  %i.af = zext i1 %i.ae to i32                    ; 0 uses
  %not. = xor i1 %i.ae, true
  %spec.select838 = zext i1 %not. to i64
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.i:                                             ; preds = %bb.dy, %bb.bi, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.mo

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262: ; preds = %bb.h
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !110 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = xor i64 %i.ai, 7308332244104476017
  %i.ak = getelementptr i8, ptr %i.ah, i64 5
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 8389765628430740585
  %i.an = or i64 %i.aj, %i.am
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262
  %i.ar = load i64, ptr %i.ah, align 1
  %i.as = xor i64 %i.ar, 7308332244104476017
  %i.at = getelementptr i8, ptr %i.ah, i64 5
  %i.au = load i64, ptr %i.at, align 1
  %i.av = xor i64 %i.au, 7166187311894719593
  %i.aw = or i64 %i.as, %i.av
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !97, !nonnull !95, !align !96
  %i.bb = invoke noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ba)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262.thread
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 noundef 0)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !97, !nonnull !95, !align !96
  %i.bg = load i8, ptr %i.be, align 8, !tbaa !121
  %i.bh = invoke noundef zeroext i8 @_ZNK6duckdb8DBConfig12ResolveOrderERNS_13ClientContextENS_9OrderTypeE(ptr noundef nonnull align 8 dereferenceable(1360) %i.bb, ptr noundef nonnull align 8 dereferenceable(512) %i.bf, i8 noundef zeroext %i.bg)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bi = icmp eq i8 %i.bh, 3
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

end_hunk_0
begin_hunk_1_@_ZN6duckdb16BaseSelectBinder10BindWindowERNS_16WindowExpressionEm:bb.a
bb.gv:                                            ; preds = %bb.gu
  store i32 0, ptr %i.xm, align 8, !tbaa !210
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xl, i64 12
  store i32 0, ptr %i.xq, align 4, !tbaa !211
  %i.xr = load ptr, ptr %i.xl, align 8, !tbaa !139
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  %i.xt = load ptr, ptr %i.xs, align 8
  call void %i.xt(ptr noundef nonnull align 8 dereferenceable(16) %i.xl) #23, !inline_history !7
  %i.xu = load ptr, ptr %i.xl, align 8, !tbaa !139
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  %i.xw = load ptr, ptr %i.xv, align 8
  call void %i.xw(ptr noundef nonnull align 8 dereferenceable(16) %i.xl) #23, !inline_history !7
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit503

bb.gw:                                            ; preds = %bb.gu
  %i.xx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !160
  %.not.i.i.i.i.i500 = icmp eq i8 %i.xx, 0
  br i1 %.not.i.i.i.i.i500, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.xy = add nsw i32 %i.xp, -1
  store i32 %i.xy, ptr %i.xm, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i501

bb.gy:                                            ; preds = %bb.gw
  %i.xz = atomicrmw volatile add ptr %i.xm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i501

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i501: ; preds = %bb.gy, %bb.gx
  %.0.i.i.i.i.i.i502 = phi i32 [ %i.xp, %bb.gx ], [ %i.xz, %bb.gy ]
  %i.ya = icmp eq i32 %.0.i.i.i.i.i.i502, 1
  br i1 %i.ya, label %bb.gz, label %_ZN6duckdb17AggregateFunctionD2Ev.exit503, !prof !212

bb.gz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i501
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xl) #23, !inline_history !213
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit503

_ZN6duckdb17AggregateFunctionD2Ev.exit503:        ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.gv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i501, %bb.gz
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %50) #23, !inline_history !213
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  %i.yb = getelementptr inbounds nuw i8, ptr %45, i64 72 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %45, i64 88 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !156 ; 2 uses
  %.not5.i.i.i.i.i504 = icmp eq ptr %i.yd, null
  br i1 %.not5.i.i.i.i.i504, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i512, label %.lr.ph.i.i.i.i.i505

.lr.ph.i.i.i.i.i505:                              ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit503, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i510
  %.06.i.i.i.i.i506 = phi ptr [ %i.ye, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i510 ], [ %i.yd, %_ZN6duckdb17AggregateFunctionD2Ev.exit503 ] ; 6 uses
  %i.ye = load ptr, ptr %.06.i.i.i.i.i506, align 8, !tbaa !157 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i506, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i506, i64 40
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !110 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i506, i64 56
  %i.yj = icmp eq ptr %i.yh, %i.yi
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i508, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i507

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i507: ; preds = %.lr.ph.i.i.i.i.i505
  call void @_ZdlPv(ptr noundef %i.yh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i508

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i508: ; preds = %.lr.ph.i.i.i.i.i505, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i507
  %i.yk = load ptr, ptr %i.yf, align 8, !tbaa !110 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i506, i64 24
  %i.ym = icmp eq ptr %i.yk, %i.yl
  br i1 %i.ym, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i510, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i509: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i508
  call void @_ZdlPv(ptr noundef %i.yk) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i510

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i510: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i508, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i509
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i506) #25
  %.not.i.i.i.i.i511 = icmp eq ptr %i.ye, null
  br i1 %.not.i.i.i.i.i511, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i512, label %.lr.ph.i.i.i.i.i505, !llvm.loop !1

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i512: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i510, %_ZN6duckdb17AggregateFunctionD2Ev.exit503
  %i.yn = load ptr, ptr %i.yb, align 8, !tbaa !158
  %i.yo = getelementptr inbounds nuw i8, ptr %45, i64 80
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !159
  %i.yq = shl i64 %i.yp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.yn, i8 0, i64 %i.yq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yc, i8 0, i64 16, i1 false)
  %i.yr = load ptr, ptr %i.yb, align 8, !tbaa !158 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %45, i64 120
  %i.yt = icmp eq ptr %i.yr, %i.ys
  br i1 %i.yt, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i513, label %bb.ha

bb.ha:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i512
  call void @_ZdlPv(ptr noundef %i.yr) #25
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i513

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i513: ; preds = %bb.ha, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i512
  %i.yu = getelementptr inbounds nuw i8, ptr %45, i64 40
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !110 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.yx = icmp eq ptr %i.yv, %i.yw
  br i1 %i.yx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i515, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i514: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i513
  call void @_ZdlPv(ptr noundef %i.yv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i515

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i515: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i513, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i514
  %i.yy = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !110 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.zb = icmp eq ptr %i.yz, %i.za
  br i1 %i.zb, label %_ZN6duckdb9ErrorDataD2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i516: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i515
  call void @_ZdlPv(ptr noundef %i.yz) #25
  br label %_ZN6duckdb9ErrorDataD2Ev.exit521

_ZN6duckdb9ErrorDataD2Ev.exit521:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i515, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i516
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  br label %bb.ik

bb.hb:                                            ; preds = %_ZNK6duckdb17AggregateFunction12CanAggregateEv.exit.thread
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit527

bb.hc:                                            ; preds = %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit
  %i.zd = landingpad { ptr, i32 }
          cleanup
  %i.ze = load ptr, ptr %60, align 8, !tbaa !147  ; 3 uses
  %.not.i522 = icmp eq ptr %i.ze, null
  br i1 %.not.i522, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i523

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i523: ; preds = %bb.hc
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !139
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zh = load ptr, ptr %i.zg, align 8
  call void %i.zh(ptr noundef nonnull align 8 dereferenceable(88) %i.ze) #23, !inline_history !4
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524: ; preds = %bb.hc, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i523
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %59) #23
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %58) #23
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit527

bb.hd:                                            ; preds = %bb.gb, %_ZN6duckdb17AggregateFunctionD2Ev.exit
  %i.zi = landingpad { ptr, i32 }
          cleanup
  br label %.body489

bb.he:                                            ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEaSEOS7_.exit, %_ZN6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNSt10unique_ptrIN6duckdb17AggregateFunctionESt14default_deleteIS1_EED2Ev.exit
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %.body489

.body489:                                         ; preds = %bb.hd, %bb.gf, %bb.he
  %.pn287 = phi { ptr, i32 } [ %i.zj, %bb.he ], [ %i.zi, %bb.hd ], [ %i.vb, %bb.gf ] ; 2 uses
  %i.zk = load ptr, ptr %57, align 8, !tbaa !215  ; 3 uses
  %.not.i525 = icmp eq ptr %i.zk, null
  br i1 %.not.i525, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit527, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i526

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i526: ; preds = %.body489
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !139
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load ptr, ptr %i.zm, align 8
  call void %i.zn(ptr noundef nonnull align 8 dereferenceable(512) %i.zk) #23, !inline_history !8
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit527

_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit527: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i526, %.body489, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524, %bb.hb
  %.pn287.pn = phi { ptr, i32 } [ %i.zc, %bb.hb ], [ %i.zd, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524 ], [ %.pn287, %.body489 ], [ %.pn287, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i526 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  br label %bb.hf

bb.hf:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit527, %bb.fp
  %.pn287.pn.pn = phi { ptr, i32 } [ %.pn287.pn, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit527 ], [ %.pn283.pn.pn, %bb.fp ]
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %50) #23
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.fg
  %.pn287.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn, %bb.hf ], [ %i.sh, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460, %bb.eq
  %.pn287.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn, %bb.hg ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit460 ], [ %i.qo, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.ep
  %.pn287.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn, %bb.hh ], [ %i.qn, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %45) #23
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.eo
  %.pn287.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn287.pn.pn.pn.pn.pn, %bb.hi ], [ %i.qm, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  br label %bb.qg

bb.hk:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !1591
  switch i8 %i.pu, label %bb.hl [
    i8 120, label %bb.hq
    i8 121, label %bb.hq
    i8 125, label %bb.hq
    i8 123, label %bb.hq
    i8 124, label %bb.hq
    i8 122, label %94
    i8 -126, label %94
    i8 -125, label %94
    i8 -124, label %94
    i8 -123, label %94
    i8 -121, label %94
    i8 -122, label %95
  ]

94:                                               ; preds = %bb.hk, %bb.hk, %bb.hk, %bb.hk, %bb.hk, %bb.hk
  br label %bb.hq

95:                                               ; preds = %bb.hk
  br label %bb.hq

bb.hl:                                            ; preds = %bb.hk
  %i.zo = call ptr @__cxa_allocate_exception(i64 16) #23, !noalias !1591 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !1591
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !1591
  invoke void @_ZN6duckdb22ExpressionTypeToStringB5cxx11ENS_14ExpressionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i8 noundef zeroext %i.pu)
          to label %bb.hm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread.i, !noalias !1591

bb.hm:                                            ; preds = %bb.hl
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.173, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.hn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, !noalias !1591

bb.hn:                                            ; preds = %bb.hm
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.zo, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ho unwind label %bb.hp, !noalias !1591

bb.ho:                                            ; preds = %bb.hn
  invoke void @__cxa_throw(ptr nonnull %i.zo, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ii unwind label %bb.hp, !noalias !1591

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread.i: ; preds = %bb.hl
  %i.zp = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.019.i = phi i1 [ false, %bb.ho ], [ true, %bb.hn ] ; 2 uses
  %i.zq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.zr = load ptr, ptr %6, align 8, !tbaa !110, !noalias !1591 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.zt = icmp eq ptr %i.zr, %i.zs
  br i1 %i.zt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i530, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i529: ; preds = %bb.hp
  call void @_ZdlPv(ptr noundef %i.zr) #25, !noalias !1591
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i530

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i530: ; preds = %bb.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i529
  %i.zu = load ptr, ptr %7, align 8, !tbaa !110, !noalias !1591 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.zw = icmp eq ptr %i.zu, %i.zv
  br i1 %i.zw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.hm
  %i.zx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zy = load ptr, ptr %7, align 8, !tbaa !110, !noalias !1591 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aaa = icmp eq ptr %i.zy, %i.zz
  br i1 %i.aaa, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  call void @_ZdlPv(ptr noundef %i.zy) #25, !noalias !1591
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i530
  call void @_ZdlPv(ptr noundef %i.zu) #25, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !1591
  br i1 %.019.i, label %.sink.split, label %bb.ih

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i530
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !1591
  br i1 %.019.i, label %.sink.split, label %bb.ih

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread.i
  %.pn37.pn61.ph.i = phi { ptr, i32 } [ %i.zx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.thread.i ], [ %i.zp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread.i ], [ %i.zx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !1591
  br label %.sink.split

bb.hq:                                            ; preds = %95, %94, %bb.hk, %bb.hk, %bb.hk, %bb.hk, %bb.hk
  %.sink.i = phi i64 [ 2, %95 ], [ 1, %94 ], [ 0, %bb.hk ], [ 0, %bb.hk ], [ 0, %bb.hk ], [ 0, %bb.hk ], [ 0, %bb.hk ] ; 2 uses
  %96 = phi ptr [ @.str.175, %95 ], [ @.str.4, %94 ], [ @.str.175, %bb.hk ], [ @.str.175, %bb.hk ], [ @.str.175, %bb.hk ], [ @.str.175, %bb.hk ], [ @.str.175, %bb.hk ]
  store i64 %.sink.i, ptr %i.a, align 8, !tbaa !64, !noalias !1591
  %i.aab = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !174, !noalias !1591 ; 3 uses
  %i.aad = load ptr, ptr %34, align 8, !tbaa !318, !noalias !1591 ; 3 uses
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = ptrtoint ptr %i.aad to i64
  %i.aag = sub i64 %i.aae, %i.aaf
  %i.aah = sdiv exact i64 %i.aag, 24
  %.not.i528 = icmp eq i64 %i.aah, %.sink.i
  br i1 %.not.i528, label %.preheader.i, label %bb.hr

.preheader.i:                                     ; preds = %bb.hq
  %.not101102.i = icmp eq ptr %i.aad, %i.aac
  br i1 %.not101102.i, label %._crit_edge.i, label %.lr.ph.i

bb.hr:                                            ; preds = %bb.hq
  %i.aai = call ptr @__cxa_allocate_exception(i64 16) #23, !noalias !1591 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1591
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !1591
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.174, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.hs unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread.i, !noalias !1591

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !1591
  invoke void @_ZN6duckdb22ExpressionTypeToStringB5cxx11ENS_14ExpressionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i8 noundef zeroext %i.pu)
          to label %bb.ht unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread.i, !noalias !1591

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !1591
  store ptr %96, ptr %i.b, align 8, !tbaa !552, !noalias !1591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !1591
  %i.aaj = load ptr, ptr %i.aab, align 8, !tbaa !174, !noalias !1591
  %i.aak = load ptr, ptr %34, align 8, !tbaa !318, !noalias !1591
  %i.aal = ptrtoint ptr %i.aaj to i64
  %i.aam = ptrtoint ptr %i.aak to i64
  %i.aan = sub i64 %i.aal, %i.aam
  %i.aao = sdiv exact i64 %i.aan, 24
  store i64 %i.aao, ptr %i.c, align 8, !tbaa !64, !noalias !1591
  invoke void @_ZN6duckdb15BinderExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmPKcmEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aai, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.hu unwind label %bb.hv, !noalias !1591

bb.hu:                                            ; preds = %bb.ht
  invoke void @__cxa_throw(ptr nonnull %i.aai, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ii unwind label %bb.hv, !noalias !1591

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread.i: ; preds = %bb.hr
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split117.i

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.016.i = phi i1 [ false, %bb.hu ], [ true, %bb.ht ] ; 2 uses
  %i.aaq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !1591
  %i.aar = load ptr, ptr %10, align 8, !tbaa !110, !noalias !1591 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aat = icmp eq ptr %i.aar, %i.aas
  br i1 %i.aat, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %bb.hv
  call void @_ZdlPv(ptr noundef %i.aar) #25, !noalias !1591
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %bb.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !1591
  %i.aau = load ptr, ptr %8, align 8, !tbaa !110, !noalias !1591 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aaw = icmp eq ptr %i.aau, %i.aav
  br i1 %i.aaw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread.i: ; preds = %bb.hs
  %i.aax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !1591
  %i.aay = load ptr, ptr %8, align 8, !tbaa !110, !noalias !1591 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aba = icmp eq ptr %i.aay, %i.aaz
  br i1 %i.aba, label %.sink.split117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread.i
  call void @_ZdlPv(ptr noundef %i.aay) #25, !noalias !1591
  br label %.sink.split117.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  call void @_ZdlPv(ptr noundef %i.aau) #25, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1591
  br i1 %.016.i, label %.sink.split, label %bb.ih

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1591
  br i1 %.016.i, label %.sink.split, label %bb.ih

.sink.split117.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread.i
  %.pn34.pn73.ph.i = phi { ptr, i32 } [ %i.aax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.thread.i ], [ %i.aap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread.i ], [ %i.aax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1591
  br label %.sink.split

bb.hw:                                            ; preds = %.lr.ph.i
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.056.0103.i, i64 24 ; 2 uses
  %.not101.i = icmp eq ptr %i.abb, %i.aac
  br i1 %.not101.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.hw, %.preheader.i
  switch i8 %i.pu, label %bb.ic [
    i8 123, label %.invoke
    i8 124, label %.invoke
    i8 125, label %bb.ia
    i8 120, label %bb.ia
    i8 121, label %bb.ia
    i8 122, label %bb.ia
    i8 -122, label %bb.ib
    i8 -126, label %bb.ib
    i8 -125, label %bb.ib
    i8 -124, label %bb.ib
    i8 -123, label %bb.ib
    i8 -121, label %bb.ib
  ]

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.hw
  %.sroa.056.0103.i = phi ptr [ %i.abb, %bb.hw ], [ %i.aad, %.preheader.i ] ; 2 uses
  %i.abc = load i8, ptr %.sroa.056.0103.i, align 8, !tbaa !140, !noalias !1591
  %i.abd = icmp eq i8 %i.abc, 2
  br i1 %i.abd, label %bb.hx, label %bb.hw

bb.hx:                                            ; preds = %.lr.ph.i
  %i.abe = call ptr @__cxa_allocate_exception(i64 16) #23, !noalias !1591 ; 3 uses
  invoke void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.abe)
          to label %bb.hy unwind label %bb.hz, !noalias !1591

bb.hy:                                            ; preds = %bb.hx
  invoke void @__cxa_throw(ptr nonnull %i.abe, ptr nonnull @_ZTIN6duckdb29ParameterNotResolvedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %.noexc532 unwind label %bb.ij

.noexc532:                                        ; preds = %bb.hy
  unreachable

bb.hz:                                            ; preds = %bb.hx
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ia:                                            ; preds = %._crit_edge.i, %._crit_edge.i, %._crit_edge.i, %._crit_edge.i
  br label %.invoke

.invoke:                                          ; preds = %._crit_edge.i, %._crit_edge.i, %bb.ia
  %i.abg = phi i8 [ 14, %bb.ia ], [ 23, %._crit_edge.i ], [ 23, %._crit_edge.i ]
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 noundef zeroext %i.abg)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.ij

bb.ib:                                            ; preds = %._crit_edge.i, %._crit_edge.i, %._crit_edge.i, %._crit_edge.i, %._crit_edge.i, %._crit_edge.i
  %i.abh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %34, i64 noundef 0)
          to label %.noexc535 unwind label %bb.ij

.noexc535:                                        ; preds = %bb.ib
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %i.abh)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.ij

bb.ic:                                            ; preds = %._crit_edge.i
  %i.abi = call ptr @__cxa_allocate_exception(i64 16) #23, !noalias !1591 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !1591
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !1591
  invoke void @_ZN6duckdb22ExpressionTypeToStringB5cxx11ENS_14ExpressionTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i8 noundef zeroext %i.pu)
          to label %bb.id unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread.i, !noalias !1591

bb.id:                                            ; preds = %bb.ic
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.173, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ie unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread.i, !noalias !1591

bb.ie:                                            ; preds = %bb.id
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.abi, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.if unwind label %bb.ig, !noalias !1591

bb.if:                                            ; preds = %bb.ie
  invoke void @__cxa_throw(ptr nonnull %i.abi, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ii unwind label %bb.ig, !noalias !1591

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread.i: ; preds = %bb.ic
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split118.i

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.0.i = phi i1 [ false, %bb.if ], [ true, %bb.ie ] ; 2 uses
  %i.abk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.abl = load ptr, ptr %11, align 8, !tbaa !110, !noalias !1591 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.abn = icmp eq ptr %i.abl, %i.abm
  br i1 %i.abn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %bb.ig
  call void @_ZdlPv(ptr noundef %i.abl) #25, !noalias !1591
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  %i.abo = load ptr, ptr %12, align 8, !tbaa !110, !noalias !1591 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.abq = icmp eq ptr %i.abo, %i.abp
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread.i: ; preds = %bb.id
  %i.abr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abs = load ptr, ptr %12, align 8, !tbaa !110, !noalias !1591 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %.sink.split118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread.i
  call void @_ZdlPv(ptr noundef %i.abs) #25, !noalias !1591
  br label %.sink.split118.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  call void @_ZdlPv(ptr noundef %i.abo) #25, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !1591
  br i1 %.0.i, label %.sink.split, label %bb.ih

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !1591
  br i1 %.0.i, label %.sink.split, label %bb.ih

.sink.split118.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread.i
  %.pn.pn85.ph.i = phi { ptr, i32 } [ %i.abr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.thread.i ], [ %i.abj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread.i ], [ %i.abr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread.i ]
end_hunk_1
