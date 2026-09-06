Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Expr?download=true
inline.NumInlined: 7608
inline.NumDeleted: 4168
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0
@.str.6 = private unnamed_addr constant [13 x i8] c"L__FUNCSIG__\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"_block_invoke\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"virtual \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"__cdecl \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"__stdcall \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"__fastcall \00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"__thiscall \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"__vectorcall \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"__regcall \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c" &\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" &&\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"auto \00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"top level\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"'\\x\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"'\\u\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"'\\U\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@_ZZNK5clang13StringLiteral12outputStringERN4llvm11raw_ostreamEE3Hex = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.39 = private unnamed_addr constant [3 x i8] c"\\x\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\\U00\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"\\u\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"__real\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"__imag\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"__extension__\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"co_await\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"Dependent\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"BitCast\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"LValueBitCast\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"LValueToRValueBitCast\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"LValueToRValue\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"NoOp\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"BaseToDerived\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"DerivedToBase\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"UncheckedDerivedToBase\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Dynamic\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"ToUnion\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"ArrayToPointerDecay\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"FunctionToPointerDecay\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"NullToPointer\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"NullToMemberPointer\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"BaseToDerivedMemberPointer\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"DerivedToBaseMemberPointer\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"MemberPointerToBoolean\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"ReinterpretMemberPointer\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"UserDefinedConversion\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"ConstructorConversion\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"IntegralToPointer\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"PointerToIntegral\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"PointerToBoolean\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"ToVoid\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"MatrixCast\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"VectorSplat\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"IntegralCast\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"IntegralToBoolean\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"IntegralToFloating\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"FloatingToFixedPoint\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"FixedPointToFloating\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"FixedPointCast\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"FixedPointToIntegral\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"IntegralToFixedPoint\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"FixedPointToBoolean\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"FloatingToIntegral\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"FloatingToBoolean\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"BooleanToSignedIntegral\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"FloatingCast\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"CPointerToObjCPointerCast\00", align 1
@.str.96 = private unnamed_addr constant [30 x i8] c"BlockPointerToObjCPointerCast\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"AnyPointerToBlockPointerCast\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"ObjCObjectLValueCast\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"FloatingRealToComplex\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"FloatingComplexToReal\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"FloatingComplexToBoolean\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"FloatingComplexCast\00", align 1
@.str.103 = private unnamed_addr constant [33 x i8] c"FloatingComplexToIntegralComplex\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"IntegralRealToComplex\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"IntegralComplexToReal\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"IntegralComplexToBoolean\00", align 1
@.str.107 = private unnamed_addr constant [20 x i8] c"IntegralComplexCast\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"IntegralComplexToFloatingComplex\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"ARCProduceObject\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"ARCConsumeObject\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"ARCReclaimReturnedObject\00", align 1
@.str.112 = private unnamed_addr constant [21 x i8] c"ARCExtendBlockObject\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"AtomicToNonAtomic\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"NonAtomicToAtomic\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"CopyAndAutoreleaseBlockObject\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"BuiltinFnToFnPtr\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"ZeroToOCLOpaqueType\00", align 1
@.str.118 = private unnamed_addr constant [23 x i8] c"AddressSpaceConversion\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"IntToOCLSampler\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"HLSLVectorTruncation\00", align 1
@.str.121 = private unnamed_addr constant [21 x i8] c"HLSLMatrixTruncation\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"HLSLArrayRValue\00", align 1
@.str.123 = private unnamed_addr constant [20 x i8] c"HLSLElementwiseCast\00", align 1
@.str.124 = private unnamed_addr constant [23 x i8] c"HLSLAggregateSplatCast\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"<=>\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.138 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c",\00", align 1
@_ZZN5clang14BinaryOperator21getOverloadedOperatorENS_18BinaryOperatorKindEE7OverOps = internal unnamed_addr constant [33 x i32] [i32 0, i32 40, i32 7, i32 8, i32 9, i32 5, i32 6, i32 26, i32 27, i32 34, i32 16, i32 17, i32 32, i32 33, i32 30, i32 31, i32 11, i32 10, i32 12, i32 35, i32 36, i32 15, i32 20, i32 21, i32 22, i32 18, i32 19, i32 28, i32 29, i32 24, i32 23, i32 25, i32 39], align 16
@.str.154 = private unnamed_addr constant [15 x i8] c"__builtin_FILE\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"__builtin_FILE_NAME\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"__builtin_FUNCTION\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"__builtin_FUNCSIG\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"__builtin_LINE\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"__builtin_COLUMN\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"__builtin_source_location\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"_M_file_name\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"_M_function_name\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"_M_line\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"_M_column\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"even\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"odd\00", align 1
@_ZN5clang4Stmt17StatisticsEnabledE = external local_unnamed_addr global i8, align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.169 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVZN5clang14PredefinedExpr11ComputeNameB5cxx11ENS_19PredefinedIdentKindEPKNS_4DeclEbE15PrettyCallbacks = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZZN5clang14PredefinedExpr11ComputeNameB5cxx11ENS_19PredefinedIdentKindEPKNS_4DeclEbENK15PrettyCallbacks9remapPathB5cxx11EN4llvm9StringRefE, ptr @_ZNK5clang17PrintingCallbacks14isScopeVisibleEPKNS_11DeclContextE] }, align 8
@_ZN5clang8charinfo9InfoTableE = external local_unnamed_addr constant [256 x i16], align 16
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZN4llvm11APFloatBase13semIEEEdoubleE = external global %"struct.llvm::fltSemantics", align 4
@_ZTVN5clang17PreprocessorLexerE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.171 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@switch.table._ZN5clang14PredefinedExpr16getIdentKindNameENS_19PredefinedIdentKindE = private unnamed_addr constant [7 x i8] c"\08\0C\0D\0D\0B\0C\13", align 8
@switch.table._ZN5clang14PredefinedExpr16getIdentKindNameENS_19PredefinedIdentKindE.137 = private unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.4], align 8
@switch.table._ZN5clang14PredefinedExpr11ComputeNameB5cxx11ENS_19PredefinedIdentKindEPKNS_4DeclEb = private unnamed_addr constant [9 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr poison, ptr poison, ptr poison, ptr @.str.16], align 8
@switch.table._ZN5clang12escapeCStyleILNS_10EscapeCharE1EjEEN4llvm9StringRefET0_ = private unnamed_addr constant [86 x ptr] [ptr @.str.174, ptr @.str.175, ptr @.str.179, ptr @.str.177, ptr @.str.180, ptr @.str.176, ptr @.str.178, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.173, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.172], align 8
@switch.table._ZN5clang12escapeCStyleILNS_10EscapeCharE1EjEEN4llvm9StringRefET0_.138 = private unnamed_addr constant [86 x i8] c"\02\02\02\02\02\02\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02", align 8
@switch.table._ZN5clang12escapeCStyleILNS_10EscapeCharE2EjEEN4llvm9StringRefET0_ = private unnamed_addr constant [86 x ptr] [ptr @.str.174, ptr @.str.175, ptr @.str.179, ptr @.str.177, ptr @.str.180, ptr @.str.176, ptr @.str.178, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.181, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.172], align 8
@switch.table._ZN5clang12escapeCStyleILNS_10EscapeCharE2EjEEN4llvm9StringRefET0_.139 = private unnamed_addr constant [86 x i8] c"\02\02\02\02\02\02\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02", align 8
@switch.table._ZN5clang13UnaryOperator12getOpcodeStrENS_17UnaryOperatorKindE = private unnamed_addr constant [14 x i8] c"\02\02\02\02\01\01\01\01\01\01\06\06\0D\08", align 8
@switch.table._ZN5clang13UnaryOperator12getOpcodeStrENS_17UnaryOperatorKindE.140 = private unnamed_addr constant [14 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], align 8
@switch.table._ZN5clang13UnaryOperator21getOverloadedOperatorENS_17UnaryOperatorKindE = private unnamed_addr constant [14 x i8] c"%&%&\0B\07\05\06\0D\0E\00\00\00-", align 4
@switch.table._ZN5clang8CastExpr15getCastKindNameENS_8CastKindE = private unnamed_addr constant [70 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], align 8
@switch.table._ZN5clang8CastExpr11path_bufferEv = private unnamed_addr constant [10 x i8] c"\18000000(((", align 8
@switch.table._ZN5clang14BinaryOperator12getOpcodeStrENS_18BinaryOperatorKindE = private unnamed_addr constant [33 x i8] c"\02\03\01\01\01\01\01\02\02\03\01\01\02\02\02\02\01\01\01\02\02\01\02\02\02\02\02\03\03\02\02\02\01", align 8
@switch.table._ZN5clang14BinaryOperator12getOpcodeStrENS_18BinaryOperatorKindE.141 = private unnamed_addr constant [33 x ptr] [ptr @.str.125, ptr @.str.126, ptr @.str.46, ptr @.str.127, ptr @.str.128, ptr @.str.47, ptr @.str.48, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.45, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], align 8
@switch.table._ZN5clang14BinaryOperator19getOverloadedOpcodeENS_22OverloadedOperatorKindE = private unnamed_addr constant [36 x i8] [i8 5, i8 6, i8 2, i8 3, i8 4, i8 17, i8 16, i8 18, i8 poison, i8 poison, i8 21, i8 10, i8 11, i8 25, i8 26, i8 22, i8 23, i8 24, i8 30, i8 29, i8 31, i8 7, i8 8, i8 27, i8 28, i8 14, i8 15, i8 12, i8 13, i8 9, i8 19, i8 20, i8 poison, i8 poison, i8 32, i8 1], align 4
@switch.table._ZNK5clang13SourceLocExpr13getBuiltinStrEv = private unnamed_addr constant [7 x i8] c"\12\11\0E\13\0E\10\19", align 8
@switch.table._ZNK5clang13SourceLocExpr13getBuiltinStrEv.142 = private unnamed_addr constant [7 x ptr] [ptr @.str.156, ptr @.str.157, ptr @.str.154, ptr @.str.155, ptr @.str.158, ptr @.str.159, ptr @.str.160], align 8
@switch.table._ZNK5clang8CastExpr21getFPFeaturesInEffectERKNS_11LangOptionsE = private unnamed_addr constant [9 x i8] [i8 24, i8 poison, i8 48, i8 poison, i8 poison, i8 poison, i8 poison, i8 40, i8 40], align 8
@switch.table._ZNK5clang20ExtVectorElementExpr23getEncodedElementAccessERN4llvm15SmallVectorImplIjEE = private unnamed_addr constant [26 x i32] [i32 3, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 3, i32 0, i32 1, i32 2], align 4
@switch.table._ZN5clang10AtomicExpr14getNumSubExprsENS0_8AtomicOpE = private unnamed_addr constant [101 x i8] c"\03\03\02\06\06\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\03\03\03\03\03\03\03\02\03\05\05\03\03\03\03\03\03\03\03\03\02\02\03\06\06\04\04\04\04\04\04\04\04\03\04\06\06\04\04\04\04\04\04\04\04\02\03\04\04\04\07\07\05\04\04\04\04\04\04\04\04\04\04\04\04\04\04\03\04\04\04\04\04\04\04\04\04\04", align 4
@switch.table._ZN5clang13ExtVectorType21getNumericAccessorIdxEc = private unnamed_addr constant [55 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], align 4

