inline.NumInlined: 34235
inline.NumDeleted: 5823
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 284
begin_hunk_0
@.str.35 = private unnamed_addr constant [46 x i8] c"Variable arity requires at least one argument\00", align 1
@_ZZN8facebook5velox4exec12_GLOBAL__N_111addVariableERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_17SignatureVariableESt4hashIS9_ESt8equal_toIS9_ESaISt4pairIKS9_SA_EEERKSA_E18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.27, i64 268, ptr @.str.36, ptr @.str.37, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@.str.36 = private unnamed_addr constant [12 x i8] c"addVariable\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"!variables.count(variable.name())\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Variable {} declared twice\00", align 1
@_ZZN8facebook5velox4core19TypeAnalysisResults5Stats7getRankEvE18veloxCheckFailArgs_2 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 179, ptr @.str.39, ptr @.str.40, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code16kUnreachableCodeE, i8 0 }, comdat, align 8
@.str.39 = private unnamed_addr constant [8 x i8] c"getRank\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN8facebook5velox10error_code16kUnreachableCodeE = linkonce_odr constant %"class.folly::BasicFixedString.96" { [17 x i8] c"UNREACHABLE_CODE\00", i64 16 }, comdat, align 8
@.str.41 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"{} ({})\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@.str.45 = private unnamed_addr constant [140 x i8] c"Unable to find simple function name. Either define a 'name' member in the function class, or specify a function alias at registration time.\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISK_EERKSG_ISH_INS0_10BaseVectorEESaISQ_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr constant [206 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE\00", comdat, align 1
@_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec28SimpleFunctionAdapterFactoryE = linkonce_odr constant [53 x i8] c"N8facebook5velox4exec28SimpleFunctionAdapterFactoryE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr constant [195 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE\00", comdat, align 1
@_ZTIN8facebook5velox4exec14VectorFunctionE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec14VectorFunctionE = linkonce_odr constant [39 x i8] c"N8facebook5velox4exec14VectorFunctionE\00", comdat, align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"({} vs. {})\00", align 1
@_ZTVN8facebook5velox4exec12VectorWriterIbvEE = linkonce_odr unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec12VectorWriterIbvEE, ptr @_ZN8facebook5velox4exec16VectorWriterBase9setOffsetEi, ptr @_ZN8facebook5velox4exec12VectorWriterIbvE6commitEb, ptr @_ZN8facebook5velox4exec12VectorWriterIbvE10ensureSizeEi, ptr @_ZN8facebook5velox4exec16VectorWriterBase6finishEv, ptr @_ZN8facebook5velox4exec16VectorWriterBase12finalizeNullEv, ptr @_ZN8facebook5velox4exec16VectorWriterBaseD2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterIbvED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec12VectorWriterIbvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec12VectorWriterIbvEE, ptr @_ZTIN8facebook5velox4exec16VectorWriterBaseE }, comdat, align 8
@_ZTSN8facebook5velox4exec12VectorWriterIbvEE = linkonce_odr constant [41 x i8] c"N8facebook5velox4exec12VectorWriterIbvEE\00", comdat, align 1
@_ZTIN8facebook5velox4exec16VectorWriterBaseE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec16VectorWriterBaseE }, comdat, align 8
@_ZTSN8facebook5velox4exec16VectorWriterBaseE = linkonce_odr constant [41 x i8] c"N8facebook5velox4exec16VectorWriterBaseE\00", comdat, align 1
@_ZN8facebook5velox4bitsL13kZeroBitmasksE = internal unnamed_addr constant [8 x i8] c"\FE\FD\FB\F7\EF\DF\BF\7F", align 1
@_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 122, ptr @.str.51, ptr @.str.52, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.50 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/velox/velox/./velox/buffer/Buffer.h\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"asMutable\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"!isView()\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@_ZZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 400, ptr @.str.54, ptr @.str.55, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.54 = private unnamed_addr constant [9 x i8] c"allocate\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"memory != nullptr\00", align 1
@_ZZN8facebook5velox15checkedMultiplyImEET_S2_S2_PKcE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.56, i64 51, ptr @.str.57, ptr @.str.40, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kArithmeticErrorE, i8 0 }, comdat, align 8
@.str.56 = private unnamed_addr constant [68 x i8] c"/opt-bench/work/velox/velox/./velox/common/base/CheckedArithmetic.h\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"checkedMultiply\00", align 1
@_ZN8facebook5velox10error_code16kArithmeticErrorE = linkonce_odr constant %"class.folly::BasicFixedString.96" { [17 x i8] c"ARITHMETIC_ERROR\00", i64 16 }, comdat, align 8
@.str.58 = private unnamed_addr constant [21 x i8] c"{} overflow: {} * {}\00", align 1
@_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.56, i64 31, ptr @.str.59, ptr @.str.40, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kArithmeticErrorE, i8 0 }, comdat, align 8
@.str.59 = private unnamed_addr constant [12 x i8] c"checkedPlus\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"{} overflow: {} + {}\00", align 1
@_ZTVN8facebook5velox13AlignedBufferE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox13AlignedBufferE, ptr @_ZN8facebook5velox13AlignedBufferD2Ev, ptr @_ZN8facebook5velox13AlignedBufferD0Ev, ptr @_ZN8facebook5velox6Buffer7setSizeEm, ptr @_ZN8facebook5velox13AlignedBuffer10transferToEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox13AlignedBuffer15setEndGuardImplEv, ptr @_ZNK8facebook5velox13AlignedBuffer17checkEndGuardImplEv, ptr @_ZN8facebook5velox13AlignedBuffer10freeToPoolEv, ptr @_ZN8facebook5velox6Buffer8copyFromEPKS1_m, ptr @_ZN8facebook5velox6Buffer16releaseResourcesEv] }, comdat, align 8
@_ZTIN8facebook5velox13AlignedBufferE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox13AlignedBufferE, ptr @_ZTIN8facebook5velox6BufferE }, comdat, align 8
@_ZTSN8facebook5velox13AlignedBufferE = linkonce_odr constant [33 x i8] c"N8facebook5velox13AlignedBufferE\00", comdat, align 1
@_ZTIN8facebook5velox6BufferE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6BufferE }, comdat, align 8
@_ZTSN8facebook5velox6BufferE = linkonce_odr constant [25 x i8] c"N8facebook5velox6BufferE\00", comdat, align 1
@_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 143, ptr @.str.65, ptr @.str.52, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.65 = private unnamed_addr constant [8 x i8] c"setSize\00", align 1
@_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs_1 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 144, ptr @.str.65, ptr @.str.66, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.66 = private unnamed_addr constant [18 x i8] c"size <= capacity_\00", align 1
@_ZZNK8facebook5velox13AlignedBuffer17checkEndGuardImplEvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 623, ptr @.str.67, ptr @.str.40, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.67 = private unnamed_addr constant [18 x i8] c"checkEndGuardImpl\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"Write past Buffer capacity() {}\00", align 1
@_ZZN8facebook5velox6Buffer8copyFromEPKS1_mE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 274, ptr @.str.69, ptr @.str.52, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.69 = private unnamed_addr constant [9 x i8] c"copyFrom\00", align 1
@_ZZN8facebook5velox6Buffer8copyFromEPKS1_mE18veloxCheckFailArgs_1 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 275, ptr @.str.69, ptr @.str.70, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.70 = private unnamed_addr constant [19 x i8] c"capacity_ >= bytes\00", align 1
@_ZZN8facebook5velox6Buffer8copyFromEPKS1_mE18veloxCheckFailArgs_3 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 276, ptr @.str.69, ptr @.str.71, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.71 = private unnamed_addr constant [20 x i8] c"type_ == Type::kPOD\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.78 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.79 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.82 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.87 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 590, ptr @.str.89, ptr @.str.90, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.89 = private unnamed_addr constant [14 x i8] c"fillNewMemory\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"newBytes <= capacity()\00", align 1
@_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 122, ptr @.str.51, ptr @.str.52, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 122, ptr @.str.51, ptr @.str.52, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZNK8facebook5velox6Buffer9asMutableIbEEPT_vE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 122, ptr @.str.51, ptr @.str.52, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox4exec12VectorWriterIbvE10ensureSizeEiE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.91, i64 420, ptr @.str.92, ptr @.str.93, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.91 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/velox/velox/./velox/expression/VectorWriters.h\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"ensureSize\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"size >= 0\00", align 1
@_ZZN8facebook5velox13AlignedBuffer10reallocateIcEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 433, ptr @.str.95, ptr @.str.96, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.95 = private unnamed_addr constant [11 x i8] c"reallocate\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.97 = private unnamed_addr constant [35 x i8] c"Buffer doesn't exist in reallocate\00", align 1
@_ZZN8facebook5velox13AlignedBuffer10reallocateIcEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs_1 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 441, ptr @.str.95, ptr @.str.98, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.98 = private unnamed_addr constant [15 x i8] c"!old->isView()\00", align 1
@_ZTISt19bad_optional_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19bad_optional_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt19bad_optional_access = linkonce_odr constant [24 x i8] c"St19bad_optional_access\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt19bad_optional_access = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt19bad_optional_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt19bad_optional_accessD0Ev, ptr @_ZNKSt19bad_optional_access4whatEv] }, comdat, align 8
@.str.100 = private unnamed_addr constant [20 x i8] c"bad optional access\00", align 1
@_ZTIN8facebook5velox14VeloxExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox14VeloxExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN8facebook5velox14VeloxExceptionE = linkonce_odr constant [34 x i8] c"N8facebook5velox14VeloxExceptionE\00", comdat, align 1
@.str.103 = private unnamed_addr constant [25 x i8] c"Failed to parse JSON: {}\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@_ZN8simdjson8internal11error_codesE = external local_unnamed_addr global [0 x %"struct.simdjson::internal::error_code_info"], align 8
@_ZTIN8simdjson14simdjson_errorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8simdjson14simdjson_errorE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN8simdjson14simdjson_errorE = linkonce_odr constant [28 x i8] c"N8simdjson14simdjson_errorE\00", comdat, align 1
@_ZTVN8simdjson14simdjson_errorE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8simdjson14simdjson_errorE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN8simdjson14simdjson_errorD0Ev, ptr @_ZNK8simdjson14simdjson_error4whatEv] }, comdat, align 8
@.str.104 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.105 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array.578" zeroinitializer, i8 -1 }, comdat, align 16
@_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = linkonce_odr global { i32 } zeroinitializer, comdat, align 4
@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE = external global [2048 x %"struct.std::atomic.585"], align 64
@.str.119 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.139 = private unnamed_addr constant [11 x i8] c"rehashImpl\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.140, ptr @.str.141, i32 2380, ptr @.str.139, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.140 = private unnamed_addr constant [33 x i8] c"hp.second == srcChunk->tag(srcI)\00", align 1
@.str.141 = private unnamed_addr constant [84 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/container/detail/F14Table.h\00", align 1
@_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE = linkonce_odr constant %"struct.folly::c_array" { [2 x i8] c"\01\00" }, comdat, align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"setTag\00", align 1
@_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.143, ptr @.str.141, i32 719, ptr @.str.142, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.143 = private unnamed_addr constant [18 x i8] c"tags_[index] == 0\00", align 1
@.str.165 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@_ZZN8facebook5velox13AlignedBuffer8allocateINS0_10StringViewEEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 400, ptr @.str.54, ptr @.str.55, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryINS0_10StringViewEEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 590, ptr @.str.89, ptr @.str.90, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZNK8facebook5velox6Buffer9asMutableINS0_10StringViewEEEPT_vE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 122, ptr @.str.51, ptr @.str.52, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13AlignedBuffer10reallocateINS0_10StringViewEEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 433, ptr @.str.95, ptr @.str.96, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13AlignedBuffer10reallocateINS0_10StringViewEEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs_1 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 441, ptr @.str.95, ptr @.str.98, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = linkonce_odr global { [257 x [256 x i8]], %"struct.std::atomic.806" } zeroinitializer, comdat, align 8
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.176, i64 82, ptr @.str.177, ptr @.str.178, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.176 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/velox/velox/./velox/type/StringView.h\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"StringView\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"len >= 0\00", align 1
@_ZZN8facebook5velox4core7ExecCtx16getDecodedVectorEvE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.184, i64 540, ptr @.str.185, ptr @.str.186, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.184 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/velox/velox/./velox/core/QueryCtx.h\00", align 1
@.str.185 = private unnamed_addr constant [17 x i8] c"getDecodedVector\00", align 1
@.str.186 = private unnamed_addr constant [71 x i8] c"optimizationParams_.exprEvalCacheEnabled || decodedVectorPool_.empty()\00", align 1
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant [374 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global %"class.std::shared_ptr.855" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [219 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions20IsJsonScalarFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE = linkonce_odr constant [155 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions20IsJsonScalarFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISD_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISI_EERKSE_ISF_INS0_10BaseVectorEESaISO_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr constant [185 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr constant [174 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE\00", comdat, align 1
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant [353 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions20IsJsonScalarFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISN_EEE8instance = linkonce_odr global %"class.std::shared_ptr.982" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISN_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [263 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEES9_EEEJSD_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EEE = linkonce_odr constant [199 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES8_EEEJSC_S8_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISG_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISL_EERKSH_ISI_INS0_10BaseVectorEESaISR_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE = linkonce_odr constant [229 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EERKSL_IKNS0_4TypeEERNS1_7EvalCtxERSN_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE = linkonce_odr constant [218 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEES9_EEEJSD_S9_EEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec12VectorWriterINS0_7VarcharEvEE = linkonce_odr unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec12VectorWriterINS0_7VarcharEvEE, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE9setOffsetEi, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE6commitEb, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10ensureSizeEi, ptr @_ZN8facebook5velox4exec16VectorWriterBase6finishEv, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE12finalizeNullEv, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvED2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec12VectorWriterINS0_7VarcharEvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec12VectorWriterINS0_7VarcharEvEE, ptr @_ZTIN8facebook5velox4exec16VectorWriterBaseE }, comdat, align 8
@_ZTSN8facebook5velox4exec12VectorWriterINS0_7VarcharEvEE = linkonce_odr constant [53 x i8] c"N8facebook5velox4exec12VectorWriterINS0_7VarcharEvEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec12StringWriterE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec12StringWriterE, ptr @_ZN8facebook5velox4exec12StringWriterD2Ev, ptr @_ZN8facebook5velox4exec12StringWriterD0Ev, ptr @_ZN8facebook5velox4exec12StringWriter7reserveEm] }, comdat, align 8
@_ZTIN8facebook5velox4exec12StringWriterE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec12StringWriterE, ptr @_ZTIN8facebook5velox15UDFOutputStringE }, comdat, align 8
@_ZTSN8facebook5velox4exec12StringWriterE = linkonce_odr constant [37 x i8] c"N8facebook5velox4exec12StringWriterE\00", comdat, align 1
@_ZTIN8facebook5velox15UDFOutputStringE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox15UDFOutputStringE }, comdat, align 8
@_ZTSN8facebook5velox15UDFOutputStringE = linkonce_odr constant [35 x i8] c"N8facebook5velox15UDFOutputStringE\00", comdat, align 1
@_ZZN8facebook5velox4exec12StringWriter8finalizeEvE18veloxCheckFailArgs_1 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.187, i64 67, ptr @.str.188, ptr @.str.189, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@.str.187 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/velox/velox/./velox/expression/StringWriter.h\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"finalize\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"size() <= (2147483647)\00", align 1
@_ZZN8facebook5velox4exec12StringWriter8finalizeEvE18veloxCheckFailArgs_2 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.187, i64 69, ptr @.str.188, ptr @.str.190, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.190 = private unnamed_addr constant [23 x i8] c"dataBuffer_ != nullptr\00", align 1
@_ZZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10ensureSizeEiE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.91, i64 368, ptr @.str.92, ptr @.str.93, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.194 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_ZN8simdjson8internal24structural_or_whitespaceE = external local_unnamed_addr constant [256 x i8], align 16
@_ZN8simdjson8internal32structural_or_whitespace_negatedE = external local_unnamed_addr constant [256 x i8], align 16
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbEUlvE_ = linkonce_odr constant [397 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global %"class.std::shared_ptr.1239" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [232 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonExtractScalarFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EEE = linkonce_odr constant [168 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJS8_S8_EEEJS8_S8_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISD_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISI_EERKSE_ISF_INS0_10BaseVectorEESaISO_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE = linkonce_odr constant [198 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE = linkonce_odr constant [187 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES7_NS0_7VarcharENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEEEE\00", comdat, align 1
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_SB_EEEJSB_SB_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_SB_EEEJSB_SB_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_SB_EEEJSB_SB_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant [366 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJSB_SB_EEEJSB_SB_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance = linkonce_odr global %"class.std::shared_ptr.1408" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [243 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEEEEJSC_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EEE = linkonce_odr constant [179 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSB_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.225 = private unnamed_addr constant [7 x i8] c"BIGINT\00", align 1
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISK_EERKSG_ISH_INS0_10BaseVectorEESaISQ_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr constant [209 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE = linkonce_odr constant [198 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSC_EEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec12VectorWriterIlvEE = linkonce_odr unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec12VectorWriterIlvEE, ptr @_ZN8facebook5velox4exec16VectorWriterBase9setOffsetEi, ptr @_ZN8facebook5velox4exec12VectorWriterIlvE6commitEb, ptr @_ZN8facebook5velox4exec12VectorWriterIlvE10ensureSizeEi, ptr @_ZN8facebook5velox4exec16VectorWriterBase6finishEv, ptr @_ZN8facebook5velox4exec16VectorWriterBase12finalizeNullEv, ptr @_ZN8facebook5velox4exec16VectorWriterBaseD2Ev, ptr @_ZN8facebook5velox4exec12VectorWriterIlvED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec12VectorWriterIlvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec12VectorWriterIlvEE, ptr @_ZTIN8facebook5velox4exec16VectorWriterBaseE }, comdat, align 8
@_ZTSN8facebook5velox4exec12VectorWriterIlvEE = linkonce_odr constant [41 x i8] c"N8facebook5velox4exec12VectorWriterIlvEE\00", comdat, align 1
@_ZZN8facebook5velox13AlignedBuffer8allocateIlEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 400, ptr @.str.54, ptr @.str.55, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIlEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 590, ptr @.str.89, ptr @.str.90, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 122, ptr @.str.51, ptr @.str.52, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox4exec12VectorWriterIlvE10ensureSizeEiE18veloxCheckFailArgs_0 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.91, i64 51, ptr @.str.92, ptr @.str.93, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13AlignedBuffer10reallocateIlEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 433, ptr @.str.95, ptr @.str.96, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox13AlignedBuffer10reallocateIlEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_EE18veloxCheckFailArgs_1 = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.50, i64 441, ptr @.str.95, ptr @.str.98, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZZN8facebook5velox9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEE4callIlEEbRT_RKNS0_10StringViewEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.226, i64 374, ptr @.str.227, ptr @.str.228, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, comdat, align 8
@.str.226 = private unnamed_addr constant [72 x i8] c"/opt-bench/work/velox/velox/./velox/functions/prestosql/JsonFunctions.h\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.228 = private unnamed_addr constant [51 x i8] c"numElements <= std::numeric_limits<TOutput>::max()\00", align 1
@.str.229 = private unnamed_addr constant [85 x i8] c"({} vs. {}) The json array length {} is bigger than the max value of output type {}.\00", align 1
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant [377 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEEEEJSE_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global %"class.std::shared_ptr.1556" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [222 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions23JsonArrayLengthFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJNS1_7VarcharEEEEJSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE = linkonce_odr constant [158 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions23JsonArrayLengthFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJNS0_7VarcharEEEEJS9_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISD_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISI_EERKSE_ISF_INS0_10BaseVectorEESaISO_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr constant [188 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE = linkonce_odr constant [177 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES7_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSA_EEEEE\00", comdat, align 1
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant [356 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions23JsonArrayLengthFunctionINS1_10VectorExecEEES9_lNS0_15ConstantCheckerIJNS0_7VarcharEEEEJSC_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance = linkonce_odr global %"class.std::shared_ptr.1681" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [247 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEbEEEJSC_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEEE = linkonce_odr constant [183 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSB_bEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISK_EERKSG_ISH_INS0_10BaseVectorEESaISQ_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE = linkonce_odr constant [213 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE = linkonce_odr constant [202 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSC_bEEEEE\00", comdat, align 1
@_ZN8facebook5velox4bitsL7kNull64E = internal constant i64 0, align 8
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSE_bEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSE_bEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSE_bEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant [381 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSE_bEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global %"class.std::shared_ptr.1786" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [226 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEbEEEJSA_bEEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEEE = linkonce_odr constant [162 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJS9_bEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISD_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISI_EERKSE_ISF_INS0_10BaseVectorEESaISO_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE = linkonce_odr constant [192 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE = linkonce_odr constant [181 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSA_bEEEEE\00", comdat, align 1
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSC_bEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSC_bEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSC_bEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant [360 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSC_bEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance = linkonce_odr global %"class.std::shared_ptr.1890" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [247 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEElEEEJSC_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEEE = linkonce_odr constant [183 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSB_lEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISK_EERKSG_ISH_INS0_10BaseVectorEESaISQ_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE = linkonce_odr constant [213 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE = linkonce_odr constant [202 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSC_lEEEEE\00", comdat, align 1
@.str.230 = private unnamed_addr constant [20 x i8] c"9223372036854775808\00", align 1
@_ZN8simdjson8fallback13numberparsing12_GLOBAL__N_123integer_string_finisherE = internal unnamed_addr constant [256 x i8] c"\09\09\09\09\09\09\09\09\09\00\00\09\09\00\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\09\09\09\09\09\09\09\09\09\09\09\00\09\11\09\09\09\09\09\09\09\09\09\09\09\00\09\09\09\09\09\09\09\09\09\09\11\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\09\00\09\09\09\09\09\09\09\11\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\09\00\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 16
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSE_lEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSE_lEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSE_lEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant [381 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEElEEEJSE_lEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global %"class.std::shared_ptr.2084" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [226 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharElEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEEE = linkonce_odr constant [162 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharElEEEJS9_lEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISD_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISI_EERKSE_ISF_INS0_10BaseVectorEESaISO_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE = linkonce_odr constant [192 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE = linkonce_odr constant [181 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSA_lEEEEE\00", comdat, align 1
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSC_lEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSC_lEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSC_lEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant [360 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharElEEEJSC_lEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance = linkonce_odr global %"class.std::shared_ptr.2263" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [247 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEEdEEEJSC_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEEE = linkonce_odr constant [183 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSB_dEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@.str.233 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISK_EERKSG_ISH_INS0_10BaseVectorEESaISQ_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE = linkonce_odr constant [213 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE = linkonce_odr constant [202 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSC_dEEEEE\00", comdat, align 1
@_ZN8simdjson8internal12power_of_tenE = external local_unnamed_addr constant [0 x double], align 8
@_ZN8simdjson8internal17power_of_five_128E = external local_unnamed_addr constant [0 x i64], align 8
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSE_dEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSE_dEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSE_dEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_ = linkonce_odr constant [381 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEdEEEJSE_dEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EERKSI_INS1_17SignatureVariableESaIST_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global %"class.std::shared_ptr.2465" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [226 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharEdEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEEE = linkonce_odr constant [162 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJS9_dEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISD_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISI_EERKSE_ISF_INS0_10BaseVectorEESaISO_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE = linkonce_odr constant [192 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE = linkonce_odr constant [181 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSA_dEEEEE\00", comdat, align 1
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSC_dEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSC_dEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSC_dEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_ = linkonce_odr constant [360 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_7VarcharEdEEEJSC_dEEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISM_EERKSG_INS1_17SignatureVariableESaISR_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISN_EEE8instance = linkonce_odr global %"class.std::shared_ptr.2644" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISN_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [261 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_10CustomTypeINS1_5JsonTELb0EEENS1_7VarcharEEEEJSC_SD_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
@_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EEE, ptr @_ZTIN8facebook5velox4core23ISimpleFunctionMetadataE }, comdat, align 8
@_ZTSN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EEE = linkonce_odr constant [197 x i8] c"N8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EEE\00", comdat, align 1
@_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSB_SC_EE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISG_EEE18veloxCheckFailArgs = linkonce_odr constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str.15, i64 678, ptr @.str.16, ptr @.str.17, ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr @_ZN8facebook5velox10error_code13kInvalidStateE, i8 0 }, comdat, align 8
@_ZTVN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE, ptr @_ZNK8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEE20createVectorFunctionERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISL_EERKSH_ISI_INS0_10BaseVectorEESaISR_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolE, ptr @_ZN8facebook5velox4exec28SimpleFunctionAdapterFactoryD2Ev, ptr @_ZN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEED0Ev] }, comdat, align 8
@_ZTIN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE, ptr @_ZTIN8facebook5velox4exec28SimpleFunctionAdapterFactoryE }, comdat, align 8
@_ZTSN8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE = linkonce_odr constant [227 x i8] c"N8facebook5velox4exec32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE\00", comdat, align 1
@_ZTVN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE = linkonce_odr unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEED2Ev, ptr @_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEED0Ev, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EERKSL_IKNS0_4TypeEERNS1_7EvalCtxERSN_, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEE27supportsFlatNoNullsFastPathEv, ptr @_ZNK8facebook5velox4exec14VectorFunction25ensureStringEncodingSetAtEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEE34ensureStringEncodingSetAtAllInputsEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEE36propagateStringEncodingFromAllInputsEv, ptr @_ZNK8facebook5velox4exec14VectorFunction27propagateStringEncodingFromEv, ptr @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEE16getCanonicalNameEv] }, comdat, align 8
@_ZTIN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE, ptr @_ZTIN8facebook5velox4exec14VectorFunctionE }, comdat, align 8
@_ZTSN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE = linkonce_odr constant [216 x i8] c"N8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES7_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSC_SD_EEEEE\00", comdat, align 1
@_ZTIZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSE_SF_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbEUlvE_ = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSE_SF_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbEUlvE_ }, comdat, align 8
@_ZTSZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSE_SF_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbEUlvE_ = linkonce_odr constant [395 x i8] c"ZN8facebook5velox4exec22SimpleFunctionRegistry16registerFunctionINS1_32SimpleFunctionAdapterFactoryImplINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEES9_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEENS0_7VarcharEEEEJSE_SF_EEEEEEEbRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EERKSJ_INS1_17SignatureVariableESaISU_EEbEUlvE_\00", comdat, align 1
@_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharESA_EEEJSA_SA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global %"class.std::shared_ptr.2823" zeroinitializer, comdat, align 8
@_ZGVZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS1_10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharESA_EEEJSA_SA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [230 x i8] c"St23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions25JsonArrayContainsFunctionINS1_4exec10VectorExecEEEbNS1_15ConstantCheckerIJNS1_7VarcharESA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EEE = linkonce_odr unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EEE, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EED2Ev, ptr @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EED0Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE20tryResolveReturnTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE7getNameB5cxx11Ev, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE15isDeterministicEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE19defaultNullBehaviorEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE5ownerEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE8priorityEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE9signatureEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE18resultPhysicalTypeEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE16argPhysicalTypesEv, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE23physicalSignatureEqualsERKNS1_23ISimpleFunctionMetadataE, ptr @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions25JsonArrayContainsFunctionINS0_4exec10VectorExecEEEbNS0_15ConstantCheckerIJNS0_7VarcharES9_EEEJS9_S9_EE11helpMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, comdat, align 8
end_hunk_0
begin_hunk_1_@_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSISt17basic_string_viewIcS3_EEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !97
  %i.h = icmp eq ptr %.sroa.4.0.copyload.i.i, null
  %i.i = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.i, %i.h
  br i1 %or.cond.i.i.i.i.i.i, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #36
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %.sroa.0.0.copyload.i.i, 15
  br i1 %i.j, label %bb.e, label %._crit_edge.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.k, label %.noexc.i.i.i.i.i.i, label %bb.f

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i64 %.sroa.0.0.copyload.i.i, 1   ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc9.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, !prof !98

.noexc9.i.i.i.i.i.i:                              ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #34 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !7
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.g, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, %bb.d
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i ], [ %i.g, %bb.d ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJSt17basic_string_viewIcS3_EEEEvDpOT_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.p = load i8, ptr %.sroa.4.0.copyload.i.i, align 1, !tbaa !26
  store i8 %i.p, ptr %i.o, align 1, !tbaa !26
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJSt17basic_string_viewIcS3_EEEEvDpOT_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %.sroa.4.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJSt17basic_string_viewIcS3_EEEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJSt17basic_string_viewIcS3_EEEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.g, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.copyload.i.i
  store i8 0, ptr %i.r, align 1, !tbaa !26
  store i8 1, ptr %i.a, align 8, !tbaa !306
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJSt17basic_string_viewIcS3_EEEEvDpOT_.exit, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand8documentE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !853, !noalias !2006
  %i.c = load ptr, ptr %1, align 8, !tbaa !866, !noalias !2011 ; 4 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3, !noalias !2011
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !26, !noalias !2011
  %i.h = add i8 %i.g, -91
  %switch.and = and i8 %i.h, -33
  %switch.selectcmp.not = icmp eq i8 %switch.and, 0
  br i1 %switch.selectcmp.not, label %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1933, !noalias !2011
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1933, !noalias !2011
  br label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread

_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.thread: ; preds = %_ZN8simdjson8fallback8ondemand8document9is_scalarEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 6 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1947, !noalias !2011 ; 8 uses
  %.not.i3 = icmp sgt i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1933, !noalias !2011 ; 4 uses
  br i1 %.not.i3, label %bb.b, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread

bb.b:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 10 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !1933, !noalias !2011
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3, !noalias !2011
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !26, !noalias !2011
  switch i8 %i.t, label %bb.f [
    i8 91, label %bb.g
    i8 123, label %bb.g
    i8 58, label %bb.g
    i8 44, label %bb.g
    i8 93, label %bb.c
    i8 125, label %bb.c
    i8 34, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.u = add nsw i32 %i.m, -1                     ; 3 uses
  store i32 %i.u, ptr %i.l, align 4, !tbaa !1947, !noalias !2011
  %.not6.i5.not = icmp eq i32 %i.u, 0
  br i1 %.not6.i5.not, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread, label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.p, align 4, !tbaa !3, !noalias !2011
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !26, !noalias !2011
  %i.z = icmp eq i8 %i.y, 58
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.n, align 8, !tbaa !1933, !noalias !2011
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.ab = add nsw i32 %i.m, -1                    ; 3 uses
  store i32 %i.ab, ptr %i.l, align 4, !tbaa !1947, !noalias !2011
  %.not7.i.not = icmp eq i32 %i.ab, 0
  br i1 %.not7.i.not, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.f, %bb.e, %bb.c
  %i.ac = phi i32 [ %i.m, %bb.b ], [ %i.m, %bb.b ], [ %i.m, %bb.b ], [ %i.m, %bb.b ], [ %i.ab, %bb.f ], [ %i.m, %bb.e ], [ %i.u, %bb.c ]
  %i.ad = phi ptr [ %i.p, %bb.b ], [ %i.p, %bb.b ], [ %i.p, %bb.b ], [ %i.p, %bb.b ], [ %i.p, %bb.f ], [ %i.aa, %bb.e ], [ %i.p, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1915, !noalias !2011
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1937, !noalias !2011 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1939, !noalias !2011
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.al = zext i32 %i.aj to i64                   ; 2 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !852, !noalias !2011
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al
  %i.ao = icmp ult ptr %i.ad, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %i.ap = phi i32 [ %i.ay, %bb.j ], [ %i.ac, %bb.g ] ; 4 uses
  %i.aq = phi ptr [ %i.ar, %bb.j ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 4 uses
  store ptr %i.ar, ptr %i.n, align 8, !tbaa !1933, !noalias !2011
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !2011
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !26, !noalias !2011
  switch i8 %i.av, label %bb.j [
    i8 91, label %bb.h
    i8 123, label %bb.h
    i8 93, label %bb.i
    i8 125, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph, %.lr.ph
  %i.aw = add nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.aw, ptr %i.l, align 4, !tbaa !1947, !noalias !2011
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %.lr.ph
  %i.ax = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.l, align 4, !tbaa !1947, !noalias !2011
  %.not8.i = icmp sgt i32 %i.ap, 1
  br i1 %.not8.i, label %bb.j, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread

bb.j:                                             ; preds = %.lr.ph, %bb.i, %bb.h
  %i.ay = phi i32 [ %i.ap, %.lr.ph ], [ %i.ax, %bb.i ], [ %i.aw, %bb.h ]
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !852, !noalias !2011
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.al
  %i.bb = icmp ult ptr %i.ar, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !1992

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 3, ptr %i.bc, align 8, !tbaa !1948, !noalias !2011
  store ptr null, ptr %i.ae, align 8, !tbaa !1915, !noalias !2011
  store i32 0, ptr %i.l, align 4, !tbaa !1947, !noalias !2011
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.n

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread: ; preds = %bb.i, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.thread, %bb.f, %bb.c, %bb.a
  %i.bd = phi ptr [ %i.o, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit.thread ], [ %i.k, %bb.a ], [ %i.p, %bb.f ], [ %i.p, %bb.c ], [ %i.ar, %bb.i ]
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3, !noalias !2011
  %i.bf = zext i32 %i.be to i64
  %gepdiff = sub nsw i64 %i.bf, %i.e              ; 4 uses
  %.not.i16 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i16, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread, %bb.k
  %.0710.i.i.i = phi i64 [ %i.bl, %bb.k ], [ 0, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0710.i.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !26  ; 2 uses
  %i.bi = zext nneg i8 %i.bh to i64
  %memchr.bounds.i = icmp ugt i8 %i.bh, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bj, 4294977024
  %memchr.bits.i = icmp eq i64 %i.bk, 0
  %memchr.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.bl = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bl, %gepdiff
  br i1 %exitcond.not.i.i.i, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !2012

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0710.i.i.i
  %i.bn = icmp eq i64 %.0710.i.i.i, -1
  br i1 %i.bn, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i:  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.l
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.l ], [ %gepdiff, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ]
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i.i.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !26  ; 2 uses
  %i.bq = zext nneg i8 %i.bp to i64
  %memchr.bounds24.i = icmp ugt i8 %i.bp, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = and i64 %i.br, 4294977024
  %memchr.bits25.i = icmp eq i64 %i.bs, 0
  %memchr.not26.i = select i1 %memchr.bounds24.i, i1 true, i1 %memchr.bits25.i
  br i1 %memchr.not26.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %bb.m, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i, !llvm.loop !2013

bb.m:                                             ; preds = %bb.l, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.010.i.i.i = phi i64 [ %.1.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i ], [ -1, %bb.l ]
  %reass.sub = sub i64 %.010.i.i.i, %.0710.i.i.i
  %i.bt = add i64 %reass.sub, 1
  %i.bu = sub nuw i64 %gepdiff, %.0710.i.i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bt)
  br label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.k, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.m
  %.sroa.3.0.i = phi ptr [ %i.bm, %bb.m ], [ null, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ null, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread ], [ null, %bb.k ]
  %.sroa.010.0.i = phi i64 [ %.sroa.speculated.i.i, %bb.m ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ 0, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit.thread ], [ 0, %bb.k ]
  store i64 %.sroa.010.0.i, ptr %0, align 8, !tbaa !186
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !730
  br label %bb.n

bb.n:                                             ; preds = %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, %._crit_edge
  %.sink = phi i32 [ 0, %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 3, %._crit_edge ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.bv, align 8, !tbaa !1964
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJPKcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !730    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !97
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #36
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #31 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !98

.noexc11.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #34 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !7
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.b
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEvPT_DpOT0_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.a, align 1, !tbaa !26
  store i8 %i.k, ptr %i.j, align 1, !tbaa !26
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEvPT_DpOT0_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEvPT_DpOT0_.exit

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEvPT_DpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.n, align 8, !tbaa !306
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !tbaa !730
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !853  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1915
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1937 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1939 ; 2 uses
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = add i32 %i.h, -1
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !852
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %.not5 = icmp ugt i32 %i.p, %i.o
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.q = phi i32 [ %i.x, %bb.d ], [ %i.p, %bb.a ]
  %.07 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]     ; 3 uses
  %.sroa.5.06 = phi ptr [ %i.t, %bb.d ], [ %i.b, %bb.a ]
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.5.06, i64 4 ; 2 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !26
  switch i8 %i.u, label %bb.d [
    i8 91, label %bb.b
    i8 123, label %bb.b
    i8 93, label %bb.c
    i8 125, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.v = add nsw i32 %.07, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.w = add nsw i32 %.07, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %.1 = phi i32 [ %.07, %.lr.ph ], [ %i.v, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %i.x = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %.not = icmp ugt i32 %i.x, %i.o
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2014

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.y = icmp eq i32 %.1, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i1 [ true, %bb.a ], [ %i.y, %._crit_edge.loopexit ]
  ret i1 %.0.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZZN8facebook5velox9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS3_12StringWriterERKNS0_10StringViewESA_ENKUlRT_E_clIN8simdjson8fallback8ondemand5valueEEEDaSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::simdjson_result.1061", align 8 ; 7 uses
  %3 = alloca %"struct.simdjson::simdjson_result.1061", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1951, !nonnull !126 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !100, !range !125, !noundef !126
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1953, !nonnull !126, !align !247 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !306, !range !125, !noundef !126
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.g, align 8, !tbaa !306
  br i1 %i.i, label %bb.c, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !26
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 1, !tbaa !100
  %i.o = load ptr, ptr %1, align 8, !tbaa !1973   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1975 ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !866  ; 4 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !26
  switch i8 %i.v, label %bb.l [
    i8 123, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 91, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 34, label %bb.i
    i8 110, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
    i8 116, label %bb.e
    i8 102, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1933 ; 3 uses
  %.not = icmp eq ptr %i.y, %i.q                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9functions17SIMDJsonExtractor14visitRecursiveIZNS1_25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS5_12StringWriterERKNS0_10StringViewESC_EUlRT_E_EEN8simdjson10error_codeERNSG_8fallback8ondemand5valueESE_Rbm:bb.a
  %.not.i1.i264 = icmp eq ptr %i.ng, null
  br i1 %.not.i1.i264, label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i265

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i265: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !115
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 72
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ng) #31, !inline_history !2095
  br label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266

_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.co

bb.co:                                            ; preds = %bb.a, %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266
  %.18 = phi i32 [ %.17, %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266 ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i32 %.18
}

declare noundef i32 @_ZN8facebook5velox9functions13extractObjectERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef i32 @_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5valueE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::array", align 8 ; 6 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::object", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1973   ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1975 ; 6 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !866  ; 5 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3    ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !26
  switch i8 %i.h, label %bb.l [
    i8 123, label %bb.g
    i8 91, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1933, !noalias !2096 ; 4 uses
  %i.n = icmp eq ptr %i.m, %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1947, !noalias !2096 ; 3 uses
  %i.q = load i32, ptr %i.k, align 8, !tbaa !1979, !noalias !2096 ; 2 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.n, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.r), !noalias !2096
  %i.s = icmp sgt i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.s), !noalias !2096
  %i.t = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !2096
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26, !noalias !2096
  %.not8.i.i = icmp eq i8 %i.w, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store ptr %i.x, ptr %i.l, align 8, !tbaa !1933, !noalias !2096
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.y = phi i32 [ %i.p, %bb.d ], [ %i.q, %bb.b ] ; 2 uses
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.m, %bb.b ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ab = icmp eq ptr %i.z, %i.aa
  tail call void @llvm.assume(i1 %i.ab), !noalias !2096
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ad = icmp sgt i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.ad), !noalias !2096
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !2096
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !26, !noalias !2096
  %i.ai = icmp eq i8 %i.ah, 93
  br i1 %i.ai, label %bb.e, label %_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit

bb.e:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !1933, !noalias !2096
  br label %_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit

_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit: ; preds = %._crit_edge, %bb.e
  %.sink = phi i32 [ -1, %bb.e ], [ 1, %._crit_edge ]
  %i.ak = add nsw i32 %i.y, %.sink
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !1947, !noalias !2096
  %.sroa.077.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !852, !noalias !2096
  store ptr %i.a, ptr %2, align 8, !tbaa !1949
  %i.al = load <2 x i32>, ptr %i.k, align 8, !noalias !2096
  store <2 x i32> %i.al, ptr %i.i, align 8
  store ptr %.sroa.077.sroa.6.0.copyload, ptr %i.j, align 8, !tbaa !852
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5arrayE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #31
  br label %bb.f

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 17, ptr %i.am, align 8, !tbaa !1964
  br label %bb.f

bb.f:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator13started_arrayEv.exit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1933, !noalias !2099 ; 4 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1947, !noalias !2099 ; 3 uses
  %i.av = load i32, ptr %i.ap, align 8, !tbaa !1979, !noalias !2099 ; 2 uses
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.as, label %bb.h, label %._crit_edge164

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.aw), !noalias !2099
  %i.ax = icmp sgt i32 %i.au, 0
  tail call void @llvm.assume(i1 %i.ax), !noalias !2099
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !3, !noalias !2099
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !26, !noalias !2099
  %.not8.i = icmp eq i8 %i.bb, 123
  br i1 %.not8.i, label %bb.i, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  store ptr %i.bc, ptr %i.aq, align 8, !tbaa !1933, !noalias !2099
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.g, %bb.i
  %i.bd = phi i32 [ %i.au, %bb.i ], [ %i.av, %bb.g ] ; 4 uses
  %i.be = phi ptr [ %i.bc, %bb.i ], [ %i.ar, %bb.g ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bg = icmp eq ptr %i.be, %i.bf
  tail call void @llvm.assume(i1 %i.bg), !noalias !2099
  %i.bh = icmp sgt i32 %i.bd, 0
  tail call void @llvm.assume(i1 %i.bh), !noalias !2099
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !3, !noalias !2099
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26, !noalias !2099
  %i.bm = icmp eq i8 %i.bl, 125
  br i1 %i.bm, label %bb.j, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge

bb.j:                                             ; preds = %._crit_edge164
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bo, ptr %i.aq, align 8, !tbaa !1933, !noalias !2099
  %i.bp = add nsw i32 %i.bd, -1
  %or.cond.i.i = icmp ne i32 %i.bd, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i), !noalias !2099
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !1947, !noalias !2099
  %.sroa.050.sroa.4.0.copyload.pre = load i32, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge: ; preds = %bb.j, %._crit_edge164
  %.sroa.050.sroa.4.0.copyload = phi i32 [ %.sroa.050.sroa.4.0.copyload.pre, %bb.j ], [ %i.bd, %._crit_edge164 ]
  %.sroa.050.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.050.sroa.5.0.copyload = load i32, ptr %.sroa.050.sroa.5.0..sroa_idx, align 4
  %.sroa.050.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !852
  store ptr %i.a, ptr %3, align 8, !tbaa !1949
  store i32 %.sroa.050.sroa.4.0.copyload, ptr %i.an, align 8, !tbaa !3
  %.sroa.029.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.050.sroa.5.0.copyload, ptr %.sroa.029.sroa.6.0..sroa_idx, align 4
  store ptr %.sroa.050.sroa.6.0.copyload, ptr %i.ao, align 8, !tbaa !852
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand6objectE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  br label %bb.k

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit: ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 17, ptr %i.bq, align 8, !tbaa !1964
  br label %bb.k

bb.k:                                             ; preds = %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.critedge, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3  ; 2 uses
  %i.bt = sub i32 %i.bs, %i.e
  %i.bu = zext i32 %i.bt to i64                   ; 3 uses
  %.not.i26 = icmp eq i32 %i.bs, %i.e
  br i1 %.not.i26, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.l, %bb.m
  %.0710.i.i.i = phi i64 [ %i.ca, %bb.m ], [ 0, %bb.l ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !26  ; 2 uses
  %i.bx = zext nneg i8 %i.bw to i64
  %memchr.bounds.i = icmp ugt i8 %i.bw, 63
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = and i64 %i.by, 4294977024
  %memchr.bits.i = icmp eq i64 %i.bz, 0
  %memchr.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr.not.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.ca = add nuw nsw i64 %.0710.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ca, %i.bu
  br i1 %exitcond.not.i.i.i, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !2012

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i:  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader, %bb.n
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.n ], [ %i.bu, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader ]
  %.1.i.i.i = add nsw i64 %.1.i.i.in.i, -1        ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !26  ; 2 uses
  %i.ce = zext nneg i8 %i.cd to i64
  %memchr.bounds24.i = icmp ugt i8 %i.cd, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, 4294977024
  %memchr.bits25.i = icmp eq i64 %i.cg, 0
  %memchr.not26.i = select i1 %memchr.bounds24.i, i1 true, i1 %memchr.bits25.i
  br i1 %memchr.not26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %bb.o, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i, !llvm.loop !2013

bb.o:                                             ; preds = %bb.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.010.i.i.i = phi i64 [ %.1.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i ], [ -1, %bb.n ]
  %reass.sub = sub i64 %.010.i.i.i, %.0710.i.i.i
  %i.ch = add i64 %reass.sub, 1
  %i.ci = sub nuw nsw i64 %i.bu, %.0710.i.i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.ch)
  br label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.m, %bb.l, %bb.o
  %.sroa.3.0.i = phi ptr [ %i.cb, %bb.o ], [ null, %bb.l ], [ null, %bb.m ]
  %.sroa.010.0.i = phi i64 [ %.sroa.speculated.i.i, %bb.o ], [ 0, %bb.l ], [ 0, %bb.m ]
  store i64 %.sroa.010.0.i, ptr %0, align 8, !tbaa !186
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !730
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.cj, align 8, !tbaa !1964
  br label %bb.p

bb.p:                                             ; preds = %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.k, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5arrayE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1973, !noalias !2102 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1975, !noalias !2102
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !866, !noalias !2102 ; 4 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !2102
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1979, !noalias !2102 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 6 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1947, !noalias !2102 ; 10 uses
  %.not.i.i.not = icmp slt i32 %i.k, %i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1933, !noalias !2102 ; 4 uses
  br i1 %.not.i.i.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 4 ; 10 uses
  store ptr %i.l, ptr %.phi.trans.insert, align 8, !tbaa !1933, !noalias !2102
  %i.m = load i32, ptr %.pre, align 4, !tbaa !3, !noalias !2102
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26, !noalias !2102
  switch i8 %i.p, label %bb.f [
    i8 91, label %bb.g
    i8 123, label %bb.g
    i8 58, label %bb.g
    i8 44, label %bb.g
    i8 93, label %bb.c
    i8 125, label %bb.c
    i8 34, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.q = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.q, ptr %i.j, align 4, !tbaa !1947, !noalias !2102
  %.not6.i.i = icmp sgt i32 %i.k, %i.i
  br i1 %.not6.i.i, label %bb.g, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !2102
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !26, !noalias !2102
  %i.v = icmp eq i8 %i.u, 58
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  store ptr %i.w, ptr %.phi.trans.insert, align 8, !tbaa !1933, !noalias !2102
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.x = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.x, ptr %i.j, align 4, !tbaa !1947, !noalias !2102
  %.not7.i.i = icmp sgt i32 %i.k, %i.i
  br i1 %.not7.i.i, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.f, %bb.e, %bb.c
  %i.y = phi i32 [ %i.k, %bb.b ], [ %i.k, %bb.b ], [ %i.k, %bb.b ], [ %i.k, %bb.b ], [ %i.x, %bb.f ], [ %i.k, %bb.e ], [ %i.q, %bb.c ]
  %i.z = phi ptr [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.f ], [ %i.w, %bb.e ], [ %i.l, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1915, !noalias !2102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1937, !noalias !2102 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1939, !noalias !2102
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ah = zext i32 %i.af to i64                   ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !852, !noalias !2102
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = icmp ult ptr %i.z, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.j
  %i.al = phi i32 [ %i.au, %bb.j ], [ %i.y, %bb.g ] ; 4 uses
  %i.am = phi ptr [ %i.an, %bb.j ], [ %i.z, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 4 uses
  store ptr %i.an, ptr %.phi.trans.insert, align 8, !tbaa !1933, !noalias !2102
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !2102
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !26, !noalias !2102
  switch i8 %i.ar, label %bb.j [
    i8 91, label %bb.h
    i8 123, label %bb.h
    i8 93, label %bb.i
    i8 125, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph, %.lr.ph
  %i.as = add nsw i32 %i.al, 1                    ; 2 uses
  store i32 %i.as, ptr %i.j, align 4, !tbaa !1947, !noalias !2102
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %.lr.ph
  %i.at = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.at, ptr %i.j, align 4, !tbaa !1947, !noalias !2102
  %.not8.i.i = icmp sgt i32 %i.al, %i.i
  br i1 %.not8.i.i, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph, %bb.i, %bb.h
  %i.au = phi i32 [ %i.al, %.lr.ph ], [ %i.at, %bb.i ], [ %i.as, %bb.h ]
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !852, !noalias !2102
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ah
  %i.ax = icmp ult ptr %i.an, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !1992

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 3, ptr %i.ay, align 8, !tbaa !1948, !noalias !2102
  store ptr null, ptr %i.aa, align 8, !tbaa !1915, !noalias !2102
  store i32 0, ptr %i.j, align 4, !tbaa !1947, !noalias !2102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.n

.loopexit:                                        ; preds = %bb.i, %bb.a, %bb.c, %bb.f
  %i.az = phi ptr [ %.pre, %bb.a ], [ %i.l, %bb.f ], [ %i.l, %bb.c ], [ %i.an, %bb.i ]
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3, !noalias !2102
  %i.bb = zext i32 %i.ba to i64
  %gepdiff = sub nsw i64 %i.bb, %i.f              ; 4 uses
  %.not.i12 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i12, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %.loopexit, %bb.k
  %.0710.i.i.i = phi i64 [ %i.bh, %bb.k ], [ 0, %.loopexit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !26  ; 2 uses
  %i.be = zext nneg i8 %i.bd to i64
  %memchr.bounds.i = icmp ugt i8 %i.bd, 63
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = and i64 %i.bf, 4294977024
  %memchr.bits.i = icmp eq i64 %i.bg, 0
  %memchr.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.bh = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %gepdiff
  br i1 %exitcond.not.i.i.i, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !2012

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  %i.bj = icmp eq i64 %.0710.i.i.i, -1
  br i1 %i.bj, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i:  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.l
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.l ], [ %gepdiff, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ]
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26  ; 2 uses
  %i.bm = zext nneg i8 %i.bl to i64
  %memchr.bounds24.i = icmp ugt i8 %i.bl, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = and i64 %i.bn, 4294977024
  %memchr.bits25.i = icmp eq i64 %i.bo, 0
  %memchr.not26.i = select i1 %memchr.bounds24.i, i1 true, i1 %memchr.bits25.i
  br i1 %memchr.not26.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %bb.m, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i, !llvm.loop !2013

bb.m:                                             ; preds = %bb.l, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.010.i.i.i = phi i64 [ %.1.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i ], [ -1, %bb.l ]
  %reass.sub = sub i64 %.010.i.i.i, %.0710.i.i.i
  %i.bp = add i64 %reass.sub, 1
  %i.bq = sub nuw i64 %gepdiff, %.0710.i.i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bp)
  br label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.k, %.loopexit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.m
  %.sroa.3.0.i = phi ptr [ %i.bi, %bb.m ], [ null, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ null, %.loopexit ], [ null, %bb.k ]
  %.sroa.010.0.i = phi i64 [ %.sroa.speculated.i.i, %bb.m ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ 0, %.loopexit ], [ 0, %bb.k ]
  store i64 %.sroa.010.0.i, ptr %0, align 8, !tbaa !186
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !730
  br label %bb.n

bb.n:                                             ; preds = %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, %._crit_edge
  %.sink = phi i32 [ 0, %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 3, %._crit_edge ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.br, align 8, !tbaa !1964
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand6objectE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::simdjson_result.1061") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1973, !noalias !2105 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1975, !noalias !2105 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !866, !noalias !2105 ; 6 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3, !noalias !2105
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1979, !noalias !2105 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 7 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1947, !noalias !2105 ; 3 uses
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1933, !noalias !2105 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3, !noalias !2105
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !26, !noalias !2105
  %i.s = icmp eq i8 %i.r, 34
  br i1 %i.s, label %bb.b, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread

bb.b:                                             ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit
  %i.t = icmp ugt ptr %i.n, %i.c
  tail call void @llvm.assume(i1 %i.t), !noalias !2105
  %i.u = icmp sgt i32 %i.i, 0
  tail call void @llvm.assume(i1 %i.u), !noalias !2105
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  store ptr %i.v, ptr %i.m, align 8, !tbaa !1933, !noalias !2105
  %i.w = load i8, ptr %i.q, align 1, !tbaa !26, !noalias !2105
  %.not.i12.i = icmp eq i8 %i.w, 34
  br i1 %.not.i12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 3, ptr %i.x, align 8, !tbaa !1948, !noalias !2105
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.y, align 8, !tbaa !1915, !noalias !2105
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.d:                                             ; preds = %bb.b
  %i.z = icmp ugt ptr %i.v, %i.c
  tail call void @llvm.assume(i1 %i.z), !noalias !2105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.aa, ptr %i.m, align 8, !tbaa !1933, !noalias !2105
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !3, !noalias !2105
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !26, !noalias !2105
  %.not.i13.i = icmp eq i8 %i.ae, 58
  br i1 %.not.i13.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 3, ptr %i.af, align 8, !tbaa !1948, !noalias !2105
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.ag, align 8, !tbaa !1915, !noalias !2105
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = add nuw nsw i32 %i.i, 1                 ; 2 uses
  %or.cond.i.i = icmp samesign ult i32 %i.i, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i.i), !noalias !2105
  store i32 %i.ah, ptr %i.j, align 4, !tbaa !1947, !noalias !2105
  br label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread: ; preds = %bb.a
  %.not.i.i.not = icmp slt i32 %i.k, %i.i
  br i1 %.not.i.i.not, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread..loopexit_crit_edge, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread..loopexit_crit_edge: ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1933, !noalias !2105
  br label %.loopexit

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread: ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit, %bb.f, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread
  %i.ai = phi i32 [ %i.k, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ], [ %i.i, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit ], [ %i.ah, %bb.f ] ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1933, !noalias !2105 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 10 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1933, !noalias !2105
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !2105
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !26, !noalias !2105
  switch i8 %i.ap, label %bb.j [
    i8 91, label %bb.k
    i8 123, label %bb.k
    i8 58, label %bb.k
    i8 44, label %bb.k
    i8 93, label %bb.g
    i8 125, label %bb.g
    i8 34, label %bb.h
  ]

bb.g:                                             ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread
  %i.aq = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.j, align 4, !tbaa !1947, !noalias !2105
  %.not6.i.i = icmp sgt i32 %i.ai, %i.i
  br i1 %.not6.i.i, label %bb.k, label %.loopexit

bb.h:                                             ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !2105
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26, !noalias !2105
  %i.av = icmp eq i8 %i.au, 58
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.aj, align 8, !tbaa !1933, !noalias !2105
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread
  %i.ax = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.j, align 4, !tbaa !1947, !noalias !2105
  %.not7.i.i = icmp sgt i32 %i.ai, %i.i
  br i1 %.not7.i.i, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread, %bb.j, %bb.i, %bb.g
  %i.ay = phi i32 [ %i.ai, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.ai, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.ai, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.ai, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.ax, %bb.j ], [ %i.ai, %bb.i ], [ %i.aq, %bb.g ]
  %i.az = phi ptr [ %i.al, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.al, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.al, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.al, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.al, %bb.j ], [ %i.aw, %bb.i ], [ %i.al, %bb.g ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1915, !noalias !2105
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1937, !noalias !2105 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1939, !noalias !2105
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bh = zext i32 %i.bf to i64                   ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !852, !noalias !2105
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = icmp ult ptr %i.az, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k, %bb.n
  %i.bl = phi i32 [ %i.bu, %bb.n ], [ %i.ay, %bb.k ] ; 4 uses
  %i.bm = phi ptr [ %i.bn, %bb.n ], [ %i.az, %bb.k ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 4 uses
  store ptr %i.bn, ptr %i.aj, align 8, !tbaa !1933, !noalias !2105
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3, !noalias !2105
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !26, !noalias !2105
  switch i8 %i.br, label %bb.n [
    i8 91, label %bb.l
    i8 123, label %bb.l
    i8 93, label %bb.m
    i8 125, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph, %.lr.ph
  %i.bs = add nsw i32 %i.bl, 1                    ; 2 uses
  store i32 %i.bs, ptr %i.j, align 4, !tbaa !1947, !noalias !2105
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph, %.lr.ph
  %i.bt = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.j, align 4, !tbaa !1947, !noalias !2105
  %.not8.i.i = icmp sgt i32 %i.bl, %i.i
  br i1 %.not8.i.i, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph, %bb.m, %bb.l
  %i.bu = phi i32 [ %i.bl, %.lr.ph ], [ %i.bt, %bb.m ], [ %i.bs, %bb.l ]
  %i.bv = load ptr, ptr %i.bg, align 8, !tbaa !852, !noalias !2105
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bh
  %i.bx = icmp ult ptr %i.bn, %i.bw
  br i1 %i.bx, label %.lr.ph, label %._crit_edge, !llvm.loop !1992

._crit_edge:                                      ; preds = %bb.n, %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 3, ptr %i.by, align 8, !tbaa !1948, !noalias !2105
  store ptr null, ptr %i.ba, align 8, !tbaa !1915, !noalias !2105
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit: ; preds = %bb.e, %bb.c, %._crit_edge
  store i32 0, ptr %i.j, align 4, !tbaa !1947, !noalias !2105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.r

.loopexit:                                        ; preds = %bb.m, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread..loopexit_crit_edge, %bb.g, %bb.j
  %i.bz = phi ptr [ %.pre, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread..loopexit_crit_edge ], [ %i.al, %bb.j ], [ %i.al, %bb.g ], [ %i.bn, %bb.m ]
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !2105
  %i.cb = zext i32 %i.ca to i64
  %gepdiff = sub nsw i64 %i.cb, %i.f              ; 4 uses
  %.not.i14 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i14, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %.loopexit, %bb.o
  %.0710.i.i.i = phi i64 [ %i.ch, %bb.o ], [ 0, %.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !26  ; 2 uses
  %i.ce = zext nneg i8 %i.cd to i64
  %memchr.bounds.i = icmp ugt i8 %i.cd, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, 4294977024
  %memchr.bits.i = icmp eq i64 %i.cg, 0
  %memchr.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.ch = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ch, %gepdiff
  br i1 %exitcond.not.i.i.i, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !2012

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  %i.cj = icmp eq i64 %.0710.i.i.i, -1
  br i1 %i.cj, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i:  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.p
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.p ], [ %gepdiff, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ]
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i.i.i
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !26  ; 2 uses
  %i.cm = zext nneg i8 %i.cl to i64
  %memchr.bounds24.i = icmp ugt i8 %i.cl, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, 4294977024
  %memchr.bits25.i = icmp eq i64 %i.co, 0
  %memchr.not26.i = select i1 %memchr.bounds24.i, i1 true, i1 %memchr.bits25.i
  br i1 %memchr.not26.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %bb.q, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i, !llvm.loop !2013

bb.q:                                             ; preds = %bb.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.010.i.i.i = phi i64 [ %.1.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i ], [ -1, %bb.p ]
  %reass.sub = sub i64 %.010.i.i.i, %.0710.i.i.i
  %i.cp = add i64 %reass.sub, 1
  %i.cq = sub nuw i64 %gepdiff, %.0710.i.i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cp)
  br label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.o, %.loopexit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.q
  %.sroa.3.0.i = phi ptr [ %i.ci, %bb.q ], [ null, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ null, %.loopexit ], [ null, %bb.o ]
  %.sroa.010.0.i = phi i64 [ %.sroa.speculated.i.i, %bb.q ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ 0, %.loopexit ], [ 0, %bb.o ]
  store i64 %.sroa.010.0.i, ptr %0, align 8, !tbaa !186
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !730
  br label %bb.r

bb.r:                                             ; preds = %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit
  %.sink = phi i32 [ 0, %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 3, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.cr, align 8, !tbaa !1964
  ret void
}

declare void @_ZN8facebook5velox21reusePaddedStringViewERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.simdjson::padded_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN8simdjson25get_active_implementationEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESD_EEEJSH_SD_EEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISH_EENSN_ISD_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef byval(%class.anon.1046) align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.anon.1132, align 8           ; 6 uses
  %6 = alloca %class.anon.1131, align 8           ; 8 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i8 %i.a, ptr %5, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.25.0..sroa_idx, align 8
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESE_EEEJSI_SE_EEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISI_EENSO_ISE_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESD_EEEJSH_SD_EEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISH_EENSN_ISD_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESE_EEEJSI_SE_EEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISI_EENSO_ISE_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESD_EEEJSH_SD_EEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISH_EENSN_ISD_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESE_EEEJSI_SE_EEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISI_EENSO_ISE_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESD_EEEJSH_SD_EEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISH_EENSN_ISD_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2108

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESD_EEEJSH_SD_EEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISH_EENSN_ISD_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESE_EEEJSI_SE_EEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISI_EENSO_ISE_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS4_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS4_10VectorExecEEESC_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESE_EEEJSI_SE_EEEE8applyUdfIZNKSL_7iterateIJNS4_20ConstantVectorReaderISI_EENSO_ISE_EEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_EUlimE_ZNS3_IS17_EEvS19_iibSW_EUliE_EEviiSW_SY_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESD_EEEJSH_SD_EEEE8applyUdfIZNKSK_7iterateIJNS3_20ConstantVectorReaderISH_EENSN_ISD_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSL_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.std::optional.79", align 8  ; 10 uses
  %4 = alloca %class.anon.1047, align 8           ; 6 uses
  %5 = alloca %"struct.simdjson::simdjson_result", align 8 ; 10 uses
  %6 = alloca %"class.simdjson::padded_string_view", align 8 ; 7 uses
  %7 = alloca %"class.simdjson::fallback::ondemand::document", align 8 ; 10 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %9 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %10 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !2109, !range !125, !noundef !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2111
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !186
  %i.i = xor i8 %i.c, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = xor i64 %i.h, %i.k
  %i.m = and i64 %i.l, %2                         ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.loopexit60, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = shl nsw i32 %1, 6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISF_EENSL_ISB_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit
  %.070 = phi i64 [ %i.m, %.preheader ], [ %i.ga, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonExtractScalarFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEESB_EEEJSF_SB_EEEE8applyUdfIZNKSI_7iterateIJNS1_20ConstantVectorReaderISF_EENSL_ISB_EEEEEvRNSI_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSJ_ISY_EEvSP_ST_EUlST_E0_EEvRKNS0_17SelectivityVectorEST_SV_ENKUlST_E_clIiEEDaST_.exit ] ; 3 uses
  %i.ak = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.070, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = or disjoint i32 %i.o, %i.al             ; 3 uses
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !1861 ; 2 uses
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !1892, !nonnull !126, !align !247 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1893, !nonnull !126, !align !247 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  store i32 %i.am, ptr %i.aq, align 8, !tbaa !1870
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1896, !nonnull !126, !align !247 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1897, !noalias !2112, !nonnull !126, !align !247 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1903, !noalias !2112, !nonnull !126, !align !247 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !2115
  %.sroa.0.0.copyload.i = load i64, ptr %i.av, align 8, !noalias !2115 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !26, !noalias !2115 ; 2 uses
  store i64 %.sroa.0.0.copyload.i, ptr %9, align 8, !noalias !2115
  store ptr %.sroa.2.0.copyload.i, ptr %i.q, align 8, !noalias !2115
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31, !noalias !2118
  %.sroa.0.0.copyload.i25 = load i64, ptr %i.ax, align 8, !noalias !2118 ; 3 uses
  %.sroa.2.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i27 = load ptr, ptr %.sroa.2.0..sroa_idx.i26, align 8, !tbaa !26, !noalias !2118 ; 2 uses
  store i64 %.sroa.0.0.copyload.i25, ptr %8, align 8, !noalias !2118
  store ptr %.sroa.2.0.copyload.i27, ptr %i.r, align 8, !noalias !2118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
end_hunk_2
