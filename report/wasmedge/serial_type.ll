Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/serial_type?download=true
inline.NumInlined: 1135
inline.NumDeleted: 498
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0
@.str.121 = private unnamed_addr constant [26 x i8] c"non-empty tag result type\00", align 1
@.str.122 = private unnamed_addr constant [32 x i8] c"shared memory must have maximum\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"memory size\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"table size\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"offset out of range\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"missing argument\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"invalid type reference\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"export not found\00", align 1
@.str.130 = private unnamed_addr constant [44 x i8] c"component model (validator) not implemented\00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"duplicate name in component\00", align 1
@.str.132 = private unnamed_addr constant [23 x i8] c"invalid component name\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"not a defined type\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"index out of bounds\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"name cannot be empty\00", align 1
@.str.136 = private unnamed_addr constant [31 x i8] c"cannot have more than 32 flags\00", align 1
@.str.137 = private unnamed_addr constant [53 x i8] c"record field name conflicts with previous field name\00", align 1
@.str.138 = private unnamed_addr constant [52 x i8] c"variant case name conflicts with previous case name\00", align 1
@.str.139 = private unnamed_addr constant [44 x i8] c"flag name conflicts with previous flag name\00", align 1
@.str.140 = private unnamed_addr constant [47 x i8] c"enum tag name conflicts with previous tag name\00", align 1
@.str.141 = private unnamed_addr constant [41 x i8] c"variant type must have at least one case\00", align 1
@.str.142 = private unnamed_addr constant [42 x i8] c"ascribed type of export is not compatible\00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"missing expected export\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"not a valid export name\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"not a valid extern name\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"module name conflict\00", align 1
@.str.147 = private unnamed_addr constant [25 x i8] c"incompatible import type\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"unknown import\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"data segment does not fit\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"elements segment does not fit\00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"invalid core sort\00", align 1
@.str.152 = private unnamed_addr constant [25 x i8] c"invalid canonical option\00", align 1
@.str.153 = private unnamed_addr constant [30 x i8] c"invalid export in core module\00", align 1
@.str.154 = private unnamed_addr constant [51 x i8] c"invalid argument been used to invoke resource.drop\00", align 1
@.str.155 = private unnamed_addr constant [48 x i8] c"component model (instantiation) not implemented\00", align 1
@.str.156 = private unnamed_addr constant [23 x i8] c"wrong instance address\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"wrong instance index\00", align 1
@.str.158 = private unnamed_addr constant [26 x i8] c"instruction type mismatch\00", align 1
@.str.159 = private unnamed_addr constant [28 x i8] c"function signature mismatch\00", align 1
@.str.160 = private unnamed_addr constant [23 x i8] c"integer divide by zero\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"integer overflow\00", align 1
@.str.162 = private unnamed_addr constant [30 x i8] c"invalid conversion to integer\00", align 1
@.str.163 = private unnamed_addr constant [27 x i8] c"out of bounds table access\00", align 1
@.str.164 = private unnamed_addr constant [28 x i8] c"out of bounds memory access\00", align 1
@.str.165 = private unnamed_addr constant [27 x i8] c"out of bounds array access\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.167 = private unnamed_addr constant [22 x i8] c"uninitialized element\00", align 1
@.str.168 = private unnamed_addr constant [18 x i8] c"undefined element\00", align 1
@.str.169 = private unnamed_addr constant [28 x i8] c"indirect call type mismatch\00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"host function failed\00", align 1
@.str.171 = private unnamed_addr constant [24 x i8] c"reference type mismatch\00", align 1
@.str.172 = private unnamed_addr constant [17 x i8] c"unaligned atomic\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"expected shared memory\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"null reference\00", align 1
@.str.175 = private unnamed_addr constant [24 x i8] c"null function reference\00", align 1
@.str.176 = private unnamed_addr constant [25 x i8] c"null structure reference\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"null array reference\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"null i31 reference\00", align 1
@.str.179 = private unnamed_addr constant [25 x i8] c"null exception reference\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"cast failure\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"uncaught exception\00", align 1
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.182 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.184 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.186 = private unnamed_addr constant [15 x i8] c"negative width\00", align 1
@.str.187 = private unnamed_addr constant [21 x i8] c"width is not integer\00", align 1
@.str.188 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.189 = private unnamed_addr constant [19 x i8] c"negative precision\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"precision is not integer\00", align 1
@_ZN8WasmEdgeL11ProposalStrE = internal unnamed_addr constant %"class.WasmEdge::DenseEnumMap.86" { %"struct.std::array.87" { [18 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 32, ptr @.str.193 }, %"class.std::basic_string_view" { i64 37, ptr @.str.194 }, %"class.std::basic_string_view" { i64 24, ptr @.str.195 }, %"class.std::basic_string_view" { i64 11, ptr @.str.196 }, %"class.std::basic_string_view" { i64 22, ptr @.str.197 }, %"class.std::basic_string_view" { i64 15, ptr @.str.198 }, %"class.std::basic_string_view" { i64 16, ptr @.str.199 }, %"class.std::basic_string_view" { i64 9, ptr @.str.200 }, %"class.std::basic_string_view" { i64 26, ptr @.str.201 }, %"class.std::basic_string_view" { i64 25, ptr @.str.202 }, %"class.std::basic_string_view" { i64 18, ptr @.str.203 }, %"class.std::basic_string_view" { i64 17, ptr @.str.204 }, %"class.std::basic_string_view" { i64 12, ptr @.str.205 }, %"class.std::basic_string_view" { i64 43, ptr @.str.206 }, %"class.std::basic_string_view" { i64 18, ptr @.str.207 }, %"class.std::basic_string_view" { i64 8, ptr @.str.208 }, %"class.std::basic_string_view" { i64 7, ptr @.str.209 }, %"class.std::basic_string_view" { i64 15, ptr @.str.210 }] } }, align 8
@.str.191 = private unnamed_addr constant [61 x i8] c"    This instruction or syntax requires enabling {} proposal\00", align 1
@.str.192 = private unnamed_addr constant [36 x i8] c"    Unknown proposal, Code 0x{:08x}\00", align 1
@.str.193 = private unnamed_addr constant [33 x i8] c"Import/Export of Mutable Globals\00", align 1
@.str.194 = private unnamed_addr constant [38 x i8] c"Non-trapping float-to-int Conversions\00", align 1
@.str.195 = private unnamed_addr constant [25 x i8] c"Sign-extension Operators\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"Multi-value\00", align 1
@.str.197 = private unnamed_addr constant [23 x i8] c"Bulk Memory Operations\00", align 1
@.str.198 = private unnamed_addr constant [16 x i8] c"Reference Types\00", align 1
@.str.199 = private unnamed_addr constant [17 x i8] c"Fixed-width SIMD\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"Tail Call\00", align 1
@.str.201 = private unnamed_addr constant [27 x i8] c"Extended Const Expressions\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"Typed Function References\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"Garbage Collection\00", align 1
@.str.204 = private unnamed_addr constant [18 x i8] c"Multiple Memories\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"Relaxed SIMD\00", align 1
@.str.206 = private unnamed_addr constant [44 x i8] c"Custom Annotation Syntax in the Text Format\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"Exception Handling\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"Memory64\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"Threads\00", align 1
@.str.210 = private unnamed_addr constant [16 x i8] c"Component Model\00", align 1
@.str.211 = private unnamed_addr constant [20 x i8] c"    At AST node: {}\00", align 1
@_ZN8WasmEdgeL14ASTNodeAttrStrE = internal unnamed_addr constant %"class.WasmEdge::DenseEnumMap.96" { %"struct.std::array.97" { [88 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 6, ptr @.str.212 }, %"class.std::basic_string_view" { i64 14, ptr @.str.213 }, %"class.std::basic_string_view" { i64 12, ptr @.str.214 }, %"class.std::basic_string_view" { i64 14, ptr @.str.215 }, %"class.std::basic_string_view" { i64 16, ptr @.str.216 }, %"class.std::basic_string_view" { i64 13, ptr @.str.217 }, %"class.std::basic_string_view" { i64 14, ptr @.str.218 }, %"class.std::basic_string_view" { i64 14, ptr @.str.219 }, %"class.std::basic_string_view" { i64 14, ptr @.str.220 }, %"class.std::basic_string_view" { i64 13, ptr @.str.221 }, %"class.std::basic_string_view" { i64 15, ptr @.str.222 }, %"class.std::basic_string_view" { i64 12, ptr @.str.223 }, %"class.std::basic_string_view" { i64 12, ptr @.str.224 }, %"class.std::basic_string_view" { i64 18, ptr @.str.225 }, %"class.std::basic_string_view" { i64 11, ptr @.str.226 }, %"class.std::basic_string_view" { i64 18, ptr @.str.227 }, %"class.std::basic_string_view" { i64 18, ptr @.str.228 }, %"class.std::basic_string_view" { i64 13, ptr @.str.229 }, %"class.std::basic_string_view" { i64 14, ptr @.str.230 }, %"class.std::basic_string_view" { i64 15, ptr @.str.231 }, %"class.std::basic_string_view" { i64 12, ptr @.str.232 }, %"class.std::basic_string_view" { i64 12, ptr @.str.233 }, %"class.std::basic_string_view" { i64 14, ptr @.str.234 }, %"class.std::basic_string_view" { i64 8, ptr @.str.120 }, %"class.std::basic_string_view" { i64 5, ptr @.str.235 }, %"class.std::basic_string_view" { i64 13, ptr @.str.236 }, %"class.std::basic_string_view" { i64 11, ptr @.str.237 }, %"class.std::basic_string_view" { i64 10, ptr @.str.238 }, %"class.std::basic_string_view" { i64 11, ptr @.str.239 }, %"class.std::basic_string_view" { i64 8, ptr @.str.240 }, %"class.std::basic_string_view" { i64 10, ptr @.str.241 }, %"class.std::basic_string_view" { i64 11, ptr @.str.242 }, %"class.std::basic_string_view" { i64 11, ptr @.str.243 }, %"class.std::basic_string_view" { i64 22, ptr @.str.244 }, %"class.std::basic_string_view" { i64 29, ptr @.str.245 }, %"class.std::basic_string_view" { i64 31, ptr @.str.246 }, %"class.std::basic_string_view" { i64 27, ptr @.str.247 }, %"class.std::basic_string_view" { i64 34, ptr @.str.248 }, %"class.std::basic_string_view" { i64 26, ptr @.str.249 }, %"class.std::basic_string_view" { i64 23, ptr @.str.250 }, %"class.std::basic_string_view" { i64 22, ptr @.str.251 }, %"class.std::basic_string_view" { i64 27, ptr @.str.252 }, %"class.std::basic_string_view" { i64 23, ptr @.str.253 }, %"class.std::basic_string_view" { i64 24, ptr @.str.254 }, %"class.std::basic_string_view" { i64 24, ptr @.str.255 }, %"class.std::basic_string_view" { i64 28, ptr @.str.256 }, %"class.std::basic_string_view" { i64 27, ptr @.str.257 }, %"class.std::basic_string_view" { i64 27, ptr @.str.258 }, %"class.std::basic_string_view" { i64 23, ptr @.str.259 }, %"class.std::basic_string_view" { i64 22, ptr @.str.260 }, %"class.std::basic_string_view" { i64 22, ptr @.str.261 }, %"class.std::basic_string_view" { i64 14, ptr @.str.262 }, %"class.std::basic_string_view" { i64 15, ptr @.str.263 }, %"class.std::basic_string_view" { i64 22, ptr @.str.264 }, %"class.std::basic_string_view" { i64 17, ptr @.str.265 }, %"class.std::basic_string_view" { i64 20, ptr @.str.266 }, %"class.std::basic_string_view" { i64 18, ptr @.str.267 }, %"class.std::basic_string_view" { i64 23, ptr @.str.268 }, %"class.std::basic_string_view" { i64 22, ptr @.str.269 }, %"class.std::basic_string_view" { i64 22, ptr @.str.270 }, %"class.std::basic_string_view" { i64 15, ptr @.str.271 }, %"class.std::basic_string_view" { i64 19, ptr @.str.272 }, %"class.std::basic_string_view" { i64 26, ptr @.str.273 }, %"class.std::basic_string_view" { i64 16, ptr @.str.274 }, %"class.std::basic_string_view" { i64 16, ptr @.str.275 }, %"class.std::basic_string_view" { i64 25, ptr @.str.276 }, %"class.std::basic_string_view" { i64 21, ptr @.str.277 }, %"class.std::basic_string_view" { i64 25, ptr @.str.278 }, %"class.std::basic_string_view" { i64 25, ptr @.str.279 }, %"class.std::basic_string_view" { i64 25, ptr @.str.280 }, %"class.std::basic_string_view" { i64 20, ptr @.str.281 }, %"class.std::basic_string_view" { i64 20, ptr @.str.282 }, %"class.std::basic_string_view" { i64 22, ptr @.str.283 }, %"class.std::basic_string_view" { i64 23, ptr @.str.284 }, %"class.std::basic_string_view" { i64 21, ptr @.str.285 }, %"class.std::basic_string_view" { i64 22, ptr @.str.286 }, %"class.std::basic_string_view" { i64 19, ptr @.str.287 }, %"class.std::basic_string_view" { i64 20, ptr @.str.288 }, %"class.std::basic_string_view" { i64 20, ptr @.str.289 }, %"class.std::basic_string_view" { i64 19, ptr @.str.290 }, %"class.std::basic_string_view" { i64 21, ptr @.str.291 }, %"class.std::basic_string_view" { i64 21, ptr @.str.292 }, %"class.std::basic_string_view" { i64 18, ptr @.str.293 }, %"class.std::basic_string_view" { i64 21, ptr @.str.294 }, %"class.std::basic_string_view" { i64 21, ptr @.str.295 }, %"class.std::basic_string_view" { i64 21, ptr @.str.296 }, %"class.std::basic_string_view" { i64 22, ptr @.str.297 }, %"class.std::basic_string_view" { i64 19, ptr @.str.298 }] } }, align 8
@.str.212 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"custom section\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"type section\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"import section\00", align 1
@.str.216 = private unnamed_addr constant [17 x i8] c"function section\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"table section\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"memory section\00", align 1
@.str.219 = private unnamed_addr constant [15 x i8] c"global section\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"export section\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"start section\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"element section\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"code section\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"data section\00", align 1
@.str.225 = private unnamed_addr constant [19 x i8] c"data count section\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"tag section\00", align 1
@.str.227 = private unnamed_addr constant [19 x i8] c"import description\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"export description\00", align 1
@.str.229 = private unnamed_addr constant [14 x i8] c"table segment\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"global segment\00", align 1
@.str.231 = private unnamed_addr constant [16 x i8] c"element segment\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"code segment\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"data segment\00", align 1
@.str.234 = private unnamed_addr constant [15 x i8] c"recursive type\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.236 = private unnamed_addr constant [14 x i8] c"function type\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"memory type\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"table type\00", align 1
@.str.239 = private unnamed_addr constant [12 x i8] c"global type\00", align 1
@.str.240 = private unnamed_addr constant [9 x i8] c"tag type\00", align 1
@.str.241 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.242 = private unnamed_addr constant [12 x i8] c"instruction\00", align 1
@.str.243 = private unnamed_addr constant [12 x i8] c"aot section\00", align 1
@.str.244 = private unnamed_addr constant [23 x i8] c"component model module\00", align 1
@.str.245 = private unnamed_addr constant [30 x i8] c"component core:module section\00", align 1
@.str.246 = private unnamed_addr constant [32 x i8] c"component core:instance section\00", align 1
@.str.247 = private unnamed_addr constant [28 x i8] c"component core:type section\00", align 1
@.str.248 = private unnamed_addr constant [35 x i8] c"component nested-component section\00", align 1
@.str.249 = private unnamed_addr constant [27 x i8] c"component instance section\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"component alias section\00", align 1
@.str.251 = private unnamed_addr constant [23 x i8] c"component type section\00", align 1
@.str.252 = private unnamed_addr constant [28 x i8] c"component canonical section\00", align 1
@.str.253 = private unnamed_addr constant [24 x i8] c"component start section\00", align 1
@.str.254 = private unnamed_addr constant [25 x i8] c"component import section\00", align 1
@.str.255 = private unnamed_addr constant [25 x i8] c"component export section\00", align 1
@.str.256 = private unnamed_addr constant [29 x i8] c"component core:instance expr\00", align 1
@.str.257 = private unnamed_addr constant [28 x i8] c"component core:instance arg\00", align 1
@.str.258 = private unnamed_addr constant [28 x i8] c"component core:inlineexport\00", align 1
@.str.259 = private unnamed_addr constant [24 x i8] c"component instance expr\00", align 1
@.str.260 = private unnamed_addr constant [23 x i8] c"component instance arg\00", align 1
@.str.261 = private unnamed_addr constant [23 x i8] c"component inlineexport\00", align 1
@.str.262 = private unnamed_addr constant [15 x i8] c"component sort\00", align 1
@.str.263 = private unnamed_addr constant [16 x i8] c"component alias\00", align 1
@.str.264 = private unnamed_addr constant [23 x i8] c"component core:deftype\00", align 1
@.str.265 = private unnamed_addr constant [18 x i8] c"component deftype\00", align 1
@.str.266 = private unnamed_addr constant [21 x i8] c"component defvaltype\00", align 1
@.str.267 = private unnamed_addr constant [19 x i8] c"component functype\00", align 1
@.str.268 = private unnamed_addr constant [24 x i8] c"component componenttype\00", align 1
@.str.269 = private unnamed_addr constant [23 x i8] c"component instancetype\00", align 1
@.str.270 = private unnamed_addr constant [23 x i8] c"component resourcetype\00", align 1
@.str.271 = private unnamed_addr constant [16 x i8] c"component start\00", align 1
@.str.272 = private unnamed_addr constant [20 x i8] c"component canonical\00", align 1
@.str.273 = private unnamed_addr constant [27 x i8] c"component canonical option\00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"component import\00", align 1
@.str.275 = private unnamed_addr constant [17 x i8] c"component export\00", align 1
@.str.276 = private unnamed_addr constant [26 x i8] c"component core:importdesc\00", align 1
@.str.277 = private unnamed_addr constant [22 x i8] c"component extern desc\00", align 1
@.str.278 = private unnamed_addr constant [26 x i8] c"component core:importdecl\00", align 1
@.str.279 = private unnamed_addr constant [26 x i8] c"component core:exportdecl\00", align 1
@.str.280 = private unnamed_addr constant [26 x i8] c"component core:moduledecl\00", align 1
@.str.281 = private unnamed_addr constant [21 x i8] c"component importdecl\00", align 1
@.str.282 = private unnamed_addr constant [21 x i8] c"component exportdecl\00", align 1
@.str.283 = private unnamed_addr constant [23 x i8] c"component instancedecl\00", align 1
@.str.284 = private unnamed_addr constant [24 x i8] c"component componentdecl\00", align 1
@.str.285 = private unnamed_addr constant [22 x i8] c"component record type\00", align 1
@.str.286 = private unnamed_addr constant [23 x i8] c"component variant type\00", align 1
@.str.287 = private unnamed_addr constant [20 x i8] c"component list type\00", align 1
@.str.288 = private unnamed_addr constant [21 x i8] c"component tuple type\00", align 1
@.str.289 = private unnamed_addr constant [21 x i8] c"component flags type\00", align 1
@.str.290 = private unnamed_addr constant [20 x i8] c"component enum type\00", align 1
@.str.291 = private unnamed_addr constant [22 x i8] c"component option type\00", align 1
@.str.292 = private unnamed_addr constant [22 x i8] c"component result type\00", align 1
@.str.293 = private unnamed_addr constant [19 x i8] c"component own type\00", align 1
@.str.294 = private unnamed_addr constant [22 x i8] c"component borrow type\00", align 1
@.str.295 = private unnamed_addr constant [22 x i8] c"component stream type\00", align 1
@.str.296 = private unnamed_addr constant [22 x i8] c"component future type\00", align 1
@.str.297 = private unnamed_addr constant [23 x i8] c"component labelvaltype\00", align 1
@.str.298 = private unnamed_addr constant [20 x i8] c"component valuetype\00", align 1
@.str.299 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.300 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8WasmEdge6Loader10Serializer17serializeHeapTypeERKNS_7ValTypeENS_11ASTNodeAttrERSt6vectorIhSaIhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, i8 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %14 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %15 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %17 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %18 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %19 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %20 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %21 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %22 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %23 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %24 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %25 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %26 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %27 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %28 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %29 = alloca %"struct.WasmEdge::ErrInfo::InfoProposal", align 1 ; 4 uses
  %30 = alloca %"struct.WasmEdge::ErrInfo::InfoAST", align 1 ; 4 uses
  %31 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %32 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %33 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %34 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %35 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %36 = alloca %"class.WasmEdge::ErrCode", align 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.c = load i8, ptr %i.b, align 1, !tbaa !16    ; 7 uses
  switch i8 %i.c, label %bb.ay [
    i8 111, label %bb.b
    i8 112, label %bb.j
    i8 115, label %bb.o
    i8 114, label %bb.o
    i8 113, label %bb.o
    i8 110, label %bb.o
    i8 109, label %bb.o
    i8 108, label %bb.o
    i8 107, label %bb.o
    i8 106, label %bb.o
    i8 0, label %bb.ab
    i8 116, label %bb.al
    i8 105, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #18
  switch i32 %i.e, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #19
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = and i64 %i.i, 32
  %.not75 = icmp eq i64 %i.j, 0
  %i.k = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %i.d) #18 ; 0 uses
  br i1 %.not75, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit
  store i32 274, ptr %31, align 4, !tbaa !16
  %i.l = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i16 unwind label %bb.i, !noalias !127