@_ZN5clang12ConstantExprC1EPNS_4ExprENS_25ConstantResultStorageKindEb = unnamed_addr alias void (ptr, ptr, i32, i1), ptr @_ZN5clang12ConstantExprC2EPNS_4ExprENS_25ConstantResultStorageKindEb
@_ZN5clang12ConstantExprC1ENS_4Stmt10EmptyShellENS_25ConstantResultStorageKindE = unnamed_addr alias void (ptr, i32), ptr @_ZN5clang12ConstantExprC2ENS_4Stmt10EmptyShellENS_25ConstantResultStorageKindE
@_ZN5clang11DeclRefExprC1ERKNS_10ASTContextEPNS_9ValueDeclEbNS_8QualTypeENS_13ExprValueKindENS_14SourceLocationERKNS_18DeclarationNameLocENS_15NonOdrUseReasonE = unnamed_addr alias void (ptr, ptr, ptr, i1, i64, i32, i32, ptr, i32), ptr @_ZN5clang11DeclRefExprC2ERKNS_10ASTContextEPNS_9ValueDeclEbNS_8QualTypeENS_13ExprValueKindENS_14SourceLocationERKNS_18DeclarationNameLocENS_15NonOdrUseReasonE
@_ZN5clang11DeclRefExprC1ERKNS_10ASTContextENS_22NestedNameSpecifierLocENS_14SourceLocationEPNS_9ValueDeclEbRKNS_19DeclarationNameInfoEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoENS_8QualTypeENS_13ExprValueKindENS_15NonOdrUseReasonE = unnamed_addr alias void (ptr, ptr, i64, ptr, i32, ptr, i1, ptr, ptr, ptr, i64, i32, i32), ptr @_ZN5clang11DeclRefExprC2ERKNS_10ASTContextENS_22NestedNameSpecifierLocENS_14SourceLocationEPNS_9ValueDeclEbRKNS_19DeclarationNameInfoEPNS_9NamedDeclEPKNS_24TemplateArgumentListInfoENS_8QualTypeENS_13ExprValueKindENS_15NonOdrUseReasonE
@_ZN5clang24SYCLUniqueStableNameExprC1ENS_14SourceLocationES1_S1_NS_8QualTypeEPNS_14TypeSourceInfoE = unnamed_addr alias void (ptr, i32, i32, i32, i64, ptr), ptr @_ZN5clang24SYCLUniqueStableNameExprC2ENS_14SourceLocationES1_S1_NS_8QualTypeEPNS_14TypeSourceInfoE
@_ZN5clang24SYCLUniqueStableNameExprC1ENS_4Stmt10EmptyShellENS_8QualTypeE = unnamed_addr alias void (ptr, i64), ptr @_ZN5clang24SYCLUniqueStableNameExprC2ENS_4Stmt10EmptyShellENS_8QualTypeE
@_ZN5clang14PredefinedExprC1ENS_14SourceLocationENS_8QualTypeENS_19PredefinedIdentKindEbPNS_13StringLiteralE = unnamed_addr alias void (ptr, i32, i64, i32, i1, ptr), ptr @_ZN5clang14PredefinedExprC2ENS_14SourceLocationENS_8QualTypeENS_19PredefinedIdentKindEbPNS_13StringLiteralE
@_ZN5clang14PredefinedExprC1ENS_4Stmt10EmptyShellEb = unnamed_addr alias void (ptr, i1), ptr @_ZN5clang14PredefinedExprC2ENS_4Stmt10EmptyShellEb
@_ZN5clang14IntegerLiteralC1ERKNS_10ASTContextERKN4llvm5APIntENS_8QualTypeENS_14SourceLocationE = unnamed_addr alias void (ptr, ptr, ptr, i64, i32), ptr @_ZN5clang14IntegerLiteralC2ERKNS_10ASTContextERKN4llvm5APIntENS_8QualTypeENS_14SourceLocationE
@_ZN5clang17FixedPointLiteralC1ERKNS_10ASTContextERKN4llvm5APIntENS_8QualTypeENS_14SourceLocationEj = unnamed_addr alias void (ptr, ptr, ptr, i64, i32, i32), ptr @_ZN5clang17FixedPointLiteralC2ERKNS_10ASTContextERKN4llvm5APIntENS_8QualTypeENS_14SourceLocationEj
@_ZN5clang15FloatingLiteralC1ERKNS_10ASTContextERKN4llvm7APFloatEbNS_8QualTypeENS_14SourceLocationE = unnamed_addr alias void (ptr, ptr, ptr, i1, i64, i32), ptr @_ZN5clang15FloatingLiteralC2ERKNS_10ASTContextERKN4llvm7APFloatEbNS_8QualTypeENS_14SourceLocationE
@_ZN5clang15FloatingLiteralC1ERKNS_10ASTContextENS_4Stmt10EmptyShellE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5clang15FloatingLiteralC2ERKNS_10ASTContextENS_4Stmt10EmptyShellE
@_ZN5clang13StringLiteralC1ERKNS_10ASTContextEN4llvm9StringRefENS_17StringLiteralKindEbNS_8QualTypeENS4_8ArrayRefINS_14SourceLocationEEE = unnamed_addr alias void (ptr, ptr, ptr, i64, i32, i1, i64, ptr), ptr @_ZN5clang13StringLiteralC2ERKNS_10ASTContextEN4llvm9StringRefENS_17StringLiteralKindEbNS_8QualTypeENS4_8ArrayRefINS_14SourceLocationEEE
@_ZN5clang13StringLiteralC1ENS_4Stmt10EmptyShellEjjj = unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN5clang13StringLiteralC2ENS_4Stmt10EmptyShellEjjj
@_ZN5clang8CallExprC1ENS_4Stmt9StmtClassEPNS_4ExprEN4llvm8ArrayRefIS4_EES7_NS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideEjNS0_11ADLCallKindE = unnamed_addr alias void (ptr, i32, ptr, ptr, i64, ptr, i64, i32, i32, i64, i32, i1), ptr @_ZN5clang8CallExprC2ENS_4Stmt9StmtClassEPNS_4ExprEN4llvm8ArrayRefIS4_EES7_NS_8QualTypeENS_13ExprValueKindENS_14SourceLocationENS_17FPOptionsOverrideEjNS0_11ADLCallKindE
@_ZN5clang8CallExprC1ENS_4Stmt9StmtClassEjjbNS1_10EmptyShellE = unnamed_addr alias void (ptr, i32, i32, i32, i1), ptr @_ZN5clang8CallExprC2ENS_4Stmt9StmtClassEjjbNS1_10EmptyShellE
@_ZN5clang12OffsetOfExprC1ERKNS_10ASTContextENS_8QualTypeENS_14SourceLocationEPNS_14TypeSourceInfoEN4llvm8ArrayRefINS_12OffsetOfNodeEEENS9_IPNS_4ExprEEES5_ = unnamed_addr alias void (ptr, ptr, i64, i32, ptr, ptr, ptr, i32), ptr @_ZN5clang12OffsetOfExprC2ERKNS_10ASTContextENS_8QualTypeENS_14SourceLocationEPNS_14TypeSourceInfoEN4llvm8ArrayRefINS_12OffsetOfNodeEEENS9_IPNS_4ExprEEES5_
@_ZN5clang24UnaryExprOrTypeTraitExprC1ENS_20UnaryExprOrTypeTraitEPNS_4ExprENS_8QualTypeENS_14SourceLocationES5_ = unnamed_addr alias void (ptr, i32, ptr, i64, i32, i32), ptr @_ZN5clang24UnaryExprOrTypeTraitExprC2ENS_20UnaryExprOrTypeTraitEPNS_4ExprENS_8QualTypeENS_14SourceLocationES5_
@_ZN5clang10MemberExprC1EPNS_4ExprEbNS_14SourceLocationENS_22NestedNameSpecifierLocES3_PNS_9ValueDeclENS_14DeclAccessPairERKNS_19DeclarationNameInfoEPKNS_24TemplateArgumentListInfoENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_15NonOdrUseReasonE = unnamed_addr alias void (ptr, ptr, i1, i32, i64, ptr, i32, ptr, i64, ptr, ptr, i64, i32, i32, i32), ptr @_ZN5clang10MemberExprC2EPNS_4ExprEbNS_14SourceLocationENS_22NestedNameSpecifierLocES3_PNS_9ValueDeclENS_14DeclAccessPairERKNS_19DeclarationNameInfoEPKNS_24TemplateArgumentListInfoENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_15NonOdrUseReasonE
@_ZN5clang13SourceLocExprC1ERKNS_10ASTContextENS_18SourceLocIdentKindENS_8QualTypeENS_14SourceLocationES6_PNS_11DeclContextE = unnamed_addr alias void (ptr, ptr, i32, i64, i32, i32, ptr), ptr @_ZN5clang13SourceLocExprC2ERKNS_10ASTContextENS_18SourceLocIdentKindENS_8QualTypeENS_14SourceLocationES6_PNS_11DeclContextE
@_ZN5clang9EmbedExprC1ERKNS_10ASTContextENS_14SourceLocationEPNS_16EmbedDataStorageEjj = unnamed_addr alias void (ptr, ptr, i32, ptr, i32, i32), ptr @_ZN5clang9EmbedExprC2ERKNS_10ASTContextENS_14SourceLocationEPNS_16EmbedDataStorageEjj
@_ZN5clang12InitListExprC1ERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_b = unnamed_addr alias void (ptr, ptr, i32, ptr, i64, i32, i1), ptr @_ZN5clang12InitListExprC2ERKNS_10ASTContextENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES4_b
@_ZN5clang17ShuffleVectorExprC1ERKNS_10ASTContextEN4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeENS_14SourceLocationESA_ = unnamed_addr alias void (ptr, ptr, ptr, i64, i64, i32, i32), ptr @_ZN5clang17ShuffleVectorExprC2ERKNS_10ASTContextEN4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeENS_14SourceLocationESA_
@_ZN5clang20GenericSelectionExprC1ERKNS_10ASTContextENS_14SourceLocationEPNS_4ExprEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS8_IS6_EES4_S4_bj = unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i64, ptr, i32, i32, i1, i32), ptr @_ZN5clang20GenericSelectionExprC2ERKNS_10ASTContextENS_14SourceLocationEPNS_4ExprEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS8_IS6_EES4_S4_bj
@_ZN5clang20GenericSelectionExprC1ERKNS_10ASTContextENS_14SourceLocationEPNS_14TypeSourceInfoEN4llvm8ArrayRefIS6_EENS8_IPNS_4ExprEEES4_S4_bj = unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i64, ptr, i32, i32, i1, i32), ptr @_ZN5clang20GenericSelectionExprC2ERKNS_10ASTContextENS_14SourceLocationEPNS_14TypeSourceInfoEN4llvm8ArrayRefIS6_EENS8_IPNS_4ExprEEES4_S4_bj
@_ZN5clang20GenericSelectionExprC1ERKNS_10ASTContextENS_14SourceLocationEPNS_4ExprEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS8_IS6_EES4_S4_b = unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i64, ptr, i32, i32, i1), ptr @_ZN5clang20GenericSelectionExprC2ERKNS_10ASTContextENS_14SourceLocationEPNS_4ExprEN4llvm8ArrayRefIPNS_14TypeSourceInfoEEENS8_IS6_EES4_S4_b
@_ZN5clang20GenericSelectionExprC1ERKNS_10ASTContextENS_14SourceLocationEPNS_14TypeSourceInfoEN4llvm8ArrayRefIS6_EENS8_IPNS_4ExprEEES4_S4_b = unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i64, ptr, i32, i32, i1), ptr @_ZN5clang20GenericSelectionExprC2ERKNS_10ASTContextENS_14SourceLocationEPNS_14TypeSourceInfoEN4llvm8ArrayRefIS6_EENS8_IPNS_4ExprEEES4_S4_b
@_ZN5clang20GenericSelectionExprC1ENS_4Stmt10EmptyShellEj = unnamed_addr alias void (ptr, i32), ptr @_ZN5clang20GenericSelectionExprC2ENS_4Stmt10EmptyShellEj
@_ZN5clang18DesignatedInitExprC1ERKNS_10ASTContextENS_8QualTypeEN4llvm8ArrayRefINS0_10DesignatorEEENS_14SourceLocationEbNS6_IPNS_4ExprEEESB_ = unnamed_addr alias void (ptr, ptr, i64, ptr, i64, i32, i1, ptr, ptr), ptr @_ZN5clang18DesignatedInitExprC2ERKNS_10ASTContextENS_8QualTypeEN4llvm8ArrayRefINS0_10DesignatorEEENS_14SourceLocationEbNS6_IPNS_4ExprEEESB_
@_ZN5clang24DesignatedInitUpdateExprC1ERKNS_10ASTContextENS_14SourceLocationEPNS_4ExprES4_ = unnamed_addr alias void (ptr, ptr, i32, ptr, i32), ptr @_ZN5clang24DesignatedInitUpdateExprC2ERKNS_10ASTContextENS_14SourceLocationEPNS_4ExprES4_
@_ZN5clang13ParenListExprC1ENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES1_ = unnamed_addr alias void (ptr, i32, ptr, i64, i32), ptr @_ZN5clang13ParenListExprC2ENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES1_
@_ZN5clang13ParenListExprC1ENS_4Stmt10EmptyShellEj = unnamed_addr alias void (ptr, i32), ptr @_ZN5clang13ParenListExprC2ENS_4Stmt10EmptyShellEj
@_ZN5clang14BinaryOperatorC1ERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideE = unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i64, i32, i32, i32, i64), ptr @_ZN5clang14BinaryOperatorC2ERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideE
@_ZN5clang14BinaryOperatorC1ERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideEb = unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i64, i32, i32, i32, i64, i1), ptr @_ZN5clang14BinaryOperatorC2ERKNS_10ASTContextEPNS_4ExprES5_NS_18BinaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationENS_17FPOptionsOverrideEb
@_ZN5clang13UnaryOperatorC1ERKNS_10ASTContextEPNS_4ExprENS_17UnaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationEbNS_17FPOptionsOverrideE = unnamed_addr alias void (ptr, ptr, ptr, i32, i64, i32, i32, i32, i1, i64), ptr @_ZN5clang13UnaryOperatorC2ERKNS_10ASTContextEPNS_4ExprENS_17UnaryOperatorKindENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindENS_14SourceLocationEbNS_17FPOptionsOverrideE
@_ZN5clang16PseudoObjectExprC1ENS_4Stmt10EmptyShellEj = unnamed_addr alias void (ptr, i32), ptr @_ZN5clang16PseudoObjectExprC2ENS_4Stmt10EmptyShellEj
@_ZN5clang16PseudoObjectExprC1ENS_8QualTypeENS_13ExprValueKindEPNS_4ExprEN4llvm8ArrayRefIS4_EEj = unnamed_addr alias void (ptr, i64, i32, ptr, ptr, i64, i32), ptr @_ZN5clang16PseudoObjectExprC2ENS_8QualTypeENS_13ExprValueKindEPNS_4ExprEN4llvm8ArrayRefIS4_EEj
@_ZN5clang10AtomicExprC1ENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeENS0_8AtomicOpES1_ = unnamed_addr alias void (ptr, i32, ptr, i64, i64, i32, i32), ptr @_ZN5clang10AtomicExprC2ENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEENS_8QualTypeENS0_8AtomicOpES1_
@_ZN5clang12RecoveryExprC1ERNS_10ASTContextENS_8QualTypeENS_14SourceLocationES4_N4llvm8ArrayRefIPNS_4ExprEEE = unnamed_addr alias void (ptr, ptr, i64, i32, i32, ptr), ptr @_ZN5clang12RecoveryExprC2ERNS_10ASTContextENS_8QualTypeENS_14SourceLocationES4_N4llvm8ArrayRefIPNS_4ExprEEE
@_ZN5clang19OMPArrayShapingExprC1ENS_8QualTypeEPNS_4ExprENS_14SourceLocationES4_N4llvm8ArrayRefIS3_EE = unnamed_addr alias void (ptr, i64, ptr, i32, i32, ptr), ptr @_ZN5clang19OMPArrayShapingExprC2ENS_8QualTypeEPNS_4ExprENS_14SourceLocationES4_N4llvm8ArrayRefIS3_EE
@_ZN5clang15OMPIteratorExprC1ENS_8QualTypeENS_14SourceLocationES2_S2_N4llvm8ArrayRefINS0_18IteratorDefinitionEEENS4_INS_21OMPIteratorHelperDataEEE = unnamed_addr alias void (ptr, i64, i32, i32, i32, ptr, ptr), ptr @_ZN5clang15OMPIteratorExprC2ENS_8QualTypeENS_14SourceLocationES2_S2_N4llvm8ArrayRefINS0_18IteratorDefinitionEEENS4_INS_21OMPIteratorHelperDataEEE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK5clang4Expr27getBestDynamicClassTypeExprEv(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.011 = phi ptr [ %0, %bb.a ], [ %.011.be, %.backedge.backedge ]
  %i.a = tail call noundef ptr @_ZN5clang4Expr20IgnoreParenBaseCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %.011) #29 ; 5 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.c, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.backedge
  %i.d = load i32, ptr %i.a, align 8              ; 2 uses
  %i.e = and i32 %i.d, 33030144
  %i.f = icmp eq i32 %i.e, 16777216
  %i.g = trunc i32 %i.d to i16
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  br label %.backedge.backedge

