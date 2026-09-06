Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bytecodes?download=true
inline.NumInlined: 128
inline.NumDeleted: 59
begin_hunk_0
@.str.15 = private unnamed_addr constant [8 x i8] c"LdaNull\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"LdaTheHole\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"LdaTrue\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"LdaFalse\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"LdaConstant\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"LdaContextSlotNoCell\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"LdaContextSlot\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"LdaImmutableContextSlot\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"LdaCurrentContextSlotNoCell\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"LdaCurrentContextSlot\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"LdaImmutableCurrentContextSlot\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Star\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"Mov\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"PushContext\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"PopContext\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"TestReferenceEqual\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"TestUndetectable\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"TestNull\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"TestUndefined\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"TestTypeOf\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"LdaGlobal\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"LdaGlobalInsideTypeof\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"StaGlobal\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"StaContextSlotNoCell\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"StaCurrentContextSlotNoCell\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"StaContextSlot\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"StaCurrentContextSlot\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"LdaLookupSlot\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"LdaLookupContextSlotNoCell\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"LdaLookupContextSlot\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"LdaLookupGlobalSlot\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"LdaLookupSlotInsideTypeof\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"LdaLookupContextSlotNoCellInsideTypeof\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"LdaLookupContextSlotInsideTypeof\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"LdaLookupGlobalSlotInsideTypeof\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"StaLookupSlot\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"GetNamedProperty\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"GetNamedPropertyFromSuper\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"GetKeyedProperty\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"GetEnumeratedKeyedProperty\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"LdaModuleVariable\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"StaModuleVariable\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"SetNamedProperty\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"DefineNamedOwnProperty\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"SetKeyedProperty\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"DefineKeyedOwnProperty\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"StaInArrayLiteral\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c"DefineKeyedOwnPropertyInLiteral\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"SetPrototypeProperties\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"Sub\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"Mul\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"Div\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"Mod\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"Exp\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"BitwiseOr\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"BitwiseXor\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"BitwiseAnd\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"ShiftLeft\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"ShiftRight\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"ShiftRightLogical\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"Add_StringConstant_Internalize\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"AddSmi\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"SubSmi\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"MulSmi\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"DivSmi\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"ModSmi\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"ExpSmi\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"BitwiseOrSmi\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"BitwiseXorSmi\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"BitwiseAndSmi\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"ShiftLeftSmi\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"ShiftRightSmi\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"ShiftRightLogicalSmi\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"Inc\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"Negate\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"BitwiseNot\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"ToBooleanLogicalNot\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"LogicalNot\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"TypeOf\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"DeletePropertyStrict\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"DeletePropertySloppy\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"GetSuperConstructor\00", align 1
@.str.99 = private unnamed_addr constant [37 x i8] c"FindNonDefaultConstructorOrConstruct\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"CallAnyReceiver\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"CallProperty\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"CallProperty0\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"CallProperty1\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"CallProperty2\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"CallUndefinedReceiver\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"CallUndefinedReceiver0\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"CallUndefinedReceiver1\00", align 1
@.str.108 = private unnamed_addr constant [23 x i8] c"CallUndefinedReceiver2\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"CallWithSpread\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"CallRuntime\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"CallRuntimeForPair\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"CallJSRuntime\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"InvokeIntrinsic\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"Construct\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"ConstructWithSpread\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"ConstructForwardAllArgs\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"TestEqual\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"TestEqualStrict\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"TestLessThan\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"TestGreaterThan\00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"TestLessThanOrEqual\00", align 1
@.str.122 = private unnamed_addr constant [23 x i8] c"TestGreaterThanOrEqual\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"TestInstanceOf\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"TestIn\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"ToName\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"ToNumber\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"ToNumeric\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"ToObject\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"ToString\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"ToBoolean\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"CreateRegExpLiteral\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"CreateArrayLiteral\00", align 1
@.str.133 = private unnamed_addr constant [24 x i8] c"CreateArrayFromIterable\00", align 1
@.str.134 = private unnamed_addr constant [24 x i8] c"CreateEmptyArrayLiteral\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"CreateObjectLiteral\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"CreateEmptyObjectLiteral\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"CloneObject\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"GetTemplateObject\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"CreateClosure\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"CreateBlockContext\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"CreateCatchContext\00", align 1
@.str.142 = private unnamed_addr constant [22 x i8] c"CreateFunctionContext\00", align 1
@.str.143 = private unnamed_addr constant [31 x i8] c"CreateFunctionContextWithCells\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"CreateEvalContext\00", align 1
@.str.145 = private unnamed_addr constant [18 x i8] c"CreateWithContext\00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"CreateMappedArguments\00", align 1
@.str.147 = private unnamed_addr constant [24 x i8] c"CreateUnmappedArguments\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"CreateRestParameter\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"JumpLoop\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"Jump\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"JumpConstant\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"JumpIfNullConstant\00", align 1
@.str.153 = private unnamed_addr constant [22 x i8] c"JumpIfNotNullConstant\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"JumpIfUndefinedConstant\00", align 1
@.str.155 = private unnamed_addr constant [27 x i8] c"JumpIfNotUndefinedConstant\00", align 1
@.str.156 = private unnamed_addr constant [30 x i8] c"JumpIfUndefinedOrNullConstant\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"JumpIfTrueConstant\00", align 1
@.str.158 = private unnamed_addr constant [20 x i8] c"JumpIfFalseConstant\00", align 1
@.str.159 = private unnamed_addr constant [25 x i8] c"JumpIfJSReceiverConstant\00", align 1
@.str.160 = private unnamed_addr constant [24 x i8] c"JumpIfForInDoneConstant\00", align 1
@.str.161 = private unnamed_addr constant [28 x i8] c"JumpIfToBooleanTrueConstant\00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c"JumpIfToBooleanFalseConstant\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"JumpIfToBooleanTrue\00", align 1
@.str.164 = private unnamed_addr constant [21 x i8] c"JumpIfToBooleanFalse\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"JumpIfTrue\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"JumpIfFalse\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"JumpIfNull\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"JumpIfNotNull\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"JumpIfUndefined\00", align 1
@.str.170 = private unnamed_addr constant [19 x i8] c"JumpIfNotUndefined\00", align 1
@.str.171 = private unnamed_addr constant [22 x i8] c"JumpIfUndefinedOrNull\00", align 1
@.str.172 = private unnamed_addr constant [17 x i8] c"JumpIfJSReceiver\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"JumpIfForInDone\00", align 1
@.str.174 = private unnamed_addr constant [22 x i8] c"SwitchOnSmiNoFeedback\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"ForInEnumerate\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"ForInPrepare\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"ForInNext\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"ForInStep\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"ForOfNext\00", align 1
@.str.180 = private unnamed_addr constant [18 x i8] c"SetPendingMessage\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"Throw\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"ReThrow\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"Return\00", align 1
@.str.184 = private unnamed_addr constant [26 x i8] c"ThrowReferenceErrorIfHole\00", align 1
@.str.185 = private unnamed_addr constant [26 x i8] c"ThrowSuperNotCalledIfHole\00", align 1
@.str.186 = private unnamed_addr constant [33 x i8] c"ThrowSuperAlreadyCalledIfNotHole\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"ThrowIfNotSuperConstructor\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"SwitchOnGeneratorState\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"SuspendGenerator\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"ResumeGenerator\00", align 1
@.str.191 = private unnamed_addr constant [12 x i8] c"GetIterator\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"Debugger\00", align 1
@.str.193 = private unnamed_addr constant [16 x i8] c"IncBlockCounter\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"Abort\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"Star15\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"Star14\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"Star13\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"Star12\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"Star11\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"Star10\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"Star9\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"Star8\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"Star7\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"Star6\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"Star5\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"Star4\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"Star3\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c"Star2\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"Star1\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"Star0\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"Illegal\00", align 1
@.str.212 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@.str.214 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.215 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal11interpreter9Bytecodes8ToStringENS1_8BytecodeE(i8 noundef zeroext %0) local_unnamed_addr #0 align 2 {
  switch i8 %0, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %2
    i8 2, label %3
    i8 3, label %4
    i8 4, label %5
    i8 5, label %6
    i8 6, label %7
    i8 7, label %8
    i8 8, label %9
    i8 9, label %10
    i8 10, label %11
    i8 11, label %12
    i8 12, label %13
    i8 13, label %14
    i8 14, label %15
    i8 15, label %16
    i8 16, label %17
    i8 17, label %18
    i8 18, label %19
    i8 19, label %20
    i8 20, label %21
    i8 21, label %22
    i8 22, label %23
    i8 23, label %24
    i8 24, label %25
    i8 25, label %26
    i8 26, label %27
    i8 27, label %28
    i8 28, label %29
    i8 29, label %30
    i8 30, label %31
    i8 31, label %32
    i8 32, label %33
    i8 33, label %34
    i8 34, label %35
    i8 35, label %36
    i8 36, label %37
    i8 37, label %38
    i8 38, label %39
    i8 39, label %40
    i8 40, label %41
    i8 41, label %42
    i8 42, label %43
    i8 43, label %44
    i8 44, label %45
    i8 45, label %46
    i8 46, label %47
    i8 47, label %48
    i8 48, label %49
    i8 49, label %50
    i8 50, label %51
    i8 51, label %52
    i8 52, label %53
    i8 53, label %54
    i8 54, label %55
    i8 55, label %56
    i8 56, label %57
    i8 57, label %58
    i8 58, label %59
    i8 59, label %60
    i8 60, label %61
    i8 61, label %62
    i8 62, label %63
    i8 63, label %64
    i8 64, label %65
    i8 65, label %66
    i8 66, label %67
    i8 67, label %68
    i8 68, label %69
    i8 69, label %70
    i8 70, label %71
    i8 71, label %72
    i8 72, label %73
    i8 73, label %74
    i8 74, label %75
    i8 75, label %76
    i8 76, label %77
    i8 77, label %78
    i8 78, label %79
    i8 79, label %80
    i8 80, label %81
    i8 81, label %82
    i8 82, label %83
    i8 83, label %84
    i8 84, label %85
    i8 85, label %86
    i8 86, label %87
    i8 87, label %88
    i8 88, label %89
    i8 89, label %90
    i8 90, label %91
    i8 91, label %92
    i8 92, label %93
    i8 93, label %94
    i8 94, label %95
    i8 95, label %96
    i8 96, label %97
    i8 97, label %98
    i8 98, label %99
    i8 99, label %100
    i8 100, label %101
    i8 101, label %102
    i8 102, label %103
    i8 103, label %104
    i8 104, label %105
    i8 105, label %106
    i8 106, label %107
    i8 107, label %108
    i8 108, label %109
    i8 109, label %110
    i8 110, label %111
    i8 111, label %112
    i8 112, label %113
    i8 113, label %114
    i8 114, label %115
    i8 115, label %116
    i8 116, label %117
    i8 117, label %118
    i8 118, label %119
    i8 119, label %120
    i8 120, label %121
    i8 121, label %122
    i8 122, label %123
    i8 123, label %124
    i8 124, label %125
    i8 125, label %126
    i8 126, label %127
    i8 127, label %128
    i8 -128, label %129
    i8 -127, label %130
    i8 -126, label %131
    i8 -125, label %132
    i8 -124, label %133
    i8 -123, label %134
    i8 -122, label %135
    i8 -121, label %136
    i8 -120, label %137
    i8 -119, label %138
    i8 -118, label %139
    i8 -117, label %140
    i8 -116, label %141
    i8 -115, label %142
    i8 -114, label %143
    i8 -113, label %144
    i8 -112, label %145
    i8 -111, label %146
    i8 -110, label %147
    i8 -109, label %148
    i8 -108, label %149
    i8 -107, label %150
    i8 -106, label %151
    i8 -105, label %152
    i8 -104, label %153
    i8 -103, label %154
    i8 -102, label %155
    i8 -101, label %156
    i8 -100, label %157
    i8 -99, label %158
    i8 -98, label %159
    i8 -97, label %160
    i8 -96, label %161
    i8 -95, label %162
    i8 -94, label %163
    i8 -93, label %164
    i8 -92, label %165
    i8 -91, label %166
    i8 -90, label %167
    i8 -89, label %168
    i8 -88, label %169
    i8 -87, label %170
    i8 -86, label %171
    i8 -85, label %172
    i8 -84, label %173
    i8 -83, label %174
    i8 -82, label %175
    i8 -81, label %176
    i8 -80, label %177
    i8 -79, label %178
    i8 -78, label %179
    i8 -77, label %180
    i8 -76, label %181
    i8 -75, label %182
    i8 -74, label %183
    i8 -73, label %184
    i8 -72, label %185
    i8 -71, label %186
    i8 -70, label %187
    i8 -69, label %188
    i8 -68, label %189
    i8 -67, label %190
    i8 -66, label %191
    i8 -65, label %192
    i8 -64, label %193
    i8 -63, label %194
    i8 -62, label %195
    i8 -61, label %196
    i8 -60, label %197
    i8 -59, label %198
    i8 -58, label %199
    i8 -57, label %200
    i8 -56, label %201
    i8 -55, label %202
    i8 -54, label %203
    i8 -53, label %204
    i8 -52, label %205
    i8 -51, label %206
    i8 -50, label %207
    i8 -49, label %208
    i8 -48, label %209
    i8 -47, label %210
    i8 -46, label %211
    i8 -45, label %bb.a
  ]

