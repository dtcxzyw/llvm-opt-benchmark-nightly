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
@switch.table._ZN2v88internal11interpreter9Bytecodes8ToStringENS1_8BytecodeE = private unnamed_addr constant [212 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal11interpreter9Bytecodes8ToStringENS1_8BytecodeE(i8 noundef zeroext %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = icmp ult i8 %0, -44
  br i1 %1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.212) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %2 = zext i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal11interpreter9Bytecodes8ToStringENS1_8BytecodeE, i64 %2
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
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