bb.d:                                             ; preds = %bb.b, %.backedge
  %i.j = phi i16 [ %i.g, %bb.b ], [ %i.b, %.backedge ]
  %i.k = and i16 %i.j, 511
  %.not = icmp eq i16 %i.k, 50
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.l, align 8 ; 3 uses
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i, 4
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = inttoptr i64 %.0.copyload.i.i.i.i.i.i to ptr
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.f, %bb.g, %bb.c
  %.011.be = phi ptr [ %i.i, %bb.c ], [ %i.s, %bb.g ], [ %i.o, %bb.f ]
  br label %.backedge, !llvm.loop !0

bb.g:                                             ; preds = %bb.e
  %i.p = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41
  br label %.backedge.backedge

bb.h:                                             ; preds = %bb.d
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK5clang4Expr23getBestDynamicClassTypeEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.a
  %.011.i = phi ptr [ %0, %bb.a ], [ %.011.i.be, %.backedge.i.backedge ]
  %i.a = tail call noundef ptr @_ZN5clang4Expr20IgnoreParenBaseCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %.011.i) #29 ; 5 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i16 %i.c, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.backedge.i
  %i.d = load i32, ptr %i.a, align 8              ; 2 uses
  %i.e = and i32 %i.d, 33030144
  %i.f = icmp eq i32 %i.e, 16777216
  %i.g = trunc i32 %i.d to i16
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  br label %.backedge.i.backedge