2:                                                ; preds = %1
  br label %bb.c

3:                                                ; preds = %1
  br label %bb.c

4:                                                ; preds = %1
  br label %bb.c

5:                                                ; preds = %1
  br label %bb.c

6:                                                ; preds = %1
  br label %bb.c

7:                                                ; preds = %1
  br label %bb.c

8:                                                ; preds = %1
  br label %bb.c

9:                                                ; preds = %1
  br label %bb.c

10:                                               ; preds = %1
  br label %bb.c

11:                                               ; preds = %1
  br label %bb.c

12:                                               ; preds = %1
  br label %bb.c

13:                                               ; preds = %1
  br label %bb.c

14:                                               ; preds = %1
  br label %bb.c

15:                                               ; preds = %1
  br label %bb.c

16:                                               ; preds = %1
  br label %bb.c

17:                                               ; preds = %1
  br label %bb.c

18:                                               ; preds = %1
  br label %bb.c

19:                                               ; preds = %1
  br label %bb.c

20:                                               ; preds = %1
  br label %bb.c

21:                                               ; preds = %1
  br label %bb.c

22:                                               ; preds = %1
  br label %bb.c

23:                                               ; preds = %1
  br label %bb.c

24:                                               ; preds = %1
  br label %bb.c

25:                                               ; preds = %1
  br label %bb.c