.noexc.i16:                                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %28), !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false), !noalias !127
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %28, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %31)
          to label %bb.g unwind label %bb.i, !noalias !127

bb.g:                                             ; preds = %.noexc.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18, !noalias !127
  store i8 5, ptr %29, align 1, !tbaa !28, !noalias !127
  %i.m = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i unwind label %bb.i, !noalias !127

.noexc3.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %27), !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false), !noalias !127
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %27, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.h unwind label %bb.i, !noalias !127

bb.h:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18, !noalias !127
  store i8 %3, ptr %30, align 1, !tbaa !31, !noalias !127
  %i.n = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i unwind label %bb.i, !noalias !127

.noexc5.i:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false), !noalias !127
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %26, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit unwind label %bb.i, !noalias !127

bb.i:                                             ; preds = %.noexc5.i, %bb.h, %.noexc3.i, %bb.g, %.noexc.i16, %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #20, !noalias !127
  unreachable

_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit: ; preds = %.noexc5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18, !noalias !127
  %i.q = load i32, ptr %31, align 4, !tbaa !16, !noalias !128
  store i8 0, ptr %0, align 4, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !16
  br label %bb.bi

bb.j:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %i.c, ptr %i.t, align 1, !tbaa !16
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %i.s, align 8, !tbaa !37
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.l:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %4, align 8, !tbaa !39     ; 4 uses
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 8 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 9223372036854775807)
  %i.ag = select i1 %i.ae, i64 9223372036854775807, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21
          to label %.noexc17 unwind label %bb.bj  ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab ; 2 uses
  store i8 %i.c, ptr %i.ai, align 1, !tbaa !16
  %i.aj = icmp sgt i64 %i.ab, 0
  br i1 %i.aj, label %bb.m, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %.noexc17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ah, ptr %4, align 8, !tbaa !39
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store ptr %i.al, ptr %i.u, align 8, !tbaa !38
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.k
  store i64 1, ptr %0, align 4
  br label %bb.bi

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.am = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %i.an = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.am) #18
  switch i32 %i.an, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit19 [
    i32 11, label %bb.p
    i32 35, label %bb.q
  ]