bb.d:                                             ; preds = %bb.b, %.backedge.i
  %i.j = phi i16 [ %i.g, %bb.b ], [ %i.b, %.backedge.i ]
  %i.k = and i16 %i.j, 511
  %.not.i = icmp eq i16 %i.k, 50
  br i1 %.not.i, label %bb.e, label %_ZNK5clang4Expr27getBestDynamicClassTypeExprEv.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8 ; 3 uses
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %.backedge.i.backedge

bb.g:                                             ; preds = %bb.e
  %i.p = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.g, %bb.f, %bb.c
  %.011.i.be = phi ptr [ %i.i, %bb.c ], [ %i.s, %bb.g ], [ %i.o, %bb.f ]
  br label %.backedge.i, !llvm.loop !0

_ZNK5clang4Expr27getBestDynamicClassTypeExprEv.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.t, align 8, !tbaa !42 ; 3 uses
  %i.u = and i64 %.sroa.0.0.copyload.i, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !48  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 16
  %.not.i12 = icmp eq i8 %i.y, 40
  br i1 %.not.i12, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang4Expr27getBestDynamicClassTypeExprEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !42
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i8, ptr %i.ad, align 16
  %i.af = icmp eq i8 %i.ae, 40
  br i1 %i.af, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit: ; preds = %bb.h
  %i.ag = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.w) #30 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.sink.split

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.sink.split: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, %_ZNK5clang4Expr27getBestDynamicClassTypeExprEv.exit, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread
  %.1.i29.sink = phi ptr [ %i.ak, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread ], [ %i.av, %_ZNK5clang4Type20getAsArrayTypeUnsafeEv.exit ], [ %i.ag, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ %i.w, %_ZNK5clang4Expr27getBestDynamicClassTypeExprEv.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i29.sink, i64 32
  %.sroa.0.0.copyload.i13 = load i64, ptr %i.ah, align 16, !tbaa !42
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.sink.split, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, %bb.h
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.copyload.i, %bb.h ], [ %.sroa.0.0.copyload.i, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ %.sroa.0.0.copyload.i13, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread.sink.split ]
  %i.ai = and i64 %.sroa.0.1, -16
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK5clang4Expr21isNullPointerConstantERNS_10ASTContextENS0_34NullPointerConstantValueDependenceE:bb.a
  %i.jr = and i64 %.sroa.0.0.copyload.i.i.i.i235, -16
  %i.js = inttoptr i64 %i.jr to ptr
  %i.jt = load ptr, ptr %i.js, align 16, !tbaa !48 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load i8, ptr %i.ju, align 16            ; 2 uses
  %i.jw = icmp ne i8 %i.jv, 13
  %.not.not30.i236 = icmp eq ptr %i.jt, null
  %.not.not.i237 = or i1 %.not.not30.i236, %i.jw
  br i1 %.not.not.i237, label %.lr.ph.i228, label %tailrecurse._crit_edge.i224

