inline.NumInlined: 10428
inline.NumDeleted: 4079
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 34
begin_hunk_0
@_ZN8facebook5velox10error_code16kInvalidArgumentE = linkonce_odr constant %"class.folly::BasicFixedString.162" { [17 x i8] c"INVALID_ARGUMENT\00", i64 16 }, comdat, align 8
@.str.47 = private unnamed_addr constant [110 x i8] c"({} vs. {}) Cannot deserialize BigintValuesUsingBloomFilter serialized on hardware with different SIMD length\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"nonNegated\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"lowerUnbounded\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"lowerExclusive\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"upperUnbounded\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"upperExclusive\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"singleValue\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@_ZTVN8facebook5velox6common24BigintValuesUsingBitmaskE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common24BigintValuesUsingBitmaskE, ptr @_ZNK8facebook5velox6common24BigintValuesUsingBitmask9serializeEv, ptr @_ZN8facebook5velox6common24BigintValuesUsingBitmaskD2Ev, ptr @_ZN8facebook5velox6common24BigintValuesUsingBitmaskD0Ev, ptr @_ZNK8facebook5velox6common24BigintValuesUsingBitmask5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common24BigintValuesUsingBitmask13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common24BigintValuesUsingBitmask9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common24BigintValuesUsingBitmask14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common24BigintValuesUsingBitmask9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZZN8facebook5velox6common24BigintValuesUsingBitmaskC1EllRKSt6vectorIlSaIlEEbE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 766, ptr @.str.21, ptr @.str.56, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.56 = private unnamed_addr constant [10 x i8] c"min < max\00", align 1
@.str.57 = private unnamed_addr constant [81 x i8] c"({} vs. {}) BigintValuesUsingBitmask min must be less than max. min: {}, max: {}\00", align 1
@_ZZN8facebook5velox6common24BigintValuesUsingBitmaskC1EllRKSt6vectorIlSaIlEEbE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 771, ptr @.str.21, ptr @.str.58, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.58 = private unnamed_addr constant [18 x i8] c"values.size() > 1\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"({} vs. {}) values must contain at least 2 entries, current size is {}\00", align 1
@_ZTVN8facebook5velox6common26BigintValuesUsingHashTableE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common26BigintValuesUsingHashTableE, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable9serializeEv, ptr @_ZN8facebook5velox6common26BigintValuesUsingHashTableD2Ev, ptr @_ZN8facebook5velox6common26BigintValuesUsingHashTableD0Ev, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common26BigintValuesUsingHashTable8toStringB5cxx11Ev] }, align 8
@_ZZN8facebook5velox6common26BigintValuesUsingHashTableC1EllRKSt6vectorIlSaIlEEbE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 820, ptr @.str.20, ptr @.str.56, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.60 = private unnamed_addr constant [83 x i8] c"({} vs. {}) BigintValuesUsingHashTable min must be less than max. min: {}, max: {}\00", align 1
@_ZZN8facebook5velox6common26BigintValuesUsingHashTableC1EllRKSt6vectorIlSaIlEEbE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 825, ptr @.str.20, ptr @.str.58, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.61 = private unnamed_addr constant [10 x i8] c"min_lower\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"min_upper\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"max_lower\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"max_upper\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"lower_values\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"upper_values\00", align 1
@_ZTVN8facebook5velox6common27HugeintValuesUsingHashTableE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common27HugeintValuesUsingHashTableE, ptr @_ZNK8facebook5velox6common27HugeintValuesUsingHashTable9serializeEv, ptr @_ZN8facebook5velox6common27HugeintValuesUsingHashTableD2Ev, ptr @_ZN8facebook5velox6common27HugeintValuesUsingHashTableD0Ev, ptr @_ZNK8facebook5velox6common27HugeintValuesUsingHashTable5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common27HugeintValuesUsingHashTable13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common27HugeintValuesUsingHashTable10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common6Filter9mergeWithEPKS2_, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZZN8facebook5velox6common27HugeintValuesUsingHashTableC1ERKnS4_RKSt6vectorInSaInEEbE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 917, ptr @.str.25, ptr @.str.67, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.67 = private unnamed_addr constant [16 x i8] c"!values.empty()\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"values must not be empty\00", align 1
@_ZZN8facebook5velox6common27HugeintValuesUsingHashTableC1ERKnS4_RKSt6vectorInSaInEEbE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 923, ptr @.str.25, ptr @.str.69, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.69 = private unnamed_addr constant [13 x i8] c"min_ <= max_\00", align 1
@.str.70 = private unnamed_addr constant [91 x i8] c"({} vs. {}) HugeintValuesUsingHashTable min must not be greater than max. min: {}, max: {}\00", align 1
@_ZTVN8facebook5velox6common31NegatedBigintValuesUsingBitmaskE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common31NegatedBigintValuesUsingBitmaskE, ptr @_ZNK8facebook5velox6common31NegatedBigintValuesUsingBitmask9serializeEv, ptr @_ZN8facebook5velox6common31NegatedBigintValuesUsingBitmaskD2Ev, ptr @_ZN8facebook5velox6common31NegatedBigintValuesUsingBitmaskD0Ev, ptr @_ZNK8facebook5velox6common31NegatedBigintValuesUsingBitmask5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common31NegatedBigintValuesUsingBitmask13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common31NegatedBigintValuesUsingBitmask9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common31NegatedBigintValuesUsingBitmask14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common31NegatedBigintValuesUsingBitmask9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZZN8facebook5velox6common31NegatedBigintValuesUsingBitmaskC1EllRKSt6vectorIlSaIlEEbE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 967, ptr @.str.24, ptr @.str.71, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.71 = private unnamed_addr constant [11 x i8] c"min <= max\00", align 1
@.str.72 = private unnamed_addr constant [94 x i8] c"({} vs. {}) NegatedBigintValuesUsingBitmask min must be no greater than max. min: {}, max: {}\00", align 1
@_ZTVN8facebook5velox6common33NegatedBigintValuesUsingHashTableE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common33NegatedBigintValuesUsingHashTableE, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable9serializeEv, ptr @_ZN8facebook5velox6common33NegatedBigintValuesUsingHashTableD2Ev, ptr @_ZN8facebook5velox6common33NegatedBigintValuesUsingHashTableD0Ev, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable8toStringB5cxx11Ev] }, align 8
@_ZTVN8facebook5velox6common16BigintMultiRangeE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common16BigintMultiRangeE, ptr @_ZNK8facebook5velox6common16BigintMultiRange9serializeEv, ptr @_ZN8facebook5velox6common16BigintMultiRangeD2Ev, ptr @_ZN8facebook5velox6common16BigintMultiRangeD0Ev, ptr @_ZNK8facebook5velox6common16BigintMultiRange5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common16BigintMultiRange13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common16BigintMultiRange9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common16BigintMultiRange14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common16BigintMultiRange9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common16BigintMultiRange8toStringB5cxx11Ev] }, align 8
@_ZZN8facebook5velox6common16BigintMultiRangeC1ESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEbE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1135, ptr @.str.31, ptr @.str.73, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.73 = private unnamed_addr constant [17 x i8] c"!ranges_.empty()\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"ranges is empty\00", align 1
@_ZZN8facebook5velox6common16BigintMultiRangeC1ESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEbE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1136, ptr @.str.31, ptr @.str.75, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.75 = private unnamed_addr constant [19 x i8] c"ranges_.size() > 1\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"({} vs. {}) should contain at least 2 ranges.\00", align 1
@_ZZN8facebook5velox6common16BigintMultiRangeC1ESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEbE18veloxCheckFailArgs_1 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1144, ptr @.str.31, ptr @.str.77, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.77 = private unnamed_addr constant [43 x i8] c"lowerBounds_[i] >= ranges_[i - 1]->upper()\00", align 1
@.str.78 = private unnamed_addr constant [43 x i8] c"({} vs. {}) bigint ranges must not overlap\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"BigintMultiRange: [\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"[{}, {}]\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.83 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZNK8facebook5velox6common10MultiRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1593, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@.str.84 = private unnamed_addr constant [10 x i8] c"mergeWith\00", align 1
@_ZN8facebook5velox10error_code16kUnreachableCodeE = linkonce_odr constant %"class.folly::BasicFixedString.162" { [17 x i8] c"UNREACHABLE_CODE\00", i64 16 }, comdat, align 8
@_ZZNK8facebook5velox6common6IsNull9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1598, ptr @.str.84, ptr @.str.85, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.85 = private unnamed_addr constant [25 x i8] c"other->isDeterministic()\00", align 1
@_ZZNK8facebook5velox6common9BoolValue9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1637, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common11BigintRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1829, ptr @.str.84, ptr @.str.86, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.86 = private unnamed_addr constant [43 x i8] c"merged->kind() == FilterKind::kAlwaysFalse\00", align 1
@_ZZNK8facebook5velox6common11BigintRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1858, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common14TimestampRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1884, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common18NegatedBigintRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 1982, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZTVN8facebook5velox6common11BigintRangeE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common11BigintRangeE, ptr @_ZNK8facebook5velox6common11BigintRange9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common11BigintRangeD0Ev, ptr @_ZNK8facebook5velox6common11BigintRange5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common11BigintRange13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common11BigintRange9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common11BigintRange10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common11BigintRange10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common11BigintRange10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common11BigintRange14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common11BigintRange9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common11BigintRange8toStringB5cxx11Ev] }, align 8
@_ZZNK8facebook5velox6common26BigintValuesUsingHashTable9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2041, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common24BigintValuesUsingBitmask9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2135, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common33NegatedBigintValuesUsingHashTable9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2189, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common31NegatedBigintValuesUsingBitmask9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2233, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common16BigintMultiRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2269, ptr @.str.84, ptr @.str.86, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@_ZZNK8facebook5velox6common16BigintMultiRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2306, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common28BigintValuesUsingBloomFilter9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2370, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, align 8
@.str.87 = private unnamed_addr constant [24 x i8] c"Cannot merge {} with {}\00", align 1
@_ZZNK8facebook5velox6common10BytesRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2456, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common17NegatedBytesRange9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2479, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common11BytesValues9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2590, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZZNK8facebook5velox6common18NegatedBytesValues9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 2694, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, align 8
@_ZTVN8facebook5velox6common6FilterE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common6FilterE, ptr @__cxa_pure_virtual, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common6FilterD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common6Filter9mergeWithEPKS2_, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common6FilterE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common6FilterE, ptr @_ZTIN8facebook5velox13ISerializableE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8facebook5velox6common6FilterE = constant [32 x i8] c"N8facebook5velox6common6FilterE\00", align 1
@_ZTIN8facebook5velox13ISerializableE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox13ISerializableE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN8facebook5velox13ISerializableE = linkonce_odr constant [33 x i8] c"N8facebook5velox13ISerializableE\00", comdat, align 1
@_ZTVN8facebook5velox6common11AlwaysFalseE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common11AlwaysFalseE, ptr @_ZNK8facebook5velox6common11AlwaysFalse9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common11AlwaysFalseD0Ev, ptr @_ZNK8facebook5velox6common11AlwaysFalse5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common11AlwaysFalse13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common11AlwaysFalse11testNonNullEv, ptr @_ZNK8facebook5velox6common11AlwaysFalse9testInt64El, ptr @_ZNK8facebook5velox6common11AlwaysFalse10testInt128ERKn, ptr @_ZNK8facebook5velox6common11AlwaysFalse10testDoubleEd, ptr @_ZNK8facebook5velox6common11AlwaysFalse9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common11AlwaysFalse8testBoolEb, ptr @_ZNK8facebook5velox6common11AlwaysFalse9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common11AlwaysFalse10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common11AlwaysFalse14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common11AlwaysFalse15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common11AlwaysFalse15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common11AlwaysFalse14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common11AlwaysFalse18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common11AlwaysFalse9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common11AlwaysFalseE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common11AlwaysFalseE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common11AlwaysFalseE = constant [38 x i8] c"N8facebook5velox6common11AlwaysFalseE\00", align 1
@_ZTVN8facebook5velox6common10AlwaysTrueE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common10AlwaysTrueE, ptr @_ZNK8facebook5velox6common10AlwaysTrue9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common10AlwaysTrueD0Ev, ptr @_ZNK8facebook5velox6common10AlwaysTrue5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common10AlwaysTrue13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common10AlwaysTrue11testNonNullEv, ptr @_ZNK8facebook5velox6common10AlwaysTrue9testInt64El, ptr @_ZNK8facebook5velox6common10AlwaysTrue10testInt128ERKn, ptr @_ZNK8facebook5velox6common10AlwaysTrue10testDoubleEd, ptr @_ZNK8facebook5velox6common10AlwaysTrue9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common10AlwaysTrue8testBoolEb, ptr @_ZNK8facebook5velox6common10AlwaysTrue9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common10AlwaysTrue10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common10AlwaysTrue14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common10AlwaysTrue15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common10AlwaysTrue15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common10AlwaysTrue14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common10AlwaysTrue18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common10AlwaysTrue9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common10AlwaysTrueE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common10AlwaysTrueE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common10AlwaysTrueE = constant [37 x i8] c"N8facebook5velox6common10AlwaysTrueE\00", align 1
@_ZTVN8facebook5velox6common6IsNullE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common6IsNullE, ptr @_ZNK8facebook5velox6common6IsNull9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common6IsNullD0Ev, ptr @_ZNK8facebook5velox6common6IsNull5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common6IsNull13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6IsNull11testNonNullEv, ptr @_ZNK8facebook5velox6common6IsNull9testInt64El, ptr @_ZNK8facebook5velox6common6IsNull10testInt128ERKn, ptr @_ZNK8facebook5velox6common6IsNull10testDoubleEd, ptr @_ZNK8facebook5velox6common6IsNull9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6IsNull8testBoolEb, ptr @_ZNK8facebook5velox6common6IsNull9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6IsNull13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6IsNull10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6IsNull14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6IsNull15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6IsNull15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6IsNull14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6IsNull18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common6IsNull9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common6IsNullE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common6IsNullE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common6IsNullE = constant [32 x i8] c"N8facebook5velox6common6IsNullE\00", align 1
@_ZTVN8facebook5velox6common9IsNotNullE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common9IsNotNullE, ptr @_ZNK8facebook5velox6common9IsNotNull9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common9IsNotNullD0Ev, ptr @_ZNK8facebook5velox6common9IsNotNull5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common9IsNotNull13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common9IsNotNull11testNonNullEv, ptr @_ZNK8facebook5velox6common9IsNotNull9testInt64El, ptr @_ZNK8facebook5velox6common9IsNotNull10testInt128ERKn, ptr @_ZNK8facebook5velox6common9IsNotNull10testDoubleEd, ptr @_ZNK8facebook5velox6common9IsNotNull9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common9IsNotNull8testBoolEb, ptr @_ZNK8facebook5velox6common9IsNotNull9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common9IsNotNull13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common9IsNotNull10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common9IsNotNull14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common9IsNotNull15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common9IsNotNull15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common9IsNotNull14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common9IsNotNull18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common9IsNotNull9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common9IsNotNullE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common9IsNotNullE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common9IsNotNullE = constant [35 x i8] c"N8facebook5velox6common9IsNotNullE\00", align 1
@_ZTVN8facebook5velox6common9BoolValueE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common9BoolValueE, ptr @_ZNK8facebook5velox6common9BoolValue9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common9BoolValueD0Ev, ptr @_ZNK8facebook5velox6common9BoolValue5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common9BoolValue13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common9BoolValue9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common9BoolValue8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common9BoolValue14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common9BoolValue9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common9BoolValueE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common9BoolValueE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common9BoolValueE = constant [35 x i8] c"N8facebook5velox6common9BoolValueE\00", align 1
@_ZTIN8facebook5velox6common11BigintRangeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common11BigintRangeE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common11BigintRangeE = constant [38 x i8] c"N8facebook5velox6common11BigintRangeE\00", align 1
@_ZTVN8facebook5velox6common18NegatedBigintRangeE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common18NegatedBigintRangeE, ptr @_ZNK8facebook5velox6common18NegatedBigintRange9serializeEv, ptr @_ZN8facebook5velox6common18NegatedBigintRangeD2Ev, ptr @_ZN8facebook5velox6common18NegatedBigintRangeD0Ev, ptr @_ZNK8facebook5velox6common18NegatedBigintRange5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common18NegatedBigintRange13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common18NegatedBigintRange9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common18NegatedBigintRange10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common18NegatedBigintRange10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common18NegatedBigintRange10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common18NegatedBigintRange14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common18NegatedBigintRange9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common18NegatedBigintRange8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common18NegatedBigintRangeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common18NegatedBigintRangeE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common18NegatedBigintRangeE = constant [45 x i8] c"N8facebook5velox6common18NegatedBigintRangeE\00", align 1
@_ZTVN8facebook5velox6common12HugeintRangeE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common12HugeintRangeE, ptr @_ZNK8facebook5velox6common12HugeintRange9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common12HugeintRangeD0Ev, ptr @_ZNK8facebook5velox6common12HugeintRange5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common12HugeintRange13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common12HugeintRange10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common12HugeintRange15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common6Filter9mergeWithEPKS2_, ptr @_ZNK8facebook5velox6common12HugeintRange8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common12HugeintRangeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common12HugeintRangeE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common12HugeintRangeE = constant [39 x i8] c"N8facebook5velox6common12HugeintRangeE\00", align 1
@_ZTIN8facebook5velox6common26BigintValuesUsingHashTableE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common26BigintValuesUsingHashTableE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common26BigintValuesUsingHashTableE = constant [53 x i8] c"N8facebook5velox6common26BigintValuesUsingHashTableE\00", align 1
@_ZTIN8facebook5velox6common27HugeintValuesUsingHashTableE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common27HugeintValuesUsingHashTableE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common27HugeintValuesUsingHashTableE = constant [54 x i8] c"N8facebook5velox6common27HugeintValuesUsingHashTableE\00", align 1
@_ZTIN8facebook5velox6common24BigintValuesUsingBitmaskE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common24BigintValuesUsingBitmaskE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common24BigintValuesUsingBitmaskE = constant [51 x i8] c"N8facebook5velox6common24BigintValuesUsingBitmaskE\00", align 1
@_ZTVN8facebook5velox6common28BigintValuesUsingBloomFilterE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common28BigintValuesUsingBloomFilterE, ptr @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter9serializeEv, ptr @_ZN8facebook5velox6common28BigintValuesUsingBloomFilterD2Ev, ptr @_ZN8facebook5velox6common28BigintValuesUsingBloomFilterD0Ev, ptr @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common28BigintValuesUsingBloomFilterE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common28BigintValuesUsingBloomFilterE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common28BigintValuesUsingBloomFilterE = constant [55 x i8] c"N8facebook5velox6common28BigintValuesUsingBloomFilterE\00", align 1
@_ZTIN8facebook5velox6common33NegatedBigintValuesUsingHashTableE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common33NegatedBigintValuesUsingHashTableE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common33NegatedBigintValuesUsingHashTableE = constant [60 x i8] c"N8facebook5velox6common33NegatedBigintValuesUsingHashTableE\00", align 1
@_ZTIN8facebook5velox6common31NegatedBigintValuesUsingBitmaskE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common31NegatedBigintValuesUsingBitmaskE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common31NegatedBigintValuesUsingBitmaskE = constant [58 x i8] c"N8facebook5velox6common31NegatedBigintValuesUsingBitmaskE\00", align 1
@_ZTVN8facebook5velox6common10BytesRangeE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common10BytesRangeE, ptr @_ZNK8facebook5velox6common10BytesRange9serializeEv, ptr @_ZN8facebook5velox6common10BytesRangeD2Ev, ptr @_ZN8facebook5velox6common10BytesRangeD0Ev, ptr @_ZNK8facebook5velox6common10BytesRange5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common10BytesRange13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common10BytesRange9testBytesEPKci, ptr @_ZNK8facebook5velox6common10BytesRange14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common10BytesRange13hasTestLengthEv, ptr @_ZNK8facebook5velox6common10BytesRange10testLengthEi, ptr @_ZNK8facebook5velox6common10BytesRange11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common10BytesRange14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common10BytesRange9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common10BytesRange8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common10BytesRangeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common10BytesRangeE, ptr @_ZTIN8facebook5velox6common13AbstractRangeE }, align 8
@_ZTSN8facebook5velox6common10BytesRangeE = constant [37 x i8] c"N8facebook5velox6common10BytesRangeE\00", align 1
@_ZTIN8facebook5velox6common13AbstractRangeE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common13AbstractRangeE, ptr @_ZTIN8facebook5velox6common6FilterE }, comdat, align 8
@_ZTSN8facebook5velox6common13AbstractRangeE = linkonce_odr constant [40 x i8] c"N8facebook5velox6common13AbstractRangeE\00", comdat, align 1
@_ZTVN8facebook5velox6common17NegatedBytesRangeE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common17NegatedBytesRangeE, ptr @_ZNK8facebook5velox6common17NegatedBytesRange9serializeEv, ptr @_ZN8facebook5velox6common17NegatedBytesRangeD2Ev, ptr @_ZN8facebook5velox6common17NegatedBytesRangeD0Ev, ptr @_ZNK8facebook5velox6common17NegatedBytesRange5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common17NegatedBytesRange13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common17NegatedBytesRange9testBytesEPKci, ptr @_ZNK8facebook5velox6common17NegatedBytesRange14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common17NegatedBytesRange10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common17NegatedBytesRange14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common17NegatedBytesRange9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common17NegatedBytesRange8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common17NegatedBytesRangeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common17NegatedBytesRangeE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common17NegatedBytesRangeE = constant [44 x i8] c"N8facebook5velox6common17NegatedBytesRangeE\00", align 1
@_ZTVN8facebook5velox6common14TimestampRangeE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common14TimestampRangeE, ptr @_ZNK8facebook5velox6common14TimestampRange9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common14TimestampRangeD0Ev, ptr @_ZNK8facebook5velox6common14TimestampRange5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common14TimestampRange13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common14TimestampRange13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common14TimestampRange18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common14TimestampRange9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common14TimestampRange8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common14TimestampRangeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common14TimestampRangeE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common14TimestampRangeE = constant [41 x i8] c"N8facebook5velox6common14TimestampRangeE\00", align 1
@_ZTVN8facebook5velox6common11BytesValuesE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common11BytesValuesE, ptr @_ZNK8facebook5velox6common11BytesValues9serializeEv, ptr @_ZN8facebook5velox6common11BytesValuesD2Ev, ptr @_ZN8facebook5velox6common11BytesValuesD0Ev, ptr @_ZNK8facebook5velox6common11BytesValues5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common11BytesValues13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common11BytesValues9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common11BytesValues10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common11BytesValues14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common11BytesValues9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common11BytesValuesE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common11BytesValuesE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common11BytesValuesE = constant [38 x i8] c"N8facebook5velox6common11BytesValuesE\00", align 1
@_ZTVN8facebook5velox6common18NegatedBytesValuesE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common18NegatedBytesValuesE, ptr @_ZNK8facebook5velox6common18NegatedBytesValues9serializeEv, ptr @_ZN8facebook5velox6common18NegatedBytesValuesD2Ev, ptr @_ZN8facebook5velox6common18NegatedBytesValuesD0Ev, ptr @_ZNK8facebook5velox6common18NegatedBytesValues5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common18NegatedBytesValues13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common18NegatedBytesValues9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common18NegatedBytesValues10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common18NegatedBytesValues14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common18NegatedBytesValues9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common18NegatedBytesValuesE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common18NegatedBytesValuesE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common18NegatedBytesValuesE = constant [45 x i8] c"N8facebook5velox6common18NegatedBytesValuesE\00", align 1
@_ZTVN8facebook5velox6common10MultiRangeE = constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common10MultiRangeE, ptr @_ZNK8facebook5velox6common10MultiRange9serializeEv, ptr @_ZN8facebook5velox6common10MultiRangeD2Ev, ptr @_ZN8facebook5velox6common10MultiRangeD0Ev, ptr @_ZNK8facebook5velox6common10MultiRange5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common10MultiRange13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common10MultiRange10testInt128ERKn, ptr @_ZNK8facebook5velox6common10MultiRange10testDoubleEd, ptr @_ZNK8facebook5velox6common10MultiRange9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common10MultiRange9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common10MultiRange13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common10MultiRange10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common10MultiRange15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common10MultiRange14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common10MultiRange9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, align 8
@_ZTIN8facebook5velox6common10MultiRangeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common10MultiRangeE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common10MultiRangeE = constant [37 x i8] c"N8facebook5velox6common10MultiRangeE\00", align 1
@_ZTIN8facebook5velox6common16BigintMultiRangeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common16BigintMultiRangeE, ptr @_ZTIN8facebook5velox6common6FilterE }, align 8
@_ZTSN8facebook5velox6common16BigintMultiRangeE = constant [43 x i8] c"N8facebook5velox6common16BigintMultiRangeE\00", align 1
@_ZZN8facebook5velox6common12_GLOBAL__N_115filterKindNamesEvE6kNames = internal global %"class.folly::F14FastMap" zeroinitializer, align 8
@_ZGVZN8facebook5velox6common12_GLOBAL__N_115filterKindNamesEvE6kNames = internal global i64 0, align 8
@constinit = private unnamed_addr constant [23 x %"struct.std::pair"] [%"struct.std::pair" { i32 0, %"class.std::basic_string_view" { i64 11, ptr @.str.12 } }, %"struct.std::pair" { i32 1, %"class.std::basic_string_view" { i64 10, ptr @.str.13 } }, %"struct.std::pair" { i32 2, %"class.std::basic_string_view" { i64 6, ptr @.str.14 } }, %"struct.std::pair" { i32 3, %"class.std::basic_string_view" { i64 9, ptr @.str.15 } }, %"struct.std::pair" { i32 4, %"class.std::basic_string_view" { i64 9, ptr @.str.16 } }, %"struct.std::pair" { i32 5, %"class.std::basic_string_view" { i64 11, ptr @.str.17 } }, %"struct.std::pair" { i32 8, %"class.std::basic_string_view" { i64 18, ptr @.str.18 } }, %"struct.std::pair" { i32 6, %"class.std::basic_string_view" { i64 26, ptr @.str.20 } }, %"struct.std::pair" { i32 7, %"class.std::basic_string_view" { i64 24, ptr @.str.21 } }, %"struct.std::pair" { i32 9, %"class.std::basic_string_view" { i64 33, ptr @.str.23 } }, %"struct.std::pair" { i32 10, %"class.std::basic_string_view" { i64 31, ptr @.str.24 } }, %"struct.std::pair" { i32 11, %"class.std::basic_string_view" { i64 11, ptr @.str.27 } }, %"struct.std::pair" { i32 12, %"class.std::basic_string_view" { i64 10, ptr @.str.26 } }, %"struct.std::pair" { i32 13, %"class.std::basic_string_view" { i64 10, ptr @.str.28 } }, %"struct.std::pair" { i32 14, %"class.std::basic_string_view" { i64 17, ptr @.str.29 } }, %"struct.std::pair" { i32 15, %"class.std::basic_string_view" { i64 11, ptr @.str.30 } }, %"struct.std::pair" { i32 16, %"class.std::basic_string_view" { i64 18, ptr @.str.32 } }, %"struct.std::pair" { i32 17, %"class.std::basic_string_view" { i64 16, ptr @.str.31 } }, %"struct.std::pair" { i32 18, %"class.std::basic_string_view" { i64 10, ptr @.str.33 } }, %"struct.std::pair" { i32 19, %"class.std::basic_string_view" { i64 12, ptr @.str.19 } }, %"struct.std::pair" { i32 20, %"class.std::basic_string_view" { i64 14, ptr @.str.34 } }, %"struct.std::pair" { i32 21, %"class.std::basic_string_view" { i64 27, ptr @.str.25 } }, %"struct.std::pair" { i32 22, %"class.std::basic_string_view" { i64 28, ptr @.str.22 } }], align 8
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array" zeroinitializer, i8 -1 }, comdat, align 16
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZTISt9exception = external constant ptr
@.str.88 = private unnamed_addr constant [11 x i8] c"rehashImpl\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox6common10FilterKindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.89, ptr @.str.90, i32 2380, ptr @.str.88, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.89 = private unnamed_addr constant [33 x i8] c"hp.second == srcChunk->tag(srcI)\00", align 1
@.str.90 = private unnamed_addr constant [84 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/container/detail/F14Table.h\00", align 1
@_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE = linkonce_odr constant %"struct.folly::c_array" { [2 x i8] c"\01\00" }, comdat, align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"setTag\00", align 1
@_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.92, ptr @.str.90, i32 719, ptr @.str.91, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.92 = private unnamed_addr constant [18 x i8] c"tags_[index] == 0\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"clearTag\00", align 1
@_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.94, ptr @.str.90, i32 724, ptr @.str.93, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.94 = private unnamed_addr constant [27 x i8] c"(tags_[index] & 0x80) != 0\00", align 1
@_ZZN8facebook5velox5Enums9invertMapINS0_6common10FilterKindESt17basic_string_viewIcSt11char_traitsIcEEEEDaRKN5folly10F14FastMapIT_T0_NS9_23HeterogeneousAccessHashISB_vEENS9_26HeterogeneousAccessEqualToISB_vEESaISt4pairIKSB_SC_EEEEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.95, i64 32, ptr @.str.96, ptr @.str.97, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@.str.95 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/velox/velox/./velox/common/Enums.h\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"invertMap\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"emplaced\00", align 1
@.str.98 = private unnamed_addr constant [46 x i8] c"Cannot invert a map with duplicate values: {}\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyISt17basic_string_viewIcSt11char_traitsIcEEN8facebook5velox6common10FilterKindEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.89, ptr @.str.90, i32 2380, ptr @.str.88, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.99 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"int/double/bool/string\00", align 1
@_ZTIN5folly17BadExpectedAccessIvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessIvEE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessIvEE = linkonce_odr constant [31 x i8] c"N5folly17BadExpectedAccessIvEE\00", comdat, align 1
@_ZTVN5folly17BadExpectedAccessIvEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessIvEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessIvED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@.str.102 = private unnamed_addr constant [20 x i8] c"bad expected access\00", align 1
@_ZTIN5folly15ConversionErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly15ConversionErrorE, ptr @_ZTIN5folly19ConversionErrorBaseE }, comdat, align 8
@_ZTSN5folly15ConversionErrorE = linkonce_odr constant [26 x i8] c"N5folly15ConversionErrorE\00", comdat, align 1
@_ZTIN5folly19ConversionErrorBaseE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly19ConversionErrorBaseE, ptr @_ZTISt11range_error }, comdat, align 8
@_ZTSN5folly19ConversionErrorBaseE = linkonce_odr constant [30 x i8] c"N5folly19ConversionErrorBaseE\00", comdat, align 1
@_ZTISt11range_error = external constant ptr
@_ZTVN5folly15ConversionErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly15ConversionErrorE, ptr @_ZNSt11range_errorD2Ev, ptr @_ZN5folly15ConversionErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr @_ZTIN5folly17BadExpectedAccessIvEE }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant [50 x i8] c"N5folly17BadExpectedAccessINS_14ConversionCodeEEE\00", comdat, align 1
@_ZTVN5folly17BadExpectedAccessINS_14ConversionCodeEEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessINS_14ConversionCodeEEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessINS_14ConversionCodeEED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@_ZTIN5folly9TypeErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly9TypeErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5folly9TypeErrorE = linkonce_odr constant [19 x i8] c"N5folly9TypeErrorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly9TypeErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly9TypeErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly9TypeErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.103 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@_ZN5folly6detail18pretty_name_zarrayIlNS0_14pretty_tag_gccEE6zarrayE = linkonce_odr constant %"struct.folly::c_array.493" { [5 x i8] c"long\00" }, comdat, align 1
@_ZN5folly6detail15to_ascii_powersILm10EmE4dataE = external local_unnamed_addr global %"struct.folly::c_array.495", align 8
@_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array.496", align 2
@.str.108 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"nanos\00", align 1
@_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE = external local_unnamed_addr constant ptr, align 8
@.str.110 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.111 = private unnamed_addr constant [80 x i8] c"vector<bool>::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZN5folly6detail18pretty_name_zarrayIdNS0_14pretty_tag_gccEE6zarrayE = linkonce_odr constant %"struct.folly::c_array.508" { [7 x i8] c"double\00" }, comdat, align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.113 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.114 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZZN8facebook5velox13ISerializable11deserializeISt6vectorINS0_6common6FilterESaIS5_EETnPNSt9enable_ifIXsr14is_vector_typeIT_EE5valueEvE4typeELPv0EEEDaRKN5folly7dynamicESD_E18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 281, ptr @.str.116, ptr @.str.117, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@.str.115 = private unnamed_addr constant [72 x i8] c"/opt-bench/work/velox/velox/./velox/common/serialization/Serializable.h\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"deserialize\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"array.isArray()\00", align 1
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common6FilterEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 177, ptr @.str.116, ptr @.str.118, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@.str.118 = private unnamed_addr constant [15 x i8] c"obj.isObject()\00", align 1
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common6FilterEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 199, ptr @.str.116, ptr @.str.119, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@.str.119 = private unnamed_addr constant [19 x i8] c"registry.Has(name)\00", align 1
@.str.120 = private unnamed_addr constant [57 x i8] c"Deserialization function for class: {} is not registered\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [116 x i8] c"St19_Sp_counted_deleterIPN8facebook5velox13ISerializableESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIN8facebook5velox13ISerializableEE = linkonce_odr constant [53 x i8] c"St14default_deleteIN8facebook5velox13ISerializableEE\00", comdat, align 1
@.str.121 = private unnamed_addr constant [29 x i8] c"vector<bool>::_M_fill_insert\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"object/array\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.89, ptr @.str.90, i32 2380, ptr @.str.88, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.92, ptr @.str.90, i32 719, ptr @.str.91, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE8clearTagEmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.94, ptr @.str.90, i32 724, ptr @.str.93, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@_ZTVN8facebook5velox6common13AbstractRangeE = linkonce_odr constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common13AbstractRangeE, ptr @__cxa_pure_virtual, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common13AbstractRangeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common6Filter10testDoubleEd, ptr @_ZNK8facebook5velox6common6Filter9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIdNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIfNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common6Filter15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common6Filter9mergeWithEPKS2_, ptr @_ZNK8facebook5velox6common6Filter8toStringB5cxx11Ev] }, comdat, align 8
@_ZZN8facebook5velox6common13AbstractRangeC1EbbbbbNS1_10FilterKindEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1561, ptr @.str.126, ptr @.str.127, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.125 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/velox/velox/./velox/type/Filter.h\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"AbstractRange\00", align 1
@.str.127 = private unnamed_addr constant [37 x i8] c"!lowerUnbounded_ || !upperUnbounded_\00", align 1
@.str.128 = private unnamed_addr constant [48 x i8] c"A range filter must have a lower or upper bound\00", align 1
@_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.129, i64 82, ptr @.str.130, ptr @.str.131, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.129 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/velox/velox/./velox/type/StringView.h\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"StringView\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"len >= 0\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"({} vs. {})\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.89, ptr @.str.90, i32 2380, ptr @.str.88, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.133 = private unnamed_addr constant [16 x i8] c"rehashBuildFrom\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_E30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.134, ptr @.str.90, i32 2107, ptr @.str.133, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.134 = private unnamed_addr constant [30 x i8] c"hp.second == srcChunk->tag(i)\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.89, ptr @.str.90, i32 2380, ptr @.str.88, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15rehashBuildFromIRKS5_EEvOT_E30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.134, ptr @.str.90, i32 2107, ptr @.str.133, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.135 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZZNK8facebook5velox6common6Filter11testNonNullEvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 160, ptr @.str.136, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.136 = private unnamed_addr constant [12 x i8] c"testNonNull\00", align 1
@_ZN8facebook5velox10error_code12kUnsupportedE = linkonce_odr constant %"class.folly::BasicFixedString.691" { [12 x i8] c"UNSUPPORTED\00", i64 11 }, comdat, align 8
@.str.137 = private unnamed_addr constant [36 x i8] c"{}: testNonNull() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter9testInt64ElE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 164, ptr @.str.138, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.138 = private unnamed_addr constant [10 x i8] c"testInt64\00", align 1
@.str.139 = private unnamed_addr constant [34 x i8] c"{}: testInt64() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter10testInt128ERKnE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 168, ptr @.str.140, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.140 = private unnamed_addr constant [11 x i8] c"testInt128\00", align 1
@.str.141 = private unnamed_addr constant [35 x i8] c"{}: testInt128() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter10testDoubleEdE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 172, ptr @.str.142, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.142 = private unnamed_addr constant [11 x i8] c"testDouble\00", align 1
@.str.143 = private unnamed_addr constant [35 x i8] c"{}: testDouble() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter9testFloatEfE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 176, ptr @.str.144, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.144 = private unnamed_addr constant [10 x i8] c"testFloat\00", align 1
@.str.145 = private unnamed_addr constant [34 x i8] c"{}: testFloat() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter8testBoolEbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 200, ptr @.str.146, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.146 = private unnamed_addr constant [9 x i8] c"testBool\00", align 1
@.str.147 = private unnamed_addr constant [33 x i8] c"{}: testBool() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter9testBytesEPKciE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 204, ptr @.str.148, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.148 = private unnamed_addr constant [10 x i8] c"testBytes\00", align 1
@.str.149 = private unnamed_addr constant [34 x i8] c"{}: testBytes() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 212, ptr @.str.150, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.150 = private unnamed_addr constant [14 x i8] c"testTimestamp\00", align 1
@.str.151 = private unnamed_addr constant [38 x i8] c"{}: testTimestamp() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter10testLengthEiE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 229, ptr @.str.152, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.152 = private unnamed_addr constant [11 x i8] c"testLength\00", align 1
@.str.153 = private unnamed_addr constant [35 x i8] c"{}: testLength() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter14testInt64RangeEllbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 244, ptr @.str.154, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.154 = private unnamed_addr constant [15 x i8] c"testInt64Range\00", align 1
@.str.155 = private unnamed_addr constant [39 x i8] c"{}: testInt64Range() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_bE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 251, ptr @.str.156, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.156 = private unnamed_addr constant [16 x i8] c"testInt128Range\00", align 1
@.str.157 = private unnamed_addr constant [40 x i8] c"{}: testInt128Range() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter15testDoubleRangeEddbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 259, ptr @.str.158, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.158 = private unnamed_addr constant [16 x i8] c"testDoubleRange\00", align 1
@.str.159 = private unnamed_addr constant [40 x i8] c"{}: testDoubleRange() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_bE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 266, ptr @.str.160, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.160 = private unnamed_addr constant [15 x i8] c"testBytesRange\00", align 1
@.str.161 = private unnamed_addr constant [39 x i8] c"{}: testBytesRange() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_bE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 273, ptr @.str.162, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.162 = private unnamed_addr constant [19 x i8] c"testTimestampRange\00", align 1
@.str.163 = private unnamed_addr constant [43 x i8] c"{}: testTimestampRange() is not supported.\00", align 1
@_ZZNK8facebook5velox6common6Filter9mergeWithEPKS2_E18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 278, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code12kUnsupportedE, i8 0 }, comdat, align 8
@.str.164 = private unnamed_addr constant [34 x i8] c"{}: mergeWith() is not supported.\00", align 1
@.str.165 = private unnamed_addr constant [25 x i8] c"BigintRange: [{}, {}] {}\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"Negated\00", align 1
@.str.168 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.170 = private unnamed_addr constant [26 x i8] c"HugeintRange: [{}, {}] {}\00", align 1
@_ZN8facebook5velox4simd6detail13fromBitMask64E = external local_unnamed_addr global %"struct.facebook::velox::simd::detail::FromBitMask", align 32
@_ZN8facebook5velox4simd6detail13fromBitMask32E = external local_unnamed_addr global %"struct.facebook::velox::simd::detail::FromBitMask.752", align 32
@.str.171 = private unnamed_addr constant [40 x i8] c"BigintValuesUsingHashTable: [{}, {}] {}\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.89, ptr @.str.90, i32 2380, ptr @.str.88, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@_ZZN5folly3f146detail8F14ChunkInE6setTagEmmE30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.92, ptr @.str.90, i32 719, ptr @.str.91, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15rehashBuildFromIRKS5_EEvOT_E30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.134, ptr @.str.90, i32 2107, ptr @.str.133, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.172 = private unnamed_addr constant [47 x i8] c"NegatedBigintValuesUsingHashTable: [{}, {}] {}\00", align 1
@.str.173 = private unnamed_addr constant [26 x i8] c"BytesRange: {}{}, {}{} {}\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.178 = private unnamed_addr constant [28 x i8] c"TimestampRange: [{}, {}] {}\00", align 1
@_ZZNK8facebook5velox9Timestamp8toStringB5cxx11ERKNS0_24TimestampToStringOptionsEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.179, i64 419, ptr @.str.180, ptr @.str.181, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@.str.179 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/velox/velox/./velox/type/Timestamp.h\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"toString\00", align 1
@.str.181 = private unnamed_addr constant [33 x i8] c"epochToCalendarUtc(seconds_, tm)\00", align 1
@.str.182 = private unnamed_addr constant [34 x i8] c"Can't convert seconds to time: {}\00", align 1
@.str.183 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.89, ptr @.str.90, i32 2380, ptr @.str.88, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISF_EERKNS_7dynamicEEEEE6setTagEmmE30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.92, ptr @.str.90, i32 719, ptr @.str.91, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISF_EERKNS_7dynamicEEEEE8clearTagEmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.94, ptr @.str.90, i32 724, ptr @.str.93, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@_ZTIPFSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EERKN5folly7dynamicEE = linkonce_odr constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EERKN5folly7dynamicEE, i32 0, ptr @_ZTIFSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EERKN5folly7dynamicEE }, comdat, align 8
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSPFSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EERKN5folly7dynamicEE = linkonce_odr constant [92 x i8] c"PFSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EERKN5folly7dynamicEE\00", comdat, align 1
@_ZTIFSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EERKN5folly7dynamicEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EERKN5folly7dynamicEE }, comdat, align 8
@_ZTVN10__cxxabiv120__function_type_infoE = external global [0 x ptr]
@_ZTSFSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EERKN5folly7dynamicEE = linkonce_odr constant [91 x i8] c"FSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EERKN5folly7dynamicEE\00", comdat, align 1
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common26BigintValuesUsingHashTableEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 177, ptr @.str.116, ptr @.str.118, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common26BigintValuesUsingHashTableEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 199, ptr @.str.116, ptr @.str.119, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common24BigintValuesUsingBitmaskEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 177, ptr @.str.116, ptr @.str.118, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common24BigintValuesUsingBitmaskEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 199, ptr @.str.116, ptr @.str.119, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox6common18FloatingPointRangeIdEE = linkonce_odr constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common18FloatingPointRangeIdEE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common18FloatingPointRangeIdED0Ev, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE10testValuesEN5xsimd5batchIdNS4_4fma3INS4_4avx2EEEEE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE10testValuesEN5xsimd5batchIfNS4_4fma3INS4_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIdE8toStringB5cxx11Ev] }, comdat, align 8
@_ZZN8facebook5velox6common18FloatingPointRangeIdEC1EdbbdbbbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1629, ptr @.str.184, ptr @.str.185, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.184 = private unnamed_addr constant [19 x i8] c"FloatingPointRange\00", align 1
@.str.185 = private unnamed_addr constant [38 x i8] c"lowerUnbounded || !std::isnan(lower_)\00", align 1
@_ZZN8facebook5velox6common18FloatingPointRangeIdEC1EdbbdbbbE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1630, ptr @.str.184, ptr @.str.186, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.186 = private unnamed_addr constant [38 x i8] c"upperUnbounded || !std::isnan(upper_)\00", align 1
@_ZTIN8facebook5velox6common18FloatingPointRangeIdEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common18FloatingPointRangeIdEE, ptr @_ZTIN8facebook5velox6common13AbstractRangeE }, comdat, align 8
@_ZTSN8facebook5velox6common18FloatingPointRangeIdEE = linkonce_odr constant [48 x i8] c"N8facebook5velox6common18FloatingPointRangeIdEE\00", comdat, align 1
@_ZZN8facebook5velox6common18FloatingPointRangeIdEC1ERKS3_bE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1644, ptr @.str.184, ptr @.str.187, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.187 = private unnamed_addr constant [39 x i8] c"lowerUnbounded_ || !std::isnan(lower_)\00", align 1
@_ZZN8facebook5velox6common18FloatingPointRangeIdEC1ERKS3_bE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1645, ptr @.str.184, ptr @.str.188, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.188 = private unnamed_addr constant [39 x i8] c"upperUnbounded_ || !std::isnan(upper_)\00", align 1
@_ZZNK8facebook5velox6common18FloatingPointRangeIdE9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1745, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, comdat, align 8
@.str.189 = private unnamed_addr constant [18 x i8] c"{}: {}{}, {}{} {}\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.192 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@_ZTVN8facebook5velox6common18FloatingPointRangeIfEE = linkonce_odr constant { [31 x ptr] } { [31 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common18FloatingPointRangeIfEE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE9serializeEv, ptr @_ZN8facebook5velox13ISerializableD2Ev, ptr @_ZN8facebook5velox6common18FloatingPointRangeIfED0Ev, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE5cloneESt8optionalIbE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE13testingEqualsERKNS1_6FilterE, ptr @_ZNK8facebook5velox6common6Filter11testNonNullEv, ptr @_ZNK8facebook5velox6common6Filter9testInt64El, ptr @_ZNK8facebook5velox6common6Filter10testInt128ERKn, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE9testFloatEf, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIlNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter10testValuesEN5xsimd5batchIsNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE10testValuesEN5xsimd5batchIdNS4_4fma3INS4_4avx2EEEEE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE10testValuesEN5xsimd5batchIfNS4_4fma3INS4_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter8testBoolEb, ptr @_ZNK8facebook5velox6common6Filter9testBytesEPKci, ptr @_ZNK8facebook5velox6common6Filter14testStringViewERKNS0_10StringViewE, ptr @_ZNK8facebook5velox6common6Filter13testTimestampERKNS0_9TimestampE, ptr @_ZNK8facebook5velox6common6Filter13hasTestLengthEv, ptr @_ZNK8facebook5velox6common6Filter10testLengthEi, ptr @_ZNK8facebook5velox6common6Filter11testLengthsEN5xsimd5batchIiNS3_4fma3INS3_4avx2EEEEE, ptr @_ZNK8facebook5velox6common6Filter14testInt64RangeEllb, ptr @_ZNK8facebook5velox6common6Filter15testInt128RangeERKnS4_b, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE15testDoubleRangeEddb, ptr @_ZNK8facebook5velox6common6Filter14testBytesRangeESt8optionalISt17basic_string_viewIcSt11char_traitsIcEEES8_b, ptr @_ZNK8facebook5velox6common6Filter18testTimestampRangeERKNS0_9TimestampES5_b, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE9mergeWithEPKNS1_6FilterE, ptr @_ZNK8facebook5velox6common18FloatingPointRangeIfE8toStringB5cxx11Ev] }, comdat, align 8
@_ZZN8facebook5velox6common18FloatingPointRangeIfEC1EfbbfbbbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1629, ptr @.str.184, ptr @.str.185, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox6common18FloatingPointRangeIfEC1EfbbfbbbE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1630, ptr @.str.184, ptr @.str.186, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTIN8facebook5velox6common18FloatingPointRangeIfEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common18FloatingPointRangeIfEE, ptr @_ZTIN8facebook5velox6common13AbstractRangeE }, comdat, align 8
@_ZTSN8facebook5velox6common18FloatingPointRangeIfEE = linkonce_odr constant [48 x i8] c"N8facebook5velox6common18FloatingPointRangeIfEE\00", comdat, align 1
@_ZZN8facebook5velox6common18FloatingPointRangeIfEC1ERKS3_bE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1644, ptr @.str.184, ptr @.str.187, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox6common18FloatingPointRangeIfEC1ERKS3_bE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1645, ptr @.str.184, ptr @.str.188, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZNK8facebook5velox6common18FloatingPointRangeIfE10testValuesEN5xsimd5batchIdNS4_4fma3INS4_4avx2EEEEEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1868, ptr @.str.193, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.193 = private unnamed_addr constant [11 x i8] c"testValues\00", align 1
@.str.194 = private unnamed_addr constant [29 x i8] c"Not defined for float filter\00", align 1
@_ZZNK8facebook5velox6common18FloatingPointRangeIfE9mergeWithEPKNS1_6FilterEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1745, ptr @.str.84, ptr @.str.83, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox6common10BytesRangeC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbS8_bbbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 1918, ptr @.str.28, ptr @.str.127, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common10BytesRangeEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 177, ptr @.str.116, ptr @.str.118, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common10BytesRangeEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 199, ptr @.str.116, ptr @.str.119, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox6common11BytesValuesC1ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 2252, ptr @.str.30, ptr @.str.67, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common11BigintRangeEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 177, ptr @.str.116, ptr @.str.118, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common11BigintRangeEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 199, ptr @.str.116, ptr @.str.119, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common11BytesValuesEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 177, ptr @.str.116, ptr @.str.118, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13ISerializable11deserializeINS0_6common11BytesValuesEvEESt10shared_ptrIKT_ERKN5folly7dynamicEPvE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.115, i64 199, ptr @.str.116, ptr @.str.119, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox6common18NegatedBytesValuesC1ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.125, i64 2361, ptr @.str.32, ptr @.str.67, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN8facebook5velox6common24BigintValuesUsingBitmaskC1EllRKSt6vectorIlSaIlEEb = unnamed_addr alias void (ptr, i64, i64, ptr, i1), ptr @_ZN8facebook5velox6common24BigintValuesUsingBitmaskC2EllRKSt6vectorIlSaIlEEb
@_ZN8facebook5velox6common26BigintValuesUsingHashTableC1EllRKSt6vectorIlSaIlEEb = unnamed_addr alias void (ptr, i64, i64, ptr, i1), ptr @_ZN8facebook5velox6common26BigintValuesUsingHashTableC2EllRKSt6vectorIlSaIlEEb
@_ZN8facebook5velox6common27HugeintValuesUsingHashTableC1ERKnS4_RKSt6vectorInSaInEEb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i1), ptr @_ZN8facebook5velox6common27HugeintValuesUsingHashTableC2ERKnS4_RKSt6vectorInSaInEEb
@_ZN8facebook5velox6common31NegatedBigintValuesUsingBitmaskC1EllRKSt6vectorIlSaIlEEb = unnamed_addr alias void (ptr, i64, i64, ptr, i1), ptr @_ZN8facebook5velox6common31NegatedBigintValuesUsingBitmaskC2EllRKSt6vectorIlSaIlEEb
@_ZN8facebook5velox6common33NegatedBigintValuesUsingHashTableC1EllRKSt6vectorIlSaIlEEb = unnamed_addr alias void (ptr, i64, i64, ptr, i1), ptr @_ZN8facebook5velox6common33NegatedBigintValuesUsingHashTableC2EllRKSt6vectorIlSaIlEEb
@_ZN8facebook5velox6common16BigintMultiRangeC1ESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEb = unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN8facebook5velox6common16BigintMultiRangeC2ESt6vectorISt10unique_ptrINS1_11BigintRangeESt14default_deleteIS5_EESaIS8_EEb

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN8facebook5velox6common14FilterKindName6toNameENS1_10FilterKindE(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.796", align 16 ; 4 uses
  %2 = alloca [23 x %"struct.std::pair"], align 8 ; 5 uses
  %3 = alloca %"struct.folly::HeterogeneousAccessHash", align 1 ; 4 uses
  %4 = alloca %"struct.folly::HeterogeneousAccessEqualTo", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox6common12_GLOBAL__N_115filterKindNamesEvE6kNames acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8facebook5velox6common12_GLOBAL__N_115filterKindNamesEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox6common12_GLOBAL__N_115filterKindNamesEvE6kNames) #44
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8facebook5velox6common12_GLOBAL__N_115filterKindNamesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %2, ptr noundef nonnull align 8 dereferenceable(552) @constinit, i64 552, i1 false), !tbaa.struct !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  invoke void @_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox6common10FilterKindESt17basic_string_viewIcSt11char_traitsIcEEvvvSt17integral_constantIbLb1EEEEEC2ESt16initializer_listISt4pairIKS7_SB_EEmRKNS_23HeterogeneousAccessHashIS7_vEERKNS_26HeterogeneousAccessEqualToIS7_vEERKSaISJ_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN8facebook5velox6common12_GLOBAL__N_115filterKindNamesEvE6kNames, ptr nonnull %2, i64 23, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox6common24BigintValuesUsingBitmask9serializeEv:bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.41, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 3))
          to label %bb.d unwind label %bb.f       ; 4 uses