end_hunk_0
begin_hunk_1_@_ZNK8WasmEdge6Loader10Serializer17serializeHeapTypeERKNS_7ValTypeENS_11ASTNodeAttrERSt6vectorIhSaIhEE:bb.a
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.av, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %22, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.u unwind label %bb.v, !noalias !129

bb.u:                                             ; preds = %.noexc3.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %22), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18, !noalias !129
  store i8 %3, ptr %25, align 1, !tbaa !31, !noalias !129
  %i.aw = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i22 unwind label %bb.v, !noalias !129

.noexc5.i22:                                      ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %21), !noalias !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !noalias !129
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %21, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit23 unwind label %bb.v, !noalias !129

bb.v:                                             ; preds = %.noexc5.i22, %bb.u, %.noexc3.i21, %bb.t, %.noexc.i20, %bb.s
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #20, !noalias !129
  unreachable

_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit23: ; preds = %.noexc5.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18, !noalias !129
  %i.az = load i32, ptr %32, align 4, !tbaa !16, !noalias !130
  store i8 0, ptr %0, align 4, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !16
  br label %bb.bi

bb.w:                                             ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit19
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !38
  %.not.i.i24 = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i24, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 %i.c, ptr %i.bc, align 1, !tbaa !16
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !37
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit33

bb.y:                                             ; preds = %bb.w
  %i.bh = load ptr, ptr %4, align 8, !tbaa !39    ; 4 uses
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 8 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775807
  br i1 %i.bl, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i25

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i25: ; preds = %bb.y
  %.sroa.speculated.i.i.i.i26 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bm = add i64 %.sroa.speculated.i.i.i.i26, %i.bk ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bk
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 9223372036854775807)
  %i.bp = select i1 %i.bn, i64 9223372036854775807, i64 %i.bo ; 3 uses
  %.not.i.i.i.i27 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i27)
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #21
          to label %.noexc32 unwind label %bb.bj  ; 4 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk ; 2 uses
  store i8 %i.c, ptr %i.br, align 1, !tbaa !16
  %i.bs = icmp sgt i64 %i.bk, 0
  br i1 %i.bs, label %bb.z, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28