.split294:                                        ; preds = %.lr.ph347
  %i.jx = icmp eq i8 %i.jk, 10
  br i1 %i.jx, label %bb.as, label %.critedge

_ZNK5clang4Type13isIntegerTypeEv.exit241:         ; preds = %.lr.ph.i228._crit_edge
  %i.jy = load ptr, ptr %i.ix, align 8, !tbaa !54
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 72
  %i.ka = load i40, ptr %i.jz, align 8
  %i.kb = icmp sgt i40 %i.ka, -1
  br i1 %i.kb, label %bb.as, label %.critedge

bb.as:                                            ; preds = %tailrecurse._crit_edge.i224, %.split294, %_ZNK5clang4Type13isIntegerTypeEv.exit241
  %i.kc = load ptr, ptr %i.a, align 8, !tbaa !572, !nonnull !141, !align !191
  %i.kd = load i64, ptr %i.kc, align 8            ; 3 uses
  %i.ke = and i64 %i.kd, 4096
  %.not167 = icmp eq i64 %i.ke, 0
  br i1 %.not167, label %.critedge20, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.0.0.copyload.i242 = load i64, ptr %i.ih, align 8, !tbaa !42
  %i.kf = and i64 %.sroa.0.0.copyload.i242, -16
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = load ptr, ptr %i.kg, align 16, !tbaa !48
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %.sroa.0.0.copyload.i.i.i.i244 = load i64, ptr %i.ki, align 8, !tbaa !42
  %i.kj = and i64 %.sroa.0.0.copyload.i.i.i.i244, -16
  %i.kk = inttoptr i64 %i.kj to ptr
  %i.kl = load ptr, ptr %i.kk, align 16, !tbaa !48
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load i8, ptr %i.km, align 16
  %i.ko = icmp eq i8 %i.kn, 47
  br i1 %i.ko, label %.critedge, label %.critedge20