bb.d:                                             ; preds = %_ZN5folly7dynamicaSIllEERS0_T_.exit
  %i.j = load i32, ptr %i.i, align 8, !tbaa !121
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %_ZN5folly7dynamicaSIllEERS0_T_.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #44
  store i32 4, ptr %i.i, align 8, !tbaa !121
  br label %_ZN5folly7dynamicaSIllEERS0_T_.exit18

_ZN5folly7dynamicaSIllEERS0_T_.exit18:            ; preds = %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.h, ptr %i.l, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  store i32 1, ptr %2, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !387  ; 2 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !388  ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !387  ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = shl nsw i64 %i.v, 3
  %i.x = zext i32 %i.r to i64
  %i.y = sub nsw i64 0, %i.x
  %.not26 = icmp eq i64 %i.w, %i.y
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly7dynamicaSIllEERS0_T_.exit18
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.g

._crit_edge:                                      ; preds = %bb.m, %_ZN5folly7dynamicaSIllEERS0_T_.exit18
  %i.ac = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.42, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 6))
          to label %bb.n unwind label %bb.p

bb.f:                                             ; preds = %_ZN5folly7dynamicaSIllEERS0_T_.exit, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %i.ae = phi ptr [ %i.s, %.lr.ph ], [ %i.ax, %bb.m ] ; 2 uses
  %i.af = phi i32 [ %i.r, %.lr.ph ], [ %i.ay, %bb.m ]
  %i.ag = phi ptr [ %i.q, %.lr.ph ], [ %i.az, %bb.m ]
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %bb.m ] ; 5 uses
  %i.ah = sdiv i64 %.025, 64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = and i64 %.025, -9223372036854775745
  %i.ak = icmp ugt i64 %i.aj, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ak, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ai, i64 %storemerge.idx.i.i.i.i.i
  %i.al = and i64 %.025, 63
  %i.am = shl nuw i64 1, %i.al
  %i.an = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !35
  %i.ao = and i64 %i.an, %i.am
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !378
  %i.aq = add i64 %i.ap, %.025
  store i32 4, ptr %3, align 8, !tbaa !121
  store i64 %i.aq, ptr %i.z, align 8, !tbaa !35
  %i.ar = load i32, ptr %2, align 8, !tbaa !121   ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.ar, 1
  br i1 %.not.i.not.i.i, label %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !36
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.as, i32 noundef %i.ar) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i: ; preds = %bb.h
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !373 ; 3 uses
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !375
  %.not.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %3) #44
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !373
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %i.aw, ptr %i.aa, align 8, !tbaa !373
  br label %_ZN5folly7dynamic9push_backEOS0_.exit