26:                                               ; preds = %1
  br label %bb.c

27:                                               ; preds = %1
  br label %bb.c

28:                                               ; preds = %1
  br label %bb.c

29:                                               ; preds = %1
  br label %bb.c

30:                                               ; preds = %1
  br label %bb.c

31:                                               ; preds = %1
  br label %bb.c

32:                                               ; preds = %1
  br label %bb.c

33:                                               ; preds = %1
  br label %bb.c

34:                                               ; preds = %1
  br label %bb.c

35:                                               ; preds = %1
  br label %bb.c

36:                                               ; preds = %1
  br label %bb.c

37:                                               ; preds = %1
  br label %bb.c

38:                                               ; preds = %1
  br label %bb.c

39:                                               ; preds = %1
  br label %bb.c

40:                                               ; preds = %1
  br label %bb.c

41:                                               ; preds = %1
  br label %bb.c

42:                                               ; preds = %1
  br label %bb.c

43:                                               ; preds = %1
  br label %bb.c

44:                                               ; preds = %1
  br label %bb.c

45:                                               ; preds = %1
  br label %bb.c

46:                                               ; preds = %1
  br label %bb.c

47:                                               ; preds = %1
  br label %bb.c

48:                                               ; preds = %1
  br label %bb.c

49:                                               ; preds = %1
  br label %bb.c