.critedge20:                                      ; preds = %bb.as, %bb.at
  %i.kp = and i64 %i.kd, 8192
  %.not168 = icmp eq i64 %i.kp, 0
  br i1 %.not168, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %.critedge20
  %i.kq = load i16, ptr %.tr, align 8
  %i.kr = and i16 %i.kq, 511
  %.not316 = icmp eq i16 %i.kr, 54
  br i1 %.not316, label %bb.av, label %.critedge172.thread

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ks = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  call void @_ZNK5clang12APIntStorage8getValueEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %i.ks)
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !138 ; 2 uses
  %i.kv = icmp ult i32 %i.ku, 65
  br i1 %i.kv, label %.split389, label %bb.aw

.split389:                                        ; preds = %bb.av
  %i.kw = load i64, ptr %3, align 8, !tbaa !42
  %i.kx = icmp eq i64 %i.kw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.kx, label %.critedge, label %.critedge172..critedge172.thread_crit_edge

bb.aw:                                            ; preds = %bb.av
  %i.ky = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #29
  %i.kz = icmp eq i32 %i.ky, %i.ku                ; 2 uses
  %i.la = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %.critedge172, label %.split388

.split388:                                        ; preds = %bb.aw
  call void @_ZdaPv(ptr noundef nonnull %i.la) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.kz, label %.critedge, label %.critedge172..critedge172.thread_crit_edge

.critedge172:                                     ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.kz, label %.critedge, label %.critedge172..critedge172.thread_crit_edge

.critedge172..critedge172.thread_crit_edge:       ; preds = %.split389, %.split388, %.critedge172
  %.pre368 = load ptr, ptr %i.a, align 8, !tbaa !572
  %.pre369 = load i64, ptr %.pre368, align 8
  br label %.critedge172.thread

.critedge172.thread:                              ; preds = %.critedge172..critedge172.thread_crit_edge, %bb.au
  %i.lc = phi i64 [ %.pre369, %.critedge172..critedge172.thread_crit_edge ], [ %i.kd, %bb.au ]
  %i.ld = and i64 %i.lc, 32
  %.not170 = icmp eq i64 %i.ld, 0
  br i1 %.not170, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %.critedge172.thread
  %i.le = call noundef zeroext i1 @_ZNK5clang4Expr27isCXX98IntegralConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(23904) %1) #30
  br i1 %i.le, label %bb.az, label %.critedge

bb.ay:                                            ; preds = %.critedge20
  %i.lf = tail call noundef zeroext i1 @_ZNK5clang4Expr21isIntegerConstantExprERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(23904) %1) #30
  br i1 %i.lf, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNK5clang4Expr21EvaluateKnownConstIntERKNS_10ASTContextE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APSInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(23904) %1) #30
  %i.lg = call noundef zeroext i1 @_ZNK4llvm6APSIntneEl(ptr noundef nonnull align 8 dereferenceable(13) %4, i64 noundef 0)
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !138
  %i.lj = icmp ugt i32 %i.li, 64
  br i1 %i.lj, label %bb.ba, label %_ZN4llvm5APIntD2Ev.exit246

bb.ba:                                            ; preds = %bb.az
  %i.lk = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %_ZN4llvm5APIntD2Ev.exit246, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.lk) #32
  br label %_ZN4llvm5APIntD2Ev.exit246

_ZN4llvm5APIntD2Ev.exit246:                       ; preds = %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.lg, label %.critedge, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit246
  %i.lm = load i16, ptr %.tr, align 8
  %i.ln = and i16 %i.lm, 511
  %i.lo = icmp eq i16 %i.ln, 54
  %. = select i1 %i.lo, i32 2, i32 1
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.r, %bb.p, %_ZNK5clang4Type13isNullPtrTypeEv.exit, %.critedge15.thread, %bb.d, %bb.c, %.split389, %.split388, %bb.ax, %.critedge172.thread, %.critedge172, %.lr.ph.i228._crit_edge, %_ZNK5clang4Type13isIntegerTypeEv.exit241, %.split294, %tailrecurse._crit_edge.i224, %bb.e, %bb.f, %bb.bc, %_ZN4llvm5APIntD2Ev.exit246, %bb.ay, %bb.at
  %.21 = phi i32 [ 2, %.critedge172 ], [ 0, %_ZNK5clang4Type13isIntegerTypeEv.exit241 ], [ 0, %tailrecurse._crit_edge.i224 ], [ 0, %.split294 ], [ 0, %bb.ay ], [ %., %bb.bc ], [ 0, %_ZN4llvm5APIntD2Ev.exit246 ], [ 0, %.lr.ph.i228._crit_edge ], [ 0, %bb.at ], [ 0, %.critedge172.thread ], [ 1, %bb.e ], [ %spec.select, %bb.f ], [ 0, %bb.ax ], [ 2, %.split389 ], [ 2, %.split388 ], [ 4, %bb.m ], [ 0, %bb.p ], [ 0, %bb.c ], [ 0, %bb.r ], [ 3, %_ZNK5clang4Type13isNullPtrTypeEv.exit ], [ 0, %.critedge15.thread ], [ 0, %bb.d ]
  ret i32 %.21
}