bb.k:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  invoke void @_ZNSt6vectorIN5folly7dynamicESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN5folly7dynamic9push_backEOS0_.exit unwind label %.loopexit

_ZN5folly7dynamic9push_backEOS0_.exit:            ; preds = %bb.j, %bb.k
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !387
  %.pre28 = load i32, ptr %i.p, align 8, !tbaa !388
  %.pre29 = load ptr, ptr %i.n, align 8, !tbaa !387
  br label %bb.m

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.q

bb.m:                                             ; preds = %bb.g, %_ZN5folly7dynamic9push_backEOS0_.exit
  %i.ax = phi ptr [ %i.ae, %bb.g ], [ %.pre29, %_ZN5folly7dynamic9push_backEOS0_.exit ] ; 2 uses
  %i.ay = phi i32 [ %i.af, %bb.g ], [ %.pre28, %_ZN5folly7dynamic9push_backEOS0_.exit ] ; 2 uses
  %i.az = phi ptr [ %i.ag, %bb.g ], [ %.pre, %_ZN5folly7dynamic9push_backEOS0_.exit ] ; 2 uses
  %i.ba = add nuw i64 %.025, 1                    ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ax to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = zext i32 %i.ay to i64
  %i.bg = add nsw i64 %i.be, %i.bf
  %i.bh = icmp ult i64 %i.ba, %i.bg
  br i1 %i.bh, label %bb.g, label %._crit_edge, !llvm.loop !389