50:                                               ; preds = %1
  br label %bb.c

51:                                               ; preds = %1
  br label %bb.c

52:                                               ; preds = %1
  br label %bb.c

53:                                               ; preds = %1
  br label %bb.c

54:                                               ; preds = %1
  br label %bb.c

55:                                               ; preds = %1
  br label %bb.c

56:                                               ; preds = %1
  br label %bb.c

57:                                               ; preds = %1
  br label %bb.c

58:                                               ; preds = %1
  br label %bb.c

59:                                               ; preds = %1
  br label %bb.c

60:                                               ; preds = %1
  br label %bb.c

61:                                               ; preds = %1
  br label %bb.c

62:                                               ; preds = %1
  br label %bb.c

63:                                               ; preds = %1
  br label %bb.c

64:                                               ; preds = %1
  br label %bb.c

65:                                               ; preds = %1
  br label %bb.c

66:                                               ; preds = %1
  br label %bb.c

67:                                               ; preds = %1
  br label %bb.c

68:                                               ; preds = %1
  br label %bb.c

69:                                               ; preds = %1
  br label %bb.c

70:                                               ; preds = %1
  br label %bb.c

71:                                               ; preds = %1
  br label %bb.c

72:                                               ; preds = %1
  br label %bb.c

73:                                               ; preds = %1
  br label %bb.c

74:                                               ; preds = %1
  br label %bb.c

75:                                               ; preds = %1
  br label %bb.c

76:                                               ; preds = %1
  br label %bb.c

77:                                               ; preds = %1
  br label %bb.c

78:                                               ; preds = %1
  br label %bb.c

79:                                               ; preds = %1
  br label %bb.c

80:                                               ; preds = %1
  br label %bb.c

81:                                               ; preds = %1
  br label %bb.c

82:                                               ; preds = %1
  br label %bb.c

83:                                               ; preds = %1
  br label %bb.c

84:                                               ; preds = %1
  br label %bb.c