declare noundef zeroext i1 @_ZNK5clang4Type10isCharTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13SourceLocExprC2ERKNS_10ASTContextENS_18SourceLocIdentKindENS_8QualTypeENS_14SourceLocationES6_PNS_11DeclContextE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((8, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 noundef %2, i64 %3, i32 %4, i32 %5, ptr noundef %6) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, -512
  %i.c = or disjoint i16 %i.b, 11
  store i16 %i.c, ptr %0, align 8
  %i.d = load i8, ptr @_ZN5clang4Stmt17StatisticsEnabledE, align 1, !tbaa !139, !range !140, !noundef !141
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4Stmt12addStmtClassENS0_9StmtClassE(i32 noundef 11) #30
  br label %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit

_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i24, ptr %0, align 8
  store i64 %3, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %4, ptr %i.h, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %5, ptr %i.i, align 4, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %6, ptr %i.j, align 8, !tbaa !1044
  %i.k = trunc i32 %2 to i24
  %i.l = shl i24 %i.k, 19
  %i.m = and i24 %i.l, 3670016
  %i.n = and i24 %i.g, -4193793
  %i.o = or disjoint i24 %i.n, %i.m               ; 2 uses
  store i24 %i.o, ptr %0, align 8
  switch i32 %2, label %_ZN5clang13SourceLocExpr14MayBeDependentENS_18SourceLocIdentKindE.exit [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 6, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit
  %i.p = tail call noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #30
  %i.q = select i1 %i.p, i8 10, i8 0
  %.pre = load i24, ptr %0, align 8
  %i.r = and i24 %.pre, -507905
  br label %_ZN5clang13SourceLocExpr14MayBeDependentENS_18SourceLocIdentKindE.exit

_ZN5clang13SourceLocExpr14MayBeDependentENS_18SourceLocIdentKindE.exit: ; preds = %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit, %bb.c
  %i.s = phi i24 [ %i.r, %bb.c ], [ %i.o, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit ]
  %i.t = phi i8 [ %i.q, %bb.c ], [ 0, %_ZN5clang4ExprC2ENS_4Stmt9StmtClassENS_8QualTypeENS_13ExprValueKindENS_14ExprObjectKindE.exit ]
  %i.u = zext nneg i8 %i.t to i24
  %i.v = shl nuw nsw i24 %i.u, 14
  %i.w = or disjoint i24 %i.s, %i.v
  store i24 %i.w, ptr %0, align 8
  ret void
}

declare noundef zeroext i1 @_ZNK5clang11DeclContext18isDependentContextEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZNK5clang13SourceLocExpr13getBuiltinStrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
switch.lookup:
  %i.a = load i24, ptr %0, align 8
  %i.b = lshr i24 %i.a, 19                        ; 2 uses
  %trunc.mask = and i24 %i.b, 7
  %i.c = zext nneg i24 %trunc.mask to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK5clang13SourceLocExpr13getBuiltinStrEv, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %1 = and i24 %i.b, 7
  %i.d = zext nneg i24 %1 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK5clang13SourceLocExpr13getBuiltinStrEv.142, i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang13SourceLocExpr17EvaluateInContextERKNS_10ASTContextEPKNS_4ExprE(ptr dead_on_unwind noalias writable sret(%"class.clang::APValue") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(23904) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [1 x %"class.clang::APValue::LValuePathEntry"], align 8 ; 4 uses
  %5 = alloca %"class.clang::APValue::LValueBase", align 8 ; 5 uses
  %6 = alloca %"class.clang::CharUnits", align 8  ; 4 uses
  %7 = alloca [1 x %"class.clang::APValue::LValuePathEntry"], align 8 ; 4 uses
  %8 = alloca %"class.clang::APValue::LValueBase", align 8 ; 5 uses
  %9 = alloca %"class.clang::CharUnits", align 8  ; 4 uses
  %10 = alloca [1 x %"class.clang::APValue::LValuePathEntry"], align 8 ; 4 uses
  %11 = alloca %"class.clang::APValue::LValueBase", align 8 ; 5 uses
  %12 = alloca %"class.clang::CharUnits", align 8 ; 4 uses
  %13 = alloca [1 x %"class.clang::APValue::LValuePathEntry"], align 8 ; 4 uses
  %14 = alloca %"class.clang::APValue::LValueBase", align 8 ; 5 uses
  %15 = alloca %"class.clang::CharUnits", align 8 ; 4 uses
  %16 = alloca [1 x %"class.clang::APValue::LValuePathEntry"], align 8 ; 4 uses
  %17 = alloca %"class.clang::APValue::LValueBase", align 8 ; 5 uses
  %18 = alloca %"class.clang::CharUnits", align 8 ; 4 uses
  %19 = alloca [1 x %"class.clang::APValue::LValuePathEntry"], align 8 ; 4 uses
  %20 = alloca %"class.clang::APValue::LValueBase", align 8 ; 5 uses
  %21 = alloca %"class.clang::CharUnits", align 8 ; 4 uses
  %22 = alloca %"class.clang::PresumedLoc", align 8 ; 10 uses
  %23 = alloca %"class.llvm::SmallString", align 8 ; 9 uses
  %24 = alloca %"class.llvm::SmallString", align 8 ; 15 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.llvm::APSInt", align 8     ; 4 uses
  %27 = alloca %"class.llvm::APSInt", align 8     ; 4 uses
  %28 = alloca %"class.clang::APValue", align 8   ; 10 uses
  %29 = alloca %"class.llvm::SmallString", align 8 ; 12 uses
  %30 = alloca %"class.clang::APValue", align 8   ; 9 uses
  %31 = alloca %"class.clang::APValue", align 8   ; 15 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %33 = alloca %"class.llvm::APSInt", align 8     ; 8 uses
  %34 = alloca %"class.clang::APValue", align 8   ; 10 uses
  %35 = alloca %"class.llvm::APSInt", align 8     ; 6 uses
  %36 = alloca %"class.llvm::APSInt", align 8     ; 8 uses
  %37 = alloca %"class.clang::APValue", align 8   ; 10 uses
  %38 = alloca %"class.llvm::APSInt", align 8     ; 6 uses
  %39 = alloca %"class.clang::APValue::LValueBase", align 8 ; 3 uses
  %40 = alloca %"class.clang::CharUnits", align 8 ; 4 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %3, align 8
  %i.b = and i16 %i.a, 511
  switch i16 %i.b, label %.thread [
    i16 115, label %_ZN4llvm19dyn_cast_if_presentIN5clang18CXXDefaultInitExprEKNS1_4ExprEEEDaPT0_.exit
    i16 116, label %_ZN4llvm19dyn_cast_if_presentIN5clang17CXXDefaultArgExprEKNS1_4ExprEEEDaPT0_.exit
  ]

_ZN4llvm19dyn_cast_if_presentIN5clang18CXXDefaultInitExprEKNS1_4ExprEEEDaPT0_.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

_ZN4llvm19dyn_cast_if_presentIN5clang17CXXDefaultArgExprEKNS1_4ExprEEEDaPT0_.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.c

.thread:                                          ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang17CXXDefaultArgExprEKNS1_4ExprEEEDaPT0_.exit, %.thread, %_ZN4llvm19dyn_cast_if_presentIN5clang18CXXDefaultInitExprEKNS1_4ExprEEEDaPT0_.exit
  %.sroa.0228.0.in = phi ptr [ %i.e, %.thread ], [ %i.d, %_ZN4llvm19dyn_cast_if_presentIN5clang17CXXDefaultArgExprEKNS1_4ExprEEEDaPT0_.exit ], [ %i.c, %_ZN4llvm19dyn_cast_if_presentIN5clang18CXXDefaultInitExprEKNS1_4ExprEEEDaPT0_.exit ]
  %.pn = phi ptr [ %1, %.thread ], [ %3, %_ZN4llvm19dyn_cast_if_presentIN5clang17CXXDefaultArgExprEKNS1_4ExprEEEDaPT0_.exit ], [ %3, %_ZN4llvm19dyn_cast_if_presentIN5clang18CXXDefaultInitExprEKNS1_4ExprEEEDaPT0_.exit ]
  %.1.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !1057 ; 10 uses
  %.sroa.0228.0 = load i32, ptr %.sroa.0228.0.in, align 4, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 124
  %.not = icmp eq i16 %i.h, 36
  %i.i = getelementptr inbounds i8, ptr %.1, i64 -72 ; 2 uses
  br i1 %.not, label %bb.d, label %_ZNK5clang11DeclContext9getParentEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call { ptr, ptr } @_ZNK5clang12FunctionDecl18getFunctionTypeLocEv(ptr noundef nonnull align 8 dereferenceable(168) %i.i) #30
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %.not.i104 = icmp eq ptr %i.k, null
  br i1 %.not.i104, label %bb.e, label %_ZNK5clang11DeclContext9getParentEv.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.1) #30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8 ; 3 uses
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -5
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i

_ZNK5clang13CXXMethodDecl9getParentEv.exit.i:     ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  %i.t = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %i.t, label %_ZNK5clang11DeclContext9getParentEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !599  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNK5clang11DeclContext9getParentEv.exit, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i:      ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 8388608
  %.not.i105 = icmp eq i32 %i.y, 0
  br i1 %.not.i105, label %_ZNK5clang11DeclContext9getParentEv.exit, label %_ZN5clang20isLambdaCallOperatorEPKNS_13CXXMethodDeclE.exit

_ZN5clang20isLambdaCallOperatorEPKNS_13CXXMethodDeclE.exit: ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i
  %i.z = tail call noundef i32 @_ZNK5clang12FunctionDecl21getOverloadedOperatorEv(ptr noundef nonnull align 8 dereferenceable(168) %i.i) #30
  %i.aa = icmp eq i32 %i.z, 42
  br i1 %i.aa, label %bb.i, label %_ZNK5clang11DeclContext9getParentEv.exit

bb.i:                                             ; preds = %_ZN5clang20isLambdaCallOperatorEPKNS_13CXXMethodDeclE.exit
  %i.ab = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.1) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8 ; 3 uses
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !91
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