bb.n:                                             ; preds = %._crit_edge
  %i.bi = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void

bb.p:                                             ; preds = %bb.n, %._crit_edge
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %lpad.phi, %bb.l ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.ad, %bb.f ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #44
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN8facebook5velox6common24BigintValuesUsingBitmaskESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !390    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !387  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common24BigintValuesUsingBitmaskEEclEPS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !391  ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 3
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.j
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.h) #46
  br label %_ZNKSt14default_deleteIN8facebook5velox6common24BigintValuesUsingBitmaskEEclEPS3_.exit

_ZNKSt14default_deleteIN8facebook5velox6common24BigintValuesUsingBitmaskEEclEPS3_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common24BigintValuesUsingBitmaskEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox6common24BigintValuesUsingBitmask13testingEqualsERKNS1_6FilterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !73, !range !55, !noundef !59
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !73, !range !55, !noundef !59
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !74, !range !55, !noundef !59
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !74, !range !55, !noundef !59
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZNK8facebook5velox6common6Filter17testingBaseEqualsINS1_24BigintValuesUsingBitmaskEEEPKT_RKS2_.exit, label %.critedge

_ZNK8facebook5velox6common6Filter17testingBaseEqualsINS1_24BigintValuesUsingBitmaskEEEPKT_RKS2_.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !378
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !378
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK8facebook5velox6common6Filter17testingBaseEqualsINS1_24BigintValuesUsingBitmaskEEEPKT_RKS2_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !386
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !386
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !387
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !388
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !387 ; 2 uses
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = zext i32 %i.ad to i64
  %i.ak = add nsw i64 %i.ai, %i.aj                ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !387
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !388
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !387 ; 2 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = shl nsw i64 %i.at, 3
  %i.av = zext i32 %i.ap to i64
  %i.aw = add nsw i64 %i.au, %i.av
  %i.ax = icmp eq i64 %i.ak, %i.aw
  br i1 %i.ax, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.e
  %.not2033 = icmp eq i64 %i.ak, 0
  br i1 %.not2033, label %.critedge, label %_ZNKSt6vectorIbSaIbEE2atEm.exit.a