85:                                               ; preds = %1
  br label %bb.c

86:                                               ; preds = %1
  br label %bb.c

87:                                               ; preds = %1
  br label %bb.c

88:                                               ; preds = %1
  br label %bb.c

89:                                               ; preds = %1
  br label %bb.c

90:                                               ; preds = %1
  br label %bb.c

91:                                               ; preds = %1
  br label %bb.c

92:                                               ; preds = %1
  br label %bb.c

93:                                               ; preds = %1
  br label %bb.c

94:                                               ; preds = %1
  br label %bb.c

95:                                               ; preds = %1
  br label %bb.c

96:                                               ; preds = %1
  br label %bb.c

97:                                               ; preds = %1
  br label %bb.c

98:                                               ; preds = %1
  br label %bb.c

99:                                               ; preds = %1
  br label %bb.c

100:                                              ; preds = %1
  br label %bb.c

101:                                              ; preds = %1
  br label %bb.c

102:                                              ; preds = %1
  br label %bb.c

103:                                              ; preds = %1
  br label %bb.c

104:                                              ; preds = %1
  br label %bb.c

105:                                              ; preds = %1
  br label %bb.c

106:                                              ; preds = %1
  br label %bb.c

107:                                              ; preds = %1
  br label %bb.c

108:                                              ; preds = %1
  br label %bb.c

109:                                              ; preds = %1
  br label %bb.c

110:                                              ; preds = %1
  br label %bb.c

111:                                              ; preds = %1
  br label %bb.c

112:                                              ; preds = %1
  br label %bb.c

113:                                              ; preds = %1
  br label %bb.c

114:                                              ; preds = %1
  br label %bb.c

115:                                              ; preds = %1
  br label %bb.c

116:                                              ; preds = %1
  br label %bb.c

117:                                              ; preds = %1
  br label %bb.c

118:                                              ; preds = %1
  br label %bb.c

119:                                              ; preds = %1
  br label %bb.c

120:                                              ; preds = %1
  br label %bb.c

121:                                              ; preds = %1
  br label %bb.c

122:                                              ; preds = %1
  br label %bb.c

123:                                              ; preds = %1
  br label %bb.c

124:                                              ; preds = %1
  br label %bb.c

125:                                              ; preds = %1
  br label %bb.c

126:                                              ; preds = %1
  br label %bb.c

127:                                              ; preds = %1
  br label %bb.c

128:                                              ; preds = %1
  br label %bb.c

129:                                              ; preds = %1
  br label %bb.c

130:                                              ; preds = %1
  br label %bb.c

131:                                              ; preds = %1
  br label %bb.c

132:                                              ; preds = %1
  br label %bb.c

133:                                              ; preds = %1
  br label %bb.c

134:                                              ; preds = %1
  br label %bb.c

135:                                              ; preds = %1
  br label %bb.c

136:                                              ; preds = %1
  br label %bb.c

137:                                              ; preds = %1
  br label %bb.c

138:                                              ; preds = %1
  br label %bb.c

139:                                              ; preds = %1
  br label %bb.c

140:                                              ; preds = %1
  br label %bb.c

141:                                              ; preds = %1
  br label %bb.c

142:                                              ; preds = %1
  br label %bb.c

143:                                              ; preds = %1
  br label %bb.c

144:                                              ; preds = %1
  br label %bb.c

145:                                              ; preds = %1
  br label %bb.c

146:                                              ; preds = %1
  br label %bb.c

147:                                              ; preds = %1
  br label %bb.c

148:                                              ; preds = %1
  br label %bb.c

149:                                              ; preds = %1
  br label %bb.c

150:                                              ; preds = %1
  br label %bb.c

151:                                              ; preds = %1
  br label %bb.c

152:                                              ; preds = %1
  br label %bb.c

153:                                              ; preds = %1
  br label %bb.c

154:                                              ; preds = %1
  br label %bb.c

155:                                              ; preds = %1
  br label %bb.c

156:                                              ; preds = %1
  br label %bb.c

157:                                              ; preds = %1
  br label %bb.c

158:                                              ; preds = %1
  br label %bb.c

159:                                              ; preds = %1
  br label %bb.c

160:                                              ; preds = %1
  br label %bb.c

161:                                              ; preds = %1
  br label %bb.c

162:                                              ; preds = %1
  br label %bb.c

163:                                              ; preds = %1
  br label %bb.c

164:                                              ; preds = %1
  br label %bb.c

165:                                              ; preds = %1
  br label %bb.c

166:                                              ; preds = %1
  br label %bb.c

167:                                              ; preds = %1
  br label %bb.c