bb.z:                                             ; preds = %.noexc32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28: ; preds = %bb.z, %.noexc32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %.not.i17.i.i.i29 = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i.i29, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i30, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i30

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i30: ; preds = %bb.aa, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i28
  store ptr %i.bq, ptr %4, align 8, !tbaa !39
  store ptr %i.bt, ptr %i.bb, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !38
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit33

_ZNSt6vectorIhSaIhEE9push_backEOh.exit33:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i30, %bb.x
  store i64 1, ptr %0, align 4
  br label %bb.bi

bb.ab:                                            ; preds = %bb.a
  %i.bv = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.bw = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.bv) #18
  switch i32 %i.bw, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit35 [
    i32 11, label %bb.ac
    i32 35, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #19
          to label %.noexc.i34 unwind label %bb.ae

.noexc.i34:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit35: ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !25
  %i.cb = and i64 %i.ca, 512
  %.not73 = icmp eq i64 %i.cb, 0
  %i.cc = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %i.bv) #18 ; 0 uses
  br i1 %.not73, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit35
  store i32 275, ptr %33, align 4, !tbaa !16
  %i.cd = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i36 unwind label %bb.ai, !noalias !131

.noexc.i36:                                       ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !noalias !131
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %18, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %33)
          to label %bb.ag unwind label %bb.ai, !noalias !131