_ZNKSt6vectorIbSaIbEE2atEm.exit.a:                ; preds = %.preheader, %_ZNKSt6vectorIbSaIbEE2atEm.exit25
  %.034 = phi i64 [ %i.bj, %_ZNKSt6vectorIbSaIbEE2atEm.exit25 ], [ 0, %.preheader ] ; 5 uses
  %exitcond.not = icmp eq i64 %.034, %i.ak
  br i1 %exitcond.not, label %2, label %_ZNKSt6vectorIbSaIbEE2atEm.exit25

2:                                                ; preds = %_ZNKSt6vectorIbSaIbEE2atEm.exit.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.111, i64 noundef %i.ak, i64 noundef %i.ak) #45
  unreachable

_ZNKSt6vectorIbSaIbEE2atEm.exit25:                ; preds = %_ZNKSt6vectorIbSaIbEE2atEm.exit.a
  %i.ay = sdiv i64 %.034, 64                      ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ay
  %i.ba = and i64 %.034, -9223372036854775745
  %i.bb = icmp ugt i64 %i.ba, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.bb, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.az, i64 %storemerge.idx.i.i.i.i.i.i
  %i.bc = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !35
  %i.bd = and i64 %.034, 63
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ay
  %storemerge.i.i.i.i.i.i24 = getelementptr inbounds i8, ptr %i.bf, i64 %storemerge.idx.i.i.i.i.i.i
  %i.bg = load i64, ptr %storemerge.i.i.i.i.i.i24, align 8, !tbaa !35
  %i.bh = xor i64 %i.bg, %i.bc
  %i.bi = and i64 %i.bh, %i.be
  %.not = icmp eq i64 %i.bi, 0                    ; 2 uses
  %i.bj = add nuw i64 %.034, 1                    ; 2 uses
  %.not20.not = icmp ult i64 %i.bj, %i.ak
  %or.cond = select i1 %.not, i1 %.not20.not, i1 false
  br i1 %or.cond, label %_ZNKSt6vectorIbSaIbEE2atEm.exit.a, label %.critedge, !llvm.loop !392