168:                                              ; preds = %1
  br label %bb.c

169:                                              ; preds = %1
  br label %bb.c

170:                                              ; preds = %1
  br label %bb.c

171:                                              ; preds = %1
  br label %bb.c

172:                                              ; preds = %1
  br label %bb.c

173:                                              ; preds = %1
  br label %bb.c

174:                                              ; preds = %1
  br label %bb.c

175:                                              ; preds = %1
  br label %bb.c

176:                                              ; preds = %1
  br label %bb.c

177:                                              ; preds = %1
  br label %bb.c

178:                                              ; preds = %1
  br label %bb.c

179:                                              ; preds = %1
  br label %bb.c

180:                                              ; preds = %1
  br label %bb.c

181:                                              ; preds = %1
  br label %bb.c

182:                                              ; preds = %1
  br label %bb.c

183:                                              ; preds = %1
  br label %bb.c

184:                                              ; preds = %1
  br label %bb.c

185:                                              ; preds = %1
  br label %bb.c

186:                                              ; preds = %1
  br label %bb.c

187:                                              ; preds = %1
  br label %bb.c

188:                                              ; preds = %1
  br label %bb.c

189:                                              ; preds = %1
  br label %bb.c

190:                                              ; preds = %1
  br label %bb.c

191:                                              ; preds = %1
  br label %bb.c

192:                                              ; preds = %1
  br label %bb.c

193:                                              ; preds = %1
  br label %bb.c

194:                                              ; preds = %1
  br label %bb.c

195:                                              ; preds = %1
  br label %bb.c

196:                                              ; preds = %1
  br label %bb.c

197:                                              ; preds = %1
  br label %bb.c

198:                                              ; preds = %1
  br label %bb.c

199:                                              ; preds = %1
  br label %bb.c

200:                                              ; preds = %1
  br label %bb.c

201:                                              ; preds = %1
  br label %bb.c

202:                                              ; preds = %1
  br label %bb.c

203:                                              ; preds = %1
  br label %bb.c

204:                                              ; preds = %1
  br label %bb.c

205:                                              ; preds = %1
  br label %bb.c

206:                                              ; preds = %1
  br label %bb.c

207:                                              ; preds = %1
  br label %bb.c

208:                                              ; preds = %1
  br label %bb.c

209:                                              ; preds = %1
  br label %bb.c

210:                                              ; preds = %1
  br label %bb.c

211:                                              ; preds = %1
  br label %bb.c

bb.a:                                             ; preds = %1
  br label %bb.c

bb.b:                                             ; preds = %1
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.212) #11
  unreachable