bb.ag:                                            ; preds = %.noexc.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18, !noalias !131
  store i8 9, ptr %19, align 1, !tbaa !28, !noalias !131
  %i.ce = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i37 unwind label %bb.ai, !noalias !131

.noexc3.i37:                                      ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !131
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %17, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.ah unwind label %bb.ai, !noalias !131

bb.ah:                                            ; preds = %.noexc3.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18, !noalias !131
  store i8 %3, ptr %20, align 1, !tbaa !31, !noalias !131
  %i.cf = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i38 unwind label %bb.ai, !noalias !131

.noexc5.i38:                                      ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !noalias !131
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cf, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit39 unwind label %bb.ai, !noalias !131

bb.ai:                                            ; preds = %.noexc5.i38, %bb.ah, %.noexc3.i37, %bb.ag, %.noexc.i36, %bb.af
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #20, !noalias !131
  unreachable

_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit39: ; preds = %.noexc5.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !131
  %i.ci = load i32, ptr %33, align 4, !tbaa !16, !noalias !132
  store i8 0, ptr %0, align 4, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !16
  br label %bb.bi

bb.aj:                                            ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit35
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cm = trunc i32 %i.cl to i8                   ; 2 uses
  %i.cn = lshr i32 %i.cl, 7                       ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  %.not.i.i4077 = icmp ult i32 %i.cl, 64
  %or.cond.i.i78 = and i1 %.not.i.i4077, %i.co
  br i1 %or.cond.i.i78, label %.thread.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aj
  %i.cp = zext nneg i32 %i.cn to i64
  br label %.lr.ph