.critedge:                                        ; preds = %_ZNKSt6vectorIbSaIbEE2atEm.exit25, %.preheader, %_ZNK8facebook5velox6common6Filter17testingBaseEqualsINS1_24BigintValuesUsingBitmaskEEEPKT_RKS2_.exit, %bb.e, %bb.d, %bb.a, %bb.c, %bb.b
  %i.bk = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZNK8facebook5velox6common6Filter17testingBaseEqualsINS1_24BigintValuesUsingBitmaskEEEPKT_RKS2_.exit ], [ false, %bb.d ], [ false, %bb.e ], [ true, %.preheader ], [ %.not, %_ZNKSt6vectorIbSaIbEE2atEm.exit25 ]
  ret i1 %i.bk
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox6common28BigintValuesUsingBloomFilter9serializeEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 initializes((0, 4), (8, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 11 uses
  %3 = alloca %"struct.folly::dynamic", align 8   ; 9 uses
  tail call void @_ZNK8facebook5velox6common6Filter13serializeBaseEv(ptr dead_on_unwind writable sret(%"struct.folly::dynamic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  store i32 1, ptr %2, align 8, !tbaa !121
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !393  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !393  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.b
  %.sroa.026.034 = phi ptr [ %i.c, %.preheader.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.43, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 9))
          to label %bb.j unwind label %bb.n       ; 4 uses

bb.b:                                             ; preds = %_ZN5folly7dynamic9push_backEOS0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.026.034, i64 32 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %._crit_edge, label %.preheader

bb.c:                                             ; preds = %.preheader, %_ZN5folly7dynamic9push_backEOS0_.exit
  %.013.idx33 = phi i64 [ 0, %.preheader ], [ %.013.add, %_ZN5folly7dynamic9push_backEOS0_.exit ] ; 2 uses
  %.013.ptr = getelementptr inbounds nuw i8, ptr %.sroa.026.034, i64 %.013.idx33
  %i.m = load i32, ptr %.013.ptr, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store i32 4, ptr %3, align 8, !tbaa !121
  %i.n = zext i32 %i.m to i64
  store i64 %i.n, ptr %i.g, align 8, !tbaa !35
  %i.o = load i32, ptr %2, align 8, !tbaa !121    ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.o, 1
  br i1 %.not.i.not.i.i, label %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !36
  invoke void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.p, i32 noundef %i.o) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i: ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !373  ; 5 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !375
  %.not.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %3) #44
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !373
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.t, ptr %i.h, align 8, !tbaa !373
  br label %_ZN5folly7dynamic9push_backEOS0_.exit

bb.f:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit.i
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !394  ; 5 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.g, label %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #45
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.z = sdiv exact i64 %i.x, 40                  ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 230584300921369395)
  %i.ad = select i1 %i.ab, i64 230584300921369395, i64 %i.ac ; 3 uses
  %.not.i.i = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.ae = mul nuw nsw i64 %i.ad, 40
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #48
          to label %.noexc22 unwind label %.loopexit ; 5 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %3) #44
  %.not10.i.i.i.i = icmp eq ptr %i.u, %i.q
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc22, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.af, %.noexc22 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.u, %.noexc22 ] ; 3 uses
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i) #44
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i) #44
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.q
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !395