_ZNK5clang13CXXMethodDecl9getParentEv.exit:       ; preds = %bb.j, %bb.k
  %.0.i.i.i.i = phi ptr [ %i.af, %bb.j ], [ %i.ai, %bb.k ]
  %i.aj = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i.i.i) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8 ; 3 uses
  %i.al = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %i.an = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang11DeclContext9getParentEv.exit

bb.m:                                             ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !91
  br label %_ZNK5clang11DeclContext9getParentEv.exit

_ZNK5clang11DeclContext9getParentEv.exit:         ; preds = %bb.h, %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i, %bb.d, %bb.c, %bb.m, %bb.l, %_ZN5clang20isLambdaCallOperatorEPKNS_13CXXMethodDeclE.exit
  %.2 = phi ptr [ %.1, %bb.d ], [ %.1, %_ZN5clang20isLambdaCallOperatorEPKNS_13CXXMethodDeclE.exit ], [ %i.aq, %bb.m ], [ %i.an, %bb.l ], [ %.1, %bb.c ], [ %.1, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.i ], [ %.1, %_ZNK5clang13CXXMethodDecl9getParentEv.exit.i ], [ %.1, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 2592
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1058, !nonnull !141, !align !191 ; 2 uses
  %i.at = tail call { i64, i8 } @_ZNK5clang13SourceManager17getExpansionRangeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %i.as, i32 %.sroa.0228.0) #30
  %.fca.0.extract = extractvalue { i64, i8 } %i.at, 0
  %.sroa.0224.4.extract.shift = lshr i64 %.fca.0.extract, 32
  %.sroa.0224.4.extract.trunc = trunc nuw i64 %.sroa.0224.4.extract.shift to i32
  call void @_ZNK5clang13SourceManager14getPresumedLocENS_14SourceLocationEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::PresumedLoc") align 8 %22, ptr noundef nonnull align 8 dereferenceable(776) %i.as, i32 %.sroa.0224.4.extract.trunc, i1 noundef zeroext true) #30
  %i.au = load i24, ptr %1, align 8
  %i.av = lshr i24 %i.au, 19
  %trunc = trunc i24 %i.av to i3
  switch i3 %trunc, label %bb.be [
    i3 3, label %bb.n
    i3 2, label %bb.p
    i3 0, label %bb.s
    i3 1, label %bb.s
    i3 -4, label %_ZN5clang7APValueC2EN4llvm6APSIntE.exit
    i3 -3, label %_ZN5clang7APValueC2EN4llvm6APSIntE.exit114
    i3 -2, label %bb.v
  ]

bb.n:                                             ; preds = %_ZNK5clang11DeclContext9getParentEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  store ptr %i.aw, ptr %23, align 8, !tbaa !178
  %i.ax = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !179
  %i.ay = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 256, ptr %i.ay, align 8, !tbaa !180
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 2600
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !572, !nonnull !141, !align !191
end_hunk_1