.thread.i.i:                                      ; preds = %.lr.ph, %bb.aj
  %.01520.i.i.lcssa = phi i32 [ 0, %bb.aj ], [ %41, %.lr.ph ] ; 2 uses
  %.lcssa = phi i8 [ %i.cm, %bb.aj ], [ %i.dc, %.lr.ph ]
  %37 = zext i32 %.01520.i.i.lcssa to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %37
  store i8 %.lcssa, ptr %i.cq, align 1, !tbaa !16
  %38 = add i32 %.01520.i.i.lcssa, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !40
  %39 = zext i32 %38 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %39
  %i.cu = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.cy, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ct)
          to label %_ZNK8WasmEdge6Loader10Serializer12serializeS33ElRSt6vectorIhSaIhEE.exit unwind label %bb.ak

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.cz = phi i64 [ %i.dd, %.lr.ph ], [ %i.cp, %.lr.ph.preheader ] ; 3 uses
  %i.da = phi i8 [ %i.dc, %.lr.ph ], [ %i.cm, %.lr.ph.preheader ]
  %.01520.i.i79 = phi i32 [ %41, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %spec.select19.i.i = or i8 %i.da, -128
  %40 = zext i32 %.01520.i.i79 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %40
  store i8 %spec.select19.i.i, ptr %i.db, align 1, !tbaa !16
  %41 = add i32 %.01520.i.i79, 1                  ; 2 uses
  %i.dc = trunc i64 %i.cz to i8                   ; 2 uses
  %i.dd = lshr i64 %i.cz, 7                       ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  %.not.i.i40 = icmp samesign ult i64 %i.cz, 64
  %or.cond.i.i = and i1 %.not.i.i40, %i.de
  br i1 %or.cond.i.i, label %.thread.i.i, label %.lr.ph, !llvm.loop !114

bb.ak:                                            ; preds = %.thread.i.i
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #20
  unreachable

_ZNK8WasmEdge6Loader10Serializer12serializeS33ElRSt6vectorIhSaIhEE.exit: ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i64 1, ptr %0, align 4
  br label %bb.bi

bb.al:                                            ; preds = %bb.a, %bb.a
  %i.dh = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %bb.al
  %i.di = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.dh) #18
  switch i32 %i.di, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit42 [
    i32 11, label %bb.am
    i32 35, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #19
          to label %.noexc.i41 unwind label %bb.ao

.noexc.i41:                                       ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  tail call void @__clang_call_terminate(ptr %i.dk) #20
  unreachable

_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit42: ; preds = %bb.am
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !25
  %i.dn = and i64 %i.dm, 16384
  %.not = icmp eq i64 %i.dn, 0
  %i.do = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(168) %i.dh) #18 ; 0 uses
  br i1 %.not, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit42
  store i32 275, ptr %34, align 4, !tbaa !16
  %i.dp = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc.i43 unwind label %bb.as, !noalias !133

.noexc.i43:                                       ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !133
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %34)
          to label %bb.aq unwind label %bb.as, !noalias !133

bb.aq:                                            ; preds = %.noexc.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18, !noalias !133
  store i8 14, ptr %14, align 1, !tbaa !28, !noalias !133
  %i.dq = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc3.i44 unwind label %bb.as, !noalias !133

.noexc3.i44:                                      ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !133
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoProposalEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %bb.as, !noalias !133

bb.ar:                                            ; preds = %.noexc3.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !133
  store i8 %3, ptr %15, align 1, !tbaa !31, !noalias !133
  %i.dr = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc5.i45 unwind label %bb.as, !noalias !133

.noexc5.i45:                                      ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !noalias !133
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo7InfoASTEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dr, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 4, ptr nonnull @.str.4, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit46 unwind label %bb.as, !noalias !133

bb.as:                                            ; preds = %.noexc5.i45, %bb.ar, %.noexc3.i44, %bb.aq, %.noexc.i43, %bb.ap
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #20, !noalias !133
  unreachable

_ZNK8WasmEdge6Loader10Serializer15logNeedProposalENS_7ErrCodeENS_8ProposalENS_11ASTNodeAttrE.exit46: ; preds = %.noexc5.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !133
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !133
  %i.du = load i32, ptr %34, align 4, !tbaa !16, !noalias !134
  store i8 0, ptr %0, align 4, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !16
  br label %bb.bi

bb.at:                                            ; preds = %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit42
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !37 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !38
  %.not.i.i47 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i.i47, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i8 %i.c, ptr %i.dx, align 1, !tbaa !16
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store ptr %i.eb, ptr %i.dw, align 8, !tbaa !37
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit56

bb.av:                                            ; preds = %bb.at
  %i.ec = load ptr, ptr %4, align 8, !tbaa !39    ; 4 uses
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 8 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775807
  br i1 %i.eg, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i48

.invoke:                                          ; preds = %bb.av, %bb.y, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.300) #19
          to label %.cont unwind label %bb.bj

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i48: ; preds = %bb.av
  %.sroa.speculated.i.i.i.i49 = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eh = add i64 %.sroa.speculated.i.i.i.i49, %i.ef ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ef
  %i.ej = tail call i64 @llvm.umin.i64(i64 %i.eh, i64 9223372036854775807)
  %i.ek = select i1 %i.ei, i64 9223372036854775807, i64 %i.ej ; 3 uses
  %.not.i.i.i.i50 = icmp ne i64 %i.ek, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i50)
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #21
          to label %.noexc55 unwind label %bb.bj  ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i48
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ef ; 2 uses
  store i8 %i.c, ptr %i.em, align 1, !tbaa !16
  %i.en = icmp sgt i64 %i.ef, 0
  br i1 %i.en, label %bb.aw, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51

bb.aw:                                            ; preds = %.noexc55
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.el, ptr align 1 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51: ; preds = %bb.aw, %.noexc55
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %.not.i17.i.i.i52 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.i52, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i53, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #22
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i53

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i53: ; preds = %bb.ax, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i51
  store ptr %i.el, ptr %4, align 8, !tbaa !39
  store ptr %i.eo, ptr %i.dw, align 8, !tbaa !37
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store ptr %i.ep, ptr %i.dy, align 8, !tbaa !38
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit56

_ZNSt6vectorIhSaIhEE9push_backEOh.exit56:         ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i53, %bb.au
  store i64 1, ptr %0, align 4
  br label %bb.bi