bb.c:                                             ; preds = %1, %bb.a, %211, %210, %209, %208, %207, %206, %205, %204, %203, %202, %201, %200, %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %180, %179, %178, %177, %176, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %.0 = phi ptr [ @.str.211, %bb.a ], [ @.str.1, %2 ], [ @.str.2, %3 ], [ @.str.3, %4 ], [ @.str.4, %5 ], [ @.str.5, %6 ], [ @.str.6, %7 ], [ @.str.7, %8 ], [ @.str.8, %9 ], [ @.str.9, %10 ], [ @.str.10, %11 ], [ @.str.11, %12 ], [ @.str.12, %13 ], [ @.str.13, %14 ], [ @.str.14, %15 ], [ @.str.15, %16 ], [ @.str.16, %17 ], [ @.str.17, %18 ], [ @.str.18, %19 ], [ @.str.19, %20 ], [ @.str.20, %21 ], [ @.str.21, %22 ], [ @.str.22, %23 ], [ @.str.23, %24 ], [ @.str.24, %25 ], [ @.str.25, %26 ], [ @.str.26, %27 ], [ @.str.27, %28 ], [ @.str.28, %29 ], [ @.str.29, %30 ], [ @.str.30, %31 ], [ @.str.31, %32 ], [ @.str.32, %33 ], [ @.str.33, %34 ], [ @.str.34, %35 ], [ @.str.35, %36 ], [ @.str.36, %37 ], [ @.str.37, %38 ], [ @.str.38, %39 ], [ @.str.39, %40 ], [ @.str.40, %41 ], [ @.str.41, %42 ], [ @.str.42, %43 ], [ @.str.43, %44 ], [ @.str.44, %45 ], [ @.str.45, %46 ], [ @.str.46, %47 ], [ @.str.47, %48 ], [ @.str.48, %49 ], [ @.str.49, %50 ], [ @.str.50, %51 ], [ @.str.51, %52 ], [ @.str.52, %53 ], [ @.str.53, %54 ], [ @.str.54, %55 ], [ @.str.55, %56 ], [ @.str.56, %57 ], [ @.str.57, %58 ], [ @.str.58, %59 ], [ @.str.59, %60 ], [ @.str.60, %61 ], [ @.str.61, %62 ], [ @.str.62, %63 ], [ @.str.63, %64 ], [ @.str.64, %65 ], [ @.str.65, %66 ], [ @.str.66, %67 ], [ @.str.67, %68 ], [ @.str.68, %69 ], [ @.str.69, %70 ], [ @.str.70, %71 ], [ @.str.71, %72 ], [ @.str.72, %73 ], [ @.str.73, %74 ], [ @.str.74, %75 ], [ @.str.75, %76 ], [ @.str.76, %77 ], [ @.str.77, %78 ], [ @.str.78, %79 ], [ @.str.79, %80 ], [ @.str.80, %81 ], [ @.str.81, %82 ], [ @.str.82, %83 ], [ @.str.83, %84 ], [ @.str.84, %85 ], [ @.str.85, %86 ], [ @.str.86, %87 ], [ @.str.87, %88 ], [ @.str.88, %89 ], [ @.str.89, %90 ], [ @.str.90, %91 ], [ @.str.91, %92 ], [ @.str.92, %93 ], [ @.str.93, %94 ], [ @.str.94, %95 ], [ @.str.95, %96 ], [ @.str.96, %97 ], [ @.str.97, %98 ], [ @.str.98, %99 ], [ @.str.99, %100 ], [ @.str.100, %101 ], [ @.str.101, %102 ], [ @.str.102, %103 ], [ @.str.103, %104 ], [ @.str.104, %105 ], [ @.str.105, %106 ], [ @.str.106, %107 ], [ @.str.107, %108 ], [ @.str.108, %109 ], [ @.str.109, %110 ], [ @.str.110, %111 ], [ @.str.111, %112 ], [ @.str.112, %113 ], [ @.str.113, %114 ], [ @.str.114, %115 ], [ @.str.115, %116 ], [ @.str.116, %117 ], [ @.str.117, %118 ], [ @.str.118, %119 ], [ @.str.119, %120 ], [ @.str.120, %121 ], [ @.str.121, %122 ], [ @.str.122, %123 ], [ @.str.123, %124 ], [ @.str.124, %125 ], [ @.str.125, %126 ], [ @.str.126, %127 ], [ @.str.127, %128 ], [ @.str.128, %129 ], [ @.str.129, %130 ], [ @.str.130, %131 ], [ @.str.131, %132 ], [ @.str.132, %133 ], [ @.str.133, %134 ], [ @.str.134, %135 ], [ @.str.135, %136 ], [ @.str.136, %137 ], [ @.str.137, %138 ], [ @.str.138, %139 ], [ @.str.139, %140 ], [ @.str.140, %141 ], [ @.str.141, %142 ], [ @.str.142, %143 ], [ @.str.143, %144 ], [ @.str.144, %145 ], [ @.str.145, %146 ], [ @.str.146, %147 ], [ @.str.147, %148 ], [ @.str.148, %149 ], [ @.str.149, %150 ], [ @.str.150, %151 ], [ @.str.151, %152 ], [ @.str.152, %153 ], [ @.str.153, %154 ], [ @.str.154, %155 ], [ @.str.155, %156 ], [ @.str.156, %157 ], [ @.str.157, %158 ], [ @.str.158, %159 ], [ @.str.159, %160 ], [ @.str.160, %161 ], [ @.str.161, %162 ], [ @.str.162, %163 ], [ @.str.163, %164 ], [ @.str.164, %165 ], [ @.str.165, %166 ], [ @.str.166, %167 ], [ @.str.167, %168 ], [ @.str.168, %169 ], [ @.str.169, %170 ], [ @.str.170, %171 ], [ @.str.171, %172 ], [ @.str.172, %173 ], [ @.str.173, %174 ], [ @.str.174, %175 ], [ @.str.175, %176 ], [ @.str.176, %177 ], [ @.str.177, %178 ], [ @.str.178, %179 ], [ @.str.179, %180 ], [ @.str.180, %181 ], [ @.str.181, %182 ], [ @.str.182, %183 ], [ @.str.183, %184 ], [ @.str.184, %185 ], [ @.str.185, %186 ], [ @.str.186, %187 ], [ @.str.187, %188 ], [ @.str.188, %189 ], [ @.str.189, %190 ], [ @.str.190, %191 ], [ @.str.191, %192 ], [ @.str.192, %193 ], [ @.str.193, %194 ], [ @.str.194, %195 ], [ @.str.195, %196 ], [ @.str.196, %197 ], [ @.str.197, %198 ], [ @.str.198, %199 ], [ @.str.199, %200 ], [ @.str.200, %201 ], [ @.str.201, %202 ], [ @.str.202, %203 ], [ @.str.203, %204 ], [ @.str.204, %205 ], [ @.str.205, %206 ], [ @.str.206, %207 ], [ @.str.207, %208 ], [ @.str.208, %209 ], [ @.str.209, %210 ], [ @.str.210, %211 ], [ @.str, %1 ]
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter9Bytecodes8ToStringB5cxx11ENS1_8BytecodeENS1_12OperandScaleEPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = tail call noundef ptr @_ZN2v88internal11interpreter9Bytecodes8ToStringENS1_8BytecodeE(i8 noundef zeroext %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.b, ptr %4, align 8
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.214) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !6

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #13 ; 2 uses
  store ptr %i.h, ptr %4, align 8
  store i64 %i.c, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.a, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1
  %i.m = icmp ugt i8 %2, 1
  br i1 %i.m, label %bb.h, label %bb.ai

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  switch i8 %2, label %bb.j [
    i8 4, label %_ZN2v88internal11interpreter9Bytecodes28OperandScaleToPrefixBytecodeENS1_12OperandScaleE.exit
    i8 2, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %_ZN2v88internal11interpreter9Bytecodes28OperandScaleToPrefixBytecodeENS1_12OperandScaleE.exit

bb.j:                                             ; preds = %bb.h
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.212) #11
  unreachable