_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %.noexc22
  %.0.lcssa.i.i.i.i = phi ptr [ %i.af, %.noexc22 ], [ %i.ai, %.lr.ph.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40
  %.not.i23.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i, label %.noexc20, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !375
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.am) #46
  br label %.noexc20

.noexc20:                                         ; preds = %bb.h, %_ZNSt6vectorIN5folly7dynamicESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.af, ptr %i.a, align 8, !tbaa !394
  store ptr %i.aj, ptr %i.h, align 8, !tbaa !373
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.an, ptr %i.i, align 8, !tbaa !375
  br label %_ZN5folly7dynamic9push_backEOS0_.exit

_ZN5folly7dynamic9push_backEOS0_.exit:            ; preds = %.noexc20, %bb.e
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %.013.add = add nuw nsw i64 %.013.idx33, 4      ; 2 uses
  %.not = icmp eq i64 %.013.add, 32
  br i1 %.not, label %bb.b, label %bb.c

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5folly7dynamicESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.d, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.o

bb.j:                                             ; preds = %._crit_edge
  %i.ao = load i32, ptr %i.j, align 8, !tbaa !121
  %i.ap = icmp eq i32 %i.ao, 4
  br i1 %i.ap, label %_ZN5folly7dynamicaSImlEERS0_T_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #44
  store i32 4, ptr %i.j, align 8, !tbaa !121
  br label %_ZN5folly7dynamicaSImlEERS0_T_.exit