bb.ay:                                            ; preds = %bb.a
  %i.eq = load ptr, ptr %1, align 8, !tbaa !20, !nonnull !21, !align !22 ; 3 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %bb.ay
  %i.er = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(168) %i.eq) #18
  switch i32 %i.er, label %_ZNK8WasmEdge9Configure11hasProposalENS_8ProposalE.exit58 [
    i32 11, label %bb.az
    i32 35, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #19
          to label %.noexc.i57 unwind label %bb.bb

.noexc.i57:                                       ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  tail call void @__clang_call_terminate(ptr %i.et) #20
end_hunk_1
begin_hunk_2_@_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCodeEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_:bb.a
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  invoke void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.c, i1 noundef zeroext %i.e)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.q = load ptr, ptr %6, align 8, !tbaa !48     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.f, align 8, !tbaa !49
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.r) #22
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %_ZN3fmt3v1110vformat_toINS0_14basic_appenderIcEETnNSt9enable_ifIXsr6detail18is_output_iteratorINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEcEE5valueEiE4typeELi0EEESB_OS7_NS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  %i.u = load ptr, ptr %6, align 8, !tbaa !48     ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i15, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !49
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #22
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK6spdlog7details10backtracer7enabledEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #9

declare void @_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt3v1117basic_string_viewIcEENS_5level10level_enumES6_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef byval(%"struct.spdlog::source_loc") align 8, ptr, i64, i32 noundef, ptr, i64) unnamed_addr #9