_ZN2v88internal11interpreter9Bytecodes28OperandScaleToPrefixBytecodeENS1_12OperandScaleE.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi i8 [ 0, %bb.i ], [ 1, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.n = call noundef ptr @_ZN2v88internal11interpreter9Bytecodes8ToStringENS1_8BytecodeE(i8 noundef zeroext %.0.i) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.o, ptr %5, align 8
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #12 ; 8 uses
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.k, label %._crit_edge.i.i4

bb.k:                                             ; preds = %_ZN2v88internal11interpreter9Bytecodes28OperandScaleToPrefixBytecodeENS1_12OperandScaleE.exit
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.214) #11
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5, !prof !6

bb.n:                                             ; preds = %bb.m
  call void @_ZSt17__throw_bad_allocv() #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5: ; preds = %bb.m
  %i.u = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #13 ; 2 uses
  store ptr %i.u, ptr %5, align 8
  store i64 %i.p, ptr %i.o, align 8
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5, %_ZN2v88internal11interpreter9Bytecodes28OperandScaleToPrefixBytecodeENS1_12OperandScaleE.exit
  %i.v = phi ptr [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5 ], [ %i.o, %_ZN2v88internal11interpreter9Bytecodes28OperandScaleToPrefixBytecodeENS1_12OperandScaleE.exit ] ; 3 uses
  switch i64 %i.p, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit6
  ]

bb.o:                                             ; preds = %._crit_edge.i.i4
  %i.w = load i8, ptr %i.n, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit6

bb.p:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit6: ; preds = %._crit_edge.i.i4, %bb.o, %bb.p
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.y, align 1
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #12 ; 6 uses
  %i.aa = load i64, ptr %i.k, align 8             ; 5 uses
  %i.ab = sub i64 9223372036854775807, %i.aa
  %i.ac = icmp ult i64 %i.ab, %i.z
  br i1 %i.ac, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit6
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.215) #11
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit6
  %i.ad = add i64 %i.aa, %i.z                     ; 3 uses
  %i.ae = load ptr, ptr %4, align 8               ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ag = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ah = load i64, ptr %i.b, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.ad, %i.ai
  br i1 %.not.i.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.z, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa ; 2 uses
  %cond.i.i = icmp eq i64 %i.z, 1
  br i1 %cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ak = load i8, ptr %3, align 1
  store i8 %i.ak, ptr %i.aj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %3, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull %3, i64 noundef %i.z)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.r, %bb.t, %bb.u, %bb.v
  store i64 %i.ad, ptr %i.k, align 8
  %i.al = load ptr, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store i8 0, ptr %i.am, align 1
  %i.an = load ptr, ptr %5, align 8               ; 3 uses
  %i.ao = load i64, ptr %i.x, align 8             ; 6 uses
  %i.ap = load i64, ptr %i.k, align 8             ; 5 uses
  %i.aq = sub i64 9223372036854775807, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.215) #11
  unreachable

end_hunk_0