_ZN5folly7dynamicaSImlEERS0_T_.exit:              ; preds = %bb.j, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 8, ptr %i.aq, align 8, !tbaa !35
  %i.ar = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.44, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 10))
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZN5folly7dynamicaSImlEERS0_T_.exit
  %i.as = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void

bb.n:                                             ; preds = %bb.l, %_ZN5folly7dynamicaSImlEERS0_T_.exit, %._crit_edge
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.i ], [ %i.at, %bb.n ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #44
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #3

end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox6common24BigintValuesUsingBitmask6valuesEv:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %.pre3239 = phi ptr [ %i.f, %.lr.ph ], [ %.pre3240, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 3 uses
  %.pre3136 = phi i32 [ %i.e, %.lr.ph ], [ %.pre3137, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 3 uses
  %.pre33 = phi ptr [ %i.d, %.lr.ph ], [ %.pre34, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 3 uses
  %i.p = phi ptr [ %i.f, %.lr.ph ], [ %i.at, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 3 uses
  %i.q = phi i32 [ %i.e, %.lr.ph ], [ %i.au, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 2 uses
  %i.r = phi ptr [ %i.d, %.lr.ph ], [ %i.av, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 2 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 4 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.ax, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 4 uses
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.ay, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ] ; 10 uses
  %i.v = lshr i64 %indvars.iv, 6
  %.zext = and i64 %i.v, 67108863
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.zext
  %i.x = and i64 %indvars.iv, 63
  %i.y = shl nuw i64 1, %i.x
  %i.z = load i64, ptr %i.w, align 8, !tbaa !35
  %i.aa = and i64 %i.z, %i.y
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !378
  %i.ac = add nsw i64 %i.ab, %indvars.iv          ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !204
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.s to i64
  %i.af = ptrtoint ptr %i.u to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 7 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.f, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.u, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #45
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #48
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i64 %i.ac, ptr %i.ap, align 8, !tbaa !35
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.u, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %.noexc11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ag) #46
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !387
  %.pre31.pre = load i32, ptr %i.c, align 8, !tbaa !388
  %.pre32.pre = load ptr, ptr %i.a, align 8, !tbaa !387
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  %.pre32 = phi ptr [ %.pre32.pre, %bb.h ], [ %.pre3239, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %.pre31 = phi i32 [ %.pre31.pre, %bb.h ], [ %.pre3136, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %.pre = phi ptr [ %.pre.pre, %bb.h ], [ %.pre33, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  store ptr %i.ar, ptr %i.n, align 8, !tbaa !204
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !170
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.u, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.j

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.d, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, %bb.b
  %.pre3240 = phi ptr [ %.pre3239, %bb.d ], [ %.pre32, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %.pre3239, %bb.b ]
  %.pre3137 = phi i32 [ %.pre3136, %bb.d ], [ %.pre31, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %.pre3136, %bb.b ]
  %.pre34 = phi ptr [ %.pre33, %bb.d ], [ %.pre, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %.pre33, %bb.b ]
  %i.at = phi ptr [ %i.p, %bb.d ], [ %.pre32, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.au = phi i32 [ %i.q, %bb.d ], [ %.pre31, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %i.q, %bb.b ] ; 2 uses
  %i.av = phi ptr [ %i.r, %bb.d ], [ %.pre, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.aw = phi ptr [ %i.s, %bb.d ], [ %i.as, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %i.s, %bb.b ]
  %i.ax = phi ptr [ %i.ad, %bb.d ], [ %i.ar, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %i.t, %bb.b ]
  %i.ay = phi ptr [ %i.u, %bb.d ], [ %i.ao, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = shl nsw i64 %i.bb, 3
  %i.bd = zext i32 %i.au to i64
  %i.be = add nsw i64 %i.bc, %i.bd
  %i.bf = icmp ugt i64 %i.be, %indvars.iv.next
  br i1 %i.bf, label %bb.b, label %._crit_edge, !llvm.loop !441

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ag) #46
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, %bb.a
  %.lcssa18 = phi ptr [ null, %bb.a ], [ %i.ay, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ]
  store ptr %.lcssa18, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox6common24BigintValuesUsingBitmaskELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !210
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !212
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #44, !inline_history !419
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #44, !inline_history !419
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !63

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #44
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox6common31NegatedBigintValuesUsingBitmask13testingEqualsERKNS1_6FilterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !73, !range !55, !noundef !59
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !73, !range !55, !noundef !59
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !74, !range !55, !noundef !59
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !74, !range !55, !noundef !59
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !390
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !390
  %2 = tail call noundef zeroext i1 @_ZNK8facebook5velox6common24BigintValuesUsingBitmask13testingEqualsERKNS1_6FilterE(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %3 = phi i1 [ %2, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox6common10BytesRange9serializeEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  tail call void @_ZNK8facebook5velox6common13AbstractRange13serializeBaseEv(ptr dead_on_unwind writable sret(%"struct.folly::dynamic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(20) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !78
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !79   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #45
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !63

.noexc6.i:                                        ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #48
          to label %.noexc16 unwind label %bb.t   ; 2 uses

.noexc16:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.j, ptr %3, align 8, !tbaa !31
  store i64 %i.e, ptr %i.b, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc16, %bb.a
  %i.k = phi ptr [ %i.j, %.noexc16 ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !10
  store i8 %i.l, ptr %i.k, align 1, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.e, ptr %i.m, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !10
  store i32 6, ptr %2, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !78
  %i.q = load ptr, ptr %3, align 8, !tbaa !31     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.m, align 8, !tbaa !79   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.u, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.q, ptr %i.o, align 8, !tbaa !31
  %i.v = load i64, ptr %i.b, align 8, !tbaa !10
  store i64 %i.v, ptr %i.p, align 8, !tbaa !10
  %.pre = load i64, ptr %i.m, align 8, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.w = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !79
  store ptr %i.b, ptr %3, align 8, !tbaa !31
  store i64 0, ptr %i.m, align 8, !tbaa !79
  store i8 0, ptr %i.b, align 8, !tbaa !10
  %i.y = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nonnull @.str.38, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 5))
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.z = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %2) #44 ; 0 uses
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #44
  %i.aa = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.i
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !10
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !78
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !79 ; 8 uses
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %bb.j, label %._crit_edge.i.i18

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = icmp slt i64 %i.ai, 0
  br i1 %i.ak, label %.noexc.i21, label %bb.k

.noexc.i21:                                       ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #45
          to label %.noexc22 unwind label %bb.v

.noexc22:                                         ; preds = %.noexc.i21
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw i64 %i.ai, 1                    ; 2 uses
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %.noexc6.i20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19, !prof !63

.noexc6.i20:                                      ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #45
          to label %.noexc23 unwind label %bb.v

.noexc23:                                         ; preds = %.noexc6.i20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19: ; preds = %bb.k
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #48
          to label %.noexc24 unwind label %bb.v   ; 2 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i19
  store ptr %i.an, ptr %5, align 8, !tbaa !31
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !10
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %.noexc24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = phi ptr [ %i.an, %.noexc24 ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  switch i64 %i.ai, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i18
  %i.ap = load i8, ptr %i.ag, align 1, !tbaa !10
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !10
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i18
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 %i.ai, ptr %i.aq, align 8, !tbaa !79
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ai
  store i8 0, ptr %i.ar, align 1, !tbaa !10
  store i32 6, ptr %4, align 8, !tbaa !121
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !78
  %i.au = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.af
  br i1 %i.av, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

bb.o:                                             ; preds = %bb.n
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !79 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ay, i1 false)
  br label %bb.p

end_hunk_2