declare void @_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE4growERNS0_6detail6bufferIcEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 9223372036854775807)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i64 [ %1, %bb.a ], [ %i.g, %bb.c ]    ; 2 uses
  %i.h = icmp slt i64 %.0, 0
  br i1 %i.h, label %bb.e, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit, !prof !55

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit:     ; preds = %bb.b, %bb.d
  %.035 = phi i64 [ %.0, %bb.d ], [ %i.d, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.035) #21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = icmp ule i64 %i.l, %.035
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.i, i64 %i.l, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !48
  store i64 %.035, ptr %i.a, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.i, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge7ErrCodeENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #10 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.a, align 4, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i16 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 11
  store i8 32, ptr %i.c, align 1, !tbaa !16
  %scevgep.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %scevgep.i.i.i.i.i.i.i, i8 0, i64 3, i1 false), !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 1, ptr %i.d, align 1, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !16
  %i.g = load ptr, ptr %1, align 8, !tbaa !64     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !65   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = icmp samesign eq i64 %i.i, 0
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.g, align 1, !tbaa !16
  %i.m = icmp eq i8 %i.l, 125
  br i1 %i.m, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !64
  %.pre6 = load i64, ptr %i.h, align 8, !tbaa !65
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i64 [ %.pre6, %bb.c ], [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  store ptr %i.t, ptr %1, align 8, !tbaa !64
  %i.u = sub i64 %i.o, %i.s
  store i64 %i.u, ptr %i.h, align 8, !tbaa !65
  %i.v = call ptr @_ZNK3fmt3v119formatterIN8WasmEdge7ErrCodeEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v119formatterIN8WasmEdge7ErrCodeEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.70", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = load i32, ptr %1, align 4, !tbaa !16     ; 3 uses
  %.not.i = icmp ult i32 %i.b, 16777216           ; 2 uses
  %i.c = lshr i32 %i.b, 8
  %i.d = trunc i32 %i.c to i8
  %i.e = and i8 %i.d, 15
  %i.f = select i1 %.not.i, i8 %i.e, i8 5
  store i8 %i.f, ptr %i.a, align 1, !tbaa !67
  %i.g = and i32 %i.b, 16777215                   ; 2 uses
  %spec.select.i = select i1 %.not.i, i32 %i.g, i32 12 ; 2 uses
  br label %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %bb.a
  %.030.i.i.i.i = phi i64 [ 160, %bb.a ], [ %.1.i.i.i.i, %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.sroa.4.029.i.i.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.4.1.i.i.i.i, %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.h = lshr i64 %.030.i.i.i.i, 1                ; 3 uses
  %.sroa.5.0.i.i.i.i = add i64 %i.h, %.sroa.4.029.i.i.i.i ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL10ErrCodeStrE, i64 %.sroa.5.0.i.i.i.i
  %i.j = load i32, ptr %i.i, align 8, !tbaa !309
  %i.k = icmp ult i32 %i.j, %spec.select.i        ; 2 uses
  %i.l = add i64 %.sroa.5.0.i.i.i.i, 1
  %i.m = xor i64 %i.h, -1
  %i.n = add nsw i64 %.030.i.i.i.i, %i.m
  %.sroa.4.1.i.i.i.i = select i1 %i.k, i64 %i.l, i64 %.sroa.4.029.i.i.i.i ; 3 uses
  %.1.i.i.i.i = select i1 %i.k, i64 %i.n, i64 %i.h ; 2 uses
  %i.o = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.o, label %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %.noexc, !llvm.loop !301

.noexc:                                           ; preds = %_ZSt9__advanceIN8WasmEdge12SpareEnumMapILm160ENS0_7ErrCode5ValueESt17basic_string_viewIcSt11char_traitsIcEEE13ConstIteratorElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL10ErrCodeStrE, i64 %.sroa.4.1.i.i.i.i
  %i.q = load i32, ptr %i.p, align 8, !tbaa !310
  %i.r = icmp eq i32 %i.q, %spec.select.i
  %spec.select.i.i = select i1 %i.r, i64 %.sroa.4.1.i.i.i.i, i64 160
  %i.s = getelementptr inbounds nuw [24 x i8], ptr @_ZN8WasmEdgeL10ErrCodeStrE, i64 %spec.select.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !311
  %i.u = ptrtoint ptr %i.a to i64
  %.sroa.2.0.insert.ext.i = zext i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge9WasmPhaseENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_ to i64) to i128
  %.sroa.2.0.insert.shift.i = shl nuw i128 %.sroa.2.0.insert.ext.i, 64
  %.sroa.01.0.insert.ext.i = zext i64 %i.u to i128
  %.sroa.01.0.insert.insert.i = or disjoint i128 %.sroa.2.0.insert.shift.i, %.sroa.01.0.insert.ext.i
  store i128 %.sroa.01.0.insert.insert.i, ptr %3, align 16, !alias.scope !312
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !313
  %i.y = load i64, ptr %i.t, align 8, !tbaa !314
  %i.z = ptrtoint ptr %i.x to i64
  %.sroa.2.0.insert.ext.i11 = zext i64 %i.y to i128
  %.sroa.2.0.insert.shift.i12 = shl nuw i128 %.sroa.2.0.insert.ext.i11, 64
  %.sroa.01.0.insert.ext.i13 = zext i64 %i.z to i128
  %.sroa.01.0.insert.insert.i14 = or disjoint i128 %.sroa.2.0.insert.shift.i12, %.sroa.01.0.insert.ext.i13
  store i128 %.sroa.01.0.insert.insert.i14, ptr %i.v, align 16, !alias.scope !312
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.01.0.insert.ext.i15 = zext nneg i32 %i.g to i128
  store i128 %.sroa.01.0.insert.ext.i15, ptr %i.aa, align 16, !alias.scope !312
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.16, i64 29, i64 735, ptr nonnull %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ab = load ptr, ptr %4, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.ae = invoke ptr @_ZNK3fmt3v119formatterISt17basic_string_viewIcSt11char_traitsIcEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES5_RT_(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %i.ad, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %i.ae

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %4) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  switch i8 %i.f, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split [
    i8 60, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread
    i8 62, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread
    i8 94, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, %1
  br i1 %i.g, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit, label %_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split

_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split: ; preds = %bb.c, %bb.b
  %i.h = load i8, ptr %0, align 1, !tbaa !16
  br label %_ZN3fmt3v116detail11parse_alignEc.exit.thread

_ZN3fmt3v116detail11parse_alignEc.exit.thread:    ; preds = %_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split, %bb.b, %bb.b, %bb.b
  %.052 = phi i8 [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.b ], [ %i.h, %_ZN3fmt3v116detail11parse_alignEc.exit.thread.sink.split ]
  %i.i = icmp eq i32 %4, 0                        ; 17 uses
  %i.j = add i32 %4, -1
  %i.k = icmp ult i32 %i.j, 11                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 24 uses
  %i.m = lshr i32 15872, %4
  %i.n = trunc i32 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 2 uses
  %i.t = lshr i32 3626, %4
  %i.u = trunc i32 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 14
  br label %bb.d

bb.d:                                             ; preds = %bb.cf, %_ZN3fmt3v116detail11parse_alignEc.exit.thread
  %.0195 = phi ptr [ %0, %_ZN3fmt3v116detail11parse_alignEc.exit.thread ], [ %.1196, %bb.cf ] ; 34 uses
  %.sroa.0146.0 = phi i32 [ 0, %_ZN3fmt3v116detail11parse_alignEc.exit.thread ], [ %.sroa.0146.1, %bb.cf ] ; 8 uses
  %.153 = phi i8 [ %.052, %_ZN3fmt3v116detail11parse_alignEc.exit.thread ], [ %i.du, %bb.cf ] ; 3 uses
  switch i8 %.153, label %bb.bv [
    i8 60, label %bb.e
    i8 62, label %bb.e
    i8 94, label %bb.e
    i8 43, label %bb.j
    i8 45, label %bb.j
    i8 32, label %bb.j
    i8 35, label %bb.p
    i8 48, label %bb.s
    i8 49, label %bb.z
    i8 50, label %bb.z
    i8 51, label %bb.z
    i8 52, label %bb.z
    i8 53, label %bb.z
    i8 54, label %bb.z
    i8 55, label %bb.z
    i8 56, label %bb.z
    i8 57, label %bb.z
    i8 123, label %bb.z
    i8 46, label %bb.ab
    i8 76, label %bb.ag
    i8 100, label %bb.aj
    i8 88, label %bb.am
    i8 120, label %.loopexit
    i8 111, label %bb.ap
    i8 66, label %bb.as
    i8 98, label %.loopexit200
    i8 69, label %bb.av
    i8 101, label %.loopexit201
    i8 70, label %bb.ay
    i8 102, label %.loopexit202
    i8 71, label %bb.bb
    i8 103, label %.loopexit203
    i8 65, label %bb.be
    i8 97, label %.loopexit204
    i8 99, label %bb.bh
    i8 115, label %bb.bm
    i8 112, label %bb.bp
    i8 63, label %bb.bs
    i8 125, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.z = icmp eq i32 %.sroa.0146.0, 0
  br i1 %i.z, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit: ; preds = %bb.e
  switch i8 %.153, label %bb.i [
    i8 60, label %_ZN3fmt3v116detail11parse_alignEc.exit61
    i8 62, label %bb.g
    i8 94, label %bb.h
  ]

bb.g:                                             ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit
  br label %_ZN3fmt3v116detail11parse_alignEc.exit61

bb.h:                                             ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit
  br label %_ZN3fmt3v116detail11parse_alignEc.exit61

bb.i:                                             ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit
  br label %_ZN3fmt3v116detail11parse_alignEc.exit61

_ZN3fmt3v116detail11parse_alignEc.exit61:         ; preds = %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit, %bb.g, %bb.h, %bb.i
  %.0.i60 = phi i16 [ 0, %bb.i ], [ 3, %bb.h ], [ 2, %bb.g ], [ 1, %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt_clENS1_5stateEb.exit ]
  %i.aa = load i16, ptr %i.l, align 1
  %i.ab = and i16 %i.aa, -16
  %i.ac = or disjoint i16 %i.ab, %.0.i60
  store i16 %i.ac, ptr %i.l, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0195, i64 1
  br label %bb.ce

bb.j:                                             ; preds = %bb.d, %bb.d, %bb.d
  br i1 %i.i, label %_ZZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeEENUt0_clENS0_17presentation_typeEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_2
